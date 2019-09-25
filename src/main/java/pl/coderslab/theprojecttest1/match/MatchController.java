package pl.coderslab.theprojecttest1.match;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.theprojecttest1.round.Round;
import pl.coderslab.theprojecttest1.round.RoundService;


import javax.validation.Valid;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/matches")
public class MatchController {

    @Autowired
    private MatchService matchService;

    @Autowired
    private RoundService roundService;

    @GetMapping(value = "/add")
    public String addMatch(Model model) {

        model.addAttribute("match", new Match());
        return "match";
    }

    @PostMapping("/add")
    public String addMatch(@Valid Match match, BindingResult result) {

        ///////przeniesienie do servisu np//////////
        Date dateNow = new Date();

        Calendar time = Calendar.getInstance();
        time.setTime(match.getStartTime());

        Calendar dateComplete = Calendar.getInstance();
        dateComplete.setTime(match.getStartDate());

        dateComplete.add(Calendar.DATE, -1);//żeby nie można było dodać później niz dzień przed

        dateComplete.set(Calendar.HOUR_OF_DAY, time.get(Calendar.HOUR_OF_DAY));
        dateComplete.set(Calendar.MINUTE, time.get(Calendar.MINUTE));
        dateComplete.set(Calendar.SECOND, time.get(Calendar.SECOND));




        Date dateMatch = dateComplete.getTime();




        if (dateNow.after(dateMatch)) {
            return "wrongHour";
        }
        ////////////////////////////////////////////////


        if (result.hasErrors()) {
            return "match";
        }

        matchService.saveMatch(match);
        return "redirect:/matches/all";
    }

    @GetMapping(value = "/all")
    public String getAllMatches(Model model) {
        List<Match> matches = matchService.getAllMatches();
        model.addAttribute("matches", matches);
        return "matchList";
    }

    @GetMapping(value = "/update/{id}")
    public String updateMatch(@PathVariable Long id, Model model) {
        Match match = matchService.findMatchById(id);
        model.addAttribute("match", match);
        return "match";
    }

    @PostMapping("/update/{id}")
    public String updateMatch(@Valid Match match, BindingResult result) {
        if (result.hasErrors()) {
            return "match";
        }
        matchService.saveMatch(match);
        return "redirect:/matches/all";
    }

    @GetMapping(value = "/delete/{id}")
    public String deleteMatch(@PathVariable Long id) {
        matchService.deleteMatch(id);
        return "redirect:/matches/all";
    }

    @ModelAttribute("rounds")
    public List<Round> getRounds() {
        return roundService.getAllRounds();
    }


    @GetMapping(value = "/bigupdate/{id}")
    public String bigUpdateMatch(@PathVariable Long id, Model model) {
        Match match = matchService.findMatchById(id);
        model.addAttribute("match", match);
        return "matchUp";
    }

    @PostMapping("/bigupdate/{id}")
    public String bigUpdateMatch(@ModelAttribute Match match, BindingResult result) {


        Date dateNow = new Date();

        Calendar time = Calendar.getInstance();
        time.setTime(match.getStartTime());

        Calendar dateComplete = Calendar.getInstance();
        dateComplete.setTime(match.getStartDate());

        dateComplete.set(Calendar.HOUR_OF_DAY, time.get(Calendar.HOUR_OF_DAY));
        dateComplete.set(Calendar.MINUTE, time.get(Calendar.MINUTE));
        dateComplete.set(Calendar.SECOND, time.get(Calendar.SECOND));

        dateComplete.add(Calendar.HOUR_OF_DAY, 2);





        Date dateMatch = dateComplete.getTime();




        if (dateNow.before(dateMatch)) {
            return "wrongHour";
        }



        if (result.hasErrors()) {
            return "matchUp";
        }
        matchService.saveMatchUp(match);
        return "redirect:/matches/all";
    }
}
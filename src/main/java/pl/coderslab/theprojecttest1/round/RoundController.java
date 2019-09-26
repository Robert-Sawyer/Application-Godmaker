package pl.coderslab.theprojecttest1.round;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.theprojecttest1.league.League;
import pl.coderslab.theprojecttest1.league.LeagueService;

import javax.validation.Valid;
import java.util.List;

@Controller
@RequestMapping("/rounds")
public class RoundController {

    @Autowired
    private RoundService roundService;

    @Autowired
    private LeagueService leagueService;

    @GetMapping(value = "/add/{idOf}")
    public String addRound(Model model, @PathVariable Long idOf) {

        Round round = new Round();

        round.setLeague(leagueService.findLeagueById(idOf));

        model.addAttribute("round", round);

        return "round";
    }

    @PostMapping("/add/{idOf}")
    public String addRound(@Valid Round round, BindingResult result) {
        if (result.hasErrors()) {
            return "round";
        }
        roundService.saveRound(round);
        return "redirect:/rounds/check/" + round.getLeague().getId();
    }

//    @GetMapping(value = "/all")
//    public String getAllRounds(Model model) {
//        List<Round> rounds = roundService.getAllRounds();
//        model.addAttribute("rounds", rounds);
//        return "roundList";
//    }
//
//    @GetMapping(value = "/update/{id}")
//    public String updateRound(@PathVariable Long id, Model model) {
//        Round round = roundService.findRoundById(id);
//        model.addAttribute("round", round);
//        return "round";
//    }
//
//    @PostMapping("/update/{id}")
//    public String updateRound(@Valid Round round, BindingResult result) {
//        if (result.hasErrors()) {
//            return "round";
//        }
//        roundService.saveRound(round);
//        return "redirect:/rounds/all";
//    }
//
//    @GetMapping(value = "/delete/{id}")
//    public String deleteLeague(@PathVariable Long id) {
//        roundService.deleteRound(id);
//        return "redirect:/rounds/all";
//    }
//
//    @ModelAttribute("leagues")
//    public List<League> getLeagues() {
//        return leagueService.getAllLeagues();
//    }

    @GetMapping("/check/{idOf}")
    public String checkRoundInLeague(@PathVariable Long idOf, Model model) {
        List<Round> rounds = roundService.getByLeagueId(idOf);
        model.addAttribute("rounds", rounds);
        String name = leagueService.findLeagueById(idOf).getName();
        model.addAttribute("num", name);
        model.addAttribute("x", idOf);
        model.addAttribute("lig", leagueService.findLeagueById(idOf));
        return "roundbyleague";
    }
}

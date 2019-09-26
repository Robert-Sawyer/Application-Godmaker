package pl.coderslab.theprojecttest1.league;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.validation.Valid;
import java.util.List;

@Controller
@RequestMapping("/leagues")
public class LeagueController {

    @Autowired
    private LeagueService leagueService;

//    @GetMapping(value = "/add")
//    public String addLeague(Model model) {
//        model.addAttribute("league", new League());
//        return "league";
//    }
//
//    @PostMapping("/add")
//    public String addLeague(@Valid League league, BindingResult result) {
//        if (result.hasErrors()) {
//            return "league";
//        }
//        leagueService.saveLeague(league);
//        return "redirect:/leagues/all";
//    }
//
//    @GetMapping(value = "/all")
//    public String getAllLeagues(Model model) {
//        List<League> leagues = leagueService.getAllLeagues();
//        model.addAttribute("leagues", leagues);
//        return "leagueList";
//    }
//
//    @GetMapping(value = "/update/{id}")
//    public String updateLeague(@PathVariable Long id, Model model) {
//        League league = leagueService.findLeagueById(id);
//        model.addAttribute("league", league);
//        return "league";
//    }
//
//    @PostMapping("/update/{id}")
//    public String updateLeague(@Valid League league, BindingResult result) {
//        if (result.hasErrors()) {
//            return "league";
//        }
//        leagueService.saveLeague(league);
//        return "redirect:/leagues/all";
//    }
//
//    @GetMapping(value = "/delete/{id}")
//    public String deleteLeague(@PathVariable Long id) {
//        leagueService.deleteLeague(id);
//        return "redirect:/leagues/all";
//    }



    @GetMapping("/all2")
    public String leaguesCheck(Model model) {
        List<League> list = leagueService.getAllLeagues();
        model.addAttribute("leagues", list);
        return "leagueList2";
    }

}

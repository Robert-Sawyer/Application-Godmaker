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

    @GetMapping(value = "/add")
    public String addRound(Model model) {
        model.addAttribute("round", new Round());
        return "round";
    }

    @PostMapping("/add")
    public String addRound(@Valid Round round, BindingResult result) {
        if (result.hasErrors()) {
            return "round";
        }
        roundService.saveRound(round);
        return "redirect:/rounds/all";
    }

    @GetMapping(value = "/all")
    public String getAllRounds(Model model) {
        List<Round> rounds = roundService.getAllRounds();
        model.addAttribute("rounds", rounds);
        return "roundList";
    }

    @GetMapping(value = "/update/{id}")
    public String updateRound(@PathVariable Long id, Model model) {
        Round round = roundService.findRoundById(id);
        model.addAttribute("round", round);
        return "round";
    }

    @PostMapping("/update/{id}")
    public String updateRound(@Valid Round round, BindingResult result) {
        if (result.hasErrors()) {
            return "round";
        }
        roundService.saveRound(round);
        return "redirect:/rounds/all";
    }

    @GetMapping(value = "/delete/{id}")
    public String deleteLeague(@PathVariable Long id) {
        roundService.deleteRound(id);
        return "redirect:/rounds/all";
    }

    @ModelAttribute("leagues")
    public List<League> getLeagues() {
        return leagueService.getAllLeagues();
    }
}

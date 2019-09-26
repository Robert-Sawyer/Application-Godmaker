package pl.coderslab.theprojecttest1.bet;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.AuthenticatedPrincipal;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.theprojecttest1.match.Match;
import pl.coderslab.theprojecttest1.match.MatchService;
import pl.coderslab.theprojecttest1.user.CurrentUser;
import pl.coderslab.theprojecttest1.user.User;
import pl.coderslab.theprojecttest1.user.UserService;

import javax.validation.Valid;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/bets")
public class BetController {

    @Autowired
    private BetService betService;

    @Autowired
    private MatchService matchService;

//    @GetMapping(value = "/add")
//    public String addBet(Model model) {
//        model.addAttribute("bet", new Bet());
//        return "bet";
//    }
//
//    @PostMapping("/add")
//    public String addBet(@Valid Bet bet, @AuthenticationPrincipal CurrentUser customUser, BindingResult result) {
//
//
//
//        Date dateNow = new Date();
//
//        Calendar dateAll = Calendar.getInstance();
//        dateAll.setTime(bet.getMatch().getStartDate());
//
//        Calendar time = Calendar.getInstance();
//        time.setTime(bet.getMatch().getStartTime());
//
//        dateAll.set(Calendar.HOUR_OF_DAY, time.get(Calendar.HOUR_OF_DAY));
//        dateAll.set(Calendar.MINUTE, time.get(Calendar.MINUTE));
//        dateAll.set(Calendar.SECOND, time.get(Calendar.SECOND));
//
//        Date dateMatch = dateAll.getTime();
//
//        if (dateNow.after(dateMatch)) {
//            return "wrongHour";
//        }
//
//
//
//
//        if(bet.getCashDeposit() > customUser.getUser().getCredit()) {
//            return "notEnoughCash";
//        }
//
//
//
//
//
//
//
//
//
//
//        if (result.hasErrors()) {
//            return "bet";
//        }
//        bet.setUser(customUser.getUser());
//        betService.saveBet(bet);
//        return "redirect:/bets/all";
//    }

//    @GetMapping(value = "/all")
//    public String getAllBets(Model model) {
//        List<Bet> bets = betService.getAllBets();
//        model.addAttribute("bets", bets);
//        return "betList";
//    }
//
//    @GetMapping(value = "/update/{id}")
//    public String updateBet(@PathVariable Long id, Model model) {
//        Bet bet = betService.findBetById(id);
//        model.addAttribute("bet", bet);
//        return "bet";
//    }
//
//    @PostMapping("/update/{id}")
//    public String updateBet(@Valid Bet bet, BindingResult result) {
//        if (result.hasErrors()) {
//            return "bet";
//        }
//        betService.saveBet(bet);
//        return "redirect:/bets/all";
//    }
//
//    @GetMapping(value = "/delete/{id}")
//    public String deleteBet(@PathVariable Long id) {
//        betService.deleteBet(id);
//        return "redirect:/bets/all";
//    }
//
//
//    @ModelAttribute("matches")
//    public List<Match> getMatches() {
//        return matchService.getAllMatches();
//    }
//
//
//








    @GetMapping("/do/{idOf}")
    public String doBet(@PathVariable Long idOf, Model model) {

        Match match = matchService.findMatchById(idOf);

        Date dateNow = new Date();

        Calendar dateAll = Calendar.getInstance();
        dateAll.setTime(match.getStartDate());

        Calendar time = Calendar.getInstance();
        time.setTime(match.getStartTime());

        dateAll.set(Calendar.HOUR_OF_DAY, time.get(Calendar.HOUR_OF_DAY));
        dateAll.set(Calendar.MINUTE, time.get(Calendar.MINUTE));
        dateAll.set(Calendar.SECOND, time.get(Calendar.SECOND));

        Date dateMatch = dateAll.getTime();

        if (dateNow.after(dateMatch)) {
            return "wrongHour";
        }


        //model.addAttribute("matchyy", match);

        Bet bet = new Bet();
        bet.setMatch(match);
        bet.setGain(0d);

        model.addAttribute("bet", bet);


        return "dobet";
    }

    @PostMapping("/do/{idOf}")
    public String doBet(@Valid Bet bet, @AuthenticationPrincipal CurrentUser customUser, BindingResult result) {

        if (result.hasErrors()) {
            return "dobet";
        }

        if (bet.getCashDeposit() > customUser.getUser().getCredit()) {
            return "notEnoughCash";
        }



        bet.setUser(customUser.getUser());

        betService.saveBet(bet);

        return "redirect:/users/details";
    }



    @GetMapping("/checkown")
    public String checkOwn(@AuthenticationPrincipal CurrentUser customUser, Model model) {
        List<Bet> bets = betService.getBetsByUserId(customUser.getUser().getId());
        model.addAttribute("bets", bets);
        return "allBETSofUSER";
    }
}

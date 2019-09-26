package pl.coderslab.theprojecttest1.bet;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import pl.coderslab.theprojecttest1.user.User;
import pl.coderslab.theprojecttest1.user.UserRepository;

import java.util.List;

@Service
@Transactional
public class BetService {

    @Autowired
    private BetRepository betRepository;

    @Autowired
    private UserRepository userRepository;

    public void saveBet(Bet bet) {

        //////////////////////////////////////ZGODNA DATA/////////////////////////////

        Double cash = bet.getCashDeposit();

        User bettingUser = bet.getUser();

        Double userCash = bettingUser.getCredit();

        bettingUser.setCredit(userCash - cash);

        userRepository.save(bettingUser);

        betRepository.save(bet);
    }

    public List<Bet> getAllBets() {
        return betRepository.findAll();
    }

    public void deleteBet(Long id) {
        betRepository.deleteById(id);
    }

    public Bet findBetById(Long id) {
        return betRepository.findById(id).orElse(null);
    }

    public List<Bet> getBetsByUserId(Long id) {
        return betRepository.findAllByUserId(id);
    }

}

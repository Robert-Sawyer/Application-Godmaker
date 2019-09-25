package pl.coderslab.theprojecttest1.round;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class RoundService {

    @Autowired
    private RoundRepository roundRepository;

    public void saveRound(Round round) {
        roundRepository.save(round);
    }

    public List<Round> getAllRounds() {
        return roundRepository.findAll();
    }

    public void deleteRound(Long id) {
        roundRepository.deleteById(id);
    }

    public Round findRoundById(Long id) {
        return roundRepository.findById(id).orElse(null);
    }
}

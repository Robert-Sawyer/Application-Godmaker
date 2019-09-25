package pl.coderslab.theprojecttest1.league;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class LeagueService {

    @Autowired
    private LeagueRepository leagueRepository;

    public void saveLeague(League league) {
        leagueRepository.save(league);
    }

    public List<League> getAllLeagues() {
        return leagueRepository.findAll();
    }

    public void deleteLeague(Long id) {
        leagueRepository.deleteById(id);
    }

    public League findLeagueById(Long id) {
        return leagueRepository.findById(id).orElse(null);
    }


}

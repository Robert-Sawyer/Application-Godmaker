package pl.coderslab.theprojecttest1.round;



import pl.coderslab.theprojecttest1.league.League;
import pl.coderslab.theprojecttest1.match.Match;

import javax.persistence.*;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "rounds")
public class Round {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotNull(message = "Podaj prawidłowe dane")
    @Min(value = 1, message = "Podaj prawidłowy numer")
    private Integer number;

    @NotNull
    @ManyToOne(fetch = FetchType.EAGER)//niebezpieczne
    private League league;

    @OneToMany(mappedBy = "round", fetch = FetchType.EAGER)//niebezpieczne
    private List<Match> matches = new ArrayList<>();


    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Integer getNumber() {
        return number;
    }

    public void setNumber(Integer number) {
        this.number = number;
    }

    public League getLeague() {
        return league;
    }

    public void setLeague(League league) {
        this.league = league;
    }

    public List<Match> getMatches() {
        return matches;
    }

    public void setMatches(List<Match> matches) {
        this.matches = matches;
    }

    @Override
    public String toString() {
        return "Round{" +
                "number=" + number +
                '}';
    }

    public String getFullData() {
        return number + " " + league.getName();
    }
}

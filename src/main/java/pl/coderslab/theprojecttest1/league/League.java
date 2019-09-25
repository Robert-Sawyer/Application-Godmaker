package pl.coderslab.theprojecttest1.league;


import pl.coderslab.theprojecttest1.round.Round;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;
import java.util.ArrayList;
import java.util.List;


@Entity
@Table(name = "leagues")
public class League {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotBlank
    private String name;

    @OneToMany(mappedBy = "league", fetch = FetchType.EAGER)//niebezpieczne
    private List<Round> rounds = new ArrayList<>();

    //możliwa jeszcze lista zespołów

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public List<Round> getRounds() {
        return rounds;
    }

    public void setRounds(List<Round> rounds) {
        this.rounds = rounds;
    }

    @Override
    public String toString() {
        return "League{" +
                "name='" + name + '\'' +
                '}';
    }
}

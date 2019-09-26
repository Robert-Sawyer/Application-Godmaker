package pl.coderslab.theprojecttest1.bet;

import org.hibernate.validator.constraints.Range;
import pl.coderslab.theprojecttest1.match.Match;
import pl.coderslab.theprojecttest1.user.User;


import javax.persistence.*;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;

@Entity
@Table(name = "bets")
public class Bet {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotNull
    @Min(1)
    private Double cashDeposit;

    @ManyToOne(fetch = FetchType.EAGER)//niebezpieczne
    private User user;

    @NotNull
    @ManyToOne(fetch = FetchType.EAGER)//niebezpieczne
    private Match match;

    @NotNull
    @Range(min = 0, max = 2)
    private Integer kindOfBet;
    //0 gosp 1 remis 2 goscie


    private Double gain;

    public Double getGain() {
        return gain;
    }

    public void setGain(Double gain) {
        this.gain = gain;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Double getCashDeposit() {
        return cashDeposit;
    }

    public void setCashDeposit(Double cashDeposit) {
        this.cashDeposit = cashDeposit;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Match getMatch() {
        return match;
    }

    public void setMatch(Match match) {
        this.match = match;
    }

    public Integer getKindOfBet() {
        return kindOfBet;
    }

    public void setKindOfBet(Integer kindOfBet) {
        this.kindOfBet = kindOfBet;
    }

    @Override
    public String toString() {
        return "Bet{" +
                "cashDeposit=" + cashDeposit +
                ", user=" + user.getUsername() +
                ", match=" + match +
                '}';
    }
}

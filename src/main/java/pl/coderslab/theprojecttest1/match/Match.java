package pl.coderslab.theprojecttest1.match;



import org.springframework.format.annotation.DateTimeFormat;
import pl.coderslab.theprojecttest1.bet.Bet;
import pl.coderslab.theprojecttest1.round.Round;

import javax.persistence.*;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;


@Entity
@Table(name = "matches")
public class Match {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotBlank(message = "Podaj prawidłowe dane")
    private String homeTeam;

    @NotBlank(message = "Podaj prawidłowe dane")
    private String awayTeam;

    @NotNull(message = "Podaj prawidłowe dane")
    @Min(value = 1, message = "Podaj poprawną liczbę")
    private Double homeCourse;

    @NotNull(message = "Podaj prawidłowe dane")
    @Min(value = 1, message = "Podaj poprawną liczbę")
    private Double drawCourse;

    @NotNull(message = "Podaj prawidłowe dane")
    @Min(value = 1, message = "Podaj poprawną liczbę")
    private Double awayCourse;

    @NotNull(message = "Podaj prawidłową datę")
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    @Temporal(TemporalType.DATE)
    private Date startDate;

    @NotNull(message = "Podaj prawidłową godzinę")
    @DateTimeFormat(pattern = "HH:mm")
    @Temporal(TemporalType.TIME)
    private Date startTime;

    public Date getStartTime() {
        return startTime;
    }

    public void setStartTime(Date startTime) {
        this.startTime = startTime;
    }

    @NotNull
    @ManyToOne(fetch = FetchType.EAGER)//niebezpieczne
    private Round round;

    @OneToMany(mappedBy = "match", fetch = FetchType.EAGER)//niebezpieczne
    private List<Bet> bets = new ArrayList<>();

    /////////////////////////////////////
    ///być może będzie update ale tylko pod wrunkiem że czas przekroczy date meczu o 1,5h


    private Integer homeGoals;

    private Integer awayGoals;

    /////////////////////////////////////


    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getHomeTeam() {
        return homeTeam;
    }

    public void setHomeTeam(String homeTeam) {
        this.homeTeam = homeTeam;
    }

    public String getAwayTeam() {
        return awayTeam;
    }

    public void setAwayTeam(String awayTeam) {
        this.awayTeam = awayTeam;
    }

    public Double getHomeCourse() {
        return homeCourse;
    }

    public void setHomeCourse(Double homeCourse) {
        this.homeCourse = homeCourse;
    }

    public Double getDrawCourse() {
        return drawCourse;
    }

    public void setDrawCourse(Double drawCourse) {
        this.drawCourse = drawCourse;
    }

    public Double getAwayCourse() {
        return awayCourse;
    }

    public void setAwayCourse(Double awayCourse) {
        this.awayCourse = awayCourse;
    }

    public Date getStartDate() {
        return startDate;
    }

    public void setStartDate(Date startDate) {
        this.startDate = startDate;
    }

    public Round getRound() {
        return round;
    }

    public void setRound(Round round) {
        this.round = round;
    }

    public List<Bet> getBets() {
        return bets;
    }

    public void setBets(List<Bet> bets) {
        this.bets = bets;
    }

    public Integer getHomeGoals() {
        return homeGoals;
    }

    public void setHomeGoals(Integer homeGoals) {
        this.homeGoals = homeGoals;
    }

    public Integer getAwayGoals() {
        return awayGoals;
    }

    public void setAwayGoals(Integer awayGoals) {
        this.awayGoals = awayGoals;
    }

    public String getAllTeams() {
        return homeTeam + ":" + awayTeam;
    }

    @Override
    public String toString() {
        return "Match{" +
                "homeTeam='" + homeTeam + '\'' +
                ", awayTeam='" + awayTeam + '\'' +
                ", homeCourse=" + homeCourse +
                ", drawCourse=" + drawCourse +
                ", awayCourse=" + awayCourse +
                ", homeGoals=" + homeGoals +
                ", awayGoals=" + awayGoals +
                '}';
    }
}

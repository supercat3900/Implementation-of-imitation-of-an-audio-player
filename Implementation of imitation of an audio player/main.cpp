#include <iostream>

class Track {
    std::string title;
    std::string dateOfCreation;
    int recordLength;
public:
    std::string getTitle ()
    {
        return title;
    }
    std::string getDateOfCreation ()
    {
        return dateOfCreation;
    }
    int getRecordLength ()
    {
        return recordLength;
    }
    void setTitle (std::string enter)
    {
        title = enter;
    }
    void setDateOfCreation (std::string enter)
    {
        dateOfCreation = enter;
    }
    void setRecordLength (int enter)
    {
        recordLength = enter;
    }
};

class AudioPlayer {
    bool trackPause = 0;
    bool trackPlaying = 0;
    std::string trackPlayingNow;
    Track* track[3] = {new Track, new Track, new Track};
public:
    void creatTrack () {
        track[0]->setTitle("game");
        track[0]->setDateOfCreation("11.10.2022");
        track[0]->setRecordLength(100);
        track[1]->setTitle("hand");
        track[1]->setDateOfCreation("01.09.2022");
        track[1]->setRecordLength(40);
        track[2]->setTitle("friend");
        track[2]->setDateOfCreation("02.04.2022");
        track[2]->setRecordLength(200);
    }
    void play () {
        if (trackPlaying == 0) {
            std::cout << "enter track title:";
            std::cin >> trackPlayingNow;
            for (int i = 0; i < 3; i++) {
                if (trackPlayingNow == track[i]->getTitle()) {
                    std::cout << track[i]->getTitle() << " " << track[i]->getDateOfCreation() << " " << track[i]->getRecordLength();
                    break;
                }
            }
        }
    }
    void pause () {
        if (trackPause == 0) {
            std::cout << "track is pause";
            trackPause = 1;
        }
    }
    void next () {
        int randTrack = std::rand() % 3;
        for (;;) {
            if (track[randTrack]->getTitle() != trackPlayingNow) {
                trackPlayingNow = track[randTrack]->getTitle();
                break;
            }
        }
        std::cout << track[randTrack]->getTitle() << " " << track[randTrack]->getDateOfCreation() << " " << track[randTrack]->getRecordLength() << std::endl;
    }
    void stop () {
        if (trackPlaying == 1) {
            std::cout << "track stop";
            trackPlayingNow = "";
            trackPlaying = 0;
            trackPause = 0;
        }
    }
    void exit (int& programExit) {
        std::cout << "program end";
        programExit = 1;
        for (int i = 0; i < 3; i++) {
            delete track[i];
            track[i] = nullptr;
        }
    }
};

int main() {
    AudioPlayer* audioPlayer = new AudioPlayer();
    audioPlayer->creatTrack();
    for (;;) {
        int programExit = 0;
        std::string action = "";
        std::cout << "enter action:";
        std::cin >> action;
        if (action == "play") {
            audioPlayer->play();
        }
        else if (action == "pause") {
            audioPlayer->pause();
        }
        else if (action == "next") {
            audioPlayer->next();
        }
        else if (action == "stop") {
            audioPlayer->stop();
        }
        else if (action == "exit") {
            audioPlayer->exit(programExit);
        }
        if (programExit = 1) {
            delete audioPlayer;
            audioPlayer = nullptr;
            return 0;
        }
    }
}

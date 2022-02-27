#include <iostream>

class Track {
    std::string title[3] = {"game", "help", "hand"};
    std::string dateOfCreation[3] = {"11.11.2021", "10.11.2019", "07.08.2020"};
    int recordLength[3] = {100, 120, 140};
public:
    std::string getTitle (int i)
    {
        if (i > 2) return title[2];
        else if (i < 0) return title[0];
        else return title[i];
    }
    std::string getDateOfCreation (int i)
    {
        if (i > 2) return dateOfCreation[2];
        if (i < 0) return dateOfCreation[0];
        return dateOfCreation[i];
    }
    int getRecordLength (int i)
    {
        if (i > 2) return recordLength[2];
        if (i < 0) return recordLength[0];
        return recordLength[i];
    }
};

class AudioPlayer {
    bool trackPause = 0;
    bool trackPlaying = 0;
    std::string trackPlayingNow;
    Track* track = new Track();
public:
    void play () {
        if (trackPlaying = 0) {
            std::cout << "enter track title:";
            std::cin >> trackPlayingNow;
            if (trackPlayingNow == "game") {
                std::cout << track->getTitle(0) << " " << track->getDateOfCreation(0) << " " << track->getRecordLength(0) << std::endl;
            }
            else if (trackPlayingNow == "help") {
                std::cout << track->getTitle(1) << " " << track->getDateOfCreation(1) << " " << track->getRecordLength(1) << std::endl;
            }
            else if (trackPlayingNow == "hand") {
                std::cout << track->getTitle(2) << " " << track->getDateOfCreation(2) << " " << track->getRecordLength(2) << std::endl;
            }
            else {
                trackPlayingNow = "";
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
        int randTrack = std::rand() % 2;
        for (;;) {
            if (track->getTitle(randTrack) != trackPlayingNow) {
                trackPlayingNow = track->getTitle(randTrack);
                break;
            }
        }
        std::cout << track->getTitle(randTrack) << " " << track->getDateOfCreation(randTrack) << " " << track->getRecordLength(randTrack) << std::endl;
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
        delete track;
        track = nullptr;
    }
};

int main() {
    AudioPlayer* audioPlayer = new AudioPlayer();
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

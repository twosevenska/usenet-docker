FROM lwieske/java-8:jdk-8u181-slim

WORKDIR /bot

# Not going to bother with making this accept any other versions for now
RUN wget -q https://github.com/jagrosh/MusicBot/releases/download/0.1.3/JMusicBot-0.1.3-Linux.jar

# Start our bot
CMD ["java","-jar","/bot/JMusicBot-0.1.3-Linux.jar","-nogui"]

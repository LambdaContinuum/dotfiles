{
        programs.newsboat = {
                enable = true;
                autoReload = true;
                urls = [
                        {
                                tags = ["politics" "tech"];
                                url = "https://stallman.org/rss/rss.xml";
                        }
                        {
                                tags = ["philosophy" "tech"];
                                url = "https://lambdacontinuum.github.io/index.xml";
                        }
                ];
        };
}

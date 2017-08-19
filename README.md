# ATP Masters 1000

In the light of the 2017 Masters tournament in Cincinnati and its depleted field, I analysed all Masters tournaments from 1990 to 2016.  

My source was https://github.com/JeffSackmann/tennis_atp.

## R16
When did the fewest Top 10 players reach R16?  

### Result with data from 1990 to 2016:

| tourney_date|tourney_name         | number|players                                                         |
|------------:|:--------------------|--------------------:|:---------------------------------------------------------------|
|     19900723|Canada Masters       |                    1|Andre Agassi                                                    |
|     19920720|Canada Masters       |                    1|Petr Korda                                                      |
|     19960819|Canada Masters       |                    1|Wayne Ferreira                                                  |
|     20010416|Monte Carlo Masters  |                    1|Gustavo Kuerten                                                 |
|     19910513|Rome Masters         |                    2|Sergi Bruguera, Jim Courier                                     |
|     19910722|Canada Masters       |                    2|Ivan Lendl, Jim Courier                                         |
|     19940725|Canada Masters       |                    2|Sergi Bruguera, Michael Chang                                   |
|     19950313|Miami Masters        |                    2|Pete Sampras, Andre Agassi                                      |
|     19990419|Monte Carlo Masters  |                    2|Carlos Moya, Mark Philippoussis                                 |
|     20010514|Hamburg Masters      |                    2|Juan Carlos Ferrero, Lleyton Hewitt                             |
|     20030414|Monte Carlo Masters  |                    2|Juan Carlos Ferrero, Carlos Moya                                |
|     20030512|Hamburg Masters      |                    2|Lleyton Hewitt, Roger Federer                                   |
|     19900423|Monte Carlo Masters  |                    3|Boris Becker, Stefan Edberg, Andres Gomez                       |
|     19920420|Monte Carlo Masters  |                    3|Michael Stich, Boris Becker, Guy Forget                         |
|     19930419|Monte Carlo Masters  |                    3|Stefan Edberg, Petr Korda, Ivan Lendl                           |
|     19930503|Hamburg Masters      |                    3|Ivan Lendl, Stefan Edberg, Boris Becker                         |
|     19940502|Hamburg Masters      |                    3|Michael Stich, Andrei Medvedev, Thomas Muster                   |
|     19960422|Monte Carlo Masters  |                    3|Thomas Muster, Boris Becker, Andre Agassi                       |
|     19960506|Hamburg Masters      |                    3|Yevgeny Kafelnikov, Wayne Ferreira, Boris Becker                |
|     19961028|Paris Masters        |                    3|Yevgeny Kafelnikov, Wayne Ferreira, Michael Chang               |
|     19970310|Indian Wells Masters |                    3|Michael Chang, Thomas Muster, Carlos Moya                       |
|     19990503|Hamburg Masters      |                    3|Tim Henman, Marcelo Rios, Carlos Moya                           |
|     20000515|Hamburg Masters      |                    3|Magnus Norman, Gustavo Kuerten, Cedric Pioline                  |
|     20010507|Rome Masters         |                    3|Gustavo Kuerten, Juan Carlos Ferrero, Lleyton Hewitt            |
|     20010730|Canada Masters       |                    3|Patrick Rafter, Juan Carlos Ferrero, Gustavo Kuerten            |
|     20020311|Indian Wells Masters |                    3|Lleyton Hewitt, Yevgeny Kafelnikov, Marat Safin                 |
|     20020506|Rome Masters         |                    3|Tommy Haas, Andre Agassi, Sebastien Grosjean                    |
|     20030811|Cincinnati Masters   |                    3|Guillermo Coria, Andy Roddick, Rainer Schuettler                |
|     20040503|Rome Masters         |                    3|David Nalbandian, Carlos Moya, Tim Henman                       |
|     20040510|Hamburg Masters      |                    3|Roger Federer, Carlos Moya, Guillermo Coria                     |
|     20051031|Paris Masters        |                    3|Andy Roddick, Ivan Ljubicic, Nikolay Davydenko                  |
|     20060515|Hamburg Masters      |                    3|Nikolay Davydenko, James Blake, Fernando Gonzalez               |
|     20060807|Canada Masters       |                    3|Roger Federer, Ivan Ljubicic, Rafael Nadal                      |
|     19900316|Miami Masters        |                    4|Stefan Edberg, Andre Agassi, Jay Berger, Ivan Lendl             |
|     19900514|Rome Masters         |                    4|Emilio Sanchez, Andres Gomez, Brad Gilbert, Aaron Krickstein    |
|     19910304|Indian Wells Masters |                    4|Stefan Edberg, Guy Forget, Emilio Sanchez, Andre Agassi         |
|     19910315|Miami Masters        |                    4|Stefan Edberg, Emilio Sanchez, Andre Agassi, Guy Forget         |
|     19910422|Monte Carlo Masters  |                    4|Jonas Svensson, Boris Becker, Goran Ivanisevic, Guy Forget      |
|     19910506|Hamburg Masters      |                    4|Stefan Edberg, Goran Ivanisevic, Pete Sampras, Sergi Bruguera   |
|     19920313|Miami Masters        |                    4|Jim Courier, Pete Sampras, Michael Chang, Boris Becker          |
|     19920511|Rome Masters         |                    4|Jim Courier, Michael Chang, Petr Korda, Pete Sampras            |
|     19921102|Paris Masters        |                    4|Jim Courier, Boris Becker, Goran Ivanisevic, Stefan Edberg      |
|     19930301|Indian Wells Masters |                    4|Jim Courier, Michael Chang, Petr Korda, Pete Sampras            |
|     19930809|Cincinnati Masters   |                    4|Pete Sampras, Stefan Edberg, Michael Stich, Michael Chang       |
|     19940228|Indian Wells Masters |                    4|Pete Sampras, Stefan Edberg, Michael Chang, Todd Martin         |
|     19970317|Miami Masters        |                    4|Pete Sampras, Goran Ivanisevic, Thomas Muster, Richard Krajicek |
|     19970421|Monte Carlo Masters  |                    4|Marcelo Rios, Richard Krajicek, Carlos Moya, Albert Costa       |
|     19970505|Hamburg Masters      |                    4|Yevgeny Kafelnikov, Thomas Muster, Marcelo Rios, Wayne Ferreira |
|     19971020|Stuttgart Masters    |                    4|Patrick Rafter, Marcelo Rios, Pete Sampras, Yevgeny Kafelnikov  |
|     19980504|Hamburg Masters      |                    4|Karol Kucera, Gustavo Kuerten, Alex Corretja, Greg Rusedski     |
|     19980511|Rome Masters         |                    4|Marcelo Rios, Gustavo Kuerten, Pete Sampras, Yevgeny Kafelnikov |
|     19990802|Canada Masters       |                    4|Patrick Rafter, Todd Martin, Yevgeny Kafelnikov, Andre Agassi   |
|     19991101|Paris Masters        |                    4|Andre Agassi, Tim Henman, Pete Sampras, Thomas Enqvist          |
|     20000313|Indian Wells Masters |                    4|Nicolas Lapentti, Magnus Norman, Thomas Enqvist, Pete Sampras   |
|     20000508|Rome Masters         |                    4|Gustavo Kuerten, Magnus Norman, Andre Agassi, Thomas Enqvist    |
|     20000731|Canada Masters       |                    4|Yevgeny Kafelnikov, Marat Safin, Pete Sampras, Thomas Enqvist   |
|     20001113|Paris Masters        |                    4|Gustavo Kuerten, Alex Corretja, Marat Safin, Yevgeny Kafelnikov |
|     20010319|Miami Masters        |                    4|Patrick Rafter, Andre Agassi, Lleyton Hewitt, Alex Corretja     |
|     20020513|Hamburg Masters      |                    4|Lleyton Hewitt, Marat Safin, Gustavo Kuerten, Tommy Haas        |
|     20020729|Canada Masters       |                    4|Tommy Haas, Marat Safin, Tim Henman, Yevgeny Kafelnikov         |
|     20020805|Cincinnati Masters   |                    4|Lleyton Hewitt, Andre Agassi, Andy Roddick, Juan Carlos Ferrero |
|     20030310|Indian Wells Masters |                    4|Lleyton Hewitt, Andy Roddick, Marat Safin, Carlos Moya          |
|     20030317|Miami Masters        |                    4|Carlos Moya, Albert Costa, Roger Federer, Andre Agassi          |
|     20040726|Canada Masters       |                    4|Roger Federer, Andy Roddick, Lleyton Hewitt, Carlos Moya        |
|     20040802|Cincinnati Masters   |                    4|Lleyton Hewitt, Carlos Moya, Andy Roddick, Tim Henman           |
|     20041018|Madrid Masters       |                    4|David Nalbandian, Marat Safin, Andre Agassi, Tim Henman         |
|     20041101|Paris Masters        |                    4|Marat Safin, Lleyton Hewitt, Andy Roddick, Tim Henman           |
|     20050321|Miami Masters        |                    4|Roger Federer, Tim Henman, Andre Agassi, Gaston Gaudio          |
|     20050411|Monte Carlo Masters  |                    4|Roger Federer, Gaston Gaudio, Guillermo Coria, Marat Safin      |
|     20050509|Hamburg Masters      |                    4|Roger Federer, Guillermo Coria, Tim Henman, Gaston Gaudio       |
|     20050808|Canada Masters       |                    4|Rafael Nadal, Gaston Gaudio, Andre Agassi, Nikolay Davydenko    |
|     20060814|Cincinnati Masters   |                    4|Tommy Robredo, Ivan Ljubicic, Rafael Nadal, Marcos Baghdatis    |
|     20061030|Paris Masters        |                    4|Tommy Robredo, Nikolay Davydenko, Tomas Berdych, James Blake    |
|     20070813|Cincinnati Masters   |                    4|Roger Federer, Nikolay Davydenko, James Blake, Andy Roddick     |
|     20071015|Madrid Masters       |                    4|Roger Federer, Fernando Gonzalez, Novak Djokovic, Rafael Nadal  |
|     20100411|Monte Carlo Masters  |                    4|Novak Djokovic, Rafael Nadal, Marin Cilic, Jo Wilfried Tsonga   |
|     20100509|Madrid Masters       |                    4|Roger Federer, Andy Murray, Rafael Nadal, Fernando Verdasco     |
|     20111009|Shanghai Masters     |                    4|David Ferrer, Andy Murray, Rafael Nadal, Tomas Berdych          |
|     20140306|Indian Wells Masters |                    4|Roger Federer, Novak Djokovic, Andy Murray, Stanislas Wawrinka  |
|     20141005|Shanghai Masters     |                    4|Novak Djokovic, David Ferrer, Roger Federer, Tomas Berdych      |
|     20150810|Canada Masters       |                    4|Novak Djokovic, Rafael Nadal, Kei Nishikori, Andy Murray        |
|     20160321|Miami Masters        |                    4|Novak Djokovic, Tomas Berdych, Kei Nishikori, Richard Gasquet   |


## SF

Same analysis with regard to semi finals:

### Table:

| tourney_date|tourney_name        | number|players                                                            |
|------------:|:-------------------|-------------------:|:------------------------------------------------------------------|
|     19900423|Monte Carlo Masters |                   0|Thomas Muster, Andrei Chesnokov, Henri Leconte, Emilio Sanchez     |
|     19900723|Canada Masters      |                   0|Michael Chang, Jay Berger, Pete Sampras, Jakob Hlasek              |
|     19910506|Hamburg Masters     |                   0|Karel Novacek, Magnus Gustafsson, Michael Stich, Goran Prpic       |
|     19920420|Monte Carlo Masters |                   0|Aaron Krickstein, Thomas Muster, Goran Prpic, Arnaud Boetsch       |
|     19920720|Canada Masters      |                   0|Ivan Lendl, Andre Agassi, Wally Masur, Malivai Washington          |
|     19930503|Hamburg Masters     |                   0|Michael Stich, Andrei Chesnokov, Emilio Sanchez, Bernd Karbacher   |
|     19930726|Canada Masters      |                   0|Todd Martin, Mikael Pernfors, Richey Reneberg, Petr Korda          |
|     19940725|Canada Masters      |                   0|Andre Agassi, Jason Stoltenberg, Wayne Ferreira, Jim Courier       |
|     19980420|Monte Carlo Masters |                   0|Cedric Pioline, Carlos Moya, Alberto Berasategui, Richard Krajicek |
|     19990419|Monte Carlo Masters |                   0|Marcelo Rios, Gustavo Kuerten, Jerome Golmard, Felix Mantilla      |
|     20000417|Monte Carlo Masters |                   0|Dominik Hrbaty, Cedric Pioline, Gaston Gaudio, Karim Alami         |
|     20030512|Hamburg Masters     |                   0|Agustin Calleri, Guillermo Coria, David Nalbandian, Gaston Gaudio  |
|     20060515|Hamburg Masters     |                   0|Tommy Robredo, Radek Stepanek, Mario Ancic, Jose Acasuso           |
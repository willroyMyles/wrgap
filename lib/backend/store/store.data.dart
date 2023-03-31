import 'package:csv/csv.dart';

var partsCategory = processList();
var carsList = processCars();
var tagList = tags();

List<List<dynamic>> processList() {
  var parts =
      '''Body Parts & Mirrors,Bumpers & Components,Fenders & Components,Grilles & Components,Hoods & Components,Mirrors & Components
Breakes Suspensions & Steering,Brake Discs  Pads & Calipers,Control Arms  Thrust Arms & Components,Lowering  Leveling & Lifting Kits,Shocks  Struts & Components,Wheel Hubs  Bearings  and Components
Engine & Drivetrain,Catalytic Converters & Components,Exhaust  Headers  Manifolds  Mufflers & Components,Fuel Systems & Components,Heating  Air Conditioning & Components,Radiators  Fans  Cooling Systems & Components
Exteriors & Accessories,Bumpers & Components,Car Covers,Fog Lights  Driving Lights  Components & Accessories,Grilles & Components,Hoods & Components,Switches  Relays  Wiring & Components
Headlight & Lighting,Fog Lights  Driving Lights  Components & Accessories,Headlights  Components & Accessories,Tail Lights  Back Up Lights & Accessories,Turn Signals  Side Markers & Other Lights
Interior Accessories,Carpet & Vinyl  Floor Kits,Dash & Dash Accessories,Floor Mats & Liners,Seats  Seat Covers & Accessories,Switches  Relays  Wiring & Components
Tools & Services,Code Readers  Scan Tools & Components,Garage Accessories,Mobile Electronics,Repair Manuals  Videos & Software,Tools
Misc''';

  var list = const CsvToListConverter(
    fieldDelimiter: ",",
    eol: "\n",
  ).convert(parts);

  return list;
}

tags() {
  var arr =
      '''front end, back end, bumper, mirrors, doors, front panel, back panel, spoilers, rims, body kit''';
  return arr;
}

List<List<String>> processCars() {
  var cars =
      '''Alfa Romeo, 147, 156, 159, 166, 4c, Brera, Giulia, Giulietta, GT, MiTo, Spider
Asia Rocsta
Aston Martin, DB9, DBS, Rapide, Vanquish, Vantage
Audi, 5000, 4000, 200, 100, 90, 80, A1, A2, A3, A4, A5, A6, A7, A8, Allroad, Cabriolet, Convertible, Coupe, Q2, Q3, Q5, Q7, SQ7, Q8, R8, RS3, RS4, RS5, RS6, S1, S3, S4, S5, S8, TT, TTS, Quattro
BAW
Bentley, Continental, Continental Flying Spur, Azure, Continental GT, Corniche, Bentayga, Arnage, Brooklands, Mulsanne, Continental GTC
BMW, 1-Series, 2-Series, 3-Series, 4-Series, 5-Series, 6-Series, 7-Series, 8-Series, M1, M2, M3, M4, M5, M6, X1, X2, X3, X4, X5, X6, Z3, Z4, Z8, i3, i8
Bugatti, Chiron, Veyron
Cadillac, ATS, BLS, CTS, CTS-V, DeVille, Escalade, SLS, SRX, XT5
Caravan
Changan, Alsvin, CS95, Eado, New Benni, Raeton, Stallion
Chery
Chevrolet, Apache, Astro, Avalanche, Aveo, Bel Air, Beretta, Biscayne, Blazer, Brookwood, C/K 1500, Camaro, Caprice, Captiva, Cavalier, Celebrity, Chevelle, Chevette, Citation, Cobalt, Colorado, Conversion, Corsica, Corvair, Corvette, Cruze, D30, De Luxe, Del Ray, El Camino, Epica, Equinox, Express, Fleetline, G-Series, Impala, Kalos, Lacetti, Lumina, Luv, Malibu, Master, Matiz, Metro, Monte Carlo, Monza, Nomad, Nova, Optra, Orlando, P30, Prizm, R10, R20, R30, R/V 20, R/V 3500, S-10, Silverado, Spark, Spectrum, Sprint, Suburban, Sonic, Styleline, SSR, Tahoe, Tracker, TrailBlazer, Trax, Truck, Uplander, V10, V20, Vega, Venture, Volt
Chrysler, 300C, Crossfire, Delta, Grand Voyager, Limousine, Nitro
Citroen, AX, Berlingo, Berlingo First, Berlingo Multispace, C-Crosser, C1, C2, C3, C4, C5, C6, C8, Dispatch, Dispatch Combi, DS3, DS4, DS5, Nemo, Nemo Multispace, Relay, Saxo, Synergie, Xantia, XM, Xsara, Xsara Picasso, ZX
Container
Dacia, Logan, Duster, Sandero
Daewoo, Kalos, Korando, Lacetti, Lanos, Matiz, Musso, Nubira, Rezzo, Tacuma
Daihatsu, Atrai, Boon, Charade, Copen, Cuore, Domino, Feroza, Fourtrak, Guove, Materia, MIRA, Sirion, Sportrak, Terios, YRV, Eis
Daymak
Dennis
Dodge, 330, 880, Aspen, Avenger, Caliber, Challenger, Charger, Conquest, Coronet, D100, D200, D300, Dakota, Dart, Daytona, Demon, Durango, Diplomat, Dynasty, Grand Caravan, Intrepid, Journey, Magnum, Mini Ram, Monaco, Nitro, Omni, Pick up, Polara, Power Wagon, Raider, Ram, Ramcharger, Rampage, Regent, Royal, Shadow, Shelby, Super Bee, Spirit Food Truck, Sportsman, Stealth, Stratus, Town Wagon, Tradesman, Viper, W100, Warlock
Ferrari, 308, 360, 458, 488 Spider, California, F355, F430, FF, Mondial
Fiat, 126, 500, 500x, 600, Barchetta, Brava, Bravo, Cinquecento, Coupe, Croma, Doblo, Ducato, Fiorino, Grande Punto, Idea, Multipla, Panda, Punto, Punto Evo, Qubo, Scudo, Sedici, Seicento, Stilo, Ulysse
Foton
Ford, Aspire, B-MAX, Bronco, Bronco II, Capri, C-MAX, Cobra, Cougar, Contour, Courier, Country Squire, Crown Victoria, Custom, Deluxe, EcoSport, Econoline, Edge, Elite, Escape, Everest, Excursion, Expedition, Explorer, F-4, F-5, F-100, F-150, F-250, F-350, F-450, F-550, F-600, F-700, F-750, F-800, Fairlane, Falcon, Festiva, Fiesta, Focus, Focus C-MAX, Focus CC, Fiesta, Five Hundred, Flex, Freestyle, F-Super Duty, Fusion, Galaxie, Galaxy, Granada, Gran Torino, Grand C-MAX, Grand Tourneo Connect, GMC Sierra, GT, GT40, Ka, Kuga, Laser, LTD, Iveco, Maverick, Model B, Model T, Mondeo, Mustang, Pinto, Prefect, Probe, Puma, Ranchero, Ranch Wagon, Ranger, Roadster, S-MAX, Scorpio, Select Model, Streetka, SVO, T-bucket, Taurus, Tempo, Thunderbird, Transit, Truck, Victoria, Windstar
Freightliner, MT45 Custom Food Truck
General
GMC, International Truck
GSMoon
Golden
Hino coaster, Melpha
Hummer, H1, H2, H3
Honda, ATV, Accord, Actv, Ascot, C-HR, City, Civic, Crossroad, CR-V, CR-Z, Element, Elysion, Fit, FR-V, Freed, HR-V, Insight, Integra, Jazz, Legend, Logo, Mobilio, NSX, Odyssey, Partner Wagon, Passport, Pilot, Prelude, Ridgeline, S2000, Shuttle, Step wagon, Stream, Torneo, Vezel
Hyster
Hyundai, Accent, Amica, Atoz, Azera, Creta, Elantra, Entourage, Equus, Excel, Genesis, Getz, i10, i20, i30, i40, i800, ix20, ix35, Lantra, Matrix, Santa Fe, Sonata, Terracan, Tiburon, Trajet, Tucson, Veloster, Veracruz, XG30
Infiniti, EX, FX, G, M, Q30, Q50, Q70, QX30, QX50, QX56, QX60, QX70, QX80
International, DT466, Dura Star, 4300 Box Truck, Prostar +
Isuzu, Bighorn, Box Body Truck, D-Max, International Truck, Pick-up, Rodeo, TF, Trooper, Wizard
Jaguar, E-Pace, F-Pace, S-Type, X-Type, XF, XE, XK, XE, XJS, Jaguar All Models, Vanden Plas, S300, XKR, XJR-S
Jahgan
Jamco
JCB
Jeep, Cherokee, CJ, Commander, Compass, Grand Cherokee SRT8, Patriot, Renegade, Wrangler, Wrangler Sport Unlimited, Wrangler Sahara Ltd
JMC
Kawasaki
KIA, Carens, Ceed, Cerato, Forte K3, Magentis, Mentor, Niro, Optima, Picanto, Pro Ceed, Soul, Sedona, Sorento, Soul, Sportage, Venga
Kobatso
Korando
Lamborghini, Aventador, Gallardo, Huracán, Murcielago, Urus
Lancia
Land Rover, Defender, Discovery TD5, Discovery Sport, Freelander, Kangaroo, Range Rover, Range Rover Evoque, Range Rover Sport
Lexus, CT, GS, IS, LS, NX, RX, SC, HS, LX, ES, GX, LFA
Leyland, Daf, Kenworth
Lincoln, Continental, Navigator, Town Car, MKZ, MKX, Aviator
Lotus, Elise, Esprit, Evora
Mack
Maserati, Ghibli, Quattroporte, GranTurismo, Levante, Grancabrio
Mazda, 121, 2, 3, 323, 5, 6, 626, 929, Atenza, Axela, Biante, B-Series, Bongo, CX-3, CX-5, CX-7, CX-9, Demio, Familia, GLC, Miata, Millenia, MPV, MX-3, MX-5, MX-6, Navajo, Pickup, Premacy, Protege, RX-7, RX-8, Titan, Tribute, Van, Verisa, Xedos 6
McLaren, 540C, 570S, 675LT, F1, P1, 570GT, 650S, 720S, MP4-12C
Mercedes-Benz, AMG GT, A-Class, B-Class, C-Class, CL-Class, CLA-Class, CLC-Class, CLK-Class, CLS-Class, E-Class, G-Class, GL-Class, GLA-Class, GLC-Class, GLE-Class, GLK-Class, GLS-Class, M-Class, R-Class, S-Class, SL-Class, SLC-Class, SLK-Class, SLR-Class, SLS-Class, SLS AMG-Class, V-Class, Vaneo, Viano
MG, 350, 550, Maestro, ZT
Microcar
Mini, Clubman, Convertible, Countryman, Coupe, Cooper, Paceman, Roadster
Mitsubishi, 3000GT, ASX, Canter, Carisma, Challenger, Chariot, Colt, Delica, Diamante, Dingo, Eclipse, eK, Endeavor, Evolution, FTO, Galant Fortis, Grandis, GTO, I-Car, I-MiEV, Triton/L200, L200, Lancer, Lancer Evolution, Mighty Max, Minica, Mirage, Montero, Montero Sport, Nativa, Outlander or Airtrek, Pajero, RVR, Shogun, Space Star, Space Wagon
Morris, Bluebird Sylphy
Nissan, 200SX, 240SX, 280ZX, 300ZX, 350Z, 370Z, AD Wagon, Almera, Almera Tino, Altima, Armada, Avenir Wagon, Axxess, B14, Bluebird, Caravan, Cefiro, Cube, D21, Dualis, Fuga, Frontier, GT-R, Juke, LaFesta, Latio, Leaf, Liberty, March, Maxima, Micra, MR2, Murano, Navara, Note, NX, NV 3500, Presage, Patrol, Pickup, Pixo, Primera, Pulsar, Rogue, Qashqai, Quest, Sentra, Serena, Silvia, Skyline, Stanza, Sunny, Sylphy, Teana, Terrano, Tiida, Titan, Vanette, Versa, Wingroad, Xterra, X-Trail, Pathfinder
Opel, Vauxhall, Adam, Agila, Antara, Astra, Combo, Corsa, Insignia, Kadett, Meriva, Mokka, Tigra, Vectra, Vivar, VX220, Zafira
Peterbilt
Peugeot, 1007, 106, 107, 108, 2008, 205, 206, 207, 605, 3008, 306, 307, 308, 4007, 405, 406, 407, 5008, 504, 508, 607, 806, 807, Bipper, Expert, Partner, RCZ
Pontiac
Porsche, 911, 924, Boxster, Cayenne, Cayman, Macan, Panamera
Proton
Renault, 5, Captur, Clio, Espace, Fluence, Kadjar, Kangoo, Koleos, Laguna, Master, Megane, Modus, Scenic, Spider, Twingo, Vel Satis, Wind
Rexton
Rolls Royce, Dawn, Ghost, Phantom, Silver, Wraith
Rover
Saab, 9-3, 9-5, 99, 900, 9000
SAIC-GM-Wuling, Mini-Van
Saturn
Seat, Alhambra, Altea, Arosa, Ateca, Cordoba, Exeo, Ibiza, Inca, Leon, Marbella, Mii, Ronda, Terra, Toledo
Skoda, Citigo, Fabia, Felicia, Kodiaq, Octavia, Rapid, Roomster, Superb, Yeti
Smart, City, Fortwo, Roadster, Forfour
SsangYoung
Subaru, BRZ, Exiga, Forester, Impreza, Justy, Legacy, Outback, Trezia, Tribeca, WRX, XV
Suzuki, Aerio or Liana, Alto, Baleno, Cappuccino, Carry, Ciaz, Cultus, Equator, Escudo, Every, Geo metro, Grand Vitara, Ignis, Jimny, Landy, Maruti, Reno, Saloon, Samurai, Splash, Solio, Swift, Swift RS, SX4, Van, Verona, Vitara, Wagon R, X-90, XL-7
Tata
Tesla, Model 3, Model S, Model X, Roadster
Toyota, 4Runner, Allex, Alphard, Altezza, AURIS, Avanza, Avensis, Aygo, Axio, Aqua, Allion, Alphard, Avalon, bB, Belta, Blade, C-HR, Caldina, Cami, Camry, Carina, Celica, Ceres, Coaster, Corolla, Corolla Altis, Corolla XLi, Corona, Corsa, Cressida, Crown, Curren, Cynos, Duet, Echo, Estima, Fielder, FJ Cruiser, Fortuner, FX, GT86, Gaia, Harrier, Hiace, Highlander, Hilux, Ipsum, Ist, Isis, IQ, Kembara, Land Cruiser, Land Cruiser Prado, Levin, Light Truck, LiteAce, Lucida, Mark II, Mark X, MR2, MRS, Minibus, Nadia, Noah, Pajero, Paseo, Passo, pick up, Picnic, Porte, Prado, Premio, Presage, Probox, Previa, Prius, Ractis, RAV4, RunX, Rush, SAI, Scion, Sienna, Sienta, Spacio, Sprinter, Starlet, Succeed, Supra, Surf, T100, Tacoma, Tercel, Tiara, Town Ace, Trueno, Tundra, Urban Cruiser, Van, Vanguard, Vellfire, Venza, Verso, Vios, Vitz, Voltz, Voxy, Windy, Wish, Yaris, Yaris RS
Tractor
Triumph
TSX, Legend, TL, TSX special edition, MDX, RDX, RL, NSX, RSX, SLX, Vigor, ZDX
Volkswagen, Amarok, Beetle, Bora, Cabrio, Caddy, Camper, Caravelle, CC, Corrado, Dasher, Eurovan, Eos, Fastback, Fox, Golf, GTI, Jetta, Karmann Ghia, Lupo, New Beetle, Passat, Phaeton, Polo, R32, Rabbit, Routan, Samurai, Scirocco, Sharan, Squareback, Thing, Tiguan, Touareg, Touran, Transporter, Type 3, UP, Vanagon
Volvo, C30, C70, Cross Country, S40, S60, S70, S80, S90, V40, V50, V60, V70, XC60, XC70, XC90
Other
Yamaha, Yamaha R6
Yuejin
Zamco
Zhujiang''';

  var list = const CsvToListConverter(fieldDelimiter: ",", eol: "\n")
      .convert<String>(cars, shouldParseNumbers: false);
  print(list.runtimeType);

  return list;
}

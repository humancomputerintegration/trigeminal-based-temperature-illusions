<p align="center">

![Image of the Trigeminal-Based Temperature Interface's front and back.](https://github.com/humancomputerintegration/trigeminal-based-temperature-illusions/blob/master/Images/Device_FrontBack_Unlabeled.jpg)

</p>

# Trigeminal-Based Temperature Interface

This is a repository for the prototype temperature display in the [Trigeminal-Based Temperature Illusions]() paper, which received a Best Paper award and was presented at ACM CHI 2020. The device is in fact a 3-channel olfactory interface created by Jas Brooks, Steven Nagels, and Pedro Lopes at the University of Chicago's [Human Computer Integration Lab](https://lab.plopes.org/). The device allows the generation of aerosols and mixtures from three liquid channels, and can be operated wirelessly via the Bluetooth LE protocol. To illicit temperature illusions using this device, see our paper for information on chemical mixtures.

[Preview Video](https://www.youtube.com/watch?v=pH68GNkb_fA) | [CHI Talk Video](https://www.youtube.com/watch?v=-xf-lZFZB-w)

## Repository Structure

* `Arduino` contains code for the microcontroller (Adafruit Feather nRF52 Bluefruit LE).
* `Schematic` contains all KiCad files and a PDF version of schematic. Note: there is no PCB to be printed in this case. Jas is currently cleaning the schematic and will upload soon.
* `3D-prints` contains models for the main enclosure and the tongue that holds the vibrating mesh transducer. These can be printed in regular PLA using an FDM 3D printer.

## Bill of Materials

For ease of replication, a Bill of Materials is included both as a table in the README and a [CSV file]() in the repository. Suppliers can vary by region, especially for the micropumps. Additionally, we had a fairly negative experience with the Grove transducer driver board at first; a number of alternatives are readily available on eBay. 

| Part description                   | Specific Part Model                            | Quantity | Possible Supplier                                            | Unit Cost  | Total Cost | Notes                           |
| ---------------------------------- | ---------------------------------------------- | -------- | ------------------------------------------------------------ | ---------- | ---------- | ------------------------------- |
| Vibrating mesh transducer (VMT)    | 16 mm diameter; ~110±5 kHz operating frequency | 1        | [Comidox](https://www.amazon.com/Comidox-Ultrasonic-Transducer-Humidifier-Replacement/dp/B07P8C5V7W/) | $3.00      | $6.00      | Supplier sells in pairs.        |
| Transducer Driver Board            | Grove Water Atomization v1.0                   | 1        | [Seeed Studio](https://www.seeedstudio.com/Grove-Water-Atomization-v1-0.html) | $10.00     | $10.00     |                                 |
| Piezoelectric Diaphragm Micropumps | Bartels Mikrotechnik GmbH mp6-hyb              | 3        | [Servoflo Corporation](https://www.servoflo.com/micropumps/mp6) | $38.00     | $114.00    |                                 |
| Micropump Controller ICs           | Bartels Mikrotechnik GmbH mp6-oem              | 3        | [Servoflo Corporation](https://www.servoflo.com/micropumps/mp6) | $63.00     | $189.00    |                                 |
| Bluetooth Microcontroller          | Adafruit Feather nRF52 Bluefruit LE            | 1        | [Adafruit Industries](https://www.adafruit.com/product/3406) | $25.00     | $25.00     |                                 |
| Power Booster                      | PowerBoost 1000 Charger; 5V Lipo USB Boost; 1A | 1        | [Adafruit Industries](https://www.adafruit.com/product/2465) | $20.00     | $20.00     |                                 |
| Reservoirs                         | 1-2 mL Amber Glass Bottles                     | 3        | [Starside](https://www.amazon.com/Essential-Chemistry-Chemicals-Colognes-Perfumes-5/dp/B07MYY3T7S) | $0.20      | $20.00     | Supplier sells in group of 100. |
| PEEK Capillary Tubing              | 0.005 in I.D.; 10 cm length; 37005-10          | 1        | [ThermoFisher Scientific](https://www.thermofisher.com/order/catalog/product/37010-5?SID=srch-srp-37010-5#/37010-5) | $19.00     | $19.00     |                                 |
| General Tubing                     | MP-T 1.3 mm I.D.; 1 m length                   | 1        | [Servoflo Corporation](https://www.servoflo.com/micropumps/mp6) | $10.00     | $10.00     |                                 |
| General Purpose NPN Transistor     | 2N3904                                         | 4        | [Laqiya](https://www.amazon.com/gp/product/B01M309DB3/)      | $0.045     | $4.50      | Supplier sells in group of 100. |
|                                    |                                                |          |                                                              | **Total:** | $419.00    |                                 |

## Working Principles

### Vibrating Mesh Transducer (VMT) vs Ultrasonic Transducer

Vibrating mesh and ultrasonic transducers are very different nebulizing technologies. Unfortunately, most online suppliers will list VMTs as "ultrasonic transducers", since most people are more familiar with the later term. To help avoid confusion, most VMTs supplied online have two distinguishing characteristics: (1) their operating frequency is in the kilohertz range (110±5 kHz) and (2) they will often have a small dimple at the center of the transducer, which is the aperture (see below: **what you are looking for**).

<p align="center">

![Image of Vibrating Mesh Transducer with aperture label.](https://github.com/humancomputerintegration/trigeminal-based-temperature-illusions/blob/master/Images/VMT_Diagram.jpg)

</p>

In contrast, ultrasonic transducers have an operating frequency in the megahertz range (~1-2 MHz) and have a smooth, flat surface with the leads usually soldered to its back (see below: **what you want to _avoid_**).

<p align="center">

![Image of an Ultrasonic Transducer](https://github.com/humancomputerintegration/trigeminal-based-temperature-illusions/blob/master/Images/UT_Diagram.jpg)

</p>

### Calibrating Capillary-Transducer Distance

The current design requires manual calibration of the distance between each capillary tube and the back of the VMT. This can be done by switching on the VMT, pushing the tubing in or out of the tongue, and deliver a test droplet. If the test droplet is aerosolized, the tube was correctly adjusted. If a high pitched noise is heard, the tube may be touching the VMT directly: pull the tube back. If the droplet is not aerosolized, push the tube further in.

### Preloading & Flushing Channels

With the current design, users must manually preload each channel with liquid. In other words, turn on the pump mode and turn it off once it reaches the atomizer. As each micropump only pumps in one direction, flushing must also be manually done by removing the tubing from the tongue and dispensing liquid into a container. Before changing a channel's compound, flush the pumps and tubing with ethanol several times.

### Micropump Maintenance

When the device is not in use for long periods of time, it's best to flush all liquids from the micropump prior to storage (see Preloading & Flushing Channels). If you believe there is lingering liquids from a prior compound in a channel, consider flushing the micropump with ethanol repeatedly. Unfortunately, certain mixtures (e.g. suspensions) that may evaporate and leave deposits could alter the micropump's performance and may need replacement. Finally, if you are - for some reason - using biological agents and want to sterilize the micropump, Bartels Mikrotechnik GmbH has [a document on how to do so](https://www.servoflo.com/micropumps/mp6/app-notes-mp6/1313-sterilizing-mp6) (document hosted by Servoflo Corporation).

## Future Work

* **Immediately coming up:** Schematic cleaning and uploading (Jas).
* Improving interface between capillary tubes and VMT.
* Custom VMT driver board.

## Licensing & Citing

This documentation describes Open Hardware and is under the GNU General Public License v3.0. When using or building upon this device in an academic publication, please consider citing as follows:

Jas Brooks, Steven Nagels, and Pedro Lopes. 2020. “Trigeminal-based Temperature Illusions.” In *Proceedings of the 2020 CHI Conference on Human Factors in Computing Systems* (CHI ’20). Association for Computing Machinery, New York, NY, USA, 1–12. [DOI:10.1145/3313831.3376806](https://dl.acm.org/doi/abs/10.1145/3313831.3376806)
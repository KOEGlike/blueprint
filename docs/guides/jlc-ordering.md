| title       | Ordering from JLC                                                                                               |
| ----------- | --------------------------------------------------------------------------------------------------------------- |
| description | Step-by-step guide to ordering PCBs (and optional PCBA) from JLCPCB, including Gerbers, settings, and assembly. |

# How to Order from JLCPCB

First time ordering from JLCPCB, or PCBs in general? Or do you just need a refresher on ordering PCBs? Either way, you’re in the right place!

## 1. Getting Gerbers

PCB fabs take files called **Gerbers**. These are essentially outputted directions from whatever software you used (EasyEDA, KiCAD, etc) that contains information about the copper on the board, any silkscreen designs you have, and where to drill holes.

Getting Gerbers is easy. They are usually under some sort of `export` or `output` section of your software.

For EasyEDA, simply go to your PCB view (not the schematic view) and click

> File>Export>PCB Fabrication File(Gerber).

It will prompt you to check DRC which you should ALWAYS do

![](https://hc-cdn.hel1.your-objectstorage.com/s/v3/0c7636de3e8bfdc9d81aa68422c288ad41d1bf29_image.png)

If you are doing PCBA (A PCB board with the parts assembled at the factory), you will also need the Bill of Materials(BOM), and a Pick and Place File. You can get them by doing:

> File>Export>Bill of Materials(BOM)

> File>Export>Pick and Place File

## 2. Uploading to JLCPCB

Once you have your Gerbers, make sure they are zipped up so you can upload the folder all in one piece.

### What the Heck are These Settings?

PCB fabs have **a lot** of settings for board manufacturing, and JLCPCB is no exception. Here’s a rundown on what each section means:

### Base Options

![Base options](https://hc-cdn.hel1.your-objectstorage.com/s/v3/fc216d24e8d528d6ad0abca756f77ef570c2da01_base-options.png)

Base options (These are all the default options so you likely don’t need to change anything)

- **Base Material**: Use FR-4.
- **Layers**: 2 is the most common.
- **Dimensions**: Auto-filled from your Gerbers.
  > Note: The PCB is a lot cheaper when below 100mmx100mm so if you are close to that number, maybe try redesigning to be under
- **PCB QTY**: Choose 5 (minimum allowed).
- **Product Type**: Keep as Industrial/Consumer Electronics.

### PCB Specifications

![PCB specs](https://hc-cdn.hel1.your-objectstorage.com/s/v3/6d9b4cd159608e80a8102356a7af5b2d6973a447_pcb-specifications.png)

PCB specs

- **Different Design**: Auto-calculated.
- **Delivery Format**: Use `Single PCB`.
- **PCB Thickness**: Keep at 1.6mm.
- **PCB Color**: Green is cheapest.
- **Surface Finish**: Lead-free HASL or ENIG.

### High-spec Options

High-spec options

Try and always keep the high-spec options on the default. Changing them is quite expensive.

![](https://hc-cdn.hel1.your-objectstorage.com/s/v3/5206e96557b4b3956db3fd0cfb81edbc627e9483_image.png)

## 3. PCB Assembly

<aside>

👉 This only applies to you if you are doing PCBA (PCB Assembly). If you are not, skip this step

</aside>

Choose one of two assembly options for your PCB. **Assembly by JLCPCB** is the quickest and easiest.

### Assembly by JLCPCB

![Assembly options](https://hc-cdn.hel1.your-objectstorage.com/s/v3/a6fe8bd721b5c5fb98e09f8cdc78c75afb591e4b_assembly.png)

Assembly options

- **PCBA Type**: Choose Economic.
- **PCBA Qty**: 2 is enough to save cost.
- **Confirm Parts Placement**: Optional, useful check.

Then upload your `bom.csv` and `positions.csv` (KiCad) or `BOM_PCB.csv` and `PickAndPlace.csv` (EasyEDA).

![BOM Upload](https://hc-cdn.hel1.your-objectstorage.com/s/v3/712ec605dca59fa99ae56a22f0a1125befd9a068_bom.png)

BOM Upload

If parts like the NFC antenna are unselected, click _“Do Not Place”_.

![Orientation](https://hc-cdn.hel1.your-objectstorage.com/s/v3/9cdf44ed3edd19917da5a82fa9920a7c4790a1d0_orientation.png)

Orientation

Note: Resistors/most capacitors are bidirectional, but diodes, LEDs, and ICs are not.

### Assemble Yourself with a Stencil

Don’t want to pay extra for assembly? DIY is a great, hands-on learning option, but it’s for **advanced hackers** only.

You’ll need a soldering iron, solder paste, and a heat gun or reflow tool.

![Stencil](https://hc-cdn.hel1.your-objectstorage.com/s/v3/38e294ff4d70aef27b91a2680c90539b8bc8345f_stencil.png)

Stencil

Learn more: [YouTube guide](https://www.youtube.com/watch?v=5AyxuuFjZSI) or [PCB Elec guide](https://www.pcbelec.com/how-to-use-pcb-stencil.html)

## 4. Cart

Click **checkout** and fill out your information.

> To avoid excess shipping fees or customs, check out the Shipping Tips doc!
> The TLDR is that you should select Global Standard Direct for your shipping only if you can!

Then choose “Pay after Review” or “Pay Directly”, and click **Submit Order**.

![Submit order](https://hc-cdn.hel1.your-objectstorage.com/s/v3/7faa4f457bb8e28b9a1e4bb43b1b94da9987df7b_submit-order.png)

Submit order

Once asked for payment info, you can just close the tab.

## 5. PCB Review

Go to [My Orders](https://jlcpcb.com/user-center/orders/) and take a screenshot like below:

![Cart screenshot](https://hc-cdn.hel1.your-objectstorage.com/s/v3/51761af33c599ad46040b56176a516b543293c64_cart.png)

<aside>

##### 👉 You will need this screenshot for your PCB approval!

</aside>

[https://www.notion.so](https://www.notion.so)

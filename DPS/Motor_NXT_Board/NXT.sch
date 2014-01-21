<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="6.3">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="50" name="dxf" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="53" name="tGND_GNDA" color="7" fill="1" visible="no" active="no"/>
<layer number="54" name="bGND_GNDA" color="7" fill="1" visible="no" active="no"/>
<layer number="56" name="wert" color="7" fill="1" visible="no" active="no"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
<layer number="100" name="PaJa" color="12" fill="7" visible="yes" active="yes"/>
<layer number="101" name="Doplnky" color="5" fill="1" visible="yes" active="yes"/>
<layer number="102" name="Kola" color="11" fill="7" visible="yes" active="yes"/>
<layer number="103" name="Popisy" color="2" fill="8" visible="yes" active="yes"/>
<layer number="104" name="Zapojeni" color="6" fill="7" visible="yes" active="yes"/>
<layer number="110" name="wago-seda" color="7" fill="8" visible="yes" active="yes"/>
<layer number="111" name="wago-cervena" color="12" fill="8" visible="yes" active="yes"/>
<layer number="112" name="wago-zelena" color="2" fill="8" visible="yes" active="yes"/>
<layer number="113" name="wago-modra" color="1" fill="8" visible="yes" active="yes"/>
<layer number="151" name="HeatSink" color="7" fill="1" visible="no" active="no"/>
<layer number="200" name="200bmp" color="1" fill="10" visible="no" active="no"/>
<layer number="250" name="Descript" color="3" fill="1" visible="no" active="no"/>
<layer number="251" name="SMDround" color="12" fill="11" visible="no" active="no"/>
<layer number="254" name="OrgLBR" color="13" fill="1" visible="no" active="no"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="st-microelectronics">
<description>&lt;b&gt;ST Microelectronics Devices&lt;/b&gt;&lt;p&gt;
Microcontrollers,  I2C components, linear devices&lt;p&gt;
http://www.st.com&lt;p&gt;
&lt;i&gt;Include st-microelectronics-2.lbr, st-microelectronics-3.lbr.&lt;p&gt;&lt;/i&gt;

&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="DIL16">
<description>&lt;b&gt;Dual In Line Package&lt;/b&gt;</description>
<wire x1="10.16" y1="2.921" x2="-10.16" y2="2.921" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="-2.921" x2="10.16" y2="-2.921" width="0.1524" layer="21"/>
<wire x1="10.16" y1="2.921" x2="10.16" y2="-2.921" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="2.921" x2="-10.16" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="-2.921" x2="-10.16" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="1.016" x2="-10.16" y2="-1.016" width="0.1524" layer="21" curve="-180"/>
<pad name="1" x="-8.89" y="-3.81" drill="0.8128" diameter="1.778" shape="long" rot="R90"/>
<pad name="2" x="-6.35" y="-3.81" drill="0.8128" diameter="1.778" shape="long" rot="R90"/>
<pad name="7" x="6.35" y="-3.81" drill="0.8128" diameter="1.778" shape="long" rot="R90"/>
<pad name="8" x="8.89" y="-3.81" drill="0.8128" diameter="1.778" shape="long" rot="R90"/>
<pad name="3" x="-3.81" y="-3.81" drill="0.8128" diameter="1.778" shape="long" rot="R90"/>
<pad name="4" x="-1.27" y="-3.81" drill="0.8128" diameter="1.778" shape="long" rot="R90"/>
<pad name="6" x="3.81" y="-3.81" drill="0.8128" diameter="1.778" shape="long" rot="R90"/>
<pad name="5" x="1.27" y="-3.81" drill="0.8128" diameter="1.778" shape="long" rot="R90"/>
<pad name="9" x="8.89" y="3.81" drill="0.8128" diameter="1.778" shape="long" rot="R90"/>
<pad name="10" x="6.35" y="3.81" drill="0.8128" diameter="1.778" shape="long" rot="R90"/>
<pad name="11" x="3.81" y="3.81" drill="0.8128" diameter="1.778" shape="long" rot="R90"/>
<pad name="12" x="1.27" y="3.81" drill="0.8128" diameter="1.778" shape="long" rot="R90"/>
<pad name="13" x="-1.27" y="3.81" drill="0.8128" diameter="1.778" shape="long" rot="R90"/>
<pad name="14" x="-3.81" y="3.81" drill="0.8128" diameter="1.778" shape="long" rot="R90"/>
<pad name="15" x="-6.35" y="3.81" drill="0.8128" diameter="1.778" shape="long" rot="R90"/>
<pad name="16" x="-8.89" y="3.81" drill="0.8128" diameter="1.778" shape="long" rot="R90"/>
<text x="-10.541" y="-2.921" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="-7.493" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="L293D">
<wire x1="-10.16" y1="20.32" x2="-10.16" y2="-20.32" width="0.254" layer="94"/>
<wire x1="-10.16" y1="-20.32" x2="10.16" y2="-20.32" width="0.254" layer="94"/>
<wire x1="10.16" y1="-20.32" x2="10.16" y2="20.32" width="0.254" layer="94"/>
<wire x1="10.16" y1="20.32" x2="-10.16" y2="20.32" width="0.254" layer="94"/>
<text x="-10.16" y="21.336" size="1.778" layer="95">&gt;NAME</text>
<text x="-10.16" y="-22.86" size="1.778" layer="96">&gt;VALUE</text>
<pin name="1-2EN" x="-15.24" y="17.78" length="middle" direction="in"/>
<pin name="1A" x="-15.24" y="12.7" length="middle" direction="in"/>
<pin name="1Y" x="-15.24" y="7.62" length="middle" direction="out"/>
<pin name="GND1" x="-15.24" y="2.54" length="middle" direction="pwr"/>
<pin name="GND2" x="-15.24" y="-2.54" length="middle" direction="pwr"/>
<pin name="2Y" x="-15.24" y="-7.62" length="middle" direction="out"/>
<pin name="2A" x="-15.24" y="-12.7" length="middle" direction="in"/>
<pin name="VCC2" x="-15.24" y="-17.78" length="middle" direction="pwr"/>
<pin name="VCC1" x="15.24" y="17.78" length="middle" direction="pwr" rot="R180"/>
<pin name="4A" x="15.24" y="12.7" length="middle" direction="in" rot="R180"/>
<pin name="4Y" x="15.24" y="7.62" length="middle" direction="out" rot="R180"/>
<pin name="GND3" x="15.24" y="2.54" length="middle" direction="pwr" rot="R180"/>
<pin name="GND4" x="15.24" y="-2.54" length="middle" direction="pwr" rot="R180"/>
<pin name="3Y" x="15.24" y="-7.62" length="middle" direction="out" rot="R180"/>
<pin name="3A" x="15.24" y="-12.7" length="middle" direction="in" rot="R180"/>
<pin name="3-4EN" x="15.24" y="-17.78" length="middle" direction="in" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="L293D" prefix="IC">
<description>&lt;b&gt;PUSH-PULL 4 CHANNEL DRIVER&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="L293D" x="0" y="0"/>
</gates>
<devices>
<device name="" package="DIL16">
<connects>
<connect gate="G$1" pin="1-2EN" pad="1"/>
<connect gate="G$1" pin="1A" pad="2"/>
<connect gate="G$1" pin="1Y" pad="3"/>
<connect gate="G$1" pin="2A" pad="7"/>
<connect gate="G$1" pin="2Y" pad="6"/>
<connect gate="G$1" pin="3-4EN" pad="9"/>
<connect gate="G$1" pin="3A" pad="10"/>
<connect gate="G$1" pin="3Y" pad="11"/>
<connect gate="G$1" pin="4A" pad="15"/>
<connect gate="G$1" pin="4Y" pad="14"/>
<connect gate="G$1" pin="GND1" pad="4"/>
<connect gate="G$1" pin="GND2" pad="5"/>
<connect gate="G$1" pin="GND3" pad="13"/>
<connect gate="G$1" pin="GND4" pad="12"/>
<connect gate="G$1" pin="VCC1" pad="16"/>
<connect gate="G$1" pin="VCC2" pad="8"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="L293D" constant="no"/>
<attribute name="OC_FARNELL" value="9589619" constant="no"/>
<attribute name="OC_NEWARK" value="56P8249" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="#PaJa_konektory">
<description>&lt;B&gt;PaJa_konektory&lt;/B&gt; - knihovna   &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; 
&lt;I&gt;(vytvoreno 1.6.2011)&lt;/I&gt;&lt;BR&gt;
Knihovna konektoru do Eagle &lt;I&gt;(od verze 5.6)&lt;/I&gt;&lt;BR&gt;
&lt;BR&gt;
Knihovna obsahuje: 91 soucastek na DPS, 92 do SCHematu&lt;BR&gt;
&lt;BR&gt;
&lt;Author&gt;Copyright (C) PaJa 2011&lt;BR&gt;
http://www.paja-trb.unas.cz&lt;BR&gt;
paja-trb@seznam.cz
&lt;/author&gt;</description>
<packages>
<package name="MLW10A">
<wire x1="-6.35" y1="10.16" x2="-3.81" y2="10.16" width="0.254" layer="21"/>
<wire x1="-3.81" y1="10.16" x2="-5.08" y2="7.62" width="0.254" layer="21"/>
<wire x1="-5.08" y1="7.62" x2="-6.35" y2="10.16" width="0.254" layer="21"/>
<wire x1="2.794" y1="9.906" x2="2.794" y2="10.922" width="0.127" layer="21"/>
<wire x1="2.794" y1="9.906" x2="4.826" y2="9.906" width="0.127" layer="21"/>
<wire x1="4.826" y1="10.922" x2="4.826" y2="9.906" width="0.127" layer="21"/>
<wire x1="2.159" y1="3.683" x2="3.048" y2="3.683" width="0.127" layer="21"/>
<wire x1="3.048" y1="5.969" x2="4.572" y2="5.969" width="0.127" layer="21" curve="-180"/>
<wire x1="4.572" y1="5.969" x2="4.572" y2="4.445" width="0.127" layer="21"/>
<wire x1="4.572" y1="3.683" x2="5.969" y2="3.683" width="0.127" layer="21"/>
<wire x1="-2.159" y1="10.922" x2="2.159" y2="10.922" width="0.127" layer="21"/>
<wire x1="2.159" y1="3.429" x2="-2.159" y2="3.429" width="0.127" layer="21"/>
<wire x1="-2.159" y1="10.922" x2="-2.159" y2="3.429" width="0.127" layer="21"/>
<wire x1="2.159" y1="10.922" x2="2.159" y2="4.445" width="0.127" layer="21"/>
<wire x1="2.159" y1="4.445" x2="2.159" y2="3.683" width="0.127" layer="21"/>
<wire x1="2.159" y1="3.683" x2="2.159" y2="3.429" width="0.127" layer="21"/>
<wire x1="2.159" y1="3.429" x2="2.159" y2="2.159" width="0.127" layer="21"/>
<wire x1="3.048" y1="5.969" x2="3.048" y2="4.445" width="0.127" layer="21"/>
<wire x1="3.048" y1="4.445" x2="3.048" y2="3.683" width="0.127" layer="21"/>
<wire x1="3.048" y1="4.445" x2="4.572" y2="4.445" width="0.127" layer="21"/>
<wire x1="4.572" y1="4.445" x2="4.572" y2="3.683" width="0.127" layer="21"/>
<wire x1="5.969" y1="3.683" x2="5.969" y2="10.922" width="0.127" layer="21"/>
<wire x1="5.969" y1="3.683" x2="5.969" y2="2.032" width="0.127" layer="21"/>
<wire x1="-5.715" y1="2.032" x2="-4.445" y2="2.032" width="0.127" layer="51"/>
<wire x1="-4.445" y1="2.032" x2="-3.175" y2="2.032" width="0.127" layer="21"/>
<wire x1="-3.175" y1="2.032" x2="-1.905" y2="2.032" width="0.127" layer="51"/>
<wire x1="-1.905" y1="2.032" x2="-0.635" y2="2.032" width="0.127" layer="21"/>
<wire x1="-0.635" y1="2.032" x2="0.635" y2="2.032" width="0.127" layer="51"/>
<wire x1="0.635" y1="2.032" x2="1.905" y2="2.032" width="0.127" layer="21"/>
<wire x1="1.905" y1="2.032" x2="2.159" y2="2.032" width="0.127" layer="51"/>
<wire x1="3.175" y1="2.032" x2="4.445" y2="2.032" width="0.127" layer="21"/>
<wire x1="5.715" y1="2.032" x2="4.445" y2="2.032" width="0.127" layer="51"/>
<wire x1="0" y1="10.033" x2="0" y2="10.287" width="0.508" layer="21"/>
<wire x1="9.525" y1="4.445" x2="9.525" y2="8.255" width="0.127" layer="21"/>
<wire x1="6.731" y1="8.255" x2="9.525" y2="8.255" width="0.127" layer="21"/>
<wire x1="6.731" y1="8.255" x2="6.731" y2="4.445" width="0.127" layer="21"/>
<wire x1="2.159" y1="10.922" x2="10.16" y2="10.922" width="0.127" layer="21"/>
<wire x1="10.16" y1="10.922" x2="10.16" y2="2.032" width="0.127" layer="21"/>
<wire x1="10.16" y1="2.032" x2="9.017" y2="2.032" width="0.127" layer="21"/>
<wire x1="-2.159" y1="10.922" x2="-10.16" y2="10.922" width="0.127" layer="21"/>
<wire x1="-10.16" y1="2.032" x2="-10.16" y2="10.922" width="0.127" layer="21"/>
<wire x1="-10.16" y1="2.032" x2="-9.017" y2="2.032" width="0.127" layer="21"/>
<wire x1="5.969" y1="2.032" x2="5.715" y2="2.032" width="0.127" layer="21"/>
<wire x1="2.159" y1="2.159" x2="2.159" y2="2.032" width="0.127" layer="51"/>
<wire x1="2.159" y1="2.032" x2="3.175" y2="2.032" width="0.127" layer="51"/>
<wire x1="8.001" y1="2.032" x2="8.001" y2="1.397" width="0.127" layer="21"/>
<wire x1="9.017" y1="1.397" x2="8.001" y2="1.397" width="0.127" layer="21"/>
<wire x1="9.017" y1="1.397" x2="9.017" y2="2.032" width="0.127" layer="21"/>
<wire x1="8.001" y1="2.032" x2="5.969" y2="2.032" width="0.127" layer="21"/>
<wire x1="9.017" y1="2.032" x2="8.001" y2="2.032" width="0.127" layer="21"/>
<wire x1="-9.017" y1="2.032" x2="-9.017" y2="1.397" width="0.127" layer="21"/>
<wire x1="-9.017" y1="2.032" x2="-8.001" y2="2.032" width="0.127" layer="21"/>
<wire x1="-8.001" y1="1.397" x2="-9.017" y2="1.397" width="0.127" layer="21"/>
<wire x1="-8.001" y1="1.397" x2="-8.001" y2="2.032" width="0.127" layer="21"/>
<wire x1="-8.001" y1="2.032" x2="-5.715" y2="2.032" width="0.127" layer="21"/>
<wire x1="2.159" y1="4.445" x2="-2.159" y2="4.445" width="0.127" layer="21"/>
<wire x1="6.731" y1="4.445" x2="9.525" y2="4.445" width="0.127" layer="21"/>
<circle x="-5.08" y="1.27" radius="0.449" width="0.127" layer="102"/>
<circle x="-2.54" y="1.27" radius="0.449" width="0.127" layer="102"/>
<circle x="0" y="1.27" radius="0.449" width="0.127" layer="102"/>
<circle x="2.54" y="1.27" radius="0.449" width="0.127" layer="102"/>
<circle x="5.08" y="1.27" radius="0.449" width="0.127" layer="102"/>
<circle x="5.08" y="-1.27" radius="0.449" width="0.127" layer="102"/>
<circle x="2.54" y="-1.27" radius="0.449" width="0.127" layer="102"/>
<circle x="0" y="-1.27" radius="0.449" width="0.127" layer="102"/>
<circle x="-2.54" y="-1.27" radius="0.449" width="0.127" layer="102"/>
<circle x="-5.08" y="-1.27" radius="0.449" width="0.127" layer="102"/>
<pad name="1" x="-5.08" y="-1.27" drill="0.9144" diameter="1.778" shape="square"/>
<pad name="2" x="-5.08" y="1.27" drill="0.9144" diameter="1.778" shape="octagon"/>
<pad name="3" x="-2.54" y="-1.27" drill="0.9144" diameter="1.778" shape="octagon"/>
<pad name="4" x="-2.54" y="1.27" drill="0.9144" diameter="1.778" shape="octagon"/>
<pad name="5" x="0" y="-1.27" drill="0.9144" diameter="1.778" shape="octagon"/>
<pad name="6" x="0" y="1.27" drill="0.9144" diameter="1.778" shape="octagon"/>
<pad name="7" x="2.54" y="-1.27" drill="0.9144" diameter="1.778" shape="octagon"/>
<pad name="8" x="2.54" y="1.27" drill="0.9144" diameter="1.778" shape="octagon"/>
<pad name="9" x="5.08" y="-1.27" drill="0.9144" diameter="1.778" shape="octagon"/>
<pad name="10" x="5.08" y="1.27" drill="0.9144" diameter="1.778" shape="octagon"/>
<text x="-10.1854" y="11.43" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-0.0254" y="11.43" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
<text x="8.8265" y="5.334" size="1.27" layer="101" ratio="10" rot="R90">10</text>
<text x="-7.3025" y="-1.905" size="1.27" layer="101" ratio="10">1</text>
<text x="-7.3025" y="0.3175" size="1.27" layer="101" ratio="10">2</text>
<text x="9.8425" y="2.54" size="0.254" layer="100" rot="R180">PaJa</text>
<rectangle x1="-0.254" y1="4.445" x2="0.254" y2="10.287" layer="21"/>
<rectangle x1="-6.223" y1="9.652" x2="-3.937" y2="10.16" layer="21"/>
<rectangle x1="-5.969" y1="9.144" x2="-4.191" y2="9.652" layer="21"/>
<rectangle x1="-5.715" y1="8.636" x2="-4.445" y2="9.144" layer="21"/>
<rectangle x1="-5.461" y1="8.128" x2="-4.699" y2="8.636" layer="21"/>
<rectangle x1="-5.207" y1="7.874" x2="-4.953" y2="8.128" layer="21"/>
<rectangle x1="-5.334" y1="-0.381" x2="-4.826" y2="0.381" layer="21"/>
<rectangle x1="-5.334" y1="0.381" x2="-4.826" y2="2.032" layer="51"/>
<rectangle x1="-5.334" y1="-1.524" x2="-4.826" y2="-0.381" layer="51"/>
<rectangle x1="-2.794" y1="0.381" x2="-2.286" y2="2.032" layer="51"/>
<rectangle x1="-2.794" y1="-0.381" x2="-2.286" y2="0.381" layer="21"/>
<rectangle x1="-2.794" y1="-1.524" x2="-2.286" y2="-0.381" layer="51"/>
<rectangle x1="-0.254" y1="0.381" x2="0.254" y2="2.032" layer="51"/>
<rectangle x1="-0.254" y1="-0.381" x2="0.254" y2="0.381" layer="21"/>
<rectangle x1="-0.254" y1="-1.524" x2="0.254" y2="-0.381" layer="51"/>
<rectangle x1="2.286" y1="0.381" x2="2.794" y2="2.032" layer="51"/>
<rectangle x1="2.286" y1="-0.381" x2="2.794" y2="0.381" layer="21"/>
<rectangle x1="2.286" y1="-1.524" x2="2.794" y2="-0.381" layer="51"/>
<rectangle x1="4.826" y1="0.381" x2="5.334" y2="2.032" layer="51"/>
<rectangle x1="4.826" y1="-0.381" x2="5.334" y2="0.381" layer="21"/>
<rectangle x1="4.826" y1="-1.524" x2="5.334" y2="-0.381" layer="51"/>
<rectangle x1="-2.794" y1="1.016" x2="-2.286" y2="1.524" layer="51"/>
<rectangle x1="-5.334" y1="1.016" x2="-4.826" y2="1.524" layer="51"/>
<rectangle x1="-0.254" y1="1.016" x2="0.254" y2="1.524" layer="51"/>
<rectangle x1="4.826" y1="1.016" x2="5.334" y2="1.524" layer="51"/>
<rectangle x1="2.286" y1="1.016" x2="2.794" y2="1.524" layer="51"/>
<rectangle x1="-2.794" y1="-1.524" x2="-2.286" y2="-1.016" layer="51"/>
<rectangle x1="-5.334" y1="-1.524" x2="-4.826" y2="-1.016" layer="51"/>
<rectangle x1="-0.254" y1="-1.524" x2="0.254" y2="-1.016" layer="51"/>
<rectangle x1="4.826" y1="-1.524" x2="5.334" y2="-1.016" layer="51"/>
<rectangle x1="2.286" y1="-1.524" x2="2.794" y2="-1.016" layer="51"/>
</package>
<package name="MLW10G">
<wire x1="-8.89" y1="3.175" x2="8.89" y2="3.175" width="0.127" layer="21"/>
<wire x1="8.89" y1="-3.175" x2="8.89" y2="3.175" width="0.127" layer="21"/>
<wire x1="-8.89" y1="3.175" x2="-8.89" y2="-3.175" width="0.127" layer="21"/>
<wire x1="-10.16" y1="4.445" x2="-8.5725" y2="4.445" width="0.127" layer="21"/>
<wire x1="10.16" y1="-4.445" x2="10.16" y2="4.445" width="0.127" layer="21"/>
<wire x1="-10.16" y1="4.445" x2="-10.16" y2="-4.445" width="0.127" layer="21"/>
<wire x1="2.032" y1="-2.413" x2="-2.032" y2="-2.413" width="0.127" layer="21"/>
<wire x1="-2.032" y1="-3.175" x2="-2.032" y2="-2.413" width="0.127" layer="21"/>
<wire x1="-2.032" y1="-3.175" x2="-8.89" y2="-3.175" width="0.127" layer="21"/>
<wire x1="-2.032" y1="-3.175" x2="-2.032" y2="-3.429" width="0.127" layer="21"/>
<wire x1="2.032" y1="-2.413" x2="2.032" y2="-3.175" width="0.127" layer="21"/>
<wire x1="8.5725" y1="4.445" x2="10.16" y2="4.445" width="0.127" layer="21"/>
<wire x1="0.3175" y1="4.445" x2="7.9375" y2="4.445" width="0.127" layer="21"/>
<wire x1="-7.9375" y1="4.445" x2="-0.3175" y2="4.445" width="0.127" layer="21"/>
<wire x1="10.16" y1="-4.445" x2="2.032" y2="-4.445" width="0.127" layer="21"/>
<wire x1="2.032" y1="-4.445" x2="-2.032" y2="-4.445" width="0.127" layer="21"/>
<wire x1="8.89" y1="-3.175" x2="2.032" y2="-3.175" width="0.127" layer="21"/>
<wire x1="2.032" y1="-3.175" x2="2.032" y2="-3.429" width="0.127" layer="21"/>
<wire x1="2.032" y1="-3.429" x2="2.032" y2="-4.445" width="0.127" layer="21"/>
<wire x1="2.032" y1="-3.429" x2="9.144" y2="-3.429" width="0.0508" layer="21"/>
<wire x1="9.144" y1="-3.429" x2="9.144" y2="3.429" width="0.0508" layer="21"/>
<wire x1="9.144" y1="3.429" x2="-9.144" y2="3.429" width="0.0508" layer="21"/>
<wire x1="-9.144" y1="3.429" x2="-9.144" y2="-3.429" width="0.0508" layer="21"/>
<wire x1="-9.144" y1="-3.429" x2="-2.032" y2="-3.429" width="0.0508" layer="21"/>
<wire x1="-2.032" y1="-3.429" x2="-2.032" y2="-4.445" width="0.127" layer="21"/>
<wire x1="-2.032" y1="-4.445" x2="-4.445" y2="-4.445" width="0.127" layer="21"/>
<wire x1="-4.445" y1="-4.318" x2="-4.445" y2="-4.445" width="0.127" layer="21"/>
<wire x1="-4.445" y1="-4.318" x2="-5.715" y2="-4.318" width="0.127" layer="21"/>
<wire x1="-5.715" y1="-4.445" x2="-5.715" y2="-4.318" width="0.127" layer="21"/>
<wire x1="-5.715" y1="-4.445" x2="-10.16" y2="-4.445" width="0.127" layer="21"/>
<wire x1="-8.5725" y1="4.445" x2="-7.9375" y2="4.445" width="0.127" layer="21" curve="-180"/>
<wire x1="-0.3175" y1="4.445" x2="0.3175" y2="4.445" width="0.127" layer="21" curve="-180"/>
<wire x1="7.9375" y1="4.445" x2="8.5725" y2="4.445" width="0.127" layer="21" curve="-180"/>
<circle x="-5.08" y="1.27" radius="0.449" width="0.127" layer="102"/>
<circle x="-2.54" y="1.27" radius="0.449" width="0.127" layer="102"/>
<circle x="0" y="1.27" radius="0.449" width="0.127" layer="102"/>
<circle x="2.54" y="1.27" radius="0.449" width="0.127" layer="102"/>
<circle x="5.08" y="1.27" radius="0.449" width="0.127" layer="102"/>
<circle x="5.08" y="-1.27" radius="0.449" width="0.127" layer="102"/>
<circle x="2.54" y="-1.27" radius="0.449" width="0.127" layer="102"/>
<circle x="0" y="-1.27" radius="0.449" width="0.127" layer="102"/>
<circle x="-2.54" y="-1.27" radius="0.449" width="0.127" layer="102"/>
<circle x="-5.08" y="-1.27" radius="0.449" width="0.127" layer="102"/>
<pad name="1" x="-5.08" y="-1.27" drill="0.9144" diameter="1.778" shape="square"/>
<pad name="2" x="-5.08" y="1.27" drill="0.9144" diameter="1.778" shape="offset" rot="R90"/>
<pad name="3" x="-2.54" y="-1.27" drill="0.9144" diameter="1.778" shape="offset" rot="R270"/>
<pad name="4" x="-2.54" y="1.27" drill="0.9144" diameter="1.778" shape="offset" rot="R90"/>
<pad name="5" x="0" y="-1.27" drill="0.9144" diameter="1.778" shape="offset" rot="R270"/>
<pad name="6" x="0" y="1.27" drill="0.9144" diameter="1.778" shape="offset" rot="R90"/>
<pad name="7" x="2.54" y="-1.27" drill="0.9144" diameter="1.778" shape="offset" rot="R270"/>
<pad name="8" x="2.54" y="1.27" drill="0.9144" diameter="1.778" shape="offset" rot="R90"/>
<pad name="9" x="5.08" y="-1.27" drill="0.9144" diameter="1.778" shape="offset" rot="R270"/>
<pad name="10" x="5.08" y="1.27" drill="0.9144" diameter="1.778" shape="offset" rot="R90"/>
<text x="-1.016" y="-4.064" size="1.27" layer="101" ratio="10">10</text>
<text x="-8.255" y="5.08" size="1.778" layer="25">&gt;NAME</text>
<text x="0.3175" y="5.08" size="1.778" layer="27">&gt;VALUE</text>
<text x="-7.62" y="-1.905" size="1.27" layer="101" ratio="10">1</text>
<text x="-7.62" y="0.635" size="1.27" layer="101" ratio="10">2</text>
<text x="8.89" y="-4.1275" size="0.254" layer="100">PaJa</text>
<rectangle x1="-2.794" y1="1.016" x2="-2.286" y2="1.524" layer="51"/>
<rectangle x1="-5.334" y1="1.016" x2="-4.826" y2="1.524" layer="51" rot="R90"/>
<rectangle x1="-0.254" y1="1.016" x2="0.254" y2="1.524" layer="51"/>
<rectangle x1="4.826" y1="1.016" x2="5.334" y2="1.524" layer="51"/>
<rectangle x1="2.286" y1="1.016" x2="2.794" y2="1.524" layer="51"/>
<rectangle x1="-2.794" y1="-1.524" x2="-2.286" y2="-1.016" layer="51"/>
<rectangle x1="-5.334" y1="-1.524" x2="-4.826" y2="-1.016" layer="51"/>
<rectangle x1="-0.254" y1="-1.524" x2="0.254" y2="-1.016" layer="51"/>
<rectangle x1="4.826" y1="-1.524" x2="5.334" y2="-1.016" layer="51"/>
<rectangle x1="2.286" y1="-1.524" x2="2.794" y2="-1.016" layer="51"/>
</package>
<package name="S1G4_JUM">
<wire x1="-2.544" y1="1.016" x2="-2.29" y2="1.27" width="0.127" layer="21"/>
<wire x1="-2.544" y1="1.016" x2="-2.798" y2="1.27" width="0.127" layer="21"/>
<wire x1="-2.544" y1="-1.016" x2="-2.29" y2="-1.27" width="0.127" layer="21"/>
<wire x1="-2.544" y1="-1.016" x2="-2.798" y2="-1.27" width="0.127" layer="21"/>
<wire x1="-2.798" y1="-1.27" x2="-4.83" y2="-1.27" width="0.127" layer="21"/>
<wire x1="-5.084" y1="-1.016" x2="-4.83" y2="-1.27" width="0.127" layer="21"/>
<wire x1="-0.258" y1="-1.27" x2="-0.004" y2="-1.016" width="0.127" layer="21"/>
<wire x1="-0.258" y1="-1.27" x2="-2.29" y2="-1.27" width="0.127" layer="21"/>
<wire x1="-0.258" y1="1.27" x2="-0.004" y2="1.016" width="0.127" layer="21"/>
<wire x1="-0.258" y1="1.27" x2="-2.29" y2="1.27" width="0.127" layer="21"/>
<wire x1="-2.798" y1="1.27" x2="-4.83" y2="1.27" width="0.127" layer="21"/>
<wire x1="-5.084" y1="1.016" x2="-4.83" y2="1.27" width="0.127" layer="21"/>
<wire x1="-5.084" y1="1.016" x2="-5.084" y2="-1.016" width="0.127" layer="21"/>
<wire x1="-2.544" y1="0.954" x2="-2.544" y2="-0.954" width="0.127" layer="21"/>
<wire x1="2.544" y1="1.016" x2="2.798" y2="1.27" width="0.127" layer="21"/>
<wire x1="2.544" y1="1.016" x2="2.29" y2="1.27" width="0.127" layer="21"/>
<wire x1="2.544" y1="-1.016" x2="2.798" y2="-1.27" width="0.127" layer="21"/>
<wire x1="2.544" y1="-1.016" x2="2.29" y2="-1.27" width="0.127" layer="21"/>
<wire x1="2.29" y1="-1.27" x2="0.258" y2="-1.27" width="0.127" layer="21"/>
<wire x1="0.004" y1="-1.016" x2="0.258" y2="-1.27" width="0.127" layer="21"/>
<wire x1="4.83" y1="-1.27" x2="5.084" y2="-1.016" width="0.127" layer="21"/>
<wire x1="4.83" y1="-1.27" x2="2.798" y2="-1.27" width="0.127" layer="21"/>
<wire x1="5.084" y1="-1.016" x2="5.084" y2="1.016" width="0.127" layer="21"/>
<wire x1="4.83" y1="1.27" x2="5.084" y2="1.016" width="0.127" layer="21"/>
<wire x1="4.83" y1="1.27" x2="2.798" y2="1.27" width="0.127" layer="21"/>
<wire x1="2.29" y1="1.27" x2="0.258" y2="1.27" width="0.127" layer="21"/>
<wire x1="0.004" y1="1.016" x2="0.258" y2="1.27" width="0.127" layer="21"/>
<wire x1="0.004" y1="1.016" x2="0.004" y2="-1.016" width="0.127" layer="21"/>
<wire x1="2.544" y1="0.954" x2="2.544" y2="-0.954" width="0.127" layer="21"/>
<circle x="-3.81" y="0" radius="0.5724" width="0.127" layer="102"/>
<circle x="-1.27" y="0" radius="0.5724" width="0.127" layer="102"/>
<circle x="1.27" y="0" radius="0.5724" width="0.127" layer="102"/>
<circle x="3.81" y="0" radius="0.5724" width="0.127" layer="102"/>
<pad name="1" x="-3.81" y="0" drill="1.016" diameter="1.778" shape="long" rot="R90"/>
<pad name="2" x="-1.27" y="0" drill="1.016" diameter="1.778" shape="long" rot="R90"/>
<pad name="3" x="1.27" y="0" drill="1.016" diameter="1.778" shape="long" rot="R90"/>
<pad name="4" x="3.81" y="0" drill="1.016" diameter="1.778" shape="long" rot="R90"/>
<text x="-2.858" y="1.492" size="1.27" layer="25">&gt;NAME</text>
<text x="-3.335" y="-2.762" size="1.27" layer="27">&gt;VALUE</text>
<text x="-0.159" y="-0.795" size="0.254" layer="100" rot="R90">PaJa</text>
<rectangle x1="-1.5788" y1="-0.3048" x2="-0.9692" y2="0.3048" layer="51"/>
<rectangle x1="-4.1188" y1="-0.3048" x2="-3.5092" y2="0.3048" layer="51"/>
<rectangle x1="3.5092" y1="-0.3048" x2="4.1188" y2="0.3048" layer="51"/>
<rectangle x1="0.9692" y1="-0.3048" x2="1.5788" y2="0.3048" layer="51"/>
</package>
<package name="ARK500/2">
<wire x1="-5.08" y1="-3.556" x2="-5.08" y2="-2.159" width="0.127" layer="21"/>
<wire x1="5.08" y1="3.937" x2="-5.08" y2="3.937" width="0.127" layer="21"/>
<wire x1="5.08" y1="3.937" x2="5.08" y2="3.088" width="0.127" layer="21"/>
<wire x1="5.08" y1="2.199" x2="5.08" y2="2.159" width="0.127" layer="21"/>
<wire x1="-5.08" y1="-3.556" x2="5.08" y2="-3.556" width="0.127" layer="21"/>
<wire x1="-5.08" y1="2.159" x2="-5.08" y2="3.937" width="0.127" layer="21"/>
<wire x1="-5.08" y1="2.159" x2="5.08" y2="2.159" width="0.127" layer="21"/>
<wire x1="5.08" y1="2.159" x2="5.08" y2="-2.159" width="0.127" layer="21"/>
<wire x1="-5.08" y1="-2.159" x2="5.08" y2="-2.159" width="0.127" layer="21"/>
<wire x1="-5.08" y1="-2.159" x2="-5.08" y2="2.159" width="0.127" layer="21"/>
<wire x1="5.08" y1="-2.159" x2="5.08" y2="-3.556" width="0.127" layer="21"/>
<wire x1="1.4986" y1="-1.397" x2="3.9116" y2="1.016" width="0.127" layer="51"/>
<wire x1="1.1176" y1="-1.016" x2="3.5306" y2="1.397" width="0.127" layer="51"/>
<wire x1="-3.9116" y1="-1.016" x2="-1.4986" y2="1.397" width="0.127" layer="51"/>
<wire x1="-3.5306" y1="-1.397" x2="-1.1176" y2="1.016" width="0.127" layer="51"/>
<wire x1="1.4986" y1="-1.016" x2="3.5306" y2="1.016" width="0.6096" layer="51"/>
<wire x1="-3.5306" y1="-1.016" x2="-1.4986" y2="1.016" width="0.6096" layer="51"/>
<wire x1="1.1176" y1="-1.016" x2="1.4986" y2="-1.397" width="0.127" layer="51"/>
<wire x1="3.5306" y1="1.397" x2="3.9116" y2="1.016" width="0.127" layer="51"/>
<wire x1="-3.9116" y1="-1.016" x2="-3.5306" y2="-1.397" width="0.127" layer="51"/>
<wire x1="-1.4986" y1="1.397" x2="-1.1176" y2="1.016" width="0.127" layer="51"/>
<wire x1="5.08" y1="2.199" x2="5.588" y2="2.072" width="0.127" layer="21"/>
<wire x1="5.588" y1="2.072" x2="5.588" y2="3.215" width="0.127" layer="21"/>
<wire x1="5.588" y1="3.215" x2="5.08" y2="3.088" width="0.127" layer="21"/>
<wire x1="5.08" y1="3.088" x2="5.08" y2="2.199" width="0.127" layer="21"/>
<circle x="2.5146" y="3.048" radius="0.508" width="0.127" layer="21"/>
<circle x="-2.5146" y="3.048" radius="0.508" width="0.127" layer="21"/>
<circle x="2.5146" y="0" radius="1.778" width="0.127" layer="51"/>
<circle x="-2.5146" y="0" radius="1.778" width="0.127" layer="51"/>
<circle x="-2.54" y="0" radius="0.7099" width="0.127" layer="102"/>
<circle x="2.54" y="0" radius="0.7099" width="0.127" layer="102"/>
<pad name="1" x="-2.54" y="0" drill="1.27" diameter="3.2" shape="octagon"/>
<pad name="2" x="2.54" y="0" drill="1.27" diameter="3.2" shape="octagon"/>
<text x="-2.695" y="-5.398" size="1.4224" layer="25">&gt;NAME</text>
<text x="-4.7093" y="-3.33" size="1.016" layer="27">&gt;VALUE</text>
<text x="-4.127" y="2.54" size="0.9906" layer="21" ratio="12">1</text>
<text x="0.794" y="2.54" size="0.9906" layer="21" ratio="12">2</text>
<text x="-0.477" y="2.2866" size="0.254" layer="100">PaJa</text>
<text x="2.0377" y="-3.4199" size="0.6096" layer="101">dratu</text>
<text x="1.7395" y="-2.7752" size="0.6096" layer="101">strana</text>
<rectangle x1="-0.381" y1="-1.905" x2="0.381" y2="1.905" layer="21"/>
</package>
</packages>
<symbols>
<symbol name="ML10">
<wire x1="3.81" y1="-7.62" x2="-3.81" y2="-7.62" width="0.4064" layer="94"/>
<wire x1="-3.81" y1="7.62" x2="-3.81" y2="-7.62" width="0.4064" layer="94"/>
<wire x1="3.81" y1="-7.62" x2="3.81" y2="7.62" width="0.4064" layer="94"/>
<wire x1="-3.81" y1="7.62" x2="3.81" y2="7.62" width="0.4064" layer="94"/>
<wire x1="1.27" y1="5.08" x2="2.54" y2="5.08" width="0.6096" layer="94"/>
<wire x1="1.27" y1="2.54" x2="2.54" y2="2.54" width="0.6096" layer="94"/>
<wire x1="1.27" y1="0" x2="2.54" y2="0" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-2.54" x2="2.54" y2="-2.54" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-5.08" x2="2.54" y2="-5.08" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="5.08" x2="-1.27" y2="5.08" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="2.54" x2="-1.27" y2="2.54" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="0" x2="-1.27" y2="0" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="-2.54" x2="-1.27" y2="-2.54" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="-5.08" x2="-1.27" y2="-5.08" width="0.6096" layer="94"/>
<text x="-3.81" y="-10.16" size="1.778" layer="96">&gt;VALUE</text>
<text x="-3.81" y="8.382" size="1.778" layer="95">&gt;NAME</text>
<text x="2.54" y="-7.3025" size="0.254" layer="100">PaJa</text>
<pin name="1" x="7.62" y="-5.08" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="2" x="-7.62" y="-5.08" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="3" x="7.62" y="-2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="4" x="-7.62" y="-2.54" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="5" x="7.62" y="0" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="6" x="-7.62" y="0" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="7" x="7.62" y="2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="8" x="-7.62" y="2.54" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="9" x="7.62" y="5.08" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="10" x="-7.62" y="5.08" visible="pad" length="middle" direction="pas" swaplevel="1"/>
</symbol>
<symbol name="S1G4">
<wire x1="-4.445" y1="1.27" x2="-4.445" y2="5.715" width="0.4064" layer="94"/>
<wire x1="2.54" y1="3.81" x2="2.54" y2="2.54" width="0.6096" layer="94"/>
<wire x1="0" y1="3.81" x2="0" y2="2.54" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="3.81" x2="-2.54" y2="2.54" width="0.6096" layer="94"/>
<wire x1="6.985" y1="5.715" x2="-4.445" y2="5.715" width="0.4064" layer="94"/>
<wire x1="-4.445" y1="1.27" x2="6.985" y2="1.27" width="0.4064" layer="94"/>
<wire x1="6.985" y1="5.715" x2="6.985" y2="1.27" width="0.4064" layer="94"/>
<wire x1="5.08" y1="3.81" x2="5.08" y2="2.54" width="0.6096" layer="94"/>
<text x="9.3662" y="0.1587" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<text x="-5.08" y="0.4762" size="1.778" layer="95" rot="R90">&gt;Part</text>
<text x="6.6675" y="1.5875" size="0.254" layer="100" rot="R90">PaJa</text>
<pin name="1" x="-2.54" y="-2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R90"/>
<pin name="2" x="0" y="-2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R90"/>
<pin name="3" x="2.54" y="-2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R90"/>
<pin name="4" x="5.08" y="-2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R90"/>
</symbol>
<symbol name="ARK500/2">
<wire x1="-1.268" y1="1.906" x2="-1.268" y2="-4.446" width="0.254" layer="94"/>
<wire x1="-1.268" y1="-4.446" x2="3.178" y2="-4.446" width="0.254" layer="94"/>
<wire x1="3.178" y1="-4.446" x2="3.178" y2="1.906" width="0.254" layer="94"/>
<wire x1="3.178" y1="1.906" x2="-1.268" y2="1.906" width="0.254" layer="94"/>
<wire x1="-0.317" y1="-1.268" x2="2.219" y2="1.268" width="0.127" layer="94"/>
<wire x1="-0.317" y1="-3.804" x2="2.219" y2="-1.268" width="0.127" layer="94"/>
<circle x="0.951" y="0" radius="0.951" width="0.254" layer="94"/>
<circle x="0.951" y="-2.536" radius="0.951" width="0.254" layer="94"/>
<text x="-1.8865" y="2.539" size="1.778" layer="95">&gt;Name</text>
<text x="-1.8865" y="-6.979" size="1.778" layer="96">&gt;Value</text>
<text x="1.897" y="-4.1245" size="0.254" layer="100">PaJa</text>
<pin name="K1" x="-5.08" y="0" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="K2" x="-5.08" y="-2.54" visible="pad" length="middle" direction="pas" swaplevel="1"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="MLW10" prefix="CON">
<description>&lt;B&gt;Konektory MLW&lt;/B&gt; - vidlice - 10x</description>
<gates>
<gate name="CON" symbol="ML10" x="-40.64" y="30.48" swaplevel="1"/>
</gates>
<devices>
<device name="_90°" package="MLW10A">
<connects>
<connect gate="CON" pin="1" pad="1"/>
<connect gate="CON" pin="10" pad="10"/>
<connect gate="CON" pin="2" pad="2"/>
<connect gate="CON" pin="3" pad="3"/>
<connect gate="CON" pin="4" pad="4"/>
<connect gate="CON" pin="5" pad="5"/>
<connect gate="CON" pin="6" pad="6"/>
<connect gate="CON" pin="7" pad="7"/>
<connect gate="CON" pin="8" pad="8"/>
<connect gate="CON" pin="9" pad="9"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="" package="MLW10G">
<connects>
<connect gate="CON" pin="1" pad="1"/>
<connect gate="CON" pin="10" pad="10"/>
<connect gate="CON" pin="2" pad="2"/>
<connect gate="CON" pin="3" pad="3"/>
<connect gate="CON" pin="4" pad="4"/>
<connect gate="CON" pin="5" pad="5"/>
<connect gate="CON" pin="6" pad="6"/>
<connect gate="CON" pin="7" pad="7"/>
<connect gate="CON" pin="8" pad="8"/>
<connect gate="CON" pin="9" pad="9"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="S1G4_JUMP" prefix="JUM">
<description>&lt;B&gt;Radove konektory&lt;/B&gt; - koliky - 4x</description>
<gates>
<gate name="JUMP" symbol="S1G4" x="-40.64" y="33.02"/>
</gates>
<devices>
<device name="" package="S1G4_JUM">
<connects>
<connect gate="JUMP" pin="1" pad="1"/>
<connect gate="JUMP" pin="2" pad="2"/>
<connect gate="JUMP" pin="3" pad="3"/>
<connect gate="JUMP" pin="4" pad="4"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="ARK500/2" prefix="K">
<description>&lt;B&gt;Svorkovnice&lt;/B&gt; - roztec 5mm - dvojita</description>
<gates>
<gate name="K" symbol="ARK500/2" x="-40.64" y="35.56" swaplevel="1"/>
</gates>
<devices>
<device name="" package="ARK500/2">
<connects>
<connect gate="K" pin="K1" pad="1"/>
<connect gate="K" pin="K2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="con-tycoelectronics">
<description>&lt;b&gt;Tyco Electronics Connector&lt;/b&gt;&lt;p&gt;
http://catalog.tycoelectronics.com&lt;br&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="RJ11-NO_SHIELD">
<description>&lt;b&gt;RJ11 Low Profile&lt;/b&gt; No Shield&lt;/b&gt;&lt;p&gt;
For all RJ11 N and Z Series Models&lt;br&gt;
Source: www.tycoelectronics.com .. ENG_DS_1654001_1099_RJ_L_0507.pdf</description>
<wire x1="-6.877" y1="10.819" x2="6.877" y2="10.819" width="0.2032" layer="21"/>
<wire x1="7.8105" y1="-5.51" x2="-7.8105" y2="-5.51" width="0.01" layer="20"/>
<wire x1="6.877" y1="-7.782" x2="-6.877" y2="-7.782" width="0.2032" layer="21"/>
<wire x1="-6.877" y1="-7.782" x2="-6.877" y2="10.819" width="0.2032" layer="21"/>
<wire x1="6.877" y1="10.819" x2="6.877" y2="-7.782" width="0.2032" layer="21"/>
<pad name="4" x="0.635" y="6.35" drill="0.9" diameter="1.6764" shape="offset" rot="R270"/>
<pad name="3" x="-0.635" y="8.89" drill="0.9" diameter="1.6764" shape="offset" rot="R90"/>
<pad name="2" x="-1.905" y="6.35" drill="0.9" diameter="1.6764" shape="offset" rot="R270"/>
<pad name="5" x="1.905" y="8.89" drill="0.9" diameter="1.6764" shape="offset" rot="R90"/>
<pad name="1" x="-3.175" y="8.89" drill="0.9" diameter="1.6764" shape="offset" rot="R90"/>
<pad name="6" x="3.175" y="6.35" drill="0.9" diameter="1.6764" shape="offset"/>
<text x="-7.62" y="-0.635" size="1.778" layer="25" rot="R90">&gt;NAME</text>
<text x="-5.715" y="2.54" size="1.778" layer="27">&gt;VALUE</text>
<rectangle x1="6.95" y1="-5.485" x2="7.875" y2="-4.342" layer="21"/>
<rectangle x1="-7.875" y1="-5.485" x2="-6.95" y2="-4.342" layer="21"/>
<hole x="-5.08" y="0" drill="3.2512"/>
<hole x="5.08" y="0" drill="3.2512"/>
</package>
</packages>
<symbols>
<symbol name="JACK6">
<wire x1="1.524" y1="5.588" x2="0" y2="5.588" width="0.254" layer="94"/>
<wire x1="0" y1="5.588" x2="0" y2="4.572" width="0.254" layer="94"/>
<wire x1="0" y1="4.572" x2="1.524" y2="4.572" width="0.254" layer="94"/>
<wire x1="1.524" y1="3.048" x2="0" y2="3.048" width="0.254" layer="94"/>
<wire x1="0" y1="3.048" x2="0" y2="2.032" width="0.254" layer="94"/>
<wire x1="0" y1="2.032" x2="1.524" y2="2.032" width="0.254" layer="94"/>
<wire x1="1.524" y1="0.508" x2="0" y2="0.508" width="0.254" layer="94"/>
<wire x1="0" y1="0.508" x2="0" y2="-0.508" width="0.254" layer="94"/>
<wire x1="0" y1="-0.508" x2="1.524" y2="-0.508" width="0.254" layer="94"/>
<wire x1="1.524" y1="-2.032" x2="0" y2="-2.032" width="0.254" layer="94"/>
<wire x1="0" y1="-2.032" x2="0" y2="-3.048" width="0.254" layer="94"/>
<wire x1="0" y1="-3.048" x2="1.524" y2="-3.048" width="0.254" layer="94"/>
<wire x1="1.524" y1="-4.572" x2="0" y2="-4.572" width="0.254" layer="94"/>
<wire x1="0" y1="-4.572" x2="0" y2="-5.588" width="0.254" layer="94"/>
<wire x1="0" y1="-5.588" x2="1.524" y2="-5.588" width="0.254" layer="94"/>
<wire x1="1.524" y1="-7.112" x2="0" y2="-7.112" width="0.254" layer="94"/>
<wire x1="0" y1="-7.112" x2="0" y2="-8.128" width="0.254" layer="94"/>
<wire x1="0" y1="-8.128" x2="1.524" y2="-8.128" width="0.254" layer="94"/>
<wire x1="4.318" y1="-3.556" x2="6.858" y2="-3.556" width="0.1998" layer="94"/>
<wire x1="6.858" y1="-3.556" x2="6.858" y2="-2.286" width="0.1998" layer="94"/>
<wire x1="6.858" y1="-2.286" x2="7.874" y2="-2.286" width="0.1998" layer="94"/>
<wire x1="7.874" y1="-2.286" x2="7.874" y2="-0.254" width="0.1998" layer="94"/>
<wire x1="7.874" y1="-0.254" x2="6.858" y2="-0.254" width="0.1998" layer="94"/>
<wire x1="6.858" y1="-0.254" x2="6.858" y2="1.016" width="0.1998" layer="94"/>
<wire x1="6.858" y1="1.016" x2="4.318" y2="1.016" width="0.1998" layer="94"/>
<wire x1="4.318" y1="1.016" x2="4.318" y2="0" width="0.1998" layer="94"/>
<wire x1="4.318" y1="0" x2="4.318" y2="-0.508" width="0.1998" layer="94"/>
<wire x1="4.318" y1="-0.508" x2="4.318" y2="-1.016" width="0.1998" layer="94"/>
<wire x1="4.318" y1="-1.016" x2="4.318" y2="-1.524" width="0.1998" layer="94"/>
<wire x1="4.318" y1="-1.524" x2="4.318" y2="-2.032" width="0.1998" layer="94"/>
<wire x1="4.318" y1="-2.032" x2="4.318" y2="-2.54" width="0.1998" layer="94"/>
<wire x1="4.318" y1="-2.54" x2="4.318" y2="-3.556" width="0.1998" layer="94"/>
<wire x1="4.318" y1="0" x2="5.08" y2="0" width="0.1998" layer="94"/>
<wire x1="4.318" y1="-0.508" x2="5.08" y2="-0.508" width="0.1998" layer="94"/>
<wire x1="4.318" y1="-1.016" x2="5.08" y2="-1.016" width="0.1998" layer="94"/>
<wire x1="4.318" y1="-1.524" x2="5.08" y2="-1.524" width="0.1998" layer="94"/>
<wire x1="4.318" y1="-2.032" x2="5.08" y2="-2.032" width="0.1998" layer="94"/>
<wire x1="4.318" y1="-2.54" x2="5.08" y2="-2.54" width="0.1998" layer="94"/>
<text x="-2.54" y="7.62" size="1.778" layer="95">&gt;NAME</text>
<text x="-2.54" y="-10.668" size="1.778" layer="96">&gt;VALUE</text>
<pin name="1" x="-2.54" y="5.08" visible="pin" length="short" direction="pas" swaplevel="1"/>
<pin name="2" x="-2.54" y="2.54" visible="pin" length="short" direction="pas" swaplevel="1"/>
<pin name="3" x="-2.54" y="0" visible="pin" length="short" direction="pas" swaplevel="1"/>
<pin name="4" x="-2.54" y="-2.54" visible="pin" length="short" direction="pas" swaplevel="1"/>
<pin name="5" x="-2.54" y="-5.08" visible="pin" length="short" direction="pas" swaplevel="1"/>
<pin name="6" x="-2.54" y="-7.62" visible="pin" length="short" direction="pas" swaplevel="1"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="RJ11" prefix="J">
<description>&lt;b&gt;CORCOM Modular RJ Jacks&lt;/b&gt; No Shield&lt;p&gt;
Source: www.tycoelectronics.com .. ENG_DS_1654001_1099_RJ_L_0507.pdf</description>
<gates>
<gate name="G$1" symbol="JACK6" x="0" y="0"/>
</gates>
<devices>
<device name="" package="RJ11-NO_SHIELD">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="5" pad="5"/>
<connect gate="G$1" pin="6" pad="6"/>
</connects>
<technologies>
<technology name="-2L-B">
<attribute name="MF" value="TYCO ELECTRONICS" constant="no"/>
<attribute name="MPN" value="RJ11-2L-B" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="83F4463" constant="no"/>
</technology>
<technology name="-2L-S">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="RJ11-2L-S" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="73K3294" constant="no"/>
</technology>
<technology name="-2X">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
<technology name="-4L-B">
<attribute name="MF" value="TYCO ELECTRONICS" constant="no"/>
<attribute name="MPN" value="RJ11-4L-B" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="52K3315" constant="no"/>
</technology>
<technology name="-4L-S">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="RJ11-4L-S" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="69K7126" constant="no"/>
</technology>
<technology name="-4X">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="6609214-3" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="19R7022" constant="no"/>
</technology>
<technology name="-6L-B">
<attribute name="MF" value="TYCO ELECTRONICS" constant="no"/>
<attribute name="MPN" value="RJ11-6L-B" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="52K3613" constant="no"/>
</technology>
<technology name="-6L-S">
<attribute name="MF" value="TYCO ELECTRONICS" constant="no"/>
<attribute name="MPN" value="RJ11-6L-S" constant="no"/>
<attribute name="OC_FARNELL" value="1654827" constant="no"/>
<attribute name="OC_NEWARK" value="50F1358" constant="no"/>
</technology>
<technology name="-6X">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="RJ11-6X" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="16R6089" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="#PaJa_30">
<description>&lt;B&gt;PaJa 30&lt;/B&gt; - knihovna   &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; 
&lt;I&gt;(vytvoreno 1.6.2011)&lt;/I&gt;&lt;BR&gt;
Univerzální knihovna soucastek do Eagle &lt;I&gt;(od verze 5.6)&lt;/I&gt;&lt;BR&gt;
&lt;BR&gt;
Knihovna obsahuje: 196 soucastek na DPS, 298 do SCHematu&lt;BR&gt;
&lt;BR&gt;
&lt;Author&gt;Copyright (C) PaJa 2001-2011&lt;BR&gt;
http://www.paja-trb.unas.cz&lt;BR&gt;
paja-trb@seznam.cz
&lt;/author&gt;</description>
<packages>
<package name="LED_10">
<description>&lt;B&gt;LED dioda&lt;/B&gt; - 10mm prumer</description>
<wire x1="-1.268" y1="-0.446" x2="-1.268" y2="-1.27" width="0.127" layer="51"/>
<wire x1="1.272" y1="-1.27" x2="1.272" y2="-0.446" width="0.127" layer="51"/>
<wire x1="-0.633" y1="-2.667" x2="0.637" y2="-1.905" width="0.127" layer="21"/>
<wire x1="0.637" y1="-1.905" x2="1.27" y2="-1.905" width="0.127" layer="21"/>
<wire x1="1.27" y1="-1.905" x2="1.27" y2="-1.27" width="0.127" layer="21"/>
<wire x1="1.27" y1="-1.27" x2="1.272" y2="-1.27" width="0.127" layer="21"/>
<wire x1="0.637" y1="-1.905" x2="-0.633" y2="-1.143" width="0.127" layer="21"/>
<wire x1="-0.347" y1="-3.0478" x2="0.415" y2="-3.8098" width="0.127" layer="21"/>
<wire x1="0.288" y1="-2.6668" x2="1.05" y2="-3.4288" width="0.127" layer="21"/>
<wire x1="0.034" y1="-3.6828" x2="0.288" y2="-3.4288" width="0.127" layer="21"/>
<wire x1="0.288" y1="-3.4288" x2="0.415" y2="-3.8098" width="0.127" layer="21"/>
<wire x1="0.415" y1="-3.8098" x2="0.034" y2="-3.6828" width="0.127" layer="21"/>
<wire x1="1.05" y1="-3.4288" x2="0.669" y2="-3.3018" width="0.127" layer="21"/>
<wire x1="0.669" y1="-3.3018" x2="0.923" y2="-3.0478" width="0.127" layer="21"/>
<wire x1="0.923" y1="-3.0478" x2="1.05" y2="-3.4288" width="0.127" layer="21"/>
<wire x1="0.796" y1="-3.3018" x2="0.923" y2="-3.1748" width="0.127" layer="21"/>
<wire x1="0.161" y1="-3.6828" x2="0.288" y2="-3.5558" width="0.127" layer="21"/>
<wire x1="0.637" y1="-2.667" x2="0.637" y2="-1.905" width="0.127" layer="21"/>
<wire x1="0.637" y1="-1.905" x2="0.637" y2="-1.143" width="0.127" layer="21"/>
<wire x1="-1.268" y1="-1.27" x2="-1.27" y2="-1.27" width="0.127" layer="21"/>
<wire x1="-1.27" y1="-1.27" x2="-1.27" y2="-1.905" width="0.127" layer="21"/>
<wire x1="-1.27" y1="-1.905" x2="-0.633" y2="-1.905" width="0.127" layer="21"/>
<wire x1="-0.633" y1="-1.143" x2="-0.633" y2="-2.667" width="0.127" layer="21"/>
<wire x1="3.81" y1="-2.2225" x2="3.81" y2="2.2225" width="0.127" layer="21"/>
<wire x1="3.81" y1="-2.2225" x2="3.81" y2="2.2225" width="0.127" layer="21" curve="-299.487126"/>
<circle x="-1.272" y="0" radius="0.477" width="0.127" layer="102"/>
<circle x="1.272" y="0" radius="0.477" width="0.127" layer="102"/>
<circle x="0" y="0" radius="3.81" width="0.127" layer="51"/>
<pad name="K" x="1.27" y="0" drill="0.8128" diameter="1.9304" shape="square"/>
<pad name="A" x="-1.27" y="0" drill="0.8128" diameter="1.9304"/>
<text x="-2.2268" y="1.4225" size="1.27" layer="25" font="vector">&gt;Name</text>
<text x="5.2472" y="-2.8622" size="1.27" layer="27" font="vector" rot="R90">&gt;Value</text>
<text x="0.793" y="-2.385" size="0.254" layer="100" font="vector">PaJa</text>
</package>
<package name="LED_3">
<description>&lt;B&gt;LED dioda&lt;/B&gt; - 3mm prumer</description>
<wire x1="-0.381" y1="-0.381" x2="-0.381" y2="-0.889" width="0.127" layer="51"/>
<wire x1="-0.381" y1="-1.397" x2="0.381" y2="-0.889" width="0.127" layer="51"/>
<wire x1="0.381" y1="-0.889" x2="0.889" y2="-0.889" width="0.127" layer="51"/>
<wire x1="0.381" y1="-0.889" x2="-0.381" y2="-0.381" width="0.127" layer="51"/>
<wire x1="-0.635" y1="0.508" x2="0.127" y2="1.27" width="0.127" layer="51"/>
<wire x1="0" y1="0.127" x2="0.762" y2="0.889" width="0.127" layer="51"/>
<wire x1="-0.254" y1="1.143" x2="0" y2="0.889" width="0.127" layer="51"/>
<wire x1="0" y1="0.889" x2="0.127" y2="1.27" width="0.127" layer="51"/>
<wire x1="0.127" y1="1.27" x2="-0.254" y2="1.143" width="0.127" layer="51"/>
<wire x1="0.762" y1="0.889" x2="0.381" y2="0.762" width="0.127" layer="51"/>
<wire x1="0.381" y1="0.762" x2="0.635" y2="0.508" width="0.127" layer="51"/>
<wire x1="0.635" y1="0.508" x2="0.762" y2="0.889" width="0.127" layer="51"/>
<wire x1="0.508" y1="0.762" x2="0.635" y2="0.635" width="0.127" layer="51"/>
<wire x1="-0.127" y1="1.143" x2="0" y2="1.016" width="0.127" layer="51"/>
<wire x1="0.381" y1="-1.397" x2="0.381" y2="-0.889" width="0.127" layer="51"/>
<wire x1="0.381" y1="-0.889" x2="0.381" y2="-0.381" width="0.127" layer="51"/>
<wire x1="0.889" y1="-0.889" x2="1.1685" y2="-0.5239" width="0.127" layer="51"/>
<wire x1="-0.8889" y1="-0.889" x2="-1.0921" y2="-0.5238" width="0.127" layer="51"/>
<wire x1="-0.8889" y1="-0.889" x2="-0.381" y2="-0.889" width="0.127" layer="51"/>
<wire x1="-0.381" y1="-0.889" x2="-0.381" y2="-1.397" width="0.127" layer="51"/>
<wire x1="-1.5081" y1="0.4763" x2="1.4289" y2="0.7145" width="0.127" layer="21" curve="-135.860035" cap="flat"/>
<wire x1="-1.5081" y1="-0.4763" x2="1.4288" y2="-0.7144" width="0.127" layer="21" curve="135.855325" cap="flat"/>
<wire x1="1.4288" y1="0.7144" x2="1.4288" y2="0.4763" width="0.127" layer="21"/>
<wire x1="1.4288" y1="-0.7144" x2="1.4288" y2="-0.4763" width="0.127" layer="21"/>
<wire x1="1.4288" y1="0.4763" x2="1.4288" y2="-0.4763" width="0.127" layer="51"/>
<wire x1="-1.5081" y1="0.4763" x2="-1.5081" y2="-0.4763" width="0.127" layer="51" curve="35.055137" cap="flat"/>
<circle x="-1.272" y="0" radius="0.5028" width="0.127" layer="102"/>
<circle x="1.272" y="0" radius="0.477" width="0.127" layer="102"/>
<pad name="A" x="-1.27" y="0" drill="0.8128" diameter="1.778"/>
<pad name="K" x="1.27" y="0" drill="0.8128" diameter="1.778" shape="square"/>
<text x="-2.544" y="1.749" size="1.27" layer="25" font="vector">&gt;Name</text>
<text x="-2.703" y="-3.021" size="1.27" layer="27" font="vector">&gt;Value</text>
<text x="-0.318" y="0.636" size="0.254" layer="100" font="vector" rot="R270">PaJa</text>
</package>
<package name="LED_5">
<description>&lt;B&gt;LED dioda&lt;/B&gt; - 5mm prumer</description>
<wire x1="-1.268" y1="-0.446" x2="-1.268" y2="-1.27" width="0.127" layer="51"/>
<wire x1="1.272" y1="-1.27" x2="1.272" y2="-0.446" width="0.127" layer="51"/>
<wire x1="-0.633" y1="-0.508" x2="-0.633" y2="-1.27" width="0.127" layer="51"/>
<wire x1="-0.633" y1="-2.032" x2="0.637" y2="-1.27" width="0.127" layer="51"/>
<wire x1="0.637" y1="-1.27" x2="1.272" y2="-1.27" width="0.127" layer="51"/>
<wire x1="0.637" y1="-1.27" x2="-0.633" y2="-0.508" width="0.127" layer="51"/>
<wire x1="-0.347" y1="0.984" x2="0.415" y2="1.746" width="0.127" layer="51"/>
<wire x1="0.288" y1="0.603" x2="1.05" y2="1.365" width="0.127" layer="51"/>
<wire x1="0.034" y1="1.619" x2="0.288" y2="1.365" width="0.127" layer="51"/>
<wire x1="0.288" y1="1.365" x2="0.415" y2="1.746" width="0.127" layer="51"/>
<wire x1="0.415" y1="1.746" x2="0.034" y2="1.619" width="0.127" layer="51"/>
<wire x1="1.05" y1="1.365" x2="0.669" y2="1.238" width="0.127" layer="51"/>
<wire x1="0.669" y1="1.238" x2="0.923" y2="0.984" width="0.127" layer="51"/>
<wire x1="0.923" y1="0.984" x2="1.05" y2="1.365" width="0.127" layer="51"/>
<wire x1="0.796" y1="1.238" x2="0.923" y2="1.111" width="0.127" layer="51"/>
<wire x1="0.161" y1="1.619" x2="0.288" y2="1.492" width="0.127" layer="51"/>
<wire x1="0.637" y1="-2.032" x2="0.637" y2="-1.27" width="0.127" layer="51"/>
<wire x1="0.637" y1="-1.27" x2="0.637" y2="-0.508" width="0.127" layer="51"/>
<wire x1="-1.268" y1="-1.27" x2="-0.633" y2="-1.27" width="0.127" layer="51"/>
<wire x1="-0.633" y1="-1.27" x2="-0.633" y2="-2.032" width="0.127" layer="51"/>
<wire x1="2.544" y1="-1.431" x2="2.544" y2="1.431" width="0.127" layer="21" curve="-301.284493"/>
<wire x1="2.544" y1="1.431" x2="2.544" y2="-1.431" width="0.127" layer="21"/>
<circle x="-1.272" y="0" radius="0.477" width="0.127" layer="102"/>
<circle x="1.272" y="0" radius="0.477" width="0.127" layer="102"/>
<circle x="0" y="0" radius="2.5489" width="0.127" layer="51"/>
<pad name="K" x="1.27" y="0" drill="0.8128" diameter="1.778" shape="square"/>
<pad name="A" x="-1.27" y="0" drill="0.8128" diameter="1.778"/>
<text x="3.975" y="-2.703" size="1.27" layer="25" font="vector" rot="R90">&gt;Name</text>
<text x="5.7235" y="-2.7035" size="1.27" layer="27" font="vector" rot="R90">&gt;Value</text>
<text x="-0.477" y="-2.385" size="0.254" layer="100" font="vector">PaJa</text>
</package>
<package name="LED_5X5">
<description>&lt;B&gt;LED dioda&lt;/B&gt; - ctverec - 5mm x 5mm</description>
<wire x1="-1.27" y1="0.031" x2="-1.27" y2="-0.9515" width="0.127" layer="51"/>
<wire x1="1.27" y1="-0.9515" x2="1.27" y2="0.031" width="0.127" layer="51"/>
<wire x1="-0.635" y1="-0.1895" x2="-0.635" y2="-0.9515" width="0.127" layer="51"/>
<wire x1="-0.635" y1="-1.7135" x2="0.635" y2="-0.9515" width="0.127" layer="51"/>
<wire x1="0.635" y1="-0.9515" x2="1.27" y2="-0.9515" width="0.127" layer="51"/>
<wire x1="0.635" y1="-0.9515" x2="-0.635" y2="-0.1895" width="0.127" layer="51"/>
<wire x1="-0.349" y1="0.3485" x2="0.413" y2="1.1105" width="0.127" layer="51"/>
<wire x1="0.286" y1="-0.0325" x2="1.048" y2="0.7295" width="0.127" layer="51"/>
<wire x1="0.032" y1="0.9835" x2="0.286" y2="0.7295" width="0.127" layer="51"/>
<wire x1="0.286" y1="0.7295" x2="0.413" y2="1.1105" width="0.127" layer="51"/>
<wire x1="0.413" y1="1.1105" x2="0.032" y2="0.9835" width="0.127" layer="51"/>
<wire x1="1.048" y1="0.7295" x2="0.667" y2="0.6025" width="0.127" layer="51"/>
<wire x1="0.667" y1="0.6025" x2="0.921" y2="0.3485" width="0.127" layer="51"/>
<wire x1="0.921" y1="0.3485" x2="1.048" y2="0.7295" width="0.127" layer="51"/>
<wire x1="0.794" y1="0.6025" x2="0.921" y2="0.4755" width="0.127" layer="51"/>
<wire x1="0.159" y1="0.9835" x2="0.286" y2="0.8565" width="0.127" layer="51"/>
<wire x1="0.635" y1="-1.7135" x2="0.635" y2="-0.9515" width="0.127" layer="51"/>
<wire x1="0.635" y1="-0.9515" x2="0.635" y2="-0.1895" width="0.127" layer="51"/>
<wire x1="-1.27" y1="-0.9515" x2="-0.635" y2="-0.9515" width="0.127" layer="51"/>
<wire x1="-0.635" y1="-0.9515" x2="-0.635" y2="-1.7135" width="0.127" layer="51"/>
<wire x1="2.5399" y1="-2.54" x2="-2.54" y2="-2.54" width="0.127" layer="21"/>
<wire x1="2.5399" y1="2.54" x2="2.5399" y2="-2.54" width="0.127" layer="21"/>
<wire x1="2.5399" y1="2.54" x2="-2.54" y2="2.54" width="0.127" layer="21"/>
<wire x1="-2.54" y1="2.54" x2="-2.54" y2="-2.54" width="0.127" layer="21"/>
<circle x="-1.274" y="0" radius="0.477" width="0.127" layer="102"/>
<circle x="1.27" y="0" radius="0.477" width="0.127" layer="102"/>
<pad name="K" x="1.27" y="0" drill="0.8128" diameter="1.9304" shape="square"/>
<pad name="A" x="-1.27" y="0" drill="0.8128" diameter="1.9304"/>
<text x="-2.228" y="1.2722" size="1.016" layer="25" font="vector">&gt;Name</text>
<text x="-2.387" y="-3.655" size="1.016" layer="27" font="vector">&gt;Value</text>
<text x="1.27" y="-2.3795" size="0.254" layer="100" font="vector">PaJa</text>
</package>
<package name="LED_8">
<description>&lt;B&gt;LED dioda&lt;/B&gt; - 8mm prumer</description>
<wire x1="-1.268" y1="-0.446" x2="-1.268" y2="-1.27" width="0.127" layer="51"/>
<wire x1="1.272" y1="-1.27" x2="1.272" y2="-0.446" width="0.127" layer="51"/>
<wire x1="-0.633" y1="-2.667" x2="0.637" y2="-1.905" width="0.127" layer="21"/>
<wire x1="0.637" y1="-1.905" x2="1.27" y2="-1.905" width="0.127" layer="21"/>
<wire x1="1.27" y1="-1.905" x2="1.27" y2="-1.27" width="0.127" layer="21"/>
<wire x1="1.27" y1="-1.27" x2="1.272" y2="-1.27" width="0.127" layer="21"/>
<wire x1="0.637" y1="-1.905" x2="-0.633" y2="-1.143" width="0.127" layer="21"/>
<wire x1="-0.347" y1="-3.0478" x2="0.415" y2="-3.8098" width="0.127" layer="21"/>
<wire x1="0.288" y1="-2.6668" x2="1.05" y2="-3.4288" width="0.127" layer="21"/>
<wire x1="0.034" y1="-3.6828" x2="0.288" y2="-3.4288" width="0.127" layer="21"/>
<wire x1="0.288" y1="-3.4288" x2="0.415" y2="-3.8098" width="0.127" layer="21"/>
<wire x1="0.415" y1="-3.8098" x2="0.034" y2="-3.6828" width="0.127" layer="21"/>
<wire x1="1.05" y1="-3.4288" x2="0.669" y2="-3.3018" width="0.127" layer="21"/>
<wire x1="0.669" y1="-3.3018" x2="0.923" y2="-3.0478" width="0.127" layer="21"/>
<wire x1="0.923" y1="-3.0478" x2="1.05" y2="-3.4288" width="0.127" layer="21"/>
<wire x1="0.796" y1="-3.3018" x2="0.923" y2="-3.1748" width="0.127" layer="22"/>
<wire x1="0.161" y1="-3.6828" x2="0.288" y2="-3.5558" width="0.127" layer="21"/>
<wire x1="0.637" y1="-2.667" x2="0.637" y2="-1.905" width="0.127" layer="21"/>
<wire x1="0.637" y1="-1.905" x2="0.637" y2="-1.143" width="0.127" layer="21"/>
<wire x1="-1.268" y1="-1.27" x2="-1.27" y2="-1.27" width="0.127" layer="21"/>
<wire x1="-1.27" y1="-1.27" x2="-1.27" y2="-1.905" width="0.127" layer="21"/>
<wire x1="-1.27" y1="-1.905" x2="-0.633" y2="-1.905" width="0.127" layer="21"/>
<wire x1="-0.633" y1="-1.143" x2="-0.633" y2="-2.667" width="0.127" layer="21"/>
<wire x1="3.81" y1="-2.2225" x2="3.81" y2="2.2225" width="0.127" layer="21"/>
<wire x1="3.81" y1="-2.2225" x2="3.81" y2="2.2225" width="0.127" layer="21" curve="-299.487126"/>
<circle x="-1.272" y="0" radius="0.477" width="0.127" layer="102"/>
<circle x="1.272" y="0" radius="0.477" width="0.127" layer="102"/>
<circle x="0" y="0" radius="3.81" width="0.127" layer="51"/>
<pad name="K" x="1.27" y="0" drill="0.8128" diameter="1.9304" shape="square"/>
<pad name="A" x="-1.27" y="0" drill="0.8128" diameter="1.9304"/>
<text x="-2.2268" y="1.4225" size="1.27" layer="25" font="vector">&gt;Name</text>
<text x="5.2472" y="-2.386" size="1.27" layer="27" font="vector" rot="R90">&gt;Value</text>
<text x="3.02" y="-0.477" size="0.254" layer="100" font="vector" rot="R90">PaJa</text>
</package>
<package name="LED_TROJ">
<description>&lt;B&gt;LED dioda&lt;/B&gt; - trojuhelnik</description>
<wire x1="-0.637" y1="-0.764" x2="-0.637" y2="-0.002" width="0.127" layer="21"/>
<wire x1="-1.907" y1="-0.002" x2="-2.542" y2="-0.002" width="0.127" layer="21"/>
<wire x1="-0.822" y1="1.143" x2="-0.06" y2="1.905" width="0.127" layer="21"/>
<wire x1="-0.187" y1="0.762" x2="0.575" y2="1.524" width="0.127" layer="21"/>
<wire x1="-0.441" y1="1.778" x2="-0.187" y2="1.524" width="0.127" layer="21"/>
<wire x1="-0.187" y1="1.524" x2="-0.06" y2="1.905" width="0.127" layer="21"/>
<wire x1="-0.06" y1="1.905" x2="-0.441" y2="1.778" width="0.127" layer="21"/>
<wire x1="0.575" y1="1.524" x2="0.194" y2="1.397" width="0.127" layer="21"/>
<wire x1="0.194" y1="1.397" x2="0.448" y2="1.143" width="0.127" layer="21"/>
<wire x1="0.448" y1="1.143" x2="0.575" y2="1.524" width="0.127" layer="21"/>
<wire x1="0.321" y1="1.397" x2="0.448" y2="1.27" width="0.127" layer="21"/>
<wire x1="-0.314" y1="1.778" x2="-0.187" y2="1.651" width="0.127" layer="21"/>
<wire x1="-1.907" y1="0.76" x2="-1.907" y2="-0.002" width="0.127" layer="21"/>
<wire x1="-1.907" y1="-0.002" x2="-1.907" y2="-0.764" width="0.127" layer="21"/>
<wire x1="-0.002" y1="-0.002" x2="-0.637" y2="-0.002" width="0.127" layer="21"/>
<wire x1="-0.637" y1="-0.002" x2="-0.637" y2="0.76" width="0.127" layer="21"/>
<wire x1="-1.903" y1="-0.76" x2="-0.633" y2="0.002" width="0.127" layer="21"/>
<wire x1="-0.633" y1="0.002" x2="-1.903" y2="0.764" width="0.127" layer="21"/>
<wire x1="0.9525" y1="-2.6988" x2="0.9525" y2="2.6988" width="0.127" layer="21"/>
<wire x1="0.9525" y1="2.6988" x2="-3.81" y2="0" width="0.127" layer="21"/>
<wire x1="-3.81" y1="0" x2="0.9525" y2="-2.6988" width="0.127" layer="21"/>
<circle x="0.002" y="0" radius="0.477" width="0.127" layer="102"/>
<circle x="-2.542" y="0" radius="0.477" width="0.127" layer="102"/>
<pad name="K" x="0" y="0" drill="0.8128" diameter="1.9304" shape="square" rot="R180"/>
<pad name="A" x="-2.54" y="0" drill="0.8128" diameter="1.9304" rot="R180"/>
<text x="1.2737" y="2.226" size="1.016" layer="25" font="vector" rot="R270">&gt;Name</text>
<text x="2.3868" y="2.544" size="1.016" layer="27" font="vector" rot="R270">&gt;Value</text>
<text x="0.7964" y="-1.113" size="0.254" layer="100" font="vector" rot="R180">PaJa</text>
</package>
<package name="LED2,5X5">
<description>&lt;B&gt;LED dioda&lt;/B&gt; - obdelnik - 5mm x 2,5mm</description>
<wire x1="0.639" y1="0.287" x2="0.639" y2="-0.475" width="0.127" layer="21"/>
<wire x1="0.639" y1="-1.237" x2="1.909" y2="-0.475" width="0.127" layer="21"/>
<wire x1="1.909" y1="-0.475" x2="2.544" y2="-0.475" width="0.127" layer="21"/>
<wire x1="1.909" y1="-0.475" x2="0.639" y2="0.287" width="0.127" layer="21"/>
<wire x1="1.561" y1="0.348" x2="2.323" y2="1.11" width="0.127" layer="21"/>
<wire x1="2.196" y1="-0.033" x2="2.958" y2="0.729" width="0.127" layer="21"/>
<wire x1="1.942" y1="0.983" x2="2.196" y2="0.729" width="0.127" layer="21"/>
<wire x1="2.196" y1="0.729" x2="2.323" y2="1.11" width="0.127" layer="21"/>
<wire x1="2.323" y1="1.11" x2="1.942" y2="0.983" width="0.127" layer="21"/>
<wire x1="2.958" y1="0.729" x2="2.577" y2="0.602" width="0.127" layer="21"/>
<wire x1="2.577" y1="0.602" x2="2.831" y2="0.348" width="0.127" layer="21"/>
<wire x1="2.831" y1="0.348" x2="2.958" y2="0.729" width="0.127" layer="21"/>
<wire x1="2.704" y1="0.602" x2="2.831" y2="0.475" width="0.127" layer="21"/>
<wire x1="2.069" y1="0.983" x2="2.196" y2="0.856" width="0.127" layer="21"/>
<wire x1="1.909" y1="-1.237" x2="1.909" y2="-0.475" width="0.127" layer="21"/>
<wire x1="1.909" y1="-0.475" x2="1.909" y2="0.287" width="0.127" layer="21"/>
<wire x1="0.004" y1="0.002" x2="0" y2="0.002" width="0.127" layer="21"/>
<wire x1="0" y1="0.002" x2="0" y2="-0.477" width="0.127" layer="21"/>
<wire x1="0" y1="-0.477" x2="0.639" y2="-0.475" width="0.127" layer="21"/>
<wire x1="0.639" y1="-0.475" x2="0.639" y2="-1.237" width="0.127" layer="21"/>
<wire x1="2.544" y1="-0.477" x2="2.544" y2="0" width="0.127" layer="21"/>
<wire x1="-1.27" y1="-1.27" x2="-1.27" y2="1.27" width="0.127" layer="21"/>
<wire x1="-1.27" y1="1.27" x2="3.81" y2="1.27" width="0.127" layer="21"/>
<wire x1="3.81" y1="1.27" x2="3.81" y2="-1.27" width="0.127" layer="21"/>
<wire x1="3.81" y1="-1.27" x2="-1.27" y2="-1.27" width="0.127" layer="21"/>
<circle x="0" y="0" radius="0.477" width="0.127" layer="102"/>
<circle x="2.544" y="0" radius="0.477" width="0.127" layer="102"/>
<pad name="K" x="2.54" y="0" drill="0.8128" diameter="1.9304" shape="square"/>
<pad name="A" x="0" y="0" drill="0.8128" diameter="1.9304"/>
<text x="-1.113" y="1.431" size="1.016" layer="25">&gt;Name</text>
<text x="-1.431" y="-2.385" size="1.016" layer="27">&gt;Value</text>
<text x="1.431" y="0.159" size="0.254" layer="100" rot="R90">PaJa</text>
</package>
<package name="P1206">
<wire x1="-1.7463" y1="0.7938" x2="-1.7463" y2="0.3176" width="0.127" layer="51"/>
<wire x1="0.7937" y1="-0.7937" x2="1.4287" y2="-0.7937" width="0.127" layer="51"/>
<wire x1="1.4287" y1="0.7938" x2="0.7938" y2="0.7938" width="0.127" layer="51"/>
<wire x1="0.7938" y1="0.7938" x2="0.7937" y2="0.7938" width="0.127" layer="51"/>
<wire x1="0.7937" y1="0.7938" x2="-1.1113" y2="0.7938" width="0.127" layer="21"/>
<wire x1="-1.1113" y1="0.7938" x2="-1.7463" y2="0.7938" width="0.127" layer="51"/>
<wire x1="-1.1113" y1="0.7938" x2="-1.1113" y2="-0.7937" width="0.127" layer="21"/>
<wire x1="1.4288" y1="0.3175" x2="1.4288" y2="-0.3175" width="0.127" layer="51" curve="180"/>
<wire x1="-1.7462" y1="0.3175" x2="-1.7462" y2="-0.3175" width="0.127" layer="51" curve="-180" cap="flat"/>
<wire x1="-1.7462" y1="-0.3175" x2="-1.7462" y2="-0.7938" width="0.127" layer="51"/>
<wire x1="-1.1112" y1="-0.7938" x2="-1.7462" y2="-0.7938" width="0.127" layer="51"/>
<wire x1="1.4288" y1="0.7937" x2="1.4288" y2="0.3175" width="0.127" layer="51"/>
<wire x1="1.4288" y1="-0.3175" x2="1.4288" y2="-0.7938" width="0.127" layer="51"/>
<wire x1="0.1588" y1="-0.4763" x2="0.1588" y2="0" width="0.127" layer="21"/>
<wire x1="0.1588" y1="0" x2="0.1588" y2="0.4763" width="0.127" layer="21"/>
<wire x1="0.1588" y1="0" x2="-0.4763" y2="-0.4763" width="0.127" layer="21"/>
<wire x1="-0.4763" y1="-0.4763" x2="-0.4761" y2="0" width="0.127" layer="21"/>
<wire x1="-0.4761" y1="0" x2="-0.4763" y2="0.4762" width="0.127" layer="21"/>
<wire x1="-0.4763" y1="0.4762" x2="0.1588" y2="0" width="0.127" layer="21"/>
<wire x1="0.1588" y1="0" x2="0.4763" y2="0" width="0.127" layer="21"/>
<wire x1="-0.4761" y1="0" x2="-0.7937" y2="0" width="0.127" layer="21"/>
<wire x1="-1.7463" y1="-0.3175" x2="-1.7463" y2="0.3175" width="0.127" layer="51" curve="180" cap="flat"/>
<wire x1="0.7938" y1="0.7938" x2="1.4288" y2="0.7938" width="0.127" layer="51"/>
<wire x1="1.4288" y1="-0.3175" x2="1.4288" y2="0.3175" width="0.127" layer="51" curve="-180" cap="flat"/>
<wire x1="0.7938" y1="0.7938" x2="0.7938" y2="0.3175" width="0.127" layer="51"/>
<wire x1="0.7937" y1="0.7938" x2="0.7937" y2="-0.7937" width="0.127" layer="21"/>
<wire x1="0.7937" y1="-0.7937" x2="-1.1113" y2="-0.7937" width="0.127" layer="21"/>
<circle x="1.0319" y="0.5556" radius="0.2024" width="0.127" layer="51"/>
<smd name="K" x="1.5875" y="0" dx="0.9144" dy="1.778" layer="1" rot="R180"/>
<smd name="A" x="-1.9051" y="0.0001" dx="0.9144" dy="1.778" layer="1" rot="R180"/>
<text x="-0.9922" y="0.4762" size="0.254" layer="100" font="vector" rot="R270">PaJa</text>
<text x="1.1113" y="-1.1113" size="1.016" layer="25" font="vector" rot="R180">&gt;Name</text>
<text x="1.1113" y="2.0638" size="1.016" layer="27" font="vector" rot="R180">&gt;Value</text>
<rectangle x1="-0.3174" y1="-0.1588" x2="0" y2="0.1588" layer="51" rot="R180"/>
<polygon width="0.127" layer="51">
<vertex x="-1.7463" y="-0.3175"/>
<vertex x="-1.7463" y="-0.7938"/>
<vertex x="-1.1113" y="-0.7938"/>
<vertex x="-1.1113" y="0.7938"/>
<vertex x="-1.7463" y="0.7938"/>
<vertex x="-1.7463" y="0.3175"/>
<vertex x="-1.5875" y="0.3175"/>
<vertex x="-1.4288" y="0.1588"/>
<vertex x="-1.4288" y="-0.1588"/>
<vertex x="-1.5875" y="-0.3175"/>
</polygon>
<polygon width="0.127" layer="51">
<vertex x="1.4288" y="0.7938"/>
<vertex x="1.4288" y="0.3174"/>
<vertex x="1.4288" y="0.3175"/>
<vertex x="1.27" y="0.3175"/>
<vertex x="1.1113" y="0.1588"/>
<vertex x="1.1113" y="-0.1588"/>
<vertex x="1.27" y="-0.3175"/>
<vertex x="1.4288" y="-0.3175"/>
<vertex x="1.4288" y="-0.7938"/>
<vertex x="0.7938" y="-0.7938"/>
<vertex x="0.7938" y="-0.635"/>
<vertex x="0.7937" y="-0.635"/>
<vertex x="0.7937" y="0.3175"/>
<vertex x="1.27" y="0.3175"/>
<vertex x="1.27" y="0.7938"/>
</polygon>
</package>
<package name="R-10">
<description>&lt;B&gt;Odpor&lt;/B&gt; - vel. 0207 - 0,6W - vetsi roztec</description>
<wire x1="-2.572" y1="1.016" x2="-2.699" y2="1.143" width="0.127" layer="21"/>
<wire x1="-2.572" y1="-1.016" x2="-2.699" y2="-1.143" width="0.127" layer="21"/>
<wire x1="2.572" y1="1.016" x2="2.699" y2="1.143" width="0.127" layer="21"/>
<wire x1="2.572" y1="1.016" x2="-2.572" y2="1.016" width="0.127" layer="21"/>
<wire x1="2.572" y1="-1.016" x2="2.699" y2="-1.143" width="0.127" layer="21"/>
<wire x1="2.572" y1="-1.016" x2="-2.572" y2="-1.016" width="0.127" layer="21"/>
<wire x1="3.08" y1="1.139" x2="2.699" y2="1.139" width="0.127" layer="21"/>
<wire x1="3.08" y1="-1.147" x2="2.699" y2="-1.147" width="0.127" layer="21"/>
<wire x1="-3.334" y1="0.893" x2="-3.08" y2="1.147" width="0.127" layer="21" curve="-90" cap="flat"/>
<wire x1="-3.334" y1="-0.885" x2="-3.08" y2="-1.139" width="0.127" layer="21" curve="90" cap="flat"/>
<wire x1="-3.08" y1="-1.139" x2="-2.699" y2="-1.139" width="0.127" layer="21"/>
<wire x1="-3.08" y1="1.147" x2="-2.699" y2="1.147" width="0.127" layer="21"/>
<wire x1="-3.3321" y1="0.8823" x2="-3.3321" y2="-0.8667" width="0.127" layer="21"/>
<wire x1="3.08" y1="-1.147" x2="3.334" y2="-0.893" width="0.127" layer="21" curve="90" cap="flat"/>
<wire x1="3.08" y1="1.139" x2="3.334" y2="0.885" width="0.127" layer="21" curve="-90" cap="flat"/>
<wire x1="3.3321" y1="-0.8823" x2="3.3321" y2="0.8667" width="0.127" layer="21"/>
<circle x="-5.08" y="0" radius="0.4763" width="0.127" layer="102"/>
<circle x="5.08" y="0" radius="0.4762" width="0.127" layer="102"/>
<pad name="1" x="-5.08" y="0" drill="0.8128" diameter="1.9304" shape="octagon"/>
<pad name="2" x="5.08" y="0" drill="0.8128" diameter="1.9304" shape="octagon"/>
<text x="-3.1152" y="-0.6276" size="1.27" layer="25" font="vector">&gt;Name</text>
<text x="-0.3178" y="-0.6358" size="1.27" layer="27" font="vector">&gt;Value</text>
<text x="2.3342" y="-0.9351" size="0.254" layer="100" font="vector">PaJa</text>
<rectangle x1="-4.6038" y1="-0.3175" x2="-3.9688" y2="0.3175" layer="51"/>
<rectangle x1="3.9688" y1="-0.3175" x2="4.6038" y2="0.3175" layer="51"/>
<rectangle x1="-3.9688" y1="-0.3175" x2="-3.3338" y2="0.3175" layer="21"/>
<rectangle x1="3.3338" y1="-0.3175" x2="3.9688" y2="0.3175" layer="21"/>
</package>
<package name="R-5">
<description>&lt;B&gt;Odpor&lt;/B&gt; - vel. 0204 - 0,4W - miniaturni</description>
<wire x1="-1.778" y1="0.635" x2="-1.524" y2="0.889" width="0.127" layer="21" curve="-90" cap="flat"/>
<wire x1="-1.778" y1="-0.635" x2="-1.524" y2="-0.889" width="0.127" layer="21" curve="90" cap="flat"/>
<wire x1="1.524" y1="-0.889" x2="1.778" y2="-0.635" width="0.127" layer="21" curve="90" cap="flat"/>
<wire x1="1.524" y1="0.889" x2="1.778" y2="0.6388" width="0.127" layer="21" curve="-89.149199"/>
<wire x1="1.778" y1="0.6388" x2="1.778" y2="0.635" width="0.127" layer="21" curve="-0.857165"/>
<wire x1="-1.524" y1="0.889" x2="-1.27" y2="0.889" width="0.127" layer="21"/>
<wire x1="-1.143" y1="0.762" x2="-1.27" y2="0.889" width="0.127" layer="21"/>
<wire x1="-1.524" y1="-0.889" x2="-1.27" y2="-0.889" width="0.127" layer="21"/>
<wire x1="-1.143" y1="-0.762" x2="-1.27" y2="-0.889" width="0.127" layer="21"/>
<wire x1="1.143" y1="0.762" x2="1.27" y2="0.889" width="0.127" layer="21"/>
<wire x1="1.143" y1="0.762" x2="-1.143" y2="0.762" width="0.127" layer="21"/>
<wire x1="1.143" y1="-0.762" x2="1.27" y2="-0.889" width="0.127" layer="21"/>
<wire x1="1.143" y1="-0.762" x2="-1.143" y2="-0.762" width="0.127" layer="21"/>
<wire x1="1.524" y1="0.889" x2="1.27" y2="0.889" width="0.127" layer="21"/>
<wire x1="1.524" y1="-0.889" x2="1.27" y2="-0.889" width="0.127" layer="21"/>
<wire x1="1.778" y1="0.6388" x2="1.778" y2="-0.6332" width="0.127" layer="51"/>
<wire x1="-1.7787" y1="0.6274" x2="-1.7787" y2="-0.6446" width="0.127" layer="51"/>
<circle x="-2.54" y="0" radius="0.4763" width="0.127" layer="102"/>
<circle x="2.54" y="0" radius="0.4762" width="0.127" layer="102"/>
<pad name="1" x="-2.54" y="0" drill="0.8128" diameter="1.778" shape="octagon"/>
<pad name="2" x="2.54" y="0" drill="0.8128" diameter="1.778" shape="octagon"/>
<text x="-1.59" y="-0.477" size="1.016" layer="25" font="vector">&gt;Name</text>
<text x="-2.544" y="-1.908" size="1.016" layer="27" font="vector">&gt;Value</text>
<text x="-0.4797" y="0.8527" size="0.254" layer="100" font="vector">PaJa</text>
<rectangle x1="-2.1022" y1="-0.306" x2="-1.8124" y2="0.3068" layer="51"/>
<rectangle x1="1.8124" y1="-0.3068" x2="2.1022" y2="0.306" layer="51"/>
</package>
<package name="R-7,5">
<description>&lt;B&gt;Odpor&lt;/B&gt; - vel. 0207 - 0,6W</description>
<wire x1="-3.175" y1="0.893" x2="-2.921" y2="1.147" width="0.127" layer="21" curve="-90" cap="flat"/>
<wire x1="-3.175" y1="-0.885" x2="-2.921" y2="-1.139" width="0.127" layer="21" curve="90" cap="flat"/>
<wire x1="2.413" y1="-1.012" x2="2.54" y2="-1.139" width="0.127" layer="21"/>
<wire x1="2.413" y1="1.02" x2="2.54" y2="1.147" width="0.127" layer="21"/>
<wire x1="-2.413" y1="-1.012" x2="-2.54" y2="-1.139" width="0.127" layer="21"/>
<wire x1="-2.413" y1="-1.012" x2="2.413" y2="-1.012" width="0.127" layer="21"/>
<wire x1="-2.413" y1="1.02" x2="-2.54" y2="1.147" width="0.127" layer="21"/>
<wire x1="-2.413" y1="1.02" x2="2.413" y2="1.02" width="0.127" layer="21"/>
<wire x1="-2.921" y1="-1.139" x2="-2.54" y2="-1.139" width="0.127" layer="21"/>
<wire x1="-2.921" y1="1.147" x2="-2.54" y2="1.147" width="0.127" layer="21"/>
<wire x1="-3.1731" y1="0.8823" x2="-3.1731" y2="-0.8667" width="0.127" layer="51"/>
<wire x1="2.921" y1="-1.147" x2="3.175" y2="-0.893" width="0.127" layer="21" curve="90" cap="flat"/>
<wire x1="2.921" y1="1.139" x2="3.175" y2="0.885" width="0.127" layer="21" curve="-90" cap="flat"/>
<wire x1="2.921" y1="1.139" x2="2.54" y2="1.139" width="0.127" layer="21"/>
<wire x1="2.921" y1="-1.147" x2="2.54" y2="-1.147" width="0.127" layer="21"/>
<wire x1="3.1731" y1="-0.8823" x2="3.1731" y2="0.8667" width="0.127" layer="51"/>
<circle x="-3.81" y="0" radius="0.4763" width="0.127" layer="102"/>
<circle x="3.81" y="0" radius="0.4762" width="0.127" layer="102"/>
<pad name="1" x="-3.81" y="0" drill="0.8128" diameter="1.9304" shape="octagon"/>
<pad name="2" x="3.81" y="0" drill="0.8128" diameter="1.9304" shape="octagon"/>
<text x="-0.3178" y="-0.477" size="1.016" layer="27" font="vector">&gt;Value</text>
<text x="-2.7033" y="-0.477" size="1.016" layer="25" font="vector">&gt;Name</text>
<text x="2.1354" y="-0.8658" size="0.254" layer="100" font="vector">PaJa</text>
<rectangle x1="-3.4323" y1="-0.3053" x2="-3.1758" y2="0.3061" layer="51"/>
<rectangle x1="3.1759" y1="-0.3061" x2="3.4324" y2="0.3053" layer="51"/>
</package>
<package name="1206">
<description>&lt;B&gt;SMD&lt;/B&gt; - velikost 1206</description>
<wire x1="-1.0541" y1="0.7938" x2="-0.7938" y2="0.7938" width="0.127" layer="51"/>
<wire x1="-0.7938" y1="0.7938" x2="0.7938" y2="0.7938" width="0.127" layer="21"/>
<wire x1="0.7938" y1="0.7938" x2="1.0541" y2="0.7938" width="0.127" layer="51"/>
<wire x1="-1.0541" y1="-0.7938" x2="-0.7938" y2="-0.7938" width="0.127" layer="51"/>
<wire x1="-0.7938" y1="-0.7938" x2="0.7938" y2="-0.7938" width="0.127" layer="21"/>
<wire x1="0.7938" y1="-0.7938" x2="1.0541" y2="-0.7938" width="0.127" layer="51"/>
<wire x1="1.0541" y1="0.7938" x2="1.0541" y2="-0.7938" width="0.127" layer="51"/>
<wire x1="-1.0541" y1="0.7938" x2="-1.0541" y2="-0.7938" width="0.127" layer="51"/>
<smd name="1" x="-1.5875" y="0" dx="1.143" dy="1.7018" layer="1"/>
<smd name="2" x="1.5875" y="0" dx="1.143" dy="1.7018" layer="1"/>
<text x="-0.3175" y="-1.1906" size="0.254" layer="100" font="vector">PaJa</text>
<text x="-0.7938" y="-0.4763" size="1.016" layer="25" font="vector">&gt;Name</text>
<text x="-0.7938" y="0.9525" size="1.016" layer="27" font="vector">&gt;Value</text>
<rectangle x1="-1.4541" y1="-0.7874" x2="-0.9461" y2="0.7874" layer="51"/>
<rectangle x1="0.9461" y1="-0.7874" x2="1.4541" y2="0.7874" layer="51"/>
</package>
<package name="R-_2W">
<description>&lt;B&gt;Odpor&lt;/B&gt; - 2W - vel. 0414</description>
<wire x1="4.3998" y1="1.8896" x2="4.5268" y2="2.0166" width="0.127" layer="21"/>
<wire x1="4.3998" y1="-1.8896" x2="4.5268" y2="-2.0166" width="0.127" layer="21"/>
<wire x1="4.9078" y1="2.0126" x2="4.5268" y2="2.0126" width="0.127" layer="21"/>
<wire x1="4.9078" y1="-2.0206" x2="4.5268" y2="-2.0206" width="0.127" layer="21"/>
<wire x1="4.9078" y1="-2.0206" x2="5.1618" y2="-1.7666" width="0.127" layer="21" curve="90" cap="flat"/>
<wire x1="4.9078" y1="2.0126" x2="5.1618" y2="1.7586" width="0.127" layer="21" curve="-90" cap="flat"/>
<wire x1="-4.3999" y1="1.8897" x2="-4.5269" y2="2.0167" width="0.127" layer="21"/>
<wire x1="-4.3999" y1="-1.8896" x2="-4.5269" y2="-2.0166" width="0.127" layer="21"/>
<wire x1="4.3998" y1="1.8896" x2="-4.3999" y2="1.8897" width="0.127" layer="21"/>
<wire x1="4.3998" y1="-1.8896" x2="-4.3999" y2="-1.8896" width="0.127" layer="21"/>
<wire x1="-5.1619" y1="1.7666" x2="-4.9079" y2="2.0206" width="0.127" layer="21" curve="-90" cap="flat"/>
<wire x1="-5.1619" y1="-1.7586" x2="-4.9079" y2="-2.0126" width="0.127" layer="21" curve="90" cap="flat"/>
<wire x1="-4.9079" y1="-2.0126" x2="-4.5269" y2="-2.0126" width="0.127" layer="21"/>
<wire x1="-4.9079" y1="2.0206" x2="-4.5269" y2="2.0206" width="0.127" layer="21"/>
<wire x1="-5.16" y1="1.7559" x2="-5.16" y2="0.9584" width="0.127" layer="21"/>
<wire x1="-5.16" y1="-0.9429" x2="-5.16" y2="-1.7404" width="0.127" layer="21"/>
<wire x1="5.1588" y1="-0.943" x2="5.1588" y2="-1.7405" width="0.127" layer="21"/>
<wire x1="5.1588" y1="1.7559" x2="5.1588" y2="0.9584" width="0.127" layer="21"/>
<wire x1="-5.16" y1="0.9621" x2="-5.16" y2="-0.9467" width="0.127" layer="51"/>
<wire x1="5.1588" y1="0.9621" x2="5.1588" y2="-0.9467" width="0.127" layer="51"/>
<circle x="-6.35" y="0" radius="0.4763" width="0.127" layer="102"/>
<circle x="6.35" y="0" radius="0.4762" width="0.127" layer="102"/>
<pad name="1" x="-6.35" y="0" drill="0.8128" diameter="2.54" shape="octagon"/>
<pad name="2" x="6.35" y="0" drill="0.8128" diameter="2.54" shape="octagon"/>
<text x="-0.4813" y="-0.7958" size="1.6764" layer="27" font="vector">&gt;Value</text>
<text x="-4.9255" y="-0.7144" size="1.6764" layer="25" font="vector">&gt;Name</text>
<text x="4.1268" y="-1.7396" size="0.254" layer="100" font="vector">PaJa</text>
<text x="-4.7625" y="-1.5875" size="0.6096" layer="21" font="vector">2W</text>
<rectangle x1="-5.953" y1="-0.3175" x2="-5.1593" y2="0.3175" layer="51"/>
<rectangle x1="5.1594" y1="-0.3175" x2="5.9531" y2="0.3175" layer="51"/>
</package>
<package name="R-_10W">
<description>&lt;B&gt;Odpor&lt;/B&gt; - 10W - dratovy</description>
<wire x1="-24.13" y1="5.3975" x2="-24.13" y2="-5.3975" width="0.127" layer="21"/>
<wire x1="-24.13" y1="-5.3975" x2="24.13" y2="-5.3975" width="0.127" layer="21"/>
<wire x1="24.13" y1="-5.3975" x2="24.13" y2="5.3975" width="0.127" layer="21"/>
<wire x1="24.13" y1="5.3975" x2="-24.13" y2="5.3975" width="0.127" layer="21"/>
<circle x="-25.7175" y="0" radius="0.5724" width="0.127" layer="102"/>
<circle x="25.7175" y="0" radius="0.5723" width="0.127" layer="102"/>
<pad name="1" x="-25.7175" y="0" drill="1.016" diameter="2.54" shape="octagon"/>
<pad name="2" x="25.7175" y="0" drill="1.016" diameter="2.54" shape="octagon"/>
<text x="-4.9375" y="-3.08" size="1.9304" layer="27" font="vector">&gt;VALUE</text>
<text x="-4.9375" y="1.2225" size="1.9304" layer="25" font="vector">&gt;NAME</text>
<text x="22.86" y="-5.08" size="0.254" layer="100" font="vector">PaJa</text>
<text x="-23.1775" y="-3.81" size="1.27" layer="21" font="vector">10W</text>
<rectangle x1="-25.2412" y1="-0.635" x2="-24.1299" y2="0.635" layer="51"/>
<rectangle x1="-25.5587" y1="0.4763" x2="-25.2412" y2="0.635" layer="51"/>
<rectangle x1="-25.5587" y1="-0.6349" x2="-25.2412" y2="-0.4762" layer="51"/>
<rectangle x1="24.13" y1="-0.635" x2="25.2413" y2="0.635" layer="51"/>
<rectangle x1="25.2413" y1="-0.6349" x2="25.5588" y2="-0.4762" layer="51"/>
<rectangle x1="25.2413" y1="0.4763" x2="25.5588" y2="0.635" layer="51"/>
</package>
<package name="R-_20W">
<description>&lt;B&gt;Odpor&lt;/B&gt; - 20W - dratovy</description>
<wire x1="30.1625" y1="6.985" x2="-30.1625" y2="6.985" width="0.127" layer="21"/>
<wire x1="30.1625" y1="1.1113" x2="30.1625" y2="-1.1113" width="0.127" layer="51"/>
<wire x1="-30.1626" y1="1.1113" x2="-30.1626" y2="-1.1113" width="0.127" layer="51"/>
<wire x1="-30.1625" y1="1.1113" x2="-30.1625" y2="6.985" width="0.127" layer="21"/>
<wire x1="-30.1625" y1="-1.1113" x2="-30.1625" y2="-6.985" width="0.127" layer="21"/>
<wire x1="-30.1625" y1="-6.985" x2="30.1625" y2="-6.985" width="0.127" layer="21"/>
<wire x1="30.1625" y1="-6.985" x2="30.1625" y2="-1.1113" width="0.127" layer="21"/>
<wire x1="30.1625" y1="6.985" x2="30.1625" y2="1.1113" width="0.127" layer="21"/>
<circle x="-31.75" y="0" radius="0.7099" width="0.127" layer="102"/>
<circle x="31.75" y="0" radius="0.7099" width="0.127" layer="102"/>
<pad name="1" x="-31.75" y="0" drill="1.27" diameter="3.2" shape="octagon"/>
<pad name="2" x="31.75" y="0" drill="1.27" diameter="3.2" shape="octagon"/>
<text x="-4.9375" y="-4.6675" size="2.1844" layer="27" font="vector">&gt;VALUE</text>
<text x="-4.9375" y="1.2225" size="2.1844" layer="25" font="vector">&gt;NAME</text>
<text x="28.8925" y="-6.6675" size="0.254" layer="100" font="vector">PaJa</text>
<text x="-29.21" y="-5.715" size="1.27" layer="21" font="vector">20W</text>
<rectangle x1="30.1625" y1="-0.635" x2="31.115" y2="0.635" layer="51"/>
<rectangle x1="-31.1149" y1="-0.635" x2="-30.1624" y2="0.635" layer="51"/>
<rectangle x1="-31.2738" y1="0.4763" x2="-31.115" y2="0.635" layer="51"/>
<rectangle x1="-31.2738" y1="-0.6349" x2="-31.115" y2="-0.4762" layer="51"/>
<rectangle x1="31.115" y1="-0.6349" x2="31.2738" y2="-0.4762" layer="51"/>
<rectangle x1="31.115" y1="0.4763" x2="31.2738" y2="0.635" layer="51"/>
</package>
<package name="R-_5W">
<description>&lt;B&gt;Odpor&lt;/B&gt; - 5W - keramicky</description>
<wire x1="-11.1125" y1="5.08" x2="-11.1125" y2="-5.08" width="0.127" layer="21"/>
<wire x1="-11.1125" y1="-5.08" x2="11.1125" y2="-5.08" width="0.127" layer="21"/>
<wire x1="11.1125" y1="-5.08" x2="11.1125" y2="5.08" width="0.127" layer="21"/>
<wire x1="11.1125" y1="5.08" x2="-11.1125" y2="5.08" width="0.127" layer="21"/>
<circle x="-12.7" y="0" radius="0.5724" width="0.127" layer="102"/>
<circle x="12.7" y="0" radius="0.5723" width="0.127" layer="102"/>
<pad name="1" x="-12.7" y="0" drill="1.016" diameter="2.54" shape="octagon"/>
<pad name="2" x="12.7" y="0" drill="1.016" diameter="2.54" shape="octagon"/>
<text x="-4.9375" y="-3.08" size="1.9304" layer="27" font="vector">&gt;VALUE</text>
<text x="-4.9375" y="1.2225" size="1.9304" layer="25" font="vector">&gt;NAME</text>
<text x="-10.16" y="-3.81" size="1.27" layer="21" font="vector">5W</text>
<text x="9.8425" y="-4.7625" size="0.254" layer="100" font="vector">PaJa</text>
<rectangle x1="-12.2237" y1="-0.635" x2="-11.1124" y2="0.635" layer="51"/>
<rectangle x1="-12.5412" y1="0.4763" x2="-12.2237" y2="0.635" layer="51"/>
<rectangle x1="-12.5412" y1="-0.6349" x2="-12.2237" y2="-0.4762" layer="51"/>
<rectangle x1="11.1125" y1="-0.635" x2="12.2238" y2="0.635" layer="51"/>
<rectangle x1="12.2238" y1="-0.6349" x2="12.5413" y2="-0.4762" layer="51"/>
<rectangle x1="12.2238" y1="0.4763" x2="12.5413" y2="0.635" layer="51"/>
</package>
<package name="R-STOJ">
<description>&lt;B&gt;Odpor&lt;/B&gt; - vel. 0207 - 0,6W - nastojato</description>
<wire x1="-1.905" y1="1.1113" x2="-1.905" y2="-1.1113" width="0.127" layer="21" curve="120.512458"/>
<wire x1="-0.635" y1="1.1113" x2="-0.635" y2="-1.1113" width="0.127" layer="21" curve="-120.512458"/>
<wire x1="-1.905" y1="1.1113" x2="-0.635" y2="1.1113" width="0.127" layer="51" curve="-59.487542"/>
<wire x1="-0.635" y1="-1.1113" x2="-1.905" y2="-1.1113" width="0.127" layer="51" curve="-59.487542"/>
<circle x="-1.27" y="0" radius="0.4763" width="0.127" layer="102"/>
<circle x="1.27" y="0" radius="0.4762" width="0.127" layer="102"/>
<pad name="1" x="-1.27" y="0" drill="0.8128" diameter="1.27" shape="long" rot="R90"/>
<pad name="2" x="1.27" y="0" drill="0.8128" diameter="1.27" shape="long" rot="R90"/>
<text x="-2.389" y="1.433" size="1.016" layer="25" font="vector">&gt;Name</text>
<text x="-2.544" y="-2.385" size="1.016" layer="27" font="vector">&gt;Value</text>
<text x="0.636" y="-1.272" size="0.254" layer="100" font="vector" rot="R90">PaJa</text>
<rectangle x1="-0.7938" y1="-0.3175" x2="-0.4763" y2="0.3175" layer="51"/>
<rectangle x1="0.4763" y1="-0.3175" x2="0.7938" y2="0.3175" layer="51"/>
<rectangle x1="-0.4763" y1="-0.3175" x2="0.4763" y2="0.3175" layer="21"/>
</package>
<package name="0805">
<description>&lt;B&gt;SMD&lt;/B&gt; - velikost 0805</description>
<wire x1="-0.3226" y1="0.5645" x2="-0.5645" y2="0.5645" width="0.127" layer="51"/>
<wire x1="-0.5645" y1="0.5645" x2="-0.5645" y2="-0.5645" width="0.127" layer="51"/>
<wire x1="-0.5645" y1="-0.5645" x2="-0.3226" y2="-0.5645" width="0.127" layer="51"/>
<wire x1="0.3226" y1="0.5645" x2="0.5645" y2="0.5645" width="0.127" layer="51"/>
<wire x1="0.5645" y1="0.5645" x2="0.5645" y2="-0.5645" width="0.127" layer="51"/>
<wire x1="0.5645" y1="-0.5645" x2="0.3226" y2="-0.5645" width="0.127" layer="51"/>
<wire x1="-0.3226" y1="0.5645" x2="0.3226" y2="0.5645" width="0.127" layer="21"/>
<wire x1="0.3226" y1="-0.5645" x2="-0.3226" y2="-0.5645" width="0.127" layer="21"/>
<smd name="1" x="-0.9525" y="0" dx="1.016" dy="1.4224" layer="1"/>
<smd name="2" x="0.9525" y="0" dx="1.016" dy="1.4224" layer="1"/>
<text x="-1.397" y="-1.6351" size="0.8128" layer="27" font="vector" ratio="10">&gt;VALUE</text>
<text x="-1.3177" y="0.8413" size="0.8128" layer="25" font="vector" ratio="10">&gt;NAME</text>
<text x="0.3956" y="-0.4763" size="0.254" layer="100" font="vector" rot="R90">PaJa</text>
<rectangle x1="0.4064" y1="-0.6096" x2="0.9144" y2="0.6096" layer="51"/>
<rectangle x1="-0.9144" y1="-0.6096" x2="-0.4064" y2="0.6096" layer="51"/>
</package>
<package name="R-12,7">
<description>&lt;B&gt;Odpor&lt;/B&gt; - roztec nozek 12,7mm</description>
<wire x1="3.7648" y1="1.2546" x2="3.8918" y2="1.3816" width="0.127" layer="21"/>
<wire x1="3.7648" y1="-1.2546" x2="3.8918" y2="-1.3816" width="0.127" layer="21"/>
<wire x1="4.2728" y1="1.3776" x2="3.8918" y2="1.3776" width="0.127" layer="21"/>
<wire x1="4.2728" y1="-1.3856" x2="3.8918" y2="-1.3856" width="0.127" layer="21"/>
<wire x1="4.2728" y1="-1.3856" x2="4.5268" y2="-1.1316" width="0.127" layer="21" curve="90" cap="flat"/>
<wire x1="4.2728" y1="1.3776" x2="4.5268" y2="1.1236" width="0.127" layer="21" curve="-90" cap="flat"/>
<wire x1="4.5249" y1="-1.1209" x2="4.5249" y2="1.1053" width="0.127" layer="21"/>
<wire x1="-3.7649" y1="1.2547" x2="-3.8919" y2="1.3817" width="0.127" layer="21"/>
<wire x1="-3.7649" y1="-1.2546" x2="-3.8919" y2="-1.3816" width="0.127" layer="21"/>
<wire x1="3.7648" y1="1.2546" x2="-3.7649" y2="1.2547" width="0.127" layer="21"/>
<wire x1="3.7648" y1="-1.2546" x2="-3.7649" y2="-1.2546" width="0.127" layer="21"/>
<wire x1="-4.5269" y1="1.1316" x2="-4.2729" y2="1.3856" width="0.127" layer="21" curve="-90" cap="flat"/>
<wire x1="-4.5269" y1="-1.1236" x2="-4.2729" y2="-1.3776" width="0.127" layer="21" curve="90" cap="flat"/>
<wire x1="-4.2729" y1="-1.3776" x2="-3.8919" y2="-1.3776" width="0.127" layer="21"/>
<wire x1="-4.2729" y1="1.3856" x2="-3.8919" y2="1.3856" width="0.127" layer="21"/>
<wire x1="-4.525" y1="1.1209" x2="-4.525" y2="-1.1054" width="0.127" layer="21"/>
<circle x="-6.35" y="0" radius="0.4763" width="0.127" layer="102"/>
<circle x="6.35" y="0" radius="0.4762" width="0.127" layer="102"/>
<pad name="1" x="-6.35" y="0" drill="0.8128" diameter="1.9304" shape="octagon"/>
<pad name="2" x="6.35" y="0" drill="0.8128" diameter="1.9304" shape="octagon"/>
<text x="-0.4813" y="-0.7958" size="1.4224" layer="27" font="vector">&gt;Value</text>
<text x="-4.2905" y="-0.7144" size="1.4224" layer="25" font="vector">&gt;Name</text>
<text x="3.5712" y="-1.1046" size="0.254" layer="100" font="vector">PaJa</text>
<rectangle x1="-5.08" y1="-0.3175" x2="-4.445" y2="0.3175" layer="21"/>
<rectangle x1="4.6038" y1="-0.3175" x2="5.08" y2="0.3175" layer="21"/>
<rectangle x1="4.445" y1="-0.3175" x2="5.08" y2="0.3175" layer="21"/>
<rectangle x1="-5.8738" y1="-0.3175" x2="-5.08" y2="0.3175" layer="51"/>
<rectangle x1="5.08" y1="-0.3175" x2="5.8738" y2="0.3175" layer="51"/>
</package>
</packages>
<symbols>
<symbol name="+9V">
<wire x1="-1.27" y1="-1.905" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="1.27" y2="-1.905" width="0.254" layer="94"/>
<wire x1="0" y1="-2.5399" x2="0" y2="0" width="0.1524" layer="94"/>
<wire x1="-1.27" y1="-1.905" x2="0" y2="1.1113" width="0.254" layer="94"/>
<wire x1="0" y1="1.1113" x2="1.27" y2="-1.905" width="0.254" layer="94"/>
<text x="0.9525" y="1.905" size="1.778" layer="96" rot="R90">&gt;Value</text>
<text x="1.27" y="-4.445" size="1.016" layer="101" ratio="6" rot="R90">+9V</text>
<pin name="+9V" x="0" y="-5.08" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
<symbol name="0V">
<wire x1="-1.7463" y1="-0.0001" x2="1.7463" y2="-0.0001" width="0.6096" layer="94"/>
<text x="0.3175" y="0.635" size="1.778" layer="96">&gt;Value</text>
<text x="-1.905" y="0.4762" size="1.016" layer="101" ratio="6">0V</text>
<text x="-0.1588" y="0.3175" size="0.254" layer="100" rot="R90">PaJa</text>
<pin name="0V" x="0" y="2.54" visible="off" length="short" direction="sup" rot="R270"/>
</symbol>
<symbol name="LED">
<wire x1="0.95" y1="1.9085" x2="1.745" y2="2.7035" width="0.155" layer="94"/>
<wire x1="1.745" y1="2.7035" x2="1.268" y2="2.7035" width="0.155" layer="94"/>
<wire x1="1.745" y1="2.7035" x2="1.745" y2="2.2265" width="0.155" layer="94"/>
<wire x1="2.699" y1="2.2265" x2="2.222" y2="2.2265" width="0.155" layer="94"/>
<wire x1="2.699" y1="2.2265" x2="2.699" y2="1.7495" width="0.155" layer="94"/>
<wire x1="1.904" y1="1.4315" x2="2.699" y2="2.2265" width="0.155" layer="94"/>
<wire x1="2.3812" y1="1.27" x2="2.3812" y2="0" width="0.254" layer="94"/>
<wire x1="2.3812" y1="0" x2="2.3812" y2="-1.27" width="0.254" layer="94"/>
<wire x1="0.1587" y1="-1.27" x2="0.1587" y2="1.27" width="0.254" layer="94"/>
<wire x1="0.1587" y1="1.27" x2="2.3812" y2="0" width="0.254" layer="94"/>
<wire x1="2.3812" y1="0" x2="0.1587" y2="-1.27" width="0.254" layer="94"/>
<text x="2.8575" y="-2.2224" size="1.6764" layer="96">&gt;Value</text>
<text x="0.3173" y="0.4759" size="0.254" layer="100" rot="R270">PaJa</text>
<text x="3.0163" y="0.4762" size="1.6764" layer="95">&gt;Part</text>
<pin name="A" x="-2.54" y="0" visible="off" length="short" direction="pas"/>
<pin name="K" x="5.08" y="0" visible="off" length="short" direction="pas" rot="R180"/>
</symbol>
<symbol name="+5V">
<wire x1="-1.27" y1="-1.905" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="1.27" y2="-1.905" width="0.254" layer="94"/>
<wire x1="0" y1="-2.5399" x2="0" y2="0" width="0.1524" layer="94"/>
<text x="0.9525" y="0.635" size="1.778" layer="96" rot="R90">&gt;Value</text>
<text x="1.27" y="-4.445" size="1.016" layer="101" ratio="6" rot="R90">+5V</text>
<pin name="+5V" x="0" y="-5.08" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
<symbol name="R">
<wire x1="-2.54" y1="1.0319" x2="2.54" y2="1.0319" width="0.254" layer="94"/>
<wire x1="2.54" y1="1.0319" x2="2.54" y2="-1.0319" width="0.254" layer="94"/>
<wire x1="2.54" y1="-1.0319" x2="-2.54" y2="-1.0319" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-1.0319" x2="-2.54" y2="1.0319" width="0.254" layer="94"/>
<text x="2.3815" y="-0.476" size="0.254" layer="100" rot="R90">PaJa</text>
<text x="-2.2225" y="1.5875" size="1.6764" layer="95">&gt;Name</text>
<text x="-2.2225" y="-1.5875" size="1.6764" layer="96" rot="MR180">&gt;Value</text>
<pin name="1" x="-5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1"/>
<pin name="2" x="5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="+9V" prefix="NAP">
<description>&lt;B&gt;SCH symbol&lt;/B&gt; - napajeni +9V</description>
<gates>
<gate name="+9" symbol="+9V" x="0" y="-5.08"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="0V" prefix="0V">
<description>&lt;B&gt;SCH symbol&lt;/B&gt; - napajeni 0V</description>
<gates>
<gate name="0" symbol="0V" x="-43.18" y="35.56"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="LED" prefix="D">
<description>&lt;B&gt;LED&lt;/B&gt; - jednobarevna</description>
<gates>
<gate name="D" symbol="LED" x="-2.54" y="0" swaplevel="1"/>
</gates>
<devices>
<device name="_10" package="LED_10">
<connects>
<connect gate="D" pin="A" pad="A"/>
<connect gate="D" pin="K" pad="K"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="_3" package="LED_3">
<connects>
<connect gate="D" pin="A" pad="A"/>
<connect gate="D" pin="K" pad="K"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="_5" package="LED_5">
<connects>
<connect gate="D" pin="A" pad="A"/>
<connect gate="D" pin="K" pad="K"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="_5X5" package="LED_5X5">
<connects>
<connect gate="D" pin="A" pad="A"/>
<connect gate="D" pin="K" pad="K"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="_8" package="LED_8">
<connects>
<connect gate="D" pin="A" pad="A"/>
<connect gate="D" pin="K" pad="K"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="_TROJ" package="LED_TROJ">
<connects>
<connect gate="D" pin="A" pad="A"/>
<connect gate="D" pin="K" pad="K"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="_2,5X5" package="LED2,5X5">
<connects>
<connect gate="D" pin="A" pad="A"/>
<connect gate="D" pin="K" pad="K"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="_SMD_1206" package="P1206">
<connects>
<connect gate="D" pin="A" pad="A"/>
<connect gate="D" pin="K" pad="K"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="+5V" prefix="NAP">
<description>&lt;B&gt;SCH symbol&lt;/B&gt; - napajeni +5V</description>
<gates>
<gate name="+5" symbol="+5V" x="0" y="-5.08"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="R" prefix="R" uservalue="yes">
<description>&lt;b&gt;Rezistor&lt;/b&gt;</description>
<gates>
<gate name="R" symbol="R" x="0" y="0" swaplevel="1"/>
</gates>
<devices>
<device name="_5" package="R-5">
<connects>
<connect gate="R" pin="1" pad="1"/>
<connect gate="R" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="_10" package="R-10">
<connects>
<connect gate="R" pin="1" pad="1"/>
<connect gate="R" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="_12,7" package="R-12,7">
<connects>
<connect gate="R" pin="1" pad="1"/>
<connect gate="R" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="_7,5" package="R-7,5">
<connects>
<connect gate="R" pin="1" pad="1"/>
<connect gate="R" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="_SMD_1206" package="1206">
<connects>
<connect gate="R" pin="1" pad="1"/>
<connect gate="R" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="__2W" package="R-_2W">
<connects>
<connect gate="R" pin="1" pad="1"/>
<connect gate="R" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="__10W" package="R-_10W">
<connects>
<connect gate="R" pin="1" pad="1"/>
<connect gate="R" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="__20W" package="R-_20W">
<connects>
<connect gate="R" pin="1" pad="1"/>
<connect gate="R" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="__5W" package="R-_5W">
<connects>
<connect gate="R" pin="1" pad="1"/>
<connect gate="R" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="_STOJ" package="R-STOJ">
<connects>
<connect gate="R" pin="1" pad="1"/>
<connect gate="R" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="_SMD_0805" package="0805">
<connects>
<connect gate="R" pin="1" pad="1"/>
<connect gate="R" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="IC1" library="st-microelectronics" deviceset="L293D" device=""/>
<part name="CON1" library="#PaJa_konektory" deviceset="MLW10" device=""/>
<part name="J1" library="con-tycoelectronics" deviceset="RJ11" device="" technology="-6X"/>
<part name="J2" library="con-tycoelectronics" deviceset="RJ11" device="" technology="-6X"/>
<part name="NAP1" library="#PaJa_30" deviceset="+9V" device=""/>
<part name="0V1" library="#PaJa_30" deviceset="0V" device=""/>
<part name="5V" library="#PaJa_30" deviceset="LED" device="_5"/>
<part name="2" library="#PaJa_30" deviceset="LED" device="_5"/>
<part name="1" library="#PaJa_30" deviceset="LED" device="_5"/>
<part name="9V" library="#PaJa_30" deviceset="LED" device="_5"/>
<part name="0V2" library="#PaJa_30" deviceset="0V" device=""/>
<part name="0V3" library="#PaJa_30" deviceset="0V" device=""/>
<part name="0V4" library="#PaJa_30" deviceset="0V" device=""/>
<part name="NAP2" library="#PaJa_30" deviceset="+5V" device=""/>
<part name="NAP3" library="#PaJa_30" deviceset="+5V" device=""/>
<part name="NAP4" library="#PaJa_30" deviceset="+9V" device=""/>
<part name="NAP5" library="#PaJa_30" deviceset="+9V" device=""/>
<part name="NAP6" library="#PaJa_30" deviceset="+5V" device=""/>
<part name="0V5" library="#PaJa_30" deviceset="0V" device=""/>
<part name="0V6" library="#PaJa_30" deviceset="0V" device=""/>
<part name="0V7" library="#PaJa_30" deviceset="0V" device=""/>
<part name="0V8" library="#PaJa_30" deviceset="0V" device=""/>
<part name="R1" library="#PaJa_30" deviceset="R" device="_10"/>
<part name="R5" library="#PaJa_30" deviceset="R" device="_10"/>
<part name="R3" library="#PaJa_30" deviceset="R" device="_10"/>
<part name="R4" library="#PaJa_30" deviceset="R" device="_10"/>
<part name="0V9" library="#PaJa_30" deviceset="0V" device=""/>
<part name="NAP7" library="#PaJa_30" deviceset="+5V" device=""/>
<part name="JUM1" library="#PaJa_konektory" deviceset="S1G4_JUMP" device=""/>
<part name="JUM2" library="#PaJa_konektory" deviceset="S1G4_JUMP" device=""/>
<part name="NAP8" library="#PaJa_30" deviceset="+5V" device=""/>
<part name="0V10" library="#PaJa_30" deviceset="0V" device=""/>
<part name="0V11" library="#PaJa_30" deviceset="0V" device=""/>
<part name="NAP9" library="#PaJa_30" deviceset="+5V" device=""/>
<part name="NAP10" library="#PaJa_30" deviceset="+9V" device=""/>
<part name="0V12" library="#PaJa_30" deviceset="0V" device=""/>
<part name="K1" library="#PaJa_konektory" deviceset="ARK500/2" device=""/>
<part name="K2" library="#PaJa_konektory" deviceset="ARK500/2" device=""/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="IC1" gate="G$1" x="63.5" y="53.34" rot="R180"/>
<instance part="CON1" gate="CON" x="129.54" y="55.88"/>
<instance part="J1" gate="G$1" x="33.02" y="12.7" rot="R270"/>
<instance part="J2" gate="G$1" x="86.36" y="12.7" rot="R270"/>
<instance part="NAP1" gate="+9" x="5.08" y="116.84" rot="R270"/>
<instance part="0V1" gate="0" x="5.08" y="104.14"/>
<instance part="5V" gate="D" x="-15.24" y="66.04" rot="R270"/>
<instance part="2" gate="D" x="-2.54" y="66.04" rot="R270"/>
<instance part="1" gate="D" x="7.62" y="66.04" rot="R270"/>
<instance part="9V" gate="D" x="-25.4" y="66.04" rot="R270"/>
<instance part="0V2" gate="0" x="45.72" y="53.34" rot="R270"/>
<instance part="0V3" gate="0" x="81.28" y="53.34" rot="R90"/>
<instance part="0V4" gate="0" x="137.16" y="48.26"/>
<instance part="NAP2" gate="+5" x="142.24" y="53.34" rot="R270"/>
<instance part="NAP3" gate="+5" x="83.82" y="71.12" rot="R270"/>
<instance part="NAP4" gate="+9" x="43.18" y="35.56" rot="R90"/>
<instance part="NAP5" gate="+9" x="-25.4" y="73.66"/>
<instance part="NAP6" gate="+5" x="-15.24" y="73.66"/>
<instance part="0V5" gate="0" x="-25.4" y="45.72"/>
<instance part="0V6" gate="0" x="-15.24" y="45.72"/>
<instance part="0V7" gate="0" x="-2.54" y="45.72"/>
<instance part="0V8" gate="0" x="7.62" y="45.72"/>
<instance part="R1" gate="R" x="-25.4" y="55.88" rot="R90"/>
<instance part="R5" gate="R" x="-15.24" y="55.88" rot="R90"/>
<instance part="R3" gate="R" x="-2.54" y="55.88" rot="R90"/>
<instance part="R4" gate="R" x="7.62" y="55.88" rot="R90"/>
<instance part="0V9" gate="0" x="66.04" y="20.32"/>
<instance part="NAP7" gate="+5" x="58.42" y="12.7" rot="R180"/>
<instance part="JUM1" gate="JUMP" x="2.54" y="20.32" rot="R90"/>
<instance part="JUM2" gate="JUMP" x="127" y="20.32" rot="MR90"/>
<instance part="NAP8" gate="+5" x="114.3" y="22.86" rot="R90"/>
<instance part="0V10" gate="0" x="121.92" y="25.4" rot="R270"/>
<instance part="0V11" gate="0" x="7.62" y="25.4" rot="R90"/>
<instance part="NAP9" gate="+5" x="15.24" y="22.86" rot="R270"/>
<instance part="NAP10" gate="+9" x="33.02" y="116.84" rot="R270"/>
<instance part="0V12" gate="0" x="27.94" y="106.68"/>
<instance part="K1" gate="K" x="-10.16" y="114.3" rot="R180"/>
<instance part="K2" gate="K" x="22.86" y="116.84" rot="MR0"/>
</instances>
<busses>
</busses>
<nets>
<net name="+9V" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="VCC1"/>
<pinref part="NAP4" gate="+9" pin="+9V"/>
</segment>
<segment>
<pinref part="9V" gate="D" pin="A"/>
<pinref part="NAP5" gate="+9" pin="+9V"/>
</segment>
<segment>
<pinref part="NAP10" gate="+9" pin="+9V"/>
<pinref part="K2" gate="K" pin="K1"/>
</segment>
<segment>
<pinref part="K1" gate="K" pin="K2"/>
<pinref part="NAP1" gate="+9" pin="+9V"/>
<wire x1="-5.08" y1="116.84" x2="0" y2="116.84" width="0.1524" layer="91"/>
</segment>
</net>
<net name="0V" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="GND4"/>
<pinref part="IC1" gate="G$1" pin="GND3"/>
<wire x1="48.26" y1="55.88" x2="48.26" y2="53.34" width="0.1524" layer="91"/>
<pinref part="0V2" gate="0" pin="0V"/>
<wire x1="48.26" y1="53.34" x2="48.26" y2="50.8" width="0.1524" layer="91"/>
<junction x="48.26" y="53.34"/>
</segment>
<segment>
<pinref part="IC1" gate="G$1" pin="GND2"/>
<pinref part="IC1" gate="G$1" pin="GND1"/>
<wire x1="78.74" y1="55.88" x2="78.74" y2="53.34" width="0.1524" layer="91"/>
<pinref part="0V3" gate="0" pin="0V"/>
<wire x1="78.74" y1="53.34" x2="78.74" y2="50.8" width="0.1524" layer="91"/>
<junction x="78.74" y="53.34"/>
</segment>
<segment>
<pinref part="CON1" gate="CON" pin="1"/>
<pinref part="0V4" gate="0" pin="0V"/>
</segment>
<segment>
<pinref part="0V5" gate="0" pin="0V"/>
<pinref part="R1" gate="R" pin="1"/>
<wire x1="-25.4" y1="48.26" x2="-25.4" y2="50.8" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="0V6" gate="0" pin="0V"/>
<pinref part="R5" gate="R" pin="1"/>
<wire x1="-15.24" y1="48.26" x2="-15.24" y2="50.8" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="0V7" gate="0" pin="0V"/>
<pinref part="R3" gate="R" pin="1"/>
<wire x1="-2.54" y1="48.26" x2="-2.54" y2="50.8" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="0V8" gate="0" pin="0V"/>
<pinref part="R4" gate="R" pin="1"/>
<wire x1="7.62" y1="48.26" x2="7.62" y2="50.8" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="J1" gate="G$1" pin="3"/>
<wire x1="33.02" y1="15.24" x2="33.02" y2="22.86" width="0.1524" layer="91"/>
<pinref part="J2" gate="G$1" pin="3"/>
<wire x1="33.02" y1="22.86" x2="66.04" y2="22.86" width="0.1524" layer="91"/>
<wire x1="66.04" y1="22.86" x2="86.36" y2="22.86" width="0.1524" layer="91"/>
<wire x1="86.36" y1="22.86" x2="86.36" y2="15.24" width="0.1524" layer="91"/>
<pinref part="0V9" gate="0" pin="0V"/>
<junction x="66.04" y="22.86"/>
</segment>
<segment>
<pinref part="JUM2" gate="JUMP" pin="4"/>
<pinref part="0V10" gate="0" pin="0V"/>
</segment>
<segment>
<pinref part="JUM1" gate="JUMP" pin="4"/>
<pinref part="0V11" gate="0" pin="0V"/>
</segment>
<segment>
<pinref part="0V12" gate="0" pin="0V"/>
<wire x1="27.94" y1="114.3" x2="27.94" y2="109.22" width="0.1524" layer="91"/>
<pinref part="K2" gate="K" pin="K2"/>
</segment>
<segment>
<pinref part="K1" gate="K" pin="K1"/>
<pinref part="0V1" gate="0" pin="0V"/>
<wire x1="-5.08" y1="114.3" x2="5.08" y2="114.3" width="0.1524" layer="91"/>
<wire x1="5.08" y1="114.3" x2="5.08" y2="106.68" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$1" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="3Y"/>
<wire x1="48.26" y1="60.96" x2="20.32" y2="60.96" width="0.1524" layer="91"/>
<wire x1="20.32" y1="60.96" x2="20.32" y2="33.02" width="0.1524" layer="91"/>
<pinref part="J1" gate="G$1" pin="1"/>
<wire x1="20.32" y1="33.02" x2="38.1" y2="33.02" width="0.1524" layer="91"/>
<wire x1="38.1" y1="33.02" x2="38.1" y2="15.24" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="4Y"/>
<pinref part="J1" gate="G$1" pin="2"/>
<wire x1="48.26" y1="45.72" x2="35.56" y2="45.72" width="0.1524" layer="91"/>
<wire x1="35.56" y1="45.72" x2="35.56" y2="15.24" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="1Y"/>
<pinref part="J2" gate="G$1" pin="2"/>
<wire x1="78.74" y1="45.72" x2="88.9" y2="45.72" width="0.1524" layer="91"/>
<wire x1="88.9" y1="45.72" x2="88.9" y2="15.24" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="2Y"/>
<pinref part="J2" gate="G$1" pin="1"/>
<wire x1="78.74" y1="60.96" x2="91.44" y2="60.96" width="0.1524" layer="91"/>
<wire x1="91.44" y1="60.96" x2="91.44" y2="15.24" width="0.1524" layer="91"/>
</segment>
</net>
<net name="+5V" class="0">
<segment>
<pinref part="CON1" gate="CON" pin="3"/>
<pinref part="NAP2" gate="+5" pin="+5V"/>
</segment>
<segment>
<pinref part="IC1" gate="G$1" pin="VCC2"/>
<pinref part="NAP3" gate="+5" pin="+5V"/>
</segment>
<segment>
<pinref part="5V" gate="D" pin="A"/>
<pinref part="NAP6" gate="+5" pin="+5V"/>
</segment>
<segment>
<pinref part="J2" gate="G$1" pin="4"/>
<wire x1="83.82" y1="15.24" x2="83.82" y2="17.78" width="0.1524" layer="91"/>
<wire x1="83.82" y1="17.78" x2="58.42" y2="17.78" width="0.1524" layer="91"/>
<pinref part="J1" gate="G$1" pin="4"/>
<wire x1="58.42" y1="17.78" x2="30.48" y2="17.78" width="0.1524" layer="91"/>
<wire x1="30.48" y1="17.78" x2="30.48" y2="15.24" width="0.1524" layer="91"/>
<pinref part="NAP7" gate="+5" pin="+5V"/>
<junction x="58.42" y="17.78"/>
</segment>
<segment>
<pinref part="JUM2" gate="JUMP" pin="3"/>
<pinref part="NAP8" gate="+5" pin="+5V"/>
<wire x1="119.38" y1="22.86" x2="124.46" y2="22.86" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="JUM1" gate="JUMP" pin="3"/>
<pinref part="NAP9" gate="+5" pin="+5V"/>
<wire x1="10.16" y1="22.86" x2="5.08" y2="22.86" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<pinref part="CON1" gate="CON" pin="7"/>
<wire x1="137.16" y1="58.42" x2="147.32" y2="58.42" width="0.1524" layer="91"/>
<wire x1="147.32" y1="58.42" x2="147.32" y2="35.56" width="0.1524" layer="91"/>
<pinref part="IC1" gate="G$1" pin="1-2EN"/>
<wire x1="147.32" y1="35.56" x2="78.74" y2="35.56" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$8" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="3-4EN"/>
<wire x1="139.7" y1="86.36" x2="48.26" y2="86.36" width="0.1524" layer="91"/>
<wire x1="48.26" y1="86.36" x2="48.26" y2="71.12" width="0.1524" layer="91"/>
<pinref part="CON1" gate="CON" pin="5"/>
<wire x1="137.16" y1="55.88" x2="139.7" y2="55.88" width="0.1524" layer="91"/>
<wire x1="139.7" y1="55.88" x2="139.7" y2="86.36" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="CON1" gate="CON" pin="6"/>
<wire x1="121.92" y1="55.88" x2="104.14" y2="55.88" width="0.1524" layer="91"/>
<wire x1="104.14" y1="55.88" x2="104.14" y2="66.04" width="0.1524" layer="91"/>
<pinref part="IC1" gate="G$1" pin="2A"/>
<wire x1="104.14" y1="66.04" x2="78.74" y2="66.04" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="CON1" gate="CON" pin="2"/>
<wire x1="121.92" y1="50.8" x2="109.22" y2="50.8" width="0.1524" layer="91"/>
<wire x1="109.22" y1="50.8" x2="109.22" y2="40.64" width="0.1524" layer="91"/>
<pinref part="IC1" gate="G$1" pin="1A"/>
<wire x1="109.22" y1="40.64" x2="78.74" y2="40.64" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$9" class="0">
<segment>
<pinref part="CON1" gate="CON" pin="8"/>
<wire x1="121.92" y1="58.42" x2="109.22" y2="58.42" width="0.1524" layer="91"/>
<wire x1="109.22" y1="58.42" x2="109.22" y2="81.28" width="0.1524" layer="91"/>
<wire x1="109.22" y1="81.28" x2="43.18" y2="81.28" width="0.1524" layer="91"/>
<wire x1="43.18" y1="81.28" x2="43.18" y2="66.04" width="0.1524" layer="91"/>
<pinref part="IC1" gate="G$1" pin="3A"/>
<wire x1="43.18" y1="66.04" x2="48.26" y2="66.04" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$10" class="0">
<segment>
<pinref part="CON1" gate="CON" pin="4"/>
<wire x1="121.92" y1="53.34" x2="104.14" y2="53.34" width="0.1524" layer="91"/>
<wire x1="104.14" y1="53.34" x2="104.14" y2="25.4" width="0.1524" layer="91"/>
<wire x1="104.14" y1="25.4" x2="27.94" y2="25.4" width="0.1524" layer="91"/>
<wire x1="27.94" y1="25.4" x2="27.94" y2="40.64" width="0.1524" layer="91"/>
<pinref part="IC1" gate="G$1" pin="4A"/>
<wire x1="27.94" y1="40.64" x2="48.26" y2="40.64" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$11" class="0">
<segment>
<pinref part="CON1" gate="CON" pin="10"/>
<wire x1="121.92" y1="60.96" x2="114.3" y2="60.96" width="0.1524" layer="91"/>
<wire x1="114.3" y1="60.96" x2="114.3" y2="93.98" width="0.1524" layer="91"/>
<wire x1="114.3" y1="93.98" x2="7.62" y2="93.98" width="0.1524" layer="91"/>
<wire x1="7.62" y1="93.98" x2="7.62" y2="68.58" width="0.1524" layer="91"/>
<pinref part="1" gate="D" pin="A"/>
</segment>
</net>
<net name="N$12" class="0">
<segment>
<pinref part="CON1" gate="CON" pin="9"/>
<wire x1="137.16" y1="60.96" x2="137.16" y2="99.06" width="0.1524" layer="91"/>
<wire x1="137.16" y1="99.06" x2="-2.54" y2="99.06" width="0.1524" layer="91"/>
<wire x1="-2.54" y1="99.06" x2="-2.54" y2="68.58" width="0.1524" layer="91"/>
<pinref part="2" gate="D" pin="A"/>
</segment>
</net>
<net name="N$13" class="0">
<segment>
<pinref part="9V" gate="D" pin="K"/>
<pinref part="R1" gate="R" pin="2"/>
</segment>
</net>
<net name="N$14" class="0">
<segment>
<pinref part="5V" gate="D" pin="K"/>
<pinref part="R5" gate="R" pin="2"/>
</segment>
</net>
<net name="N$15" class="0">
<segment>
<pinref part="2" gate="D" pin="K"/>
<pinref part="R3" gate="R" pin="2"/>
</segment>
</net>
<net name="N$16" class="0">
<segment>
<pinref part="1" gate="D" pin="K"/>
<pinref part="R4" gate="R" pin="2"/>
</segment>
</net>
<net name="N$17" class="0">
<segment>
<pinref part="J2" gate="G$1" pin="5"/>
<wire x1="81.28" y1="15.24" x2="81.28" y2="20.32" width="0.1524" layer="91"/>
<wire x1="81.28" y1="20.32" x2="124.46" y2="20.32" width="0.1524" layer="91"/>
<pinref part="JUM2" gate="JUMP" pin="2"/>
</segment>
</net>
<net name="N$18" class="0">
<segment>
<pinref part="J2" gate="G$1" pin="6"/>
<wire x1="78.74" y1="15.24" x2="71.12" y2="15.24" width="0.1524" layer="91"/>
<wire x1="71.12" y1="15.24" x2="71.12" y2="2.54" width="0.1524" layer="91"/>
<wire x1="71.12" y1="2.54" x2="104.14" y2="2.54" width="0.1524" layer="91"/>
<wire x1="104.14" y1="2.54" x2="104.14" y2="17.78" width="0.1524" layer="91"/>
<pinref part="JUM2" gate="JUMP" pin="1"/>
<wire x1="104.14" y1="17.78" x2="124.46" y2="17.78" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$19" class="0">
<segment>
<pinref part="J1" gate="G$1" pin="5"/>
<wire x1="27.94" y1="15.24" x2="27.94" y2="20.32" width="0.1524" layer="91"/>
<wire x1="27.94" y1="20.32" x2="5.08" y2="20.32" width="0.1524" layer="91"/>
<pinref part="JUM1" gate="JUMP" pin="2"/>
</segment>
</net>
<net name="N$20" class="0">
<segment>
<pinref part="J1" gate="G$1" pin="6"/>
<wire x1="25.4" y1="15.24" x2="25.4" y2="17.78" width="0.1524" layer="91"/>
<pinref part="JUM1" gate="JUMP" pin="1"/>
<wire x1="5.08" y1="17.78" x2="25.4" y2="17.78" width="0.1524" layer="91"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>

<?xml version="1.0" encoding="utf-8"?>
<parametricbox version="2.0">
  <info>
    <title>Basic Pressfit</title>
    <id>magicbox.empty</id>
    <author/>
    <website>http://magic-box.org/</website>
    <tutorial/>
    <description>A default design</description>
  </info>
  <variables>
    <variable name="width" title="Width" min="10" max="7000" value="100" type="stepper" showSettings="false" description="width of the box"/>
    <variable name="height" title="Height" min="10" max="7000" value="50" type="stepper" showSettings="false" description="height of the box"/>
    <variable name="depth" title="Depth" min="10" max="7000" value="25" type="stepper" showSettings="false" description="depth of the box"/>
    <variable name="w_steps" type="stepper" min="0" max="200" value="10" showSettings="false" description="no. of steps in height"/>
    <variable name="h_steps" title="Thickness" min="0" max="200" value="10" type="stepper" showSettings="false" description="no. of steps in height"/>
    <variable name="d_steps" type="stepper" min="0" max="200" value="10" showSettings="false" description="no. of steps in depth"/>
    <variable name="t_steps" type="stepper" min="0" max="200" value="1" showSettings="false" description="no. of steps at top"/>
    <variable name="t" type="slider" min="0" max="100" value="3" showSettings="false" description="thickness of material"/>
    <variable name="pf" type="slider" min="0" max="5" value="0" showSettings="false" description="press fit margin - helps to optimize the press fit"/>
    <variable name="tpf" type="slider" min="0" max="5" value="0" showSettings="true" description="press fit top margin"/>
  </variables>
  <layers>
    <g stroke="#DDDDDD" stroke-width="1" stroke-opacity="1" fill="#888888" fill-opacity="0.5" visibility="visible" mb_x="0" mb_y="0" mb_stroke="#DDDDDD" mb_strokeWidth="1" mb_strokeOpacity="1" mb_fill="#888888" mb_fillOpacity="0.5" mb_visibility="visible" mb__showStroke="true" mb__showFill="false" mb__showTransform="true" id="Top">
      <transforms>
        <transform type="translate" x="-t" y="height+t+1" angle="0" cx="0" cy="0" sx="1" sy="1"/>
      </transforms>
      <path id="sheet 3" visible="true" mb_d="set tLarge width/t_steps/4+tpf/2&#xA;set tSmall width/t_steps/2-tpf&#xA;&#xA;set wLarge width/w_steps/4+pf/2&#xA;set wSmall width/w_steps/2-pf&#xA;&#xA;set dLarge depth/d_steps/4+pf/2&#xA;set dSmall depth/d_steps/2-pf&#xA;&#xA;h @t&#xA;repeat w_steps [&#xA; h wLarge&#xA; v @t&#xA; h wSmall&#xA; v -@t&#xA; h wLarge&#xA;]&#xA;h @t&#xA;&#xA;v @t&#xA;repeat d_steps [&#xA; v dLarge&#xA; h -@t&#xA; v dSmall&#xA; h @t&#xA; v dLarge&#xA;]&#xA;v @t&#xA;&#xA;h -@t&#xA;repeat t_steps [&#xA; h -tLarge&#xA; v -@t&#xA; h -tSmall&#xA; v @t&#xA; h -tLarge&#xA;]&#xA;h -@t&#xA;&#xA;v -@t&#xA;repeat d_steps [&#xA; v -dLarge&#xA; h @t&#xA; v -dSmall&#xA; h -@t&#xA; v -dLarge&#xA;]&#xA;v -@t&#xA;" mb_visibility="visible" mb__showStroke="true" mb__showFill="false" mb_fillOpacity="0" mb_stroke="#ff0000" mb_fill="#cccccc" mb_strokeOpacity="1" mb_strokeWidth="0"/>
      <path id="sheet 3" visible="true" mb_d="set tLarge width/t_steps/4+tpf/2&#xA;set tSmall width/t_steps/2-tpf&#xA;&#xA;set wLarge width/w_steps/4+pf/2&#xA;set wSmall width/w_steps/2-pf&#xA;&#xA;set dLarge depth/d_steps/4+pf/2&#xA;set dSmall depth/d_steps/2-pf&#xA;&#xA;h @t&#xA;repeat w_steps [&#xA; h wLarge&#xA; v @t&#xA; h wSmall&#xA; v -@t&#xA; h wLarge&#xA;]&#xA;h @t&#xA;&#xA;v @t&#xA;repeat d_steps [&#xA; v dLarge&#xA; h -@t&#xA; v dSmall&#xA; h @t&#xA; v dLarge&#xA;]&#xA;v @t&#xA;&#xA;h -@t&#xA;repeat t_steps [&#xA; h -tLarge&#xA; v -@t&#xA; h -tSmall&#xA; v @t&#xA; h -tLarge&#xA;]&#xA;h -@t&#xA;&#xA;v -@t&#xA;repeat d_steps [&#xA; v -dLarge&#xA; h @t&#xA; v -dSmall&#xA; h -@t&#xA; v -dLarge&#xA;]&#xA;v -@t&#xA;" mb_visibility="visible" mb__showStroke="true" mb__showFill="false" mb_fillOpacity="0" mb_stroke="#ff0000" mb_fill="#cccccc" mb_strokeOpacity="1" mb_strokeWidth="0" mb__showTransform="true">
        <transforms>
          <transform type="translate" x="width+t*3" y="0" angle="0" cx="0" cy="0" sx="1" sy="1"/>
        </transforms>
      </path>
    </g>
    <g stroke="#DDDDDD" stroke-width="1" stroke-opacity="1" fill="#888888" fill-opacity="0.5" visibility="visible" mb_x="0" mb_y="0" mb_stroke="#DDDDDD" mb_strokeWidth="1" mb_strokeOpacity="1" mb_fill="#888888" mb_fillOpacity="0.5" mb_visibility="visible" mb__showStroke="true" mb__showFill="false" mb__showTransform="true" id="Front">
      <transforms>
        <transform type="translate" x="width+t+2" y="0" angle="0" cx="0" cy="0" sx="1" sy="1"/>
      </transforms>
      <path name="sheet 2" visible="true" mb_d="&#xA;set dLarge depth/d_steps/4-pf/2&#xA;set dSmall depth/d_steps/2+pf&#xA;&#xA;set tLarge height/t_steps/4+tpf/2&#xA;set tSmall height/t_steps/2-tpf&#xA;&#xA;set hLarge height/h_steps/4+pf/2&#xA;set hSmall height/h_steps/2-pf&#xA;&#xA;h @t&#xA;repeat d_steps [&#xA; h dLarge&#xA; v -t&#xA; h dSmall&#xA; v @t&#xA; h dLarge&#xA;]&#xA;h @t&#xA;&#xA;repeat t_steps [&#xA; v tLarge&#xA; h -@t&#xA; v tSmall&#xA; h @t&#xA; v tLarge&#xA;]&#xA;&#xA;h -@t&#xA;repeat d_steps [&#xA; h -dLarge&#xA; v @t&#xA; h -dSmall&#xA; v -@t&#xA; h -dLarge&#xA;]&#xA;&#xA;h -t&#xA;&#xA;repeat h_steps [&#xA; v -hLarge&#xA; h @t&#xA; v -hSmall&#xA; h -t&#xA; v -hLarge&#xA;]&#xA;" id="sheet 2" mb_visibility="visible" mb__showStroke="true" mb__showFill="false" mb_fill="#cccccc" mb_stroke="#ff0000" mb_strokeOpacity="1" mb_fillOpacity="0" mb_strokeWidth="0"/>
      <path name="sheet 2" visible="true" mb_d="&#xA;set dLarge depth/d_steps/4-pf/2&#xA;set dSmall depth/d_steps/2+pf&#xA;&#xA;set tLarge height/t_steps/4+tpf/2&#xA;set tSmall height/t_steps/2-tpf&#xA;&#xA;set hLarge height/h_steps/4+pf/2&#xA;set hSmall height/h_steps/2-pf&#xA;&#xA;h @t&#xA;repeat d_steps [&#xA; h dLarge&#xA; v -t&#xA; h dSmall&#xA; v @t&#xA; h dLarge&#xA;]&#xA;h @t&#xA;&#xA;repeat t_steps [&#xA; v tLarge&#xA; h -@t&#xA; v tSmall&#xA; h @t&#xA; v tLarge&#xA;]&#xA;&#xA;h -@t&#xA;repeat d_steps [&#xA; h -dLarge&#xA; v @t&#xA; h -dSmall&#xA; v -@t&#xA; h -dLarge&#xA;]&#xA;&#xA;h -t&#xA;&#xA;repeat h_steps [&#xA; v -hLarge&#xA; h @t&#xA; v -hSmall&#xA; h -t&#xA; v -hLarge&#xA;]&#xA;" id="sheet 2" mb_visibility="visible" mb__showStroke="true" mb__showFill="false" mb_fill="#999999" mb_stroke="#ff0000" mb_strokeOpacity="1" mb_fillOpacity="0" mb__showTransform="true" mb_strokeWidth="0">
        <transforms>
          <transform type="translate" x="0" y="-height-t*3" angle="0" cx="0" cy="0" sx="1" sy="1"/>
        </transforms>
      </path>
    </g>
    <g stroke="#DDDDDD" stroke-width="1" stroke-opacity="1" fill="#888888" fill-opacity="0.5" visibility="visible" mb_x="0" mb_y="0" mb_stroke="#DDDDDD" mb_strokeWidth="1" mb_strokeOpacity="1" mb_fill="#888888" mb_fillOpacity="0.5" mb_visibility="visible" mb__showStroke="true" mb__showFill="false" mb__showTransform="true" id="Left">
      <transforms>
        <transform type="translate" x="0" y="" angle="0" cx="0" cy="0" sx="1" sy="1"/>
      </transforms>
      <path id="sheet 1" visible="true" mb_d="set wLarge width/w_steps/4-pf/2&#xD;set wSmall width/w_steps/2+pf&#xD;&#xD;set hLarge height/h_steps/4-pf/2&#xD;set hSmall height/h_steps/2+pf&#xD;&#xD;repeat @w_steps [&#xD; h wLarge&#xD; v -@t&#xD; h wSmall&#xD; v @t&#xD; h wLarge&#xD;]&#xD;&#xD;repeat @h_steps [&#xD; v hLarge&#xD; h @t&#xD; v hSmall&#xD; h -@t&#xD; v hLarge&#xD;]&#xD;&#xD;repeat @w_steps [&#xD; h -wLarge&#xD; v @t&#xD; h -wSmall&#xD; v -@t&#xD; h -wLarge&#xD;]&#xD;&#xD;repeat @h_steps [&#xD; v -hLarge&#xD; h -@t&#xD; v -hSmall&#xD; h @t&#xD; v -hLarge&#xD;]&#xD;" mb__showStroke="true" mb_strokeOpacity="1" mb_visibility="visible" mb_stroke="#ff0000" mb__showFill="false" mb_fillOpacity="0" mb_fill="#000000" mb_strokeWidth="0"/>
      <path id="sheet 1" visible="true" mb_d="set wLarge width/t_steps/4-tpf/2&#xA;set wSmall width/t_steps/2+tpf&#xA;&#xA;set hLarge height/t_steps/4-tpf/2&#xA;set hSmall height/t_steps/2+tpf&#xA;&#xA;repeat @t_steps [&#xA; h wLarge&#xA; v -@t&#xA; h wSmall&#xA; v @t&#xA; h wLarge&#xA;]&#xA;&#xA;repeat @t_steps [&#xA; v hLarge&#xA; h @t&#xA; v hSmall&#xA; h -@t&#xA; v hLarge&#xA;]&#xA;&#xA;repeat @t_steps [&#xA; h -wLarge&#xA; v @t&#xA; h -wSmall&#xA; v -@t&#xA; h -wLarge&#xA;]&#xA;&#xA;repeat @t_steps [&#xA; v -hLarge&#xA; h -@t&#xA; v -hSmall&#xA; h @t&#xA; v -hLarge&#xA;]&#xA;" mb__showStroke="true" mb_strokeOpacity="1" mb_visibility="visible" mb_stroke="#ff0000" mb__showFill="false" mb_fillOpacity="0" mb_fill="#000000" mb_strokeWidth="0" mb__showTransform="true">
        <transforms>
          <transform type="translate" x="0" y="-height-t*3" angle="0" cx="0" cy="0" sx="1" sy="1"/>
        </transforms>
      </path>
    </g>
  </layers>
</parametricbox>
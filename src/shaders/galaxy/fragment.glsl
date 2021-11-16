varying vec3 vColor;
 
 void main()
    {
        //Disc Shape
        float strength = distance(gl_PointCoord,vec2(0.5));
        strength = 1.0 - strength;
        strength= pow(strength,10.0);
        
        gl_FragColor = vec4(vec3(strength), 1.0);

      //Color
        vec3 color = mix(vec3(0.0),vColor,strength);
        gl_FragColor = vec4(color, 1.0);

    }
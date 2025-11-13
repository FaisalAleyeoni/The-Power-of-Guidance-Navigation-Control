# The Power of Guidance, Navigation & Control (GNC)

## KFUPM Aerospace Female Students Club Seminar

This repository contains materials from a seminar event organized for the KFUPM (King Fahd University of Petroleum & Minerals) Aerospace Female Students Club, focused on introducing the fundamentals and applications of Guidance, Navigation, and Control (GNC) systems in aerospace engineering.

---

## Presenters

**Eng. Abdulaziz Al-Shehri**
- B.S. Aerospace Engineering, KFUPM - Patch 2016
- 4+ Years as GNC Engineer at SAMI AEC
- Self-taught pilot

**Eng. Faisal Al-Eyeoni**
- B.S. Aerospace Engineering, KFUPM - Patch 2016
- 4+ Years as GNC Engineer at SAMI AEC
- 2+ Years as Performance Analyst at LIGNex1

---

## What is GNC?

**Navigation** → Knowing where you are

**Guidance** → Choosing the best path

**Control** → Using the available controls to follow the path

GNC systems form the brain and nervous system of aerospace vehicles, enabling autonomous flight from takeoff to landing.

---

## The Role of GNC Engineers

GNC engineers are central to aerospace system design. They:

- **Interface with all other subsystems** - Aerodynamics, Propulsion, Mechanical Design, Software, Testing, Performance, Image Processing, Seeker, and Simulation/Modeling
- **Quantify system impacts** - Called upon to assess how issues in one area affect overall performance
- **Require broad knowledge** - Understanding of the entire system plus specialist expertise in GNC algorithms
- **Support full lifecycle** - Involved from concept phase through in-service support

---

## Getting Started

### Prerequisites
- MATLAB (R2023a or later recommended)
- Simulink
- Aerospace Blockset
- Control System Toolbox

### Running the Exercises

1. **Control Design Exercise:**
   ```matlab
   cd 'MATLAB Exercise/Control Design'
   ControllerDesign
   ```

2. **Guidance Example:**
   ```matlab
   cd 'MATLAB Exercise/Guidance Example'
   pure_pro_nav_sim
   ```

3. **HL20 Simulation:**
   ```matlab
   openExample('aeroblk_HL20_UE')
   ```


---

## Additional Resources

### Online Documentation
- [MATLAB Airframe Trim and Linearization](https://mathworks.com/help/simulink/slref/airframe-trim-and-linearize.html)
- MATLAB Aerospace Blockset Documentation

### Recommended Reading

**Guidance:**
- Siouris, G. (2004). *Missile Guidance and Control Systems*. Springer
- Zarchan, P. (2007). *Tactical and Strategic Missile Guidance*. AIAA Press

**Navigation:**
- Titterton, D., & Weston, J. (2009). *Strapdown Inertial Navigation Technology*. The Institution of Engineering and Technology

**Control:**
- Cook, M.V. (2007). *Flight Dynamics Principles: A Linear Systems Approach to Aircraft Stability and Control*. Butterworth-Heinemann/Elsevier
- Fielding, C. (2010). *Fly-by-Wire Flight Control Systems*
- Stevens, B.L., Lewis, F.L., & Johnson, E.N. (2015). *Aircraft Control and Simulation*. Wiley

**Simulation and Modeling:**
- Zipfel, P., & Schiehlen, W. (2001). *Modeling and Simulation of Aerospace Vehicle Dynamics*
- Stevens, B.L. (2010). *Aircraft Control and Simulation*

---

## License

Educational materials for KFUPM students and aerospace engineering community.

---

**Have Fun Learning GNC!**

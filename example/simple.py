import pykos
 
kos = pykos.KOS()
 
actuator_id = 1
kos.actuator.configure_actuator(actuator_id=actuator_id, kp=120, kd=10, torque_enabled=True)
motor_feedback = kos.actuator.get_actuators_state([actuator_id])
kos.actuator.command_actuators({"actuator_id": actuator_id, "position": 0.5})
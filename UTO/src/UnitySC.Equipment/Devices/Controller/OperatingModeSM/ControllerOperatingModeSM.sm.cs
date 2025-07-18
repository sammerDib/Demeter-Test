﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a Agileo StateMachine.
//     Version: 8.0.0.0
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------
using Agileo.StateMachine;
using System.Collections.Generic;


namespace UnitySC.Equipment.Devices.Controller.OperatingModeSM
{
    internal partial class ControllerOperatingModeSm
    {
        private Agileo.StateMachine.StateMachine m_ControllerOperatingModeSm = null;

        public ControllerOperatingModeSm()
        {
            CreateStateMachine();
        }

        private void CreateStateMachine()
        {
            m_ControllerOperatingModeSm = new Agileo.StateMachine.StateMachine("ControllerOperatingModeSm");

            State Engineering = new State("Engineering", Agileo.StateMachine.State.PseudostateKind.Normal, guid: "df7534c8-1eef-41cf-918b-653c46543351");
            m_ControllerOperatingModeSm.AddState(Engineering);
            State Initialization = new State("Initialization", Agileo.StateMachine.State.PseudostateKind.Normal, guid: "94e16297-102c-4be4-a8dd-493563390aa3");
            m_ControllerOperatingModeSm.AddState(Initialization);
            State Production = new State("Production", Agileo.StateMachine.State.PseudostateKind.Composite, guid: "1f11eb70-117d-451c-b399-64b29d14a4fe");
            m_ControllerOperatingModeSm.AddState(Production);
            State Idle = new State("Idle", Agileo.StateMachine.State.PseudostateKind.Normal, guid: "9526cf9e-8238-40d1-aec0-a705034e1b83");
            Production.Add(Idle);
            State Executing = new State("Executing", Agileo.StateMachine.State.PseudostateKind.Normal, guid: "ff17f994-1bfa-463e-8758-cf6600035332");
            Production.Add(Executing);
            State Maintenance = new State("Maintenance", Agileo.StateMachine.State.PseudostateKind.Normal, entry: MaintenanceEntryAction, guid: "c86fa794-009b-4262-b30e-63881dd0bb54");
            m_ControllerOperatingModeSm.AddState(Maintenance);
            State Initial = new State("Initial", Agileo.StateMachine.State.PseudostateKind.Initial, guid: "f53d2e12-413f-4334-8b0a-018c763012fe");
            m_ControllerOperatingModeSm.AddState(Initial);

            Engineering.AddTransition(Maintenance, trigger: typeof(MaintenanceRequested), external: true, guid: "2ef904fe-2e2a-4639-bf65-770583dff283");
            Engineering.AddTransition(Initialization, trigger: typeof(InitRequested), external: true, guid: "b8d99068-9be0-4c0f-a74a-92eaa7c7489f");
            Initialization.AddTransition(Maintenance, trigger: typeof(InitFailed), external: true, guid: "36494b75-bb0a-4cc1-9679-a6ede88b0ea7");
            Initialization.AddTransition(Maintenance, trigger: typeof(InitCompleted), guard: SubDevicesNotIdleOrWaferPresentOrWaferIncoherence, external: true, guid: "23585559-1de5-4a04-9d61-e44a35663dda");
            Initialization.AddTransition(Idle, trigger: typeof(InitCompleted), guard: SubDevicesIdleAndNoWaferPresent, external: true, guid: "3f10b628-3fd7-4e03-aaba-9f395ba4da41");
            Production.AddTransition(Maintenance, trigger: typeof(MaintenanceRequested), external: true, guid: "42c00f6d-f232-4c47-9485-d0a29020df18");
            Idle.AddTransition(Executing, trigger: typeof(JobExecutionStarted), external: true, guid: "9660e6ce-2493-450b-9c69-0d2c0091d7a4");
            Idle.AddTransition(Initialization, trigger: typeof(InitRequested), external: true, guid: "e6ea08d8-acde-4013-80e3-4ec4e00f39ca");
            Idle.AddTransition(Engineering, trigger: typeof(EngineeringRequested), external: true, guid: "5de36ade-1fff-42f7-9092-541d20494eba");
            Executing.AddTransition(Idle, trigger: typeof(JobExecutionEnded), external: true, guid: "8ff097ef-ae80-4366-95d9-61787f80d162");
            Maintenance.AddTransition(Initialization, trigger: typeof(InitRequested), external: true, guid: "d7db7689-fc70-4aae-8df3-8bda7ef21e15");
            Maintenance.AddTransition(Engineering, trigger: typeof(EngineeringRequested), guard: EngineeringModeAllowed, external: true, guid: "d90082ef-dcab-4a35-baf1-daa767709918");
            Initial.AddTransition(Maintenance, external: true, guid: "1799d70f-fa12-44e3-91c5-d55a40efb886");
        }

        /// <summary>
        /// Start state machine thread
        /// </summary>
        public virtual void Start()
        {
            m_ControllerOperatingModeSm.Start();
        }

        /// <summary>
        /// Stop state machine
        /// </summary>
        /// Clear eventQueue and stop thread
        public virtual void Stop()
        {
            m_ControllerOperatingModeSm.Stop();
        }

        /// <summary>
        /// Stop state machine and dispose objects
        /// </summary>
        public virtual void Dispose()
        {
            m_ControllerOperatingModeSm.Dispose();
        }

        /// <summary>
        /// Post event ans add it to queue
        /// </summary>
        /// <param name="evt"></param>
        public virtual void PostEvent(Event evt)
        {
            m_ControllerOperatingModeSm.PostEvent(evt);
        }

        /// <summary>
        /// Fire an event synchronously to the state machine.
        /// </summary>
        /// <returns>return true when the event is used to fire a transition otherwise return false</returns>
        /// <param name="evt"> event sent to the state machine</param>
        public virtual bool FireEvent(Event evt)
        {
            return m_ControllerOperatingModeSm.FireEvent(evt);
        }

        public event NotifyStateChanged.SateChangeEventHandler OnStateChanged
        {
            add
            {
                m_ControllerOperatingModeSm.OnStateChanged += value;
            }
            remove
            {
                m_ControllerOperatingModeSm.OnStateChanged -= value;
            }
        }

        public event NotifyStateChanged.TransitionChangeEventHandler OnTransitionChanged
        {
            add
            {
                m_ControllerOperatingModeSm.OnTransitionChanged += value;
            }
            remove
            {
                m_ControllerOperatingModeSm.OnTransitionChanged -= value;
            }
        }
    }
}
﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a Agileo StateMachine.
//     Version: 7.0.0.0
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------
using Agileo.StateMachine;
using System.Collections.Generic;
using UnitySC.Equipment.Abstractions.Vendor.Devices.Activities;

namespace UnitySC.Equipment.Devices.Controller.Activities.WaferFlow.AlignerActivity
{
    public partial class AlignerActivity
    {
        private Agileo.StateMachine.StateMachine m_AlignerActivity = null;

        public AlignerActivity()
        {
            CreateStateMachine();
        }

        private void CreateStateMachine()
        {
            m_AlignerActivity = new Agileo.StateMachine.StateMachine("AlignerActivity");

            State Final = new State("Final", Agileo.StateMachine.State.PseudostateKind.Final, guid: "ade3b5e5-e527-4221-8804-0d901d92e12c");
            m_AlignerActivity.AddState(Final);
            State Activity = new State("Activity", Agileo.StateMachine.State.PseudostateKind.Composite, entry: ActivityEntry, exit: ActivityExit, guid: "6b1e45c6-9215-45c6-8bdf-b95e21197d01");
            m_AlignerActivity.AddState(Activity);
            State CheckReaderConfig = new State("CheckReaderConfig", Agileo.StateMachine.State.PseudostateKind.Normal, guid: "be3e1894-7606-423f-b3a8-b282b9612238");
            Activity.Add(CheckReaderConfig);
            State Align = new State("Align", Agileo.StateMachine.State.PseudostateKind.Normal, entry: AlignEntry, guid: "dec51d04-b075-4492-b00e-6a990ebb0182");
            Activity.Add(Align);
            State WaitProceedOrCancelSubstrate = new State("WaitProceedOrCancelSubstrate", Agileo.StateMachine.State.PseudostateKind.Normal, guid: "b14a6ee0-dbf2-49ba-806e-fb24b06ffa85");
            Activity.Add(WaitProceedOrCancelSubstrate);
            State ReadSubstrateId = new State("ReadSubstrateId", Agileo.StateMachine.State.PseudostateKind.Normal, entry: ReadSubstrateIdEntry, guid: "30f0d44c-c350-4d7f-a7b8-4918cb517e4f");
            Activity.Add(ReadSubstrateId);
            State AlignToScribeAngle = new State("AlignToScribeAngle", Agileo.StateMachine.State.PseudostateKind.Normal, entry: AlignToScribeAngleEntry, guid: "37487013-b160-4b49-a795-0646b059d999");
            Activity.Add(AlignToScribeAngle);
            State Initial = new State("Initial", Agileo.StateMachine.State.PseudostateKind.Initial, guid: "fd74bb0a-c9a0-4611-9fbb-b48d819a1e27");
            m_AlignerActivity.AddState(Initial);

            Activity.AddTransition(Final, trigger: typeof(ActivityDoneEvent), external: true, guid: "4066c781-7a9f-482a-9ef3-206953120fa6");
            CheckReaderConfig.AddTransition(AlignToScribeAngle, guard: SubstrateReaderEnabled, external: true, guid: "a23ddc8c-581e-40b2-a113-c3c3422a7d64");
            CheckReaderConfig.AddTransition(Align, guard: SubstrateReaderDisabled, external: true, guid: "1460cffa-58ff-458b-9407-e524df3c59db");
            Align.AddTransition(Final, trigger: typeof(AlignerDone), external: true, guid: "6d7cc325-63f7-4f02-b6c2-aa0a44ee9bb0");
            WaitProceedOrCancelSubstrate.AddTransition(Align, trigger: typeof(ProceedWithSubstrate), external: true, guid: "93f83355-6b27-4c8a-b417-d62d69417582");
            WaitProceedOrCancelSubstrate.AddTransition(Final, trigger: typeof(CancelSubstrate), external: true, guid: "0c031037-5fd4-4ae5-bc40-7e4b65d5d8de");
            ReadSubstrateId.AddTransition(WaitProceedOrCancelSubstrate, trigger: typeof(ReaderDone), guard: SubstrateIdVerificationEnabled, external: true, guid: "954b3bed-d3ff-4bcc-ab18-a62d3e02c19e");
            ReadSubstrateId.AddTransition(Align, trigger: typeof(ReaderDone), guard: SubstrateIdVerificationDisabled, external: true, guid: "3d1d2571-db58-4829-87bf-25d10f5d3760");
            AlignToScribeAngle.AddTransition(ReadSubstrateId, trigger: typeof(AlignerDone), external: true, guid: "2985c8e4-f3d9-474e-9470-c19c88bbffdf");
            Initial.AddTransition(CheckReaderConfig, external: true, guid: "bc895e50-0913-4b60-9bfd-75e10c234430");
        }

        /// <summary>
        /// Start state machine thread
        /// </summary>
        public virtual void Start()
        {
            m_AlignerActivity.Start();
        }

        /// <summary>
        /// Stop state machine
        /// </summary>
        /// Clear eventQueue and stop thread
        public virtual void Stop()
        {
            m_AlignerActivity.Stop();
        }

        /// <summary>
        /// Stop state machine and dispose objects
        /// </summary>
        public virtual void Dispose()
        {
            m_AlignerActivity.Dispose();
        }

        /// <summary>
        /// Post event ans add it to queue
        /// </summary>
        /// <param name="evt"></param>
        public virtual void PostEvent(Event evt)
        {
            m_AlignerActivity.PostEvent(evt);
        }

        /// <summary>
        /// Fire an event synchronously to the state machine.
        /// </summary>
        /// <returns>return true when the event is used to fire a transition otherwise return false</returns>
        /// <param name="evt"> event sent to the state machine</param>
        public virtual bool FireEvent(Event evt)
        {
            return m_AlignerActivity.FireEvent(evt);
        }

        public event NotifyStateChanged.SateChangeEventHandler OnStateChanged
        {
            add
            {
                m_AlignerActivity.OnStateChanged += value;
            }
            remove
            {
                m_AlignerActivity.OnStateChanged -= value;
            }
        }

        public event NotifyStateChanged.TransitionChangeEventHandler OnTransitionChanged
        {
            add
            {
                m_AlignerActivity.OnTransitionChanged += value;
            }
            remove
            {
                m_AlignerActivity.OnTransitionChanged -= value;
            }
        }
    }
}
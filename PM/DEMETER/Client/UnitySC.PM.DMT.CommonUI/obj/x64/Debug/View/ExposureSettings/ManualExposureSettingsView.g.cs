﻿#pragma checksum "..\..\..\..\..\View\ExposureSettings\ManualExposureSettingsView.xaml" "{8829d00f-11b8-4213-878b-770e8597ac16}" "9EEDD240F161B06B0521DE6970B459490F1EFAAA8A2D040405AB995C4E1AED54"
//------------------------------------------------------------------------------
// <auto-generated>
//     Ce code a été généré par un outil.
//     Version du runtime :4.0.30319.42000
//
//     Les modifications apportées à ce fichier peuvent provoquer un comportement incorrect et seront perdues si
//     le code est régénéré.
// </auto-generated>
//------------------------------------------------------------------------------

using LightningChartLib.WPF.ChartingMVVM;
using LightningChartLib.WPF.ChartingMVVM.Annotations;
using LightningChartLib.WPF.ChartingMVVM.Axes;
using LightningChartLib.WPF.ChartingMVVM.ChartManager;
using LightningChartLib.WPF.ChartingMVVM.EventMarkers;
using LightningChartLib.WPF.ChartingMVVM.Maps;
using LightningChartLib.WPF.ChartingMVVM.OverlayElements;
using LightningChartLib.WPF.ChartingMVVM.Series3D;
using LightningChartLib.WPF.ChartingMVVM.SeriesPolar;
using LightningChartLib.WPF.ChartingMVVM.SeriesRound;
using LightningChartLib.WPF.ChartingMVVM.SeriesSmith;
using LightningChartLib.WPF.ChartingMVVM.SeriesXY;
using LightningChartLib.WPF.ChartingMVVM.Titles;
using LightningChartLib.WPF.ChartingMVVM.TypeConverters;
using LightningChartLib.WPF.ChartingMVVM.Views;
using LightningChartLib.WPF.ChartingMVVM.Views.View3D;
using LightningChartLib.WPF.ChartingMVVM.Views.ViewPie3D;
using LightningChartLib.WPF.ChartingMVVM.Views.ViewPolar;
using LightningChartLib.WPF.ChartingMVVM.Views.ViewRound;
using LightningChartLib.WPF.ChartingMVVM.Views.ViewSmith;
using LightningChartLib.WPF.ChartingMVVM.Views.ViewXY;
using System;
using System.Diagnostics;
using System.Windows;
using System.Windows.Automation;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Ink;
using System.Windows.Input;
using System.Windows.Markup;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Media.Effects;
using System.Windows.Media.Imaging;
using System.Windows.Media.Media3D;
using System.Windows.Media.TextFormatting;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Shell;
using UnitySC.PM.DMT.CommonUI.ViewModel.Measure;
using UnitySC.PM.DMT.Service.Interface.AutoExposure;
using UnitySC.PM.DMT.Shared.UI.Converter;
using UnitySC.PM.DMT.Shared.UI.ViewModel;
using UnitySC.Shared.Data.Enum;
using UnitySC.Shared.UI.Controls;
using UnitySC.Shared.UI.Controls.ZoomboxImage;
using UnitySC.Shared.UI.Converters;


namespace UnitySC.PM.DMT.CommonUI.View.ExposureSettings {
    
    
    /// <summary>
    /// ManualExposureSettingsView
    /// </summary>
    public partial class ManualExposureSettingsView : System.Windows.Controls.UserControl, System.Windows.Markup.IComponentConnector {
        
        
        #line 19 "..\..\..\..\..\View\ExposureSettings\ManualExposureSettingsView.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal UnitySC.PM.DMT.CommonUI.View.ExposureSettings.ManualExposureSettingsView theView;
        
        #line default
        #line hidden
        
        
        #line 90 "..\..\..\..\..\View\ExposureSettings\ManualExposureSettingsView.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.RadioButton radioWholeWafer;
        
        #line default
        #line hidden
        
        
        #line 93 "..\..\..\..\..\View\ExposureSettings\ManualExposureSettingsView.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.RadioButton radioROI;
        
        #line default
        #line hidden
        
        
        #line 96 "..\..\..\..\..\View\ExposureSettings\ManualExposureSettingsView.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.CheckBox roiShowButton;
        
        #line default
        #line hidden
        
        
        #line 226 "..\..\..\..\..\View\ExposureSettings\ManualExposureSettingsView.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal UnitySC.Shared.UI.Controls.ZoomboxImage.ZoomboxImage theZoomboxImage;
        
        #line default
        #line hidden
        
        
        #line 243 "..\..\..\..\..\View\ExposureSettings\ManualExposureSettingsView.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal LightningChartLib.WPF.ChartingMVVM.LightningChart chart;
        
        #line default
        #line hidden
        
        private bool _contentLoaded;
        
        /// <summary>
        /// InitializeComponent
        /// </summary>
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        public void InitializeComponent() {
            if (_contentLoaded) {
                return;
            }
            _contentLoaded = true;
            System.Uri resourceLocater = new System.Uri("/UnitySC.PM.DMT.CommonUI;component/view/exposuresettings/manualexposuresettingsvi" +
                    "ew.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\..\..\..\View\ExposureSettings\ManualExposureSettingsView.xaml"
            System.Windows.Application.LoadComponent(this, resourceLocater);
            
            #line default
            #line hidden
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Design", "CA1033:InterfaceMethodsShouldBeCallableByChildTypes")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Maintainability", "CA1502:AvoidExcessiveComplexity")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1800:DoNotCastUnnecessarily")]
        void System.Windows.Markup.IComponentConnector.Connect(int connectionId, object target) {
            switch (connectionId)
            {
            case 1:
            this.theView = ((UnitySC.PM.DMT.CommonUI.View.ExposureSettings.ManualExposureSettingsView)(target));
            
            #line 16 "..\..\..\..\..\View\ExposureSettings\ManualExposureSettingsView.xaml"
            this.theView.Unloaded += new System.Windows.RoutedEventHandler(this.View_Unloaded);
            
            #line default
            #line hidden
            return;
            case 2:
            this.radioWholeWafer = ((System.Windows.Controls.RadioButton)(target));
            return;
            case 3:
            this.radioROI = ((System.Windows.Controls.RadioButton)(target));
            return;
            case 4:
            this.roiShowButton = ((System.Windows.Controls.CheckBox)(target));
            return;
            case 5:
            this.theZoomboxImage = ((UnitySC.Shared.UI.Controls.ZoomboxImage.ZoomboxImage)(target));
            return;
            case 6:
            this.chart = ((LightningChartLib.WPF.ChartingMVVM.LightningChart)(target));
            return;
            }
            this._contentLoaded = true;
        }
    }
}


﻿#pragma checksum "..\..\..\..\View\Designer\PathDesignerComponent.xaml" "{8829d00f-11b8-4213-878b-770e8597ac16}" "7795F0139CB2108E2A582745336258D832C3943A12D0F4A85A660715AD859283"
//------------------------------------------------------------------------------
// <auto-generated>
//     Ce code a été généré par un outil.
//     Version du runtime :4.0.30319.42000
//
//     Les modifications apportées à ce fichier peuvent provoquer un comportement incorrect et seront perdues si
//     le code est régénéré.
// </auto-generated>
//------------------------------------------------------------------------------

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
using UnitySC.PM.DMT.Modules.Settings.View.Designer;


namespace UnitySC.PM.DMT.Modules.Settings.View.Designer {
    
    
    /// <summary>
    /// PathDesignerComponent
    /// </summary>
    public partial class PathDesignerComponent : System.Windows.Controls.UserControl, System.Windows.Markup.IComponentConnector {
        
        
        #line 9 "..\..\..\..\View\Designer\PathDesignerComponent.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal UnitySC.PM.DMT.Modules.Settings.View.Designer.PathDesignerComponent UserControl;
        
        #line default
        #line hidden
        
        
        #line 67 "..\..\..\..\View\Designer\PathDesignerComponent.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.ContentPresenter ContentComponent;
        
        #line default
        #line hidden
        
        
        #line 70 "..\..\..\..\View\Designer\PathDesignerComponent.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Canvas ThumbsCanvas;
        
        #line default
        #line hidden
        
        
        #line 71 "..\..\..\..\View\Designer\PathDesignerComponent.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Primitives.Thumb PointThumb0;
        
        #line default
        #line hidden
        
        
        #line 79 "..\..\..\..\View\Designer\PathDesignerComponent.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Primitives.Thumb PointThumb1;
        
        #line default
        #line hidden
        
        
        #line 87 "..\..\..\..\View\Designer\PathDesignerComponent.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Primitives.Thumb PointThumb2;
        
        #line default
        #line hidden
        
        
        #line 95 "..\..\..\..\View\Designer\PathDesignerComponent.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Primitives.Thumb PointThumb3;
        
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
            System.Uri resourceLocater = new System.Uri("/UnitySC.PM.DMT.Modules.Settings;component/view/designer/pathdesignercomponent.xa" +
                    "ml", System.UriKind.Relative);
            
            #line 1 "..\..\..\..\View\Designer\PathDesignerComponent.xaml"
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
            this.UserControl = ((UnitySC.PM.DMT.Modules.Settings.View.Designer.PathDesignerComponent)(target));
            return;
            case 2:
            
            #line 65 "..\..\..\..\View\Designer\PathDesignerComponent.xaml"
            ((System.Windows.Controls.Grid)(target)).PreviewMouseDown += new System.Windows.Input.MouseButtonEventHandler(this.DesignerComponent_PreviewMouseDown);
            
            #line default
            #line hidden
            return;
            case 3:
            this.ContentComponent = ((System.Windows.Controls.ContentPresenter)(target));
            return;
            case 4:
            this.ThumbsCanvas = ((System.Windows.Controls.Canvas)(target));
            return;
            case 5:
            this.PointThumb0 = ((System.Windows.Controls.Primitives.Thumb)(target));
            
            #line 73 "..\..\..\..\View\Designer\PathDesignerComponent.xaml"
            this.PointThumb0.DragDelta += new System.Windows.Controls.Primitives.DragDeltaEventHandler(this.PathThumb_DragDelta0);
            
            #line default
            #line hidden
            
            #line 74 "..\..\..\..\View\Designer\PathDesignerComponent.xaml"
            this.PointThumb0.DragCompleted += new System.Windows.Controls.Primitives.DragCompletedEventHandler(this.ThumbDragCompleted);
            
            #line default
            #line hidden
            return;
            case 6:
            this.PointThumb1 = ((System.Windows.Controls.Primitives.Thumb)(target));
            
            #line 81 "..\..\..\..\View\Designer\PathDesignerComponent.xaml"
            this.PointThumb1.DragDelta += new System.Windows.Controls.Primitives.DragDeltaEventHandler(this.PathThumb_DragDelta1);
            
            #line default
            #line hidden
            
            #line 82 "..\..\..\..\View\Designer\PathDesignerComponent.xaml"
            this.PointThumb1.DragCompleted += new System.Windows.Controls.Primitives.DragCompletedEventHandler(this.ThumbDragCompleted);
            
            #line default
            #line hidden
            return;
            case 7:
            this.PointThumb2 = ((System.Windows.Controls.Primitives.Thumb)(target));
            
            #line 89 "..\..\..\..\View\Designer\PathDesignerComponent.xaml"
            this.PointThumb2.DragDelta += new System.Windows.Controls.Primitives.DragDeltaEventHandler(this.PathThumb_DragDelta2);
            
            #line default
            #line hidden
            
            #line 90 "..\..\..\..\View\Designer\PathDesignerComponent.xaml"
            this.PointThumb2.DragCompleted += new System.Windows.Controls.Primitives.DragCompletedEventHandler(this.ThumbDragCompleted);
            
            #line default
            #line hidden
            return;
            case 8:
            this.PointThumb3 = ((System.Windows.Controls.Primitives.Thumb)(target));
            
            #line 97 "..\..\..\..\View\Designer\PathDesignerComponent.xaml"
            this.PointThumb3.DragDelta += new System.Windows.Controls.Primitives.DragDeltaEventHandler(this.PathThumb_DragDelta3);
            
            #line default
            #line hidden
            
            #line 98 "..\..\..\..\View\Designer\PathDesignerComponent.xaml"
            this.PointThumb3.DragCompleted += new System.Windows.Controls.Primitives.DragCompletedEventHandler(this.ThumbDragCompleted);
            
            #line default
            #line hidden
            return;
            }
            this._contentLoaded = true;
        }
    }
}


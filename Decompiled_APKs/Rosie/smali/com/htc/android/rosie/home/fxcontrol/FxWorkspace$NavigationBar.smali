.class final Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar;
.super Ljava/lang/Object;
.source "FxWorkspace.java"

# interfaces
.implements Lcom/htc/launcher/LeapController$LeapListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "NavigationBar"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar$Builder;
    }
.end annotation


# instance fields
.field private isAddPanelFuncionShow:Z

.field private isButtonShow:Z

.field private isFunctionShow:Z

.field private isNavEditBarShow:Z

.field private isRemovePanelFuncionShow:Z

.field private final mButtonBar:Lcom/htc/fusion/fx/FxTimelineControl;

.field private mFrozen:Z

.field private final mFunctionBar:Lcom/htc/fusion/fx/FxTimelineControl;

.field private final mHeaderBar:Lcom/htc/fusion/fx/FxTimelineControl;

.field private final mHideAddPanelFunctionBarAnim:Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;

.field private final mHideButtonBarAnim:Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;

.field private final mHideEditHeaderBarAnim:Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;

.field private final mHideFunctionBarAnim:Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;

.field private final mHideRemoveHeaderBarAnim:Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;

.field private final mHideRemovePanelFunctionBarAnim:Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;

.field private final mNavEditBar:Lcom/htc/fusion/fx/FxTimelineControl;

.field private final mShowAddPanelFunctionBarAnim:Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;

.field private final mShowButtonBarAnim:Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;

.field private final mShowEditHeaderBarAnim:Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;

.field private final mShowFunctionBarAnim:Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;

.field private final mShowRemoveHeaderBarAnim:Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;

.field private final mShowRemovePanelFunctionBarAnim:Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;


# direct methods
.method private constructor <init>(Lcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;)V
    .locals 2
    .parameter "buttonBar"
    .parameter "functionBar"
    .parameter "headerBar"
    .parameter "navEditBar"
    .parameter "showButtonBarAnim"
    .parameter "hideButtonBarAnim"
    .parameter "showFunctionBarAnim"
    .parameter "hideFunctionBarAnim"
    .parameter "showPanelFunctionBarAnim"
    .parameter "hidePanelFunctionBarAnim"
    .parameter "showRemovePanelFunctionBarAnim"
    .parameter "hideRemovePanelFunctionBarAnim"
    .parameter "showEditHeaderBarAnim"
    .parameter "hideEditHeaderBarAnim"
    .parameter "showRemoveHeaderBarAnim"
    .parameter "hideRemoveHeaderBarAnim"

    .prologue
    .line 1865
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1850
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar;->mFrozen:Z

    .line 1851
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar;->isButtonShow:Z

    .line 1852
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar;->isFunctionShow:Z

    .line 1853
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar;->isNavEditBarShow:Z

    .line 1855
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar;->isAddPanelFuncionShow:Z

    .line 1856
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar;->isRemovePanelFuncionShow:Z

    .line 1866
    iput-object p1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar;->mButtonBar:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 1867
    iput-object p2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar;->mFunctionBar:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 1868
    iput-object p3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar;->mHeaderBar:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 1869
    iput-object p4, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar;->mNavEditBar:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 1870
    iput-object p5, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar;->mShowButtonBarAnim:Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;

    .line 1871
    iput-object p6, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar;->mHideButtonBarAnim:Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;

    .line 1872
    iput-object p7, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar;->mShowFunctionBarAnim:Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;

    .line 1873
    iput-object p8, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar;->mHideFunctionBarAnim:Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;

    .line 1875
    iput-object p9, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar;->mShowAddPanelFunctionBarAnim:Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;

    .line 1876
    iput-object p10, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar;->mHideAddPanelFunctionBarAnim:Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;

    .line 1877
    iput-object p11, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar;->mShowRemovePanelFunctionBarAnim:Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;

    .line 1878
    iput-object p12, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar;->mHideRemovePanelFunctionBarAnim:Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;

    .line 1879
    iput-object p13, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar;->mShowEditHeaderBarAnim:Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;

    .line 1880
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar;->mHideEditHeaderBarAnim:Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;

    .line 1881
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar;->mShowRemoveHeaderBarAnim:Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;

    .line 1882
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar;->mHideRemoveHeaderBarAnim:Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;

    .line 1885
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"
    .parameter "x8"
    .parameter "x9"
    .parameter "x10"
    .parameter "x11"
    .parameter "x12"
    .parameter "x13"
    .parameter "x14"
    .parameter "x15"
    .parameter "x16"

    .prologue
    .line 1830
    invoke-direct/range {p0 .. p16}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar;-><init>(Lcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;)V

    return-void
.end method


# virtual methods
.method public beginLeap(I)V
    .locals 0
    .parameter "selectPage"

    .prologue
    .line 2187
    invoke-virtual {p0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar;->showEditHeaderBar()V

    .line 2188
    return-void
.end method

.method public endLeap(I)V
    .locals 0
    .parameter "selectPage"

    .prologue
    .line 2193
    invoke-virtual {p0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar;->hideEditHeaderBar()V

    .line 2194
    invoke-virtual {p0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar;->showFunctionBar()V

    .line 2195
    return-void
.end method

.method public freeze(Z)V
    .locals 3
    .parameter "toFreeze"

    .prologue
    .line 1992
    invoke-static {}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "freeze FunctionBar: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1993
    :cond_0
    iget-boolean v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar;->mFrozen:Z

    if-ne v0, p1, :cond_2

    .line 2003
    :cond_1
    :goto_0
    return-void

    .line 1995
    :cond_2
    iput-boolean p1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar;->mFrozen:Z

    .line 1997
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar;->mButtonBar:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_1

    .line 1998
    iget-boolean v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar;->mFrozen:Z

    if-eqz v0, :cond_3

    .line 1999
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar;->mButtonBar:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->freeze()Ljava/util/concurrent/Future;

    goto :goto_0

    .line 2001
    :cond_3
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar;->mButtonBar:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->thaw()V

    goto :goto_0
.end method

.method public hideAddPanelFunctionBar()V
    .locals 1

    .prologue
    .line 1938
    iget-boolean v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar;->isAddPanelFuncionShow:Z

    if-eqz v0, :cond_0

    .line 1940
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar;->mHideAddPanelFunctionBarAnim:Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;->play()V

    .line 1941
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar;->isAddPanelFuncionShow:Z

    .line 1943
    :cond_0
    return-void
.end method

.method public hideButtonBar()V
    .locals 2

    .prologue
    .line 1906
    invoke-static {}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hideButtonBar()"

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1907
    :cond_0
    iget-boolean v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar;->isButtonShow:Z

    if-eqz v0, :cond_1

    .line 1909
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar;->mHideButtonBarAnim:Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;->play()V

    .line 1910
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar;->isButtonShow:Z

    .line 1912
    :cond_1
    return-void
.end method

.method public hideEditHeaderBar()V
    .locals 2

    .prologue
    .line 1968
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar;->mHideEditHeaderBarAnim:Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;->play()V

    .line 1969
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar;->mNavEditBar:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v1, "edit_header_off"

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;)V

    .line 1970
    return-void
.end method

.method public hideFunctionBar()V
    .locals 2

    .prologue
    .line 1921
    invoke-static {}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hideFunctionBar()"

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1922
    :cond_0
    iget-boolean v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar;->isFunctionShow:Z

    if-eqz v0, :cond_1

    .line 1924
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar;->mHideFunctionBarAnim:Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;->play()V

    .line 1925
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar;->isFunctionShow:Z

    .line 1927
    :cond_1
    return-void
.end method

.method public hideHeaderBarArrow(Z)V
    .locals 2
    .parameter "hide"

    .prologue
    .line 1985
    if-eqz p1, :cond_0

    .line 1986
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar;->mHeaderBar:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v1, "disable"

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;)V

    .line 1987
    :cond_0
    return-void
.end method

.method public hideNavEditBar()V
    .locals 2

    .prologue
    .line 1895
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar;->isNavEditBarShow:Z

    .line 1896
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar;->mNavEditBar:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v1, "recent_apps_off"

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;)V

    .line 1897
    return-void
.end method

.method public hideRemoveHeaderBar()V
    .locals 2

    .prologue
    .line 1980
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar;->mHideRemoveHeaderBarAnim:Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;->play()V

    .line 1981
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar;->mNavEditBar:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v1, "remove_header_off"

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;)V

    .line 1982
    return-void
.end method

.method public hideRemovePanelFunctionBar()V
    .locals 1

    .prologue
    .line 1953
    iget-boolean v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar;->isRemovePanelFuncionShow:Z

    if-eqz v0, :cond_0

    .line 1955
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar;->mHideRemovePanelFunctionBarAnim:Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;->play()V

    .line 1956
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar;->isRemovePanelFuncionShow:Z

    .line 1958
    :cond_0
    return-void
.end method

.method public onAnimationStateChanged(ZLcom/htc/launcher/LeapController$ZoomDirection;)V
    .locals 0
    .parameter "playing"
    .parameter "direction"

    .prologue
    .line 2199
    return-void
.end method

.method public onLongPress()V
    .locals 0

    .prologue
    .line 2201
    return-void
.end method

.method public showAddPanelFunctionBar()V
    .locals 1

    .prologue
    .line 1932
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar;->mShowAddPanelFunctionBarAnim:Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;->play()V

    .line 1933
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar;->isAddPanelFuncionShow:Z

    .line 1934
    return-void
.end method

.method public showButtonBar()V
    .locals 2

    .prologue
    .line 1900
    invoke-static {}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "showButtonBar()"

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1901
    :cond_0
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar;->mShowButtonBarAnim:Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;->play()V

    .line 1902
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar;->isButtonShow:Z

    .line 1903
    return-void
.end method

.method public showEditHeaderBar()V
    .locals 2

    .prologue
    .line 1962
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar;->mShowEditHeaderBarAnim:Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;->play()V

    .line 1963
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar;->mNavEditBar:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v1, "edit_header_on"

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;)V

    .line 1964
    return-void
.end method

.method public showFunctionBar()V
    .locals 2

    .prologue
    .line 1915
    invoke-static {}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "showFunctionBar()"

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1916
    :cond_0
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar;->mShowFunctionBarAnim:Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;->play()V

    .line 1917
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar;->isFunctionShow:Z

    .line 1918
    return-void
.end method

.method public showNavEditBar()V
    .locals 2

    .prologue
    .line 1888
    iget-boolean v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar;->isNavEditBarShow:Z

    if-eqz v0, :cond_0

    .line 1889
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar;->mNavEditBar:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v1, "recent_apps_on"

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;)V

    .line 1890
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar;->isNavEditBarShow:Z

    .line 1892
    :cond_0
    return-void
.end method

.method public showRemoveHeaderBar()V
    .locals 2

    .prologue
    .line 1974
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar;->mShowRemoveHeaderBarAnim:Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;->play()V

    .line 1975
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar;->mNavEditBar:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v1, "remove_header_on"

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;)V

    .line 1976
    return-void
.end method

.method public showRemovePanelFunctionBar()V
    .locals 1

    .prologue
    .line 1947
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar;->mShowRemovePanelFunctionBarAnim:Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;->play()V

    .line 1948
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar;->isRemovePanelFuncionShow:Z

    .line 1949
    return-void
.end method

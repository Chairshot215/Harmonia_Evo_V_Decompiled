.class Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$PageLeapControl;
.super Ljava/lang/Object;
.source "FxWorkspace.java"

# interfaces
.implements Lcom/htc/launcher/LeapController$LeapAnimationPlayer;
.implements Lcom/htc/launcher/LeapController$LeapListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PageLeapControl"
.end annotation


# static fields
.field private static final PAGE_PREFIX:Ljava/lang/String; = "Main_0"

.field private static final ZOOM_IN_SUFFIX:Ljava/lang/String; = "_OUT"

.field private static final ZOOM_OUT_SUFFIX:Ljava/lang/String; = "_IN"


# instance fields
.field private mFxPageLeap:Lcom/htc/fusion/fx/FxTimelineControl;

.field private mPageLeapContainer:[Lcom/htc/fusion/fx/controls/FxSceneContainer;

.field private mZoomInMarkers:[Lcom/htc/fusion/fx/Marker;

.field private mZoomOutMarkers:[Lcom/htc/fusion/fx/Marker;


# direct methods
.method public constructor <init>(Lcom/htc/fusion/fx/FxTimelineControl;)V
    .locals 0
    .parameter "pageLeapControl"

    .prologue
    .line 1638
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1639
    invoke-virtual {p0, p1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$PageLeapControl;->setTimelineControl(Lcom/htc/fusion/fx/FxTimelineControl;)V

    .line 1640
    return-void
.end method

.method private initPageLeapControl(I)V
    .locals 5
    .parameter "pageCount"

    .prologue
    .line 1654
    new-array v1, p1, [Lcom/htc/fusion/fx/Marker;

    iput-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$PageLeapControl;->mZoomOutMarkers:[Lcom/htc/fusion/fx/Marker;

    .line 1655
    new-array v1, p1, [Lcom/htc/fusion/fx/Marker;

    iput-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$PageLeapControl;->mZoomInMarkers:[Lcom/htc/fusion/fx/Marker;

    .line 1657
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 1658
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$PageLeapControl;->mZoomOutMarkers:[Lcom/htc/fusion/fx/Marker;

    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$PageLeapControl;->mFxPageLeap:Lcom/htc/fusion/fx/FxTimelineControl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Main_0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_IN"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v2

    aput-object v2, v1, v0

    .line 1659
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$PageLeapControl;->mZoomInMarkers:[Lcom/htc/fusion/fx/Marker;

    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$PageLeapControl;->mFxPageLeap:Lcom/htc/fusion/fx/FxTimelineControl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Main_0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_OUT"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v2

    aput-object v2, v1, v0

    .line 1657
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1662
    :cond_0
    return-void
.end method


# virtual methods
.method public beginLeap(I)V
    .locals 6
    .parameter "selectPage"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1669
    invoke-static {}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$300()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    move-result-object v0

    #setter for: Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mIsLeapMode:Z
    invoke-static {v0, v5}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$902(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;Z)Z

    .line 1673
    invoke-static {}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$300()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    move-result-object v0

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;
    invoke-static {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$800(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;)Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getPageLeapControl()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$PageLeapControl;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$300()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    move-result-object v2

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$1000(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0045

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    mul-int/2addr v2, p1

    invoke-virtual {v0, p1, v4, v1, v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$PageLeapControl;->setZoomOutAnimationProgress(IIFI)V

    .line 1675
    invoke-static {}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$300()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    move-result-object v0

    invoke-virtual {v0, v5, v4}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->switchMode(II)V

    .line 1676
    invoke-static {}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$300()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->showAllScreens()V

    .line 1677
    return-void
.end method

.method public endLeap(I)V
    .locals 3
    .parameter "selectPage"

    .prologue
    const/4 v2, 0x0

    .line 1684
    invoke-static {}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$300()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->changeScreensVisibility(Z)V

    .line 1686
    invoke-static {}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$300()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->switchMode(II)V

    .line 1687
    return-void
.end method

.method public getPageLeapContainer()[Lcom/htc/fusion/fx/controls/FxSceneContainer;
    .locals 1

    .prologue
    .line 1649
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$PageLeapControl;->mPageLeapContainer:[Lcom/htc/fusion/fx/controls/FxSceneContainer;

    return-object v0
.end method

.method public onAnimationStateChanged(ZLcom/htc/launcher/LeapController$ZoomDirection;)V
    .locals 4
    .parameter "playing"
    .parameter "direction"

    .prologue
    .line 1691
    invoke-static {}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$300()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    move-result-object v1

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;
    invoke-static {v1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$800(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;)Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getLeapRearrangeScene()Lcom/htc/fusion/fx/FxScene;

    move-result-object v0

    .line 1692
    .local v0, leapRearrangeScene:Lcom/htc/fusion/fx/FxScene;
    if-nez v0, :cond_1

    .line 1705
    :cond_0
    :goto_0
    return-void

    .line 1695
    :cond_1
    invoke-static {}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$100()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAnimationStateChanged("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1696
    :cond_2
    if-nez p1, :cond_3

    .line 1697
    sget-object v1, Lcom/htc/launcher/LeapController$ZoomDirection;->ZOOM_OUT:Lcom/htc/launcher/LeapController$ZoomDirection;

    if-ne p2, v1, :cond_0

    .line 1698
    invoke-static {}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$300()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    move-result-object v1

    #calls: Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->fromLeapToLeapRearrange()V
    invoke-static {v1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$1100(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;)V

    goto :goto_0

    .line 1701
    :cond_3
    sget-object v1, Lcom/htc/launcher/LeapController$ZoomDirection;->ZOOM_IN:Lcom/htc/launcher/LeapController$ZoomDirection;

    if-ne p2, v1, :cond_0

    .line 1702
    invoke-static {}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$300()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    move-result-object v1

    #calls: Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->fromLeapRearrangeToLeap()V
    invoke-static {v1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$1200(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;)V

    goto :goto_0
.end method

.method public onLongPress()V
    .locals 2

    .prologue
    .line 1728
    invoke-static {}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PageLeapControl.onLongPress()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1729
    :cond_0
    return-void
.end method

.method public setTimelineControl(Lcom/htc/fusion/fx/FxTimelineControl;)V
    .locals 1
    .parameter "pageLeapControl"

    .prologue
    .line 1643
    iput-object p1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$PageLeapControl;->mFxPageLeap:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 1644
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->getScreenCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$PageLeapControl;->initPageLeapControl(I)V

    .line 1645
    return-void
.end method

.method public setZoomInAnimationProgress(IIFI)V
    .locals 4
    .parameter "selectPage"
    .parameter "action"
    .parameter "progress"
    .parameter "virtualScrollX"

    .prologue
    .line 1708
    invoke-static {}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$300()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    move-result-object v1

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mIsLeapMode:Z
    invoke-static {v1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$900(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1710
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$PageLeapControl;->mZoomInMarkers:[Lcom/htc/fusion/fx/Marker;

    aget-object v0, v1, p1

    .line 1711
    .local v0, marker:Lcom/htc/fusion/fx/Marker;
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$PageLeapControl;->mFxPageLeap:Lcom/htc/fusion/fx/FxTimelineControl;

    iget v2, v0, Lcom/htc/fusion/fx/Marker;->EndFrame:I

    iget v3, v0, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    mul-float/2addr v2, p3

    const/high16 v3, 0x447a

    div-float/2addr v2, v3

    iget v3, v0, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 1714
    .end local v0           #marker:Lcom/htc/fusion/fx/Marker;
    :cond_0
    return-void
.end method

.method public setZoomOutAnimationProgress(IIFI)V
    .locals 4
    .parameter "selectPage"
    .parameter "action"
    .parameter "progress"
    .parameter "virtualScrollX"

    .prologue
    .line 1717
    invoke-static {}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$300()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    move-result-object v1

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mIsLeapMode:Z
    invoke-static {v1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$900(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1719
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$PageLeapControl;->mZoomOutMarkers:[Lcom/htc/fusion/fx/Marker;

    array-length v1, v1

    if-ge p1, v1, :cond_0

    .line 1721
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$PageLeapControl;->mZoomOutMarkers:[Lcom/htc/fusion/fx/Marker;

    aget-object v0, v1, p1

    .line 1722
    .local v0, marker:Lcom/htc/fusion/fx/Marker;
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$PageLeapControl;->mFxPageLeap:Lcom/htc/fusion/fx/FxTimelineControl;

    iget v2, v0, Lcom/htc/fusion/fx/Marker;->EndFrame:I

    iget v3, v0, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    mul-float/2addr v2, p3

    const/high16 v3, 0x447a

    div-float/2addr v2, v3

    iget v3, v0, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 1725
    .end local v0           #marker:Lcom/htc/fusion/fx/Marker;
    :cond_0
    return-void
.end method

.class Lcom/htc/launcher/Launcher$WidgetTilter;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Lcom/htc/launcher/Launcher$TiltObserver;
.implements Lcom/htc/launcher/Workspace$OnScrollStateChangedListener;
.implements Lcom/htc/launcher/Workspace$OnSlideListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/launcher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WidgetTilter"
.end annotation


# static fields
.field private static final DEFAULT_SCROLL_VALUE:F = 0.0f

.field private static final DEFAULT_TILT_VALUE:F = 0.5f

.field private static final SCROLLING_MAX_TILT:F = 0.85f


# instance fields
.field private mAdjustTilt:Z

.field private mLastScroll:I

.field private mNeedDir:Z

.field private mNeighbor:I

.field private mScreen:I

.field private mScrollValue:F

.field private mSurpressScroll:Z

.field private mSurpresseSensor:Z

.field private mTiltValue:F

.field final synthetic this$0:Lcom/htc/launcher/Launcher;


# direct methods
.method private constructor <init>(Lcom/htc/launcher/Launcher;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 8722
    iput-object p1, p0, Lcom/htc/launcher/Launcher$WidgetTilter;->this$0:Lcom/htc/launcher/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8728
    const/high16 v0, 0x3f00

    iput v0, p0, Lcom/htc/launcher/Launcher$WidgetTilter;->mTiltValue:F

    .line 8729
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/launcher/Launcher$WidgetTilter;->mScrollValue:F

    .line 8731
    iput v1, p0, Lcom/htc/launcher/Launcher$WidgetTilter;->mNeighbor:I

    .line 8732
    iput-boolean v1, p0, Lcom/htc/launcher/Launcher$WidgetTilter;->mNeedDir:Z

    .line 8733
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->isTabletDevice()Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/launcher/Launcher$WidgetTilter;->mAdjustTilt:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/launcher/Launcher;Lcom/htc/launcher/Launcher$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8722
    invoke-direct {p0, p1}, Lcom/htc/launcher/Launcher$WidgetTilter;-><init>(Lcom/htc/launcher/Launcher;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/htc/launcher/Launcher$WidgetTilter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 8722
    invoke-direct {p0}, Lcom/htc/launcher/Launcher$WidgetTilter;->reset()V

    return-void
.end method

.method static synthetic access$2402(Lcom/htc/launcher/Launcher$WidgetTilter;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8722
    iput-boolean p1, p0, Lcom/htc/launcher/Launcher$WidgetTilter;->mSurpressScroll:Z

    return p1
.end method

.method static synthetic access$4000(Lcom/htc/launcher/Launcher$WidgetTilter;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8722
    invoke-direct {p0, p1}, Lcom/htc/launcher/Launcher$WidgetTilter;->surpressSensor(Z)V

    return-void
.end method

.method private adjustTiltValue(F)F
    .locals 0
    .parameter "value"

    .prologue
    .line 8832
    return p1
.end method

.method private needsUpdate()Z
    .locals 1

    .prologue
    .line 8802
    const/4 v0, 0x1

    return v0
.end method

.method private reset()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 8814
    const-string v2, "Rosie"

    const-string v3, "Launcher.WidgetTilter.reset() - enter"

    invoke-static {v2, v3}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8815
    const/high16 v2, 0x3f00

    iput v2, p0, Lcom/htc/launcher/Launcher$WidgetTilter;->mTiltValue:F

    .line 8816
    iput v4, p0, Lcom/htc/launcher/Launcher$WidgetTilter;->mScrollValue:F

    .line 8818
    iget-object v2, p0, Lcom/htc/launcher/Launcher$WidgetTilter;->this$0:Lcom/htc/launcher/Launcher;

    #getter for: Lcom/htc/launcher/Launcher;->mFxWidgetManager:Lcom/htc/android/rosie/home/HostWidgetManager;
    invoke-static {v2}, Lcom/htc/launcher/Launcher;->access$2900(Lcom/htc/launcher/Launcher;)Lcom/htc/android/rosie/home/HostWidgetManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 8819
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->getScreenCount()I

    move-result v0

    .line 8820
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 8821
    iget-object v2, p0, Lcom/htc/launcher/Launcher$WidgetTilter;->this$0:Lcom/htc/launcher/Launcher;

    #getter for: Lcom/htc/launcher/Launcher;->mFxWidgetManager:Lcom/htc/android/rosie/home/HostWidgetManager;
    invoke-static {v2}, Lcom/htc/launcher/Launcher;->access$2900(Lcom/htc/launcher/Launcher;)Lcom/htc/android/rosie/home/HostWidgetManager;

    move-result-object v2

    invoke-virtual {v2, v1, v4}, Lcom/htc/android/rosie/home/HostWidgetManager;->tiltWidgets(IF)V

    .line 8820
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8824
    .end local v0           #N:I
    .end local v1           #i:I
    :cond_0
    const-string v2, "Rosie"

    const-string v3, "Launcher.WidgetTilter.reset() - exit"

    invoke-static {v2, v3}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8825
    return-void
.end method

.method private surpressSensor(Z)V
    .locals 0
    .parameter "surpress"

    .prologue
    .line 8737
    iput-boolean p1, p0, Lcom/htc/launcher/Launcher$WidgetTilter;->mSurpresseSensor:Z

    .line 8740
    return-void
.end method

.method private tiltWidgets(Z)V
    .locals 8
    .parameter "forScrolling"

    .prologue
    const/high16 v7, 0x3f00

    const/high16 v6, 0x3f80

    .line 8847
    iget-object v2, p0, Lcom/htc/launcher/Launcher$WidgetTilter;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v2, v2, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/launcher/Launcher$WidgetTilter;->this$0:Lcom/htc/launcher/Launcher;

    #getter for: Lcom/htc/launcher/Launcher;->mFxWidgetManager:Lcom/htc/android/rosie/home/HostWidgetManager;
    invoke-static {v2}, Lcom/htc/launcher/Launcher;->access$2900(Lcom/htc/launcher/Launcher;)Lcom/htc/android/rosie/home/HostWidgetManager;

    move-result-object v2

    if-nez v2, :cond_1

    .line 8879
    :cond_0
    :goto_0
    return-void

    .line 8849
    :cond_1
    iget v0, p0, Lcom/htc/launcher/Launcher$WidgetTilter;->mScreen:I

    .line 8850
    .local v0, screen:I
    iget v2, p0, Lcom/htc/launcher/Launcher$WidgetTilter;->mTiltValue:F

    sub-float/2addr v2, v7

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 8851
    .local v1, value:F
    iget-object v2, p0, Lcom/htc/launcher/Launcher$WidgetTilter;->this$0:Lcom/htc/launcher/Launcher;

    invoke-virtual {v2}, Lcom/htc/launcher/Launcher;->isPortrait()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 8852
    sub-float v2, v6, v1

    iget v3, p0, Lcom/htc/launcher/Launcher$WidgetTilter;->mScrollValue:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 8856
    :goto_1
    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {v6, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 8857
    if-ltz v0, :cond_2

    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->getScreenCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 8862
    iget-object v2, p0, Lcom/htc/launcher/Launcher$WidgetTilter;->this$0:Lcom/htc/launcher/Launcher;

    #getter for: Lcom/htc/launcher/Launcher;->mFxWidgetManager:Lcom/htc/android/rosie/home/HostWidgetManager;
    invoke-static {v2}, Lcom/htc/launcher/Launcher;->access$2900(Lcom/htc/launcher/Launcher;)Lcom/htc/android/rosie/home/HostWidgetManager;

    move-result-object v3

    if-eqz p1, :cond_6

    invoke-direct {p0, v1}, Lcom/htc/launcher/Launcher$WidgetTilter;->adjustTiltValue(F)F

    move-result v2

    :goto_2
    invoke-virtual {v3, v0, v2}, Lcom/htc/android/rosie/home/HostWidgetManager;->tiltWidgets(IF)V

    .line 8864
    :cond_2
    iget v2, p0, Lcom/htc/launcher/Launcher$WidgetTilter;->mNeighbor:I

    if-eqz v2, :cond_0

    .line 8866
    iget v2, p0, Lcom/htc/launcher/Launcher$WidgetTilter;->mNeighbor:I

    add-int/2addr v0, v2

    .line 8867
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->usesRingSlide()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->getScreenCount()I

    move-result v2

    if-ne v0, v2, :cond_3

    .line 8868
    const/4 v0, 0x0

    .line 8869
    :cond_3
    if-ltz v0, :cond_0

    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->getScreenCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 8870
    iget-object v2, p0, Lcom/htc/launcher/Launcher$WidgetTilter;->this$0:Lcom/htc/launcher/Launcher;

    invoke-virtual {v2}, Lcom/htc/launcher/Launcher;->isPortrait()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 8871
    sub-float v1, v6, v1

    .line 8873
    iget v2, p0, Lcom/htc/launcher/Launcher$WidgetTilter;->mTiltValue:F

    sub-float/2addr v2, v7

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 8877
    :cond_4
    iget-object v2, p0, Lcom/htc/launcher/Launcher$WidgetTilter;->this$0:Lcom/htc/launcher/Launcher;

    #getter for: Lcom/htc/launcher/Launcher;->mFxWidgetManager:Lcom/htc/android/rosie/home/HostWidgetManager;
    invoke-static {v2}, Lcom/htc/launcher/Launcher;->access$2900(Lcom/htc/launcher/Launcher;)Lcom/htc/android/rosie/home/HostWidgetManager;

    move-result-object v3

    if-eqz p1, :cond_7

    invoke-direct {p0, v1}, Lcom/htc/launcher/Launcher$WidgetTilter;->adjustTiltValue(F)F

    move-result v2

    :goto_3
    invoke-virtual {v3, v0, v2}, Lcom/htc/android/rosie/home/HostWidgetManager;->tiltWidgets(IF)V

    goto :goto_0

    .line 8854
    :cond_5
    sub-float v2, v6, v1

    iget v3, p0, Lcom/htc/launcher/Launcher$WidgetTilter;->mScrollValue:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v2, v1

    float-to-double v2, v2

    const-wide v4, 0x400921fb54442d18L

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    const/high16 v3, 0x4000

    div-float v1, v2, v3

    goto :goto_1

    :cond_6
    move v2, v1

    .line 8862
    goto :goto_2

    :cond_7
    move v2, v1

    .line 8877
    goto :goto_3
.end method


# virtual methods
.method public flattenOtherWidgets(II)V
    .locals 3
    .parameter "current"
    .parameter "neibor"

    .prologue
    .line 8836
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget v1, Lcom/htc/launcher/settings/SettingUtil;->sWorkspaceScreenCount:I

    if-ge v0, v1, :cond_1

    .line 8837
    if-eq v0, p1, :cond_0

    if-eq v0, p1, :cond_0

    .line 8838
    iget-object v1, p0, Lcom/htc/launcher/Launcher$WidgetTilter;->this$0:Lcom/htc/launcher/Launcher;

    #getter for: Lcom/htc/launcher/Launcher;->mFxWidgetManager:Lcom/htc/android/rosie/home/HostWidgetManager;
    invoke-static {v1}, Lcom/htc/launcher/Launcher;->access$2900(Lcom/htc/launcher/Launcher;)Lcom/htc/android/rosie/home/HostWidgetManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/htc/android/rosie/home/HostWidgetManager;->tiltWidgets(IF)V

    .line 8836
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8840
    :cond_1
    return-void
.end method

.method public flattenWidgets(I)V
    .locals 2
    .parameter "screen"

    .prologue
    .line 8843
    iget-object v0, p0, Lcom/htc/launcher/Launcher$WidgetTilter;->this$0:Lcom/htc/launcher/Launcher;

    #getter for: Lcom/htc/launcher/Launcher;->mFxWidgetManager:Lcom/htc/android/rosie/home/HostWidgetManager;
    invoke-static {v0}, Lcom/htc/launcher/Launcher;->access$2900(Lcom/htc/launcher/Launcher;)Lcom/htc/android/rosie/home/HostWidgetManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/htc/android/rosie/home/HostWidgetManager;->tiltWidgets(IF)V

    .line 8844
    return-void
.end method

.method public isTilting()Z
    .locals 2

    .prologue
    .line 8806
    iget v0, p0, Lcom/htc/launcher/Launcher$WidgetTilter;->mTiltValue:F

    const/high16 v1, 0x3f00

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/htc/launcher/Launcher$WidgetTilter;->mScrollValue:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 8807
    const/4 v0, 0x0

    .line 8810
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onBeginFling()V
    .locals 0

    .prologue
    .line 8779
    return-void
.end method

.method public onBeginScroll(ZII)V
    .locals 1
    .parameter "isSnap"
    .parameter "begin"
    .parameter "end"

    .prologue
    const/4 v0, 0x1

    .line 8783
    iput-boolean v0, p0, Lcom/htc/launcher/Launcher$WidgetTilter;->mNeedDir:Z

    .line 8784
    iput v0, p0, Lcom/htc/launcher/Launcher$WidgetTilter;->mNeighbor:I

    .line 8791
    return-void
.end method

.method public onEndScroll()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 8795
    iput v0, p0, Lcom/htc/launcher/Launcher$WidgetTilter;->mNeighbor:I

    .line 8796
    iput-boolean v0, p0, Lcom/htc/launcher/Launcher$WidgetTilter;->mSurpressScroll:Z

    .line 8797
    return-void
.end method

.method public onFling(III)V
    .locals 0
    .parameter "x"
    .parameter "begin"
    .parameter "end"

    .prologue
    .line 8770
    return-void
.end method

.method public onScrollTo(FFII)V
    .locals 4
    .parameter "x"
    .parameter "y"
    .parameter "scrollRange"
    .parameter "screenWidth"

    .prologue
    .line 8752
    iget-object v2, p0, Lcom/htc/launcher/Launcher$WidgetTilter;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v2, v2, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    if-eqz v2, :cond_0

    if-nez p4, :cond_1

    .line 8766
    :cond_0
    :goto_0
    return-void

    .line 8754
    :cond_1
    float-to-int v1, p1

    .line 8755
    .local v1, floorX:I
    div-int v0, v1, p4

    .line 8756
    .local v0, currentScreen:I
    iput v0, p0, Lcom/htc/launcher/Launcher$WidgetTilter;->mScreen:I

    .line 8757
    invoke-direct {p0}, Lcom/htc/launcher/Launcher$WidgetTilter;->needsUpdate()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/htc/launcher/Launcher$WidgetTilter;->mSurpressScroll:Z

    if-nez v2, :cond_0

    .line 8759
    rem-int v2, v1, p4

    int-to-float v2, v2

    int-to-float v3, p4

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iput v2, p0, Lcom/htc/launcher/Launcher$WidgetTilter;->mScrollValue:F

    .line 8760
    iget-boolean v2, p0, Lcom/htc/launcher/Launcher$WidgetTilter;->mNeedDir:Z

    if-eqz v2, :cond_2

    .line 8762
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/launcher/Launcher$WidgetTilter;->mNeedDir:Z

    .line 8764
    :cond_2
    iput v1, p0, Lcom/htc/launcher/Launcher$WidgetTilter;->mLastScroll:I

    .line 8765
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/htc/launcher/Launcher$WidgetTilter;->tiltWidgets(Z)V

    goto :goto_0
.end method

.method public onTilt(FF)V
    .locals 1
    .parameter "value"
    .parameter "speed"

    .prologue
    .line 8744
    invoke-direct {p0}, Lcom/htc/launcher/Launcher$WidgetTilter;->needsUpdate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/launcher/Launcher$WidgetTilter;->mSurpresseSensor:Z

    if-eqz v0, :cond_1

    .line 8748
    :cond_0
    :goto_0
    return-void

    .line 8746
    :cond_1
    iput p1, p0, Lcom/htc/launcher/Launcher$WidgetTilter;->mTiltValue:F

    .line 8747
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/launcher/Launcher$WidgetTilter;->tiltWidgets(Z)V

    goto :goto_0
.end method

.method public onTouch(Landroid/view/MotionEvent;I)V
    .locals 0
    .parameter "ev"
    .parameter "x"

    .prologue
    .line 8774
    return-void
.end method

.method public updateSnapInfo(II)V
    .locals 0
    .parameter "endScreen"
    .parameter "snapOffset"

    .prologue
    .line 8885
    return-void
.end method

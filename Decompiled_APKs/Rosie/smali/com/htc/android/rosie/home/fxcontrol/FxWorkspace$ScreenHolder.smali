.class final Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;
.super Ljava/lang/Object;
.source "FxWorkspace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ScreenHolder"
.end annotation


# instance fields
.field private mFadeAnimation:Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;

.field mFxParent:Lcom/htc/fusion/fx/controls/FxSceneContainer;

.field final mFxScreen:Lcom/htc/android/rosie/home/fxcontrol/FxScreen;

.field private mLeftPanMarker:Lcom/htc/fusion/fx/Marker;

.field private mPanControl:Lcom/htc/fusion/fx/FxTimelineControl;

.field private mRightPanMarker:Lcom/htc/fusion/fx/Marker;

.field private mSensorAnimation:Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;


# direct methods
.method constructor <init>(Lcom/htc/android/rosie/home/fxcontrol/FxScreen;Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;Lcom/htc/fusion/fx/FxTimelineControl;)V
    .locals 0
    .parameter "fxScreen"
    .parameter "sensor"
    .parameter "panControl"

    .prologue
    .line 1357
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1358
    iput-object p1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->mFxScreen:Lcom/htc/android/rosie/home/fxcontrol/FxScreen;

    .line 1360
    invoke-virtual {p0, p2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->setSensor(Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;)V

    .line 1361
    invoke-virtual {p0, p3}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->setPan(Lcom/htc/fusion/fx/FxTimelineControl;)V

    .line 1362
    return-void
.end method

.method static synthetic access$1600(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;)Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1346
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->mSensorAnimation:Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;)Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1346
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->mFadeAnimation:Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;FLcom/htc/android/rosie/home/fxcontrol/PageSlideControl$Direction;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 1346
    invoke-direct {p0, p1, p2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->setPanFrame(FLcom/htc/android/rosie/home/fxcontrol/PageSlideControl$Direction;)V

    return-void
.end method

.method private setPanFrame(FLcom/htc/android/rosie/home/fxcontrol/PageSlideControl$Direction;)V
    .locals 3
    .parameter "value"
    .parameter "direction"

    .prologue
    .line 1463
    sget-object v0, Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl$Direction;->RIGHT:Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl$Direction;

    if-ne p2, v0, :cond_1

    .line 1464
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->mPanControl:Lcom/htc/fusion/fx/FxTimelineControl;

    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->mLeftPanMarker:Lcom/htc/fusion/fx/Marker;

    iget v1, v1, Lcom/htc/fusion/fx/Marker;->EndFrame:I

    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->mLeftPanMarker:Lcom/htc/fusion/fx/Marker;

    iget v2, v2, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p1

    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->mLeftPanMarker:Lcom/htc/fusion/fx/Marker;

    iget v2, v2, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 1470
    :cond_0
    :goto_0
    return-void

    .line 1466
    :cond_1
    sget-object v0, Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl$Direction;->LEFT:Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl$Direction;

    if-ne p2, v0, :cond_0

    .line 1467
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->mPanControl:Lcom/htc/fusion/fx/FxTimelineControl;

    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->mRightPanMarker:Lcom/htc/fusion/fx/Marker;

    iget v1, v1, Lcom/htc/fusion/fx/Marker;->EndFrame:I

    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->mRightPanMarker:Lcom/htc/fusion/fx/Marker;

    iget v2, v2, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p1

    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->mRightPanMarker:Lcom/htc/fusion/fx/Marker;

    iget v2, v2, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    goto :goto_0
.end method


# virtual methods
.method attachTo(Lcom/htc/fusion/fx/controls/FxSceneContainer;)Z
    .locals 4
    .parameter "parent"

    .prologue
    .line 1365
    invoke-static {}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "attach screen#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->mFxScreen:Lcom/htc/android/rosie/home/fxcontrol/FxScreen;

    invoke-virtual {v2}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1366
    :cond_0
    if-nez p1, :cond_1

    .line 1367
    const/4 v0, 0x0

    .line 1371
    :goto_0
    return v0

    .line 1368
    :cond_1
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->mFxScreen:Lcom/htc/android/rosie/home/fxcontrol/FxScreen;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->getScene()Lcom/htc/fusion/fx/FxScene;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/htc/fusion/fx/controls/FxSceneContainer;->setScene(Lcom/htc/fusion/fx/FxScene;)V

    .line 1369
    invoke-static {}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$100()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Rosie] attach screen#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->mFxScreen:Lcom/htc/android/rosie/home/fxcontrol/FxScreen;

    invoke-virtual {v2}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1370
    :cond_2
    iput-object p1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->mFxParent:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    .line 1371
    const/4 v0, 0x1

    goto :goto_0
.end method

.method clearFxScreen()V
    .locals 1

    .prologue
    .line 1503
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->mFxScreen:Lcom/htc/android/rosie/home/fxcontrol/FxScreen;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->resetFxScene()V

    .line 1504
    return-void
.end method

.method detach()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1375
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->mFxParent:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    if-nez v0, :cond_0

    .line 1376
    const/4 v0, 0x0

    .line 1381
    :goto_0
    return v0

    .line 1377
    :cond_0
    invoke-static {}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$100()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "detach screen#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->mFxScreen:Lcom/htc/android/rosie/home/fxcontrol/FxScreen;

    invoke-virtual {v2}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1378
    :cond_1
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->mFxParent:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    invoke-virtual {v0, v4}, Lcom/htc/fusion/fx/controls/FxSceneContainer;->removeScene(Lcom/htc/fusion/fx/FxObject;)V

    .line 1379
    invoke-static {}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$100()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "detach screen#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->mFxScreen:Lcom/htc/android/rosie/home/fxcontrol/FxScreen;

    invoke-virtual {v2}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1380
    :cond_2
    iput-object v4, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->mFxParent:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    .line 1381
    const/4 v0, 0x1

    goto :goto_0
.end method

.method freeze()V
    .locals 5

    .prologue
    .line 1406
    const-wide/16 v0, 0x0

    .line 1408
    .local v0, timeout:J
    invoke-static {}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$300()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    move-result-object v2

    #calls: Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->shouldFreezeScreens()Z
    invoke-static {v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$400(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1417
    :cond_0
    :goto_0
    return-void

    .line 1411
    :cond_1
    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->mFxScreen:Lcom/htc/android/rosie/home/fxcontrol/FxScreen;

    invoke-virtual {v2}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1412
    invoke-static {}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$300()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    move-result-object v2

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mFrozen:Z
    invoke-static {v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$500(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1413
    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->mFxScreen:Lcom/htc/android/rosie/home/fxcontrol/FxScreen;

    invoke-virtual {v2}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->onFreeze()V

    goto :goto_0

    .line 1415
    :cond_2
    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->mFxScreen:Lcom/htc/android/rosie/home/fxcontrol/FxScreen;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->onFreeze(J)V

    goto :goto_0
.end method

.method freezeAsync()V
    .locals 1

    .prologue
    .line 1420
    invoke-static {}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$300()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    move-result-object v0

    #calls: Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->shouldFreezeScreens()Z
    invoke-static {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$400(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1426
    :cond_0
    :goto_0
    return-void

    .line 1423
    :cond_1
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->mFxScreen:Lcom/htc/android/rosie/home/fxcontrol/FxScreen;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->getFrozen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1424
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->mFxScreen:Lcom/htc/android/rosie/home/fxcontrol/FxScreen;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->onFreeze()V

    goto :goto_0
.end method

.method isFrozen()Z
    .locals 1

    .prologue
    .line 1400
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->mFxScreen:Lcom/htc/android/rosie/home/fxcontrol/FxScreen;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->getFrozen()Z

    move-result v0

    return v0
.end method

.method pulseFreeze()V
    .locals 1

    .prologue
    .line 1442
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->mFxScreen:Lcom/htc/android/rosie/home/fxcontrol/FxScreen;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->onPulseFreeze()V

    .line 1443
    return-void
.end method

.method setFadeAnimation(Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;)V
    .locals 0
    .parameter "fade"

    .prologue
    .line 1477
    iput-object p1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->mFadeAnimation:Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;

    .line 1478
    return-void
.end method

.method setPan(Lcom/htc/fusion/fx/FxTimelineControl;)V
    .locals 2
    .parameter "panControl"

    .prologue
    .line 1496
    iput-object p1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->mPanControl:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 1498
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->mPanControl:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v1, "PantoLeft"

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->mLeftPanMarker:Lcom/htc/fusion/fx/Marker;

    .line 1499
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->mPanControl:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v1, "PantoRight"

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->mRightPanMarker:Lcom/htc/fusion/fx/Marker;

    .line 1500
    return-void
.end method

.method setSensor(Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;)V
    .locals 0
    .parameter "sensor"

    .prologue
    .line 1473
    iput-object p1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->mSensorAnimation:Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;

    .line 1474
    return-void
.end method

.method setSensorValue(FF)V
    .locals 3
    .parameter "value"
    .parameter "speed"

    .prologue
    .line 1446
    invoke-static {}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$600()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FxWorkspace.setSensorValue("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") - enter"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1448
    :cond_0
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->mFxParent:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->mFxScreen:Lcom/htc/android/rosie/home/fxcontrol/FxScreen;

    if-nez v0, :cond_2

    .line 1460
    :cond_1
    :goto_0
    return-void

    .line 1451
    :cond_2
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->mSensorAnimation:Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;->getDuration()F

    move-result v0

    mul-float/2addr p1, v0

    .line 1454
    invoke-static {}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$600()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FxWorkspace.setSensorValue() mSensorAnimation.setFrame("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") - enter"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1455
    :cond_3
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->mSensorAnimation:Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;

    invoke-virtual {v0, p1}, Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;->setFrame(F)V

    .line 1456
    invoke-static {}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$600()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FxWorkspace.setSensorValue() mSensorAnimation.setFrame("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") - exit"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1458
    :cond_4
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->mFxScreen:Lcom/htc/android/rosie/home/fxcontrol/FxScreen;

    invoke-virtual {v0, p1, p2}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->onTiltChanged(FF)V

    .line 1459
    invoke-static {}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$600()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FxWorkspace.setSensorValue("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") - exit"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method setVisibility(Z)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 1385
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->mFxParent:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    if-nez v0, :cond_0

    .line 1396
    :goto_0
    return-void

    .line 1388
    :cond_0
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->mFxScreen:Lcom/htc/android/rosie/home/fxcontrol/FxScreen;

    invoke-virtual {v0, p1}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->onVisibilityChanged(Z)V

    goto :goto_0
.end method

.method startFade()V
    .locals 1

    .prologue
    .line 1482
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->mFadeAnimation:Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;

    if-eqz v0, :cond_0

    .line 1483
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->mFadeAnimation:Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;->play()V

    .line 1484
    :cond_0
    return-void
.end method

.method stopFade(Z)V
    .locals 1
    .parameter "rewind"

    .prologue
    .line 1488
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->mFadeAnimation:Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;

    if-eqz v0, :cond_0

    .line 1489
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->mFadeAnimation:Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;->stop()V

    .line 1490
    if-eqz p1, :cond_0

    .line 1491
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->mFadeAnimation:Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;->rewind()V

    .line 1493
    :cond_0
    return-void
.end method

.method thaw()V
    .locals 1

    .prologue
    .line 1429
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->thaw(Z)V

    .line 1430
    return-void
.end method

.method thaw(Z)V
    .locals 1
    .parameter "keepContent"

    .prologue
    .line 1433
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->mFxScreen:Lcom/htc/android/rosie/home/fxcontrol/FxScreen;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->getFrozen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1434
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->mFxScreen:Lcom/htc/android/rosie/home/fxcontrol/FxScreen;

    invoke-virtual {v0, p1}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->onThaw(Z)V

    .line 1435
    :cond_0
    return-void
.end method

.method thawScreen(Z)V
    .locals 1
    .parameter "keepContent"

    .prologue
    .line 1438
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->mFxScreen:Lcom/htc/android/rosie/home/fxcontrol/FxScreen;

    invoke-virtual {v0, p1}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->onThaw(Z)V

    .line 1439
    return-void
.end method

.method updateFxScreen()V
    .locals 1

    .prologue
    .line 1506
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->mFxScreen:Lcom/htc/android/rosie/home/fxcontrol/FxScreen;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->updateFxScene()V

    .line 1507
    return-void
.end method

.method updateFxWidgets(Lcom/htc/launcher/Launcher;)V
    .locals 1
    .parameter "launcher"

    .prologue
    .line 1510
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->mFxScreen:Lcom/htc/android/rosie/home/fxcontrol/FxScreen;

    invoke-virtual {v0, p1}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->reloadWidgetScene(Lcom/htc/launcher/Launcher;)V

    .line 1511
    return-void
.end method

.method updateScreenId(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 1514
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->mFxScreen:Lcom/htc/android/rosie/home/fxcontrol/FxScreen;

    invoke-virtual {v0, p1}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->updateId(I)V

    .line 1515
    return-void
.end method

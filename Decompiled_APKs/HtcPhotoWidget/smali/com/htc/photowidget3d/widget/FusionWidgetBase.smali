.class public abstract Lcom/htc/photowidget3d/widget/FusionWidgetBase;
.super Ljava/lang/Object;
.source "FusionWidgetBase.java"


# static fields
.field public static final CTL_WIDGET_TILT:Ljava/lang/String; = "timeline.tiltanim"

.field private static final LOG_TAG:Ljava/lang/String; = null

.field public static final MARKER_TILT:Ljava/lang/String; = "tilt"


# instance fields
.field private mEnabled:Z

.field mFrameTiltEnd:I

.field mFrameTiltStart:I

.field protected mHost:Lcom/htc/android/rosie/widget/Widget$Host;

.field protected mSceneNode:Lcom/htc/fusion/fx/FxScene;

.field mTiltControl:Lcom/htc/fusion/fx/FxTimelineControl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/htc/photowidget3d/widget/FusionWidgetBase;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/photowidget3d/widget/FusionWidgetBase;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object v1, p0, Lcom/htc/photowidget3d/widget/FusionWidgetBase;->mHost:Lcom/htc/android/rosie/widget/Widget$Host;

    .line 28
    iput-object v1, p0, Lcom/htc/photowidget3d/widget/FusionWidgetBase;->mSceneNode:Lcom/htc/fusion/fx/FxScene;

    .line 30
    iput-boolean v0, p0, Lcom/htc/photowidget3d/widget/FusionWidgetBase;->mEnabled:Z

    .line 33
    iput-object v1, p0, Lcom/htc/photowidget3d/widget/FusionWidgetBase;->mTiltControl:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 34
    iput v0, p0, Lcom/htc/photowidget3d/widget/FusionWidgetBase;->mFrameTiltStart:I

    .line 35
    iput v0, p0, Lcom/htc/photowidget3d/widget/FusionWidgetBase;->mFrameTiltEnd:I

    return-void
.end method


# virtual methods
.method public create(Lcom/htc/android/rosie/widget/Widget$Host;Landroid/content/Context;)Z
    .locals 4
    .parameter "host"
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 40
    iput-boolean v1, p0, Lcom/htc/photowidget3d/widget/FusionWidgetBase;->mEnabled:Z

    .line 41
    invoke-virtual {p0, p2}, Lcom/htc/photowidget3d/widget/FusionWidgetBase;->getScenePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, scenePath:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 44
    iput-boolean v2, p0, Lcom/htc/photowidget3d/widget/FusionWidgetBase;->mEnabled:Z

    .line 46
    :cond_0
    invoke-interface {p1, v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host;->createScene(Ljava/lang/String;Z)Lcom/htc/fusion/fx/FxScene;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/photowidget3d/widget/FusionWidgetBase;->mSceneNode:Lcom/htc/fusion/fx/FxScene;

    .line 47
    iget-object v1, p0, Lcom/htc/photowidget3d/widget/FusionWidgetBase;->mSceneNode:Lcom/htc/fusion/fx/FxScene;

    if-nez v1, :cond_1

    .line 49
    iput-boolean v2, p0, Lcom/htc/photowidget3d/widget/FusionWidgetBase;->mEnabled:Z

    .line 52
    :cond_1
    iget-boolean v1, p0, Lcom/htc/photowidget3d/widget/FusionWidgetBase;->mEnabled:Z

    if-nez v1, :cond_2

    .line 53
    sget-object v1, Lcom/htc/photowidget3d/widget/FusionWidgetBase;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[create] Unable to create w/ scenePath = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/photowidget3d/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :cond_2
    iget-boolean v1, p0, Lcom/htc/photowidget3d/widget/FusionWidgetBase;->mEnabled:Z

    return v1
.end method

.method public getScene()Lcom/htc/fusion/fx/FxScene;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/htc/photowidget3d/widget/FusionWidgetBase;->mSceneNode:Lcom/htc/fusion/fx/FxScene;

    return-object v0
.end method

.method public abstract getScenePath(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/htc/photowidget3d/widget/FusionWidgetBase;->mEnabled:Z

    return v0
.end method

.method public onTiltChanged(F)V
    .locals 3
    .parameter "tilt"

    .prologue
    .line 93
    iget-object v1, p0, Lcom/htc/photowidget3d/widget/FusionWidgetBase;->mTiltControl:Lcom/htc/fusion/fx/FxTimelineControl;

    if-nez v1, :cond_0

    .line 98
    :goto_0
    return-void

    .line 96
    :cond_0
    iget v1, p0, Lcom/htc/photowidget3d/widget/FusionWidgetBase;->mFrameTiltStart:I

    iget v2, p0, Lcom/htc/photowidget3d/widget/FusionWidgetBase;->mFrameTiltEnd:I

    invoke-static {p1, v1, v2}, Lcom/htc/android/rosie/widget/WidgetHelper;->convertTiltAngleToFrame(FII)F

    move-result v0

    .line 97
    .local v0, newFrame:F
    iget-object v1, p0, Lcom/htc/photowidget3d/widget/FusionWidgetBase;->mTiltControl:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v1, v0}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    goto :goto_0
.end method

.method public abstract release()V
.end method

.method public setVisibility(Z)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/htc/photowidget3d/widget/FusionWidgetBase;->mSceneNode:Lcom/htc/fusion/fx/FxScene;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/htc/photowidget3d/widget/FusionWidgetBase;->mSceneNode:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {v0, p1}, Lcom/htc/fusion/fx/FxScene;->setVisibility(Z)Ljava/util/ArrayList;

    .line 69
    :cond_0
    return-void
.end method

.method protected setupTilt()V
    .locals 5

    .prologue
    .line 78
    iget-object v2, p0, Lcom/htc/photowidget3d/widget/FusionWidgetBase;->mTiltControl:Lcom/htc/fusion/fx/FxTimelineControl;

    if-nez v2, :cond_1

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    iget-object v2, p0, Lcom/htc/photowidget3d/widget/FusionWidgetBase;->mTiltControl:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v3, "tilt"

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v1

    .line 82
    .local v1, tilt:Lcom/htc/fusion/fx/Marker;
    if-eqz v1, :cond_0

    .line 85
    iget v2, v1, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    iput v2, p0, Lcom/htc/photowidget3d/widget/FusionWidgetBase;->mFrameTiltStart:I

    .line 86
    iget v2, v1, Lcom/htc/fusion/fx/Marker;->EndFrame:I

    iput v2, p0, Lcom/htc/photowidget3d/widget/FusionWidgetBase;->mFrameTiltEnd:I

    .line 87
    iget v2, p0, Lcom/htc/photowidget3d/widget/FusionWidgetBase;->mFrameTiltEnd:I

    iget v3, p0, Lcom/htc/photowidget3d/widget/FusionWidgetBase;->mFrameTiltStart:I

    sub-int v0, v2, v3

    .line 88
    .local v0, frames:I
    sget-object v2, Lcom/htc/photowidget3d/widget/FusionWidgetBase;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[setupTilt] Start from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/photowidget3d/widget/FusionWidgetBase;->mFrameTiltStart:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/photowidget3d/widget/FusionWidgetBase;->mFrameTiltEnd:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Total frames = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/photowidget3d/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

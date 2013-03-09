.class public Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;
.super Ljava/lang/Object;
.source "FxLeapRearrangeDrag.java"


# static fields
.field private static final ANIMATION_MOVE_CENTER_END_FRAME:I = 0xa

.field private static final ANIMATION_MOVE_CENTER_START_FRAME:I = 0xa

.field private static final ANIMATION_MOVE_LEFT_END_FRAME:I = 0xa

.field private static final ANIMATION_MOVE_LEFT_START_FRAME:I = 0x0

.field private static final ANIMATION_MOVE_RIGHT_END_FRAME:I = 0x1e

.field private static final ANIMATION_MOVE_RIGHT_START_FRAME:I = 0x14

.field private static final ANIMATION_PLAY_MODE:I = 0x0

.field private static final ANIMATION_PLAY_SPEED:F = 3.0f

.field private static final LOG_TAG:Ljava/lang/String; = "LeapRearrangeDrag"

.field private static final POS_CENTER:I = 0x1

.field private static final POS_LEFT:I = 0x0

.field private static final POS_RIGHT:I = 0x2


# instance fields
.field private mCurrentPos:I

.field private mFxDrag:Lcom/htc/fusion/fx/controls/FxDragControl;

.field private mFxLeapRearrangeController:Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;

.field private mFxSceneContainer:Lcom/htc/fusion/fx/controls/FxSceneContainer;

.field mHomePageTimelinePosition:Lcom/htc/fusion/fx/FxTimelineControl;

.field private mNumOfScreen:I

.field private mOnBeginDragMessageListener:Lcom/htc/fusion/fx/MessageListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/fusion/fx/MessageListener",
            "<",
            "Lcom/htc/fusion/fx/FxDraggable;",
            ">;"
        }
    .end annotation
.end field

.field private mOnEndDragMessageListener:Lcom/htc/fusion/fx/MessageListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/fusion/fx/MessageListener",
            "<",
            "Lcom/htc/fusion/fx/FxDraggable;",
            ">;"
        }
    .end annotation
.end field

.field private mOriginalScreen:I

.field private mPlaybackInfoListener:Lcom/htc/fusion/fx/MessageListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/fusion/fx/MessageListener",
            "<",
            "Lcom/htc/fusion/fx/FxPlaybackInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mScene:Lcom/htc/fusion/fx/FxScene;

.field private mScreen:I

.field private mTimelinePosition:Lcom/htc/fusion/fx/FxTimelineControl;


# direct methods
.method public constructor <init>(ILcom/htc/fusion/fx/controls/FxDragControl;)V
    .locals 2
    .parameter "screen"
    .parameter "fxDrag"

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mFxDrag:Lcom/htc/fusion/fx/controls/FxDragControl;

    .line 19
    iput v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mOriginalScreen:I

    .line 20
    iput v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mScreen:I

    .line 21
    iput-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mFxLeapRearrangeController:Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;

    .line 22
    iput-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mTimelinePosition:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 23
    iput-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mFxSceneContainer:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    .line 24
    iput v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mNumOfScreen:I

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mCurrentPos:I

    .line 107
    iput-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mHomePageTimelinePosition:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 125
    iput-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mScene:Lcom/htc/fusion/fx/FxScene;

    .line 255
    new-instance v0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag$1;

    invoke-direct {v0, p0}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag$1;-><init>(Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;)V

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mOnBeginDragMessageListener:Lcom/htc/fusion/fx/MessageListener;

    .line 274
    new-instance v0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag$2;

    invoke-direct {v0, p0}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag$2;-><init>(Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;)V

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mOnEndDragMessageListener:Lcom/htc/fusion/fx/MessageListener;

    .line 292
    new-instance v0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag$3;

    invoke-direct {v0, p0}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag$3;-><init>(Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;)V

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mPlaybackInfoListener:Lcom/htc/fusion/fx/MessageListener;

    .line 44
    invoke-direct {p0, p1}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->setOriginalScreen(I)V

    .line 45
    invoke-virtual {p0, p1}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->setScreen(I)V

    .line 46
    invoke-direct {p0, p2}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->setFxDrag(Lcom/htc/fusion/fx/controls/FxDragControl;)V

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mScreen:I

    return v0
.end method

.method static synthetic access$100(Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;)Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mFxLeapRearrangeController:Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;)Lcom/htc/fusion/fx/controls/FxSceneContainer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mFxSceneContainer:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;)Lcom/htc/fusion/fx/controls/FxDragControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mFxDrag:Lcom/htc/fusion/fx/controls/FxDragControl;

    return-object v0
.end method

.method private setFxDrag(Lcom/htc/fusion/fx/controls/FxDragControl;)V
    .locals 3
    .parameter "fxDrag"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mFxDrag:Lcom/htc/fusion/fx/controls/FxDragControl;

    .line 79
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mFxDrag:Lcom/htc/fusion/fx/controls/FxDragControl;

    const-class v2, Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/controls/FxDragControl;->getChildByType(Ljava/lang/Class;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v0

    check-cast v0, Lcom/htc/fusion/fx/controls/FxHitbox;

    .line 80
    .local v0, hb:Lcom/htc/fusion/fx/controls/FxHitbox;
    if-eqz v0, :cond_0

    .line 81
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxHitbox;->setTouchOpacity(I)V

    .line 82
    :cond_0
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mFxDrag:Lcom/htc/fusion/fx/controls/FxDragControl;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/controls/FxDragControl;->setEnabled(Z)V

    .line 84
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mFxDrag:Lcom/htc/fusion/fx/controls/FxDragControl;

    invoke-virtual {v1}, Lcom/htc/fusion/fx/controls/FxDragControl;->getBeginDragSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mOnBeginDragMessageListener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v1, v2}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 85
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mFxDrag:Lcom/htc/fusion/fx/controls/FxDragControl;

    invoke-virtual {v1}, Lcom/htc/fusion/fx/controls/FxDragControl;->getEndDragSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mOnEndDragMessageListener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v1, v2}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 86
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mFxDrag:Lcom/htc/fusion/fx/controls/FxDragControl;

    invoke-virtual {v1}, Lcom/htc/fusion/fx/controls/FxDragControl;->getPlaybackCompleteSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mPlaybackInfoListener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v1, v2}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 87
    return-void
.end method

.method private setOriginalScreen(I)V
    .locals 0
    .parameter "screen"

    .prologue
    .line 58
    iput p1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mOriginalScreen:I

    .line 59
    return-void
.end method


# virtual methods
.method public attache(ILcom/htc/fusion/fx/FxScene;)V
    .locals 2
    .parameter "screen"
    .parameter "scene"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mFxSceneContainer:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    if-nez v0, :cond_0

    .line 131
    :goto_0
    return-void

    .line 129
    :cond_0
    iput-object p2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mScene:Lcom/htc/fusion/fx/FxScene;

    .line 130
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mFxSceneContainer:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mScene:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxSceneContainer;->setScene(Lcom/htc/fusion/fx/FxScene;)V

    goto :goto_0
.end method

.method public clean()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 355
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mFxLeapRearrangeController:Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;

    if-eqz v0, :cond_0

    .line 356
    iput-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mFxLeapRearrangeController:Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mTimelinePosition:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_1

    .line 360
    iput-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mTimelinePosition:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 363
    :cond_1
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mFxSceneContainer:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    if-eqz v0, :cond_2

    .line 364
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mFxSceneContainer:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxSceneContainer;->removeScene(Lcom/htc/fusion/fx/FxObject;)V

    .line 366
    :cond_2
    iput-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mFxSceneContainer:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    .line 367
    return-void
.end method

.method public dettache()V
    .locals 0

    .prologue
    .line 135
    return-void
.end method

.method public getCurrentPos()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mCurrentPos:I

    return v0
.end method

.method public getFxDrag()Lcom/htc/fusion/fx/controls/FxDragControl;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mFxDrag:Lcom/htc/fusion/fx/controls/FxDragControl;

    return-object v0
.end method

.method public getHomePageTimeLine()Lcom/htc/fusion/fx/FxTimelineControl;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mHomePageTimelinePosition:Lcom/htc/fusion/fx/FxTimelineControl;

    return-object v0
.end method

.method public getOriginalScreen()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mOriginalScreen:I

    return v0
.end method

.method public getSceneContainer()Lcom/htc/fusion/fx/controls/FxSceneContainer;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mFxSceneContainer:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    return-object v0
.end method

.method public getScreen()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mScreen:I

    return v0
.end method

.method public initMoveToCenter()V
    .locals 2

    .prologue
    const/16 v1, 0xa

    .line 152
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mTimelinePosition:Lcom/htc/fusion/fx/FxTimelineControl;

    if-nez v0, :cond_0

    .line 158
    :goto_0
    return-void

    .line 155
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mCurrentPos:I

    .line 157
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mTimelinePosition:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0, v1, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->playFrames(II)V

    goto :goto_0
.end method

.method public moveLeft()V
    .locals 1

    .prologue
    .line 222
    iget v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mCurrentPos:I

    packed-switch v0, :pswitch_data_0

    .line 232
    :goto_0
    :pswitch_0
    return-void

    .line 226
    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->positionBackward()V

    goto :goto_0

    .line 229
    :pswitch_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->moveToCenter(Z)V

    goto :goto_0

    .line 222
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public moveRight()V
    .locals 1

    .prologue
    .line 235
    iget v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mCurrentPos:I

    packed-switch v0, :pswitch_data_0

    .line 245
    :goto_0
    return-void

    .line 237
    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->moveToCenter(Z)V

    goto :goto_0

    .line 240
    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->positionForward()V

    goto :goto_0

    .line 235
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public moveToCenter(Z)V
    .locals 8
    .parameter "isReset"

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 161
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mTimelinePosition:Lcom/htc/fusion/fx/FxTimelineControl;

    if-nez v0, :cond_0

    .line 205
    :goto_0
    return-void

    .line 164
    :cond_0
    iget v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mCurrentPos:I

    if-ne v0, v5, :cond_1

    .line 165
    const-string v0, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " screen["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mScreen:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] = POS_CENTER"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/htc/launcher/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 169
    :cond_1
    const/high16 v7, -0x4080

    .line 170
    .local v7, speed:F
    const-string v6, "back"

    .line 171
    .local v6, markerId:Ljava/lang/String;
    const/16 v1, 0xa

    .line 172
    .local v1, startFrame:I
    const/16 v2, 0xa

    .line 174
    .local v2, endFrame:I
    iget v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mCurrentPos:I

    if-nez v0, :cond_2

    .line 175
    iget v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mScreen:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mScreen:I

    .line 176
    const/high16 v7, 0x3f80

    .line 177
    const-string v6, "back"

    .line 178
    const/4 v1, 0x0

    .line 179
    const/16 v2, 0xa

    .line 182
    :cond_2
    iget v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mCurrentPos:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_3

    .line 183
    iget v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mScreen:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mScreen:I

    .line 184
    const/high16 v7, -0x4080

    .line 185
    const-string v6, "forward"

    .line 186
    const/16 v1, 0x1e

    .line 187
    const/16 v2, 0x14

    .line 190
    :cond_3
    iget v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mScreen:I

    if-gez v0, :cond_4

    .line 191
    iget v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mNumOfScreen:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mScreen:I

    .line 193
    :cond_4
    iget v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mScreen:I

    iget v4, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mNumOfScreen:I

    add-int/lit8 v4, v4, -0x1

    if-le v0, v4, :cond_5

    .line 194
    iput v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mScreen:I

    .line 196
    :cond_5
    iput v5, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mCurrentPos:I

    .line 197
    if-eqz p1, :cond_6

    .line 198
    const-string v0, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " moveToCenter() Before: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mTimelinePosition:Lcom/htc/fusion/fx/FxTimelineControl;

    const/high16 v3, 0x4120

    invoke-virtual {v0, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 200
    const-string v0, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " moveToCenter() After: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 202
    :cond_6
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mTimelinePosition:Lcom/htc/fusion/fx/FxTimelineControl;

    const/high16 v4, 0x4040

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/fusion/fx/FxTimelineControl;->playFrames(IIIFZ)V

    goto/16 :goto_0
.end method

.method public positionBackward()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 138
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mTimelinePosition:Lcom/htc/fusion/fx/FxTimelineControl;

    if-nez v0, :cond_1

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    iget v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mCurrentPos:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 143
    iget v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mScreen:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mScreen:I

    .line 144
    iget v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mScreen:I

    if-gez v0, :cond_2

    .line 145
    iget v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mNumOfScreen:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mScreen:I

    .line 146
    :cond_2
    iput v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mCurrentPos:I

    .line 148
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mTimelinePosition:Lcom/htc/fusion/fx/FxTimelineControl;

    const/16 v1, 0xa

    const/high16 v4, 0x4040

    move v3, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/fusion/fx/FxTimelineControl;->playFrames(IIIFZ)V

    goto :goto_0
.end method

.method public positionForward()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 208
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mTimelinePosition:Lcom/htc/fusion/fx/FxTimelineControl;

    if-nez v0, :cond_1

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 211
    :cond_1
    iget v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mCurrentPos:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 213
    iget v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mScreen:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mScreen:I

    .line 214
    iget v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mScreen:I

    iget v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mNumOfScreen:I

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_2

    .line 215
    iput v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mScreen:I

    .line 216
    :cond_2
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mCurrentPos:I

    .line 218
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mTimelinePosition:Lcom/htc/fusion/fx/FxTimelineControl;

    const/16 v1, 0x14

    const/16 v2, 0x1e

    const/high16 v4, 0x4040

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/fusion/fx/FxTimelineControl;->playFrames(IIIFZ)V

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 370
    iget v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mOriginalScreen:I

    iput v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mScreen:I

    .line 371
    invoke-virtual {p0}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->initMoveToCenter()V

    .line 372
    return-void
.end method

.method public setCurrentPos(I)V
    .locals 0
    .parameter "pos"

    .prologue
    .line 66
    iput p1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mCurrentPos:I

    .line 67
    return-void
.end method

.method public setEnable(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mFxDrag:Lcom/htc/fusion/fx/controls/FxDragControl;

    if-nez v0, :cond_1

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mFxDrag:Lcom/htc/fusion/fx/controls/FxDragControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxDragControl;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    :cond_2
    if-nez p1, :cond_3

    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mFxDrag:Lcom/htc/fusion/fx/controls/FxDragControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxDragControl;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    :cond_3
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mFxDrag:Lcom/htc/fusion/fx/controls/FxDragControl;

    invoke-virtual {v0, p1}, Lcom/htc/fusion/fx/controls/FxDragControl;->setEnabled(Z)V

    goto :goto_0
.end method

.method public setFxLeapRearrangeController(Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;)V
    .locals 0
    .parameter "leapRearrangeController"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mFxLeapRearrangeController:Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;

    .line 101
    return-void
.end method

.method public setHomePageTimeLine(Lcom/htc/fusion/fx/FxTimelineControl;)V
    .locals 0
    .parameter "timelinePosition"

    .prologue
    .line 109
    iput-object p1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mHomePageTimelinePosition:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 110
    return-void
.end method

.method public setNumOfScreen(I)V
    .locals 0
    .parameter "screenCount"

    .prologue
    .line 74
    iput p1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mNumOfScreen:I

    .line 75
    return-void
.end method

.method public setPositionTimeline(Lcom/htc/fusion/fx/FxTimelineControl;)V
    .locals 0
    .parameter "timelinePosition"

    .prologue
    .line 104
    iput-object p1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mTimelinePosition:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 105
    return-void
.end method

.method public setSceneContainer(Lcom/htc/fusion/fx/controls/FxSceneContainer;)V
    .locals 0
    .parameter "fxSceneContainer"

    .prologue
    .line 118
    iput-object p1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mFxSceneContainer:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    .line 119
    return-void
.end method

.method public setScreen(I)V
    .locals 0
    .parameter "screen"

    .prologue
    .line 50
    iput p1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mScreen:I

    .line 51
    return-void
.end method

.method public showPosition()V
    .locals 3

    .prologue
    .line 387
    const-string v0, "LeapRearrangeDrag"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ROSIE_DEBUG][LEAP_REARRANGE] Pos["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mOriginalScreen:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mFxDrag:Lcom/htc/fusion/fx/controls/FxDragControl;

    invoke-virtual {v2}, Lcom/htc/fusion/fx/controls/FxDragControl;->getPosition()Lcom/htc/fusion/Point3F;

    move-result-object v2

    iget v2, v2, Lcom/htc/fusion/Point3F;->x:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mFxDrag:Lcom/htc/fusion/fx/controls/FxDragControl;

    invoke-virtual {v2}, Lcom/htc/fusion/fx/controls/FxDragControl;->getPosition()Lcom/htc/fusion/Point3F;

    move-result-object v2

    iget v2, v2, Lcom/htc/fusion/Point3F;->y:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mFxDrag:Lcom/htc/fusion/fx/controls/FxDragControl;

    invoke-virtual {v2}, Lcom/htc/fusion/fx/controls/FxDragControl;->getPosition()Lcom/htc/fusion/Point3F;

    move-result-object v2

    iget v2, v2, Lcom/htc/fusion/Point3F;->z:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LeapDrag:mOriginalScreen("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mOriginalScreen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") mScreen("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mScreen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") Pos("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mCurrentPos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") Frame("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mTimelinePosition:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v1}, Lcom/htc/fusion/fx/FxTimelineControl;->getFrame()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zOrderDown()V
    .locals 6

    .prologue
    .line 375
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mFxDrag:Lcom/htc/fusion/fx/controls/FxDragControl;

    if-nez v0, :cond_0

    .line 378
    :goto_0
    return-void

    .line 377
    :cond_0
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mTimelinePosition:Lcom/htc/fusion/fx/FxTimelineControl;

    new-instance v1, Lcom/htc/fusion/Point3F;

    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mTimelinePosition:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v2}, Lcom/htc/fusion/fx/FxTimelineControl;->getPosition()Lcom/htc/fusion/Point3F;

    move-result-object v2

    iget v2, v2, Lcom/htc/fusion/Point3F;->x:F

    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mTimelinePosition:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v3}, Lcom/htc/fusion/fx/FxTimelineControl;->getPosition()Lcom/htc/fusion/Point3F;

    move-result-object v3

    iget v3, v3, Lcom/htc/fusion/Point3F;->y:F

    iget-object v4, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mTimelinePosition:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v4}, Lcom/htc/fusion/fx/FxTimelineControl;->getPosition()Lcom/htc/fusion/Point3F;

    move-result-object v4

    iget v4, v4, Lcom/htc/fusion/Point3F;->z:F

    const/high16 v5, 0x3f80

    sub-float/2addr v4, v5

    invoke-direct {v1, v2, v3, v4}, Lcom/htc/fusion/Point3F;-><init>(FFF)V

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->setPosition(Lcom/htc/fusion/Point3F;)V

    goto :goto_0
.end method

.method public zOrderUp()V
    .locals 6

    .prologue
    .line 381
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mFxDrag:Lcom/htc/fusion/fx/controls/FxDragControl;

    if-nez v0, :cond_0

    .line 384
    :goto_0
    return-void

    .line 383
    :cond_0
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mTimelinePosition:Lcom/htc/fusion/fx/FxTimelineControl;

    new-instance v1, Lcom/htc/fusion/Point3F;

    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mTimelinePosition:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v2}, Lcom/htc/fusion/fx/FxTimelineControl;->getPosition()Lcom/htc/fusion/Point3F;

    move-result-object v2

    iget v2, v2, Lcom/htc/fusion/Point3F;->x:F

    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mTimelinePosition:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v3}, Lcom/htc/fusion/fx/FxTimelineControl;->getPosition()Lcom/htc/fusion/Point3F;

    move-result-object v3

    iget v3, v3, Lcom/htc/fusion/Point3F;->y:F

    iget-object v4, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->mTimelinePosition:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v4}, Lcom/htc/fusion/fx/FxTimelineControl;->getPosition()Lcom/htc/fusion/Point3F;

    move-result-object v4

    iget v4, v4, Lcom/htc/fusion/Point3F;->z:F

    const/high16 v5, 0x3f80

    add-float/2addr v4, v5

    invoke-direct {v1, v2, v3, v4}, Lcom/htc/fusion/Point3F;-><init>(FFF)V

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->setPosition(Lcom/htc/fusion/Point3F;)V

    goto :goto_0
.end method

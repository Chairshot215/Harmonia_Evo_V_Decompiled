.class public abstract Lcom/htc/sunny2/slideshow/SlideAnimator;
.super Lcom/htc/sunny2/RenderThreadAction;
.source "SlideAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/slideshow/SlideAnimator$AnimatorListener;
    }
.end annotation


# static fields
.field private static final DEBUG_LOG:Ljava/lang/String; = "KA>>> Animator "

.field private static final LTAG:Ljava/lang/String; = "SlideAnimator"

.field public static final STATUS_END:I = 0x4

.field public static final STATUS_LATEST:I = 0x6

.field public static final STATUS_NONE:I = 0x0

.field public static final STATUS_PAUSE:I = 0x5

.field public static final STATUS_PHASE_IN:I = 0x1

.field public static final STATUS_PHASE_OUT:I = 0x3

.field public static final STATUS_SLIDE:I = 0x2


# instance fields
.field private bIsPause:Z

.field private bKeppScrenn:Z

.field public mAnimatorListener:Lcom/htc/sunny2/slideshow/SlideAnimator$AnimatorListener;

.field private mFlagLatest:Z

.field private mForecePhaseOut:Z

.field public mIndex:I

.field public mPlayStatus:I

.field public mTempPlayStatus:I

.field private mTimeStartPhaseOut:J

.field private mainDuration:I

.field private phaseInDuration:I

.field private phaseOutDuration:I

.field private scene:Lcom/htc/sunny2/slideshow/SlideshowScene;

.field protected sunnyImageTexture:I

.field protected sunnySprite:I

.field private timePause:J

.field protected viewportHeight:F

.field protected viewportWidth:F


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 5
    .parameter "host"
    .parameter "name"

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 70
    invoke-direct {p0, p1, p2}, Lcom/htc/sunny2/RenderThreadAction;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iput-object v2, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->scene:Lcom/htc/sunny2/slideshow/SlideshowScene;

    .line 37
    iput v0, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->sunnyImageTexture:I

    .line 38
    iput v0, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->sunnySprite:I

    .line 40
    iput v1, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->viewportWidth:F

    .line 41
    iput v1, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->viewportHeight:F

    .line 43
    iput v0, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->phaseInDuration:I

    .line 44
    iput v0, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->mainDuration:I

    .line 45
    iput v0, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->phaseOutDuration:I

    .line 46
    iput v0, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->mPlayStatus:I

    .line 47
    iput v0, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->mTempPlayStatus:I

    .line 50
    iput-boolean v0, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->bKeppScrenn:Z

    .line 51
    iput-boolean v0, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->bIsPause:Z

    .line 52
    iput-boolean v0, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->mForecePhaseOut:Z

    .line 53
    iput-boolean v0, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->mFlagLatest:Z

    .line 55
    iput-wide v3, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->timePause:J

    .line 56
    iput-wide v3, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->mTimeStartPhaseOut:J

    .line 60
    iput-object v2, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->mAnimatorListener:Lcom/htc/sunny2/slideshow/SlideAnimator$AnimatorListener;

    .line 63
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->mIndex:I

    .line 71
    return-void
.end method


# virtual methods
.method public deinit()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 116
    iput v2, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->phaseInDuration:I

    .line 117
    iput v2, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->mainDuration:I

    .line 118
    iput v2, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->phaseOutDuration:I

    .line 120
    iput v2, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->sunnyImageTexture:I

    .line 121
    iput v0, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->viewportWidth:F

    .line 122
    iput v0, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->viewportHeight:F

    .line 124
    iput-boolean v2, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->bKeppScrenn:Z

    .line 125
    iput-boolean v2, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->bIsPause:Z

    .line 126
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->timePause:J

    .line 127
    iput-boolean v2, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->mForecePhaseOut:Z

    .line 128
    iput-boolean v2, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->mFlagLatest:Z

    .line 130
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->mIndex:I

    .line 132
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->mAnimatorListener:Lcom/htc/sunny2/slideshow/SlideAnimator$AnimatorListener;

    .line 134
    iput v2, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->mPlayStatus:I

    .line 135
    iput v2, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->mTempPlayStatus:I

    .line 136
    return-void
.end method

.method public endAnimator()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 218
    iget-boolean v0, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->mForecePhaseOut:Z

    if-ne v0, v3, :cond_0

    .line 227
    :goto_0
    return-void

    .line 220
    :cond_0
    const-string v0, "SlideAnimator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KA>>> Animator Animator["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->mIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]: endAnimator End"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    iget v0, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->mPlayStatus:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/htc/sunny2/slideshow/SlideAnimator;->resumeAnimator()V

    .line 224
    :cond_1
    iput-boolean v3, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->mForecePhaseOut:Z

    .line 225
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->mTimeStartPhaseOut:J

    goto :goto_0
.end method

.method public getAnimatorIndex()I
    .locals 1

    .prologue
    .line 236
    iget v0, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->mIndex:I

    return v0
.end method

.method public getAnimatorStatus()I
    .locals 1

    .prologue
    .line 231
    iget v0, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->mPlayStatus:I

    return v0
.end method

.method public getSprite()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->sunnySprite:I

    return v0
.end method

.method public init(IIFF)Z
    .locals 1
    .parameter "index"
    .parameter "sunnyImageTexture"
    .parameter "viewportWidth"
    .parameter "viewportHeight"

    .prologue
    .line 83
    iput p1, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->mIndex:I

    .line 85
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->mPlayStatus:I

    .line 87
    iput p2, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->sunnyImageTexture:I

    .line 89
    iput p3, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->viewportWidth:F

    .line 90
    iput p4, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->viewportHeight:F

    .line 92
    const/4 v0, 0x1

    return v0
.end method

.method public onAddedToScene(Lcom/htc/sunny2/slideshow/SlideshowScene;I)Z
    .locals 3
    .parameter "scene"
    .parameter "sunnySprite"

    .prologue
    const/4 v0, 0x0

    .line 140
    if-nez p1, :cond_0

    .line 142
    const-string v1, "SlideAnimator"

    const-string v2, "onAddedToScene() NG - null scene"

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0}, Lcom/htc/sunny2/slideshow/SlideAnimator;->deinit()V

    .line 159
    :goto_0
    return v0

    .line 147
    :cond_0
    if-nez p2, :cond_1

    .line 149
    const-string v1, "SlideAnimator"

    const-string v2, "onAddedToScene() NG - null sprite"

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-virtual {p0}, Lcom/htc/sunny2/slideshow/SlideAnimator;->onRemovedFromScene()V

    goto :goto_0

    .line 154
    :cond_1
    iput-object p1, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->scene:Lcom/htc/sunny2/slideshow/SlideshowScene;

    .line 155
    iput p2, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->sunnySprite:I

    .line 157
    iget v1, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->sunnySprite:I

    iget v2, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->sunnyImageTexture:I

    invoke-static {v1, v0, v0, v2}, Lcom/htc/sunny2/Sunny2;->Sprite_SetTexture(IIII)Z

    .line 159
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public abstract onAnimatePhaseInTransition(FF)V
.end method

.method public abstract onAnimatePhaseOutTransition(FF)V
.end method

.method public abstract onAnimateSlide(FF)V
.end method

.method public onCancelIRT(Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;)V
    .locals 0
    .parameter "cancelReason"

    .prologue
    .line 347
    return-void
.end method

.method public onDoActionIRT(IJ)Z
    .locals 11
    .parameter "frameIndex"
    .parameter "timeMillis"

    .prologue
    .line 244
    iget-boolean v7, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->bIsPause:Z

    if-eqz v7, :cond_0

    const/4 v7, 0x1

    .line 341
    :goto_0
    return v7

    .line 246
    :cond_0
    iget-wide v7, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->firstFrameTimeMillis:J

    iget v9, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->phaseInDuration:I

    int-to-long v9, v9

    add-long v0, v7, v9

    .line 247
    .local v0, phaseInEndTime:J
    iget v7, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->mainDuration:I

    int-to-long v7, v7

    add-long v4, v0, v7

    .line 248
    .local v4, phaseOutStartTime:J
    iget v7, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->phaseOutDuration:I

    int-to-long v7, v7

    add-long v2, v4, v7

    .line 249
    .local v2, phaseOutEndTime:J
    iget v7, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->phaseInDuration:I

    iget v8, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->mainDuration:I

    add-int/2addr v7, v8

    iget v8, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->phaseOutDuration:I

    add-int/2addr v7, v8

    int-to-float v6, v7

    .line 252
    .local v6, totalDuration:F
    iget-boolean v7, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->mForecePhaseOut:Z

    const/4 v8, 0x1

    if-ne v7, v8, :cond_3

    .line 254
    iget v7, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->mPlayStatus:I

    const/4 v8, 0x1

    if-eq v7, v8, :cond_1

    iget v7, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->mPlayStatus:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_3

    .line 256
    :cond_1
    iget-wide v7, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->firstFrameTimeMillis:J

    sub-long v7, p2, v7

    long-to-float v7, v7

    div-float/2addr v7, v6

    iget-wide v8, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->mTimeStartPhaseOut:J

    sub-long v8, p2, v8

    long-to-float v8, v8

    iget v9, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->phaseOutDuration:I

    int-to-float v9, v9

    div-float/2addr v8, v9

    invoke-virtual {p0, v7, v8}, Lcom/htc/sunny2/slideshow/SlideAnimator;->onAnimatePhaseOutTransition(FF)V

    .line 262
    iget-wide v7, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->mTimeStartPhaseOut:J

    iget v9, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->phaseOutDuration:I

    int-to-long v9, v9

    add-long/2addr v7, v9

    cmp-long v7, p2, v7

    if-gez v7, :cond_2

    const/4 v7, 0x1

    goto :goto_0

    .line 264
    :cond_2
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->mForecePhaseOut:Z

    .line 265
    const/4 v7, 0x4

    iput v7, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->mPlayStatus:I

    .line 267
    const-string v7, "SlideAnimator"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "KA>>> Animator Animator["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->mIndex:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]: onDoActionIRT: Force End"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    const/4 v7, 0x0

    goto :goto_0

    .line 273
    :cond_3
    cmp-long v7, p2, v0

    if-gez v7, :cond_4

    .line 275
    const/4 v7, 0x1

    iput v7, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->mPlayStatus:I

    .line 277
    iget-wide v7, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->firstFrameTimeMillis:J

    sub-long v7, p2, v7

    long-to-float v7, v7

    div-float/2addr v7, v6

    iget-wide v8, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->firstFrameTimeMillis:J

    sub-long v8, p2, v8

    long-to-float v8, v8

    iget v9, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->phaseInDuration:I

    int-to-float v9, v9

    div-float/2addr v8, v9

    invoke-virtual {p0, v7, v8}, Lcom/htc/sunny2/slideshow/SlideAnimator;->onAnimatePhaseInTransition(FF)V

    .line 282
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 284
    :cond_4
    cmp-long v7, p2, v4

    if-gez v7, :cond_5

    .line 286
    const/4 v7, 0x2

    iput v7, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->mPlayStatus:I

    .line 288
    iget-wide v7, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->firstFrameTimeMillis:J

    sub-long v7, p2, v7

    long-to-float v7, v7

    div-float/2addr v7, v6

    sub-long v8, p2, v0

    long-to-float v8, v8

    iget v9, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->mainDuration:I

    int-to-float v9, v9

    div-float/2addr v8, v9

    invoke-virtual {p0, v7, v8}, Lcom/htc/sunny2/slideshow/SlideAnimator;->onAnimateSlide(FF)V

    .line 293
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 295
    :cond_5
    cmp-long v7, p2, v2

    if-gez v7, :cond_8

    .line 297
    iget-boolean v7, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->mFlagLatest:Z

    if-eqz v7, :cond_7

    .line 299
    const-string v7, "SlideAnimator"

    const-string v8, "[SlideAnimator][onDoActionIRT]: Latest 1, DoPause !"

    invoke-static {v7, v8}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->mFlagLatest:Z

    .line 302
    iget-object v7, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->mAnimatorListener:Lcom/htc/sunny2/slideshow/SlideAnimator$AnimatorListener;

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->mAnimatorListener:Lcom/htc/sunny2/slideshow/SlideAnimator$AnimatorListener;

    const/4 v8, 0x4

    invoke-interface {v7, p0, v8}, Lcom/htc/sunny2/slideshow/SlideAnimator$AnimatorListener;->onAnimatorStatusChange(Lcom/htc/sunny2/slideshow/SlideAnimator;I)V

    .line 303
    :cond_6
    invoke-virtual {p0}, Lcom/htc/sunny2/slideshow/SlideAnimator;->pauseAnimator()V

    .line 304
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 312
    :cond_7
    const/4 v7, 0x3

    iput v7, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->mPlayStatus:I

    .line 314
    iget-wide v7, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->firstFrameTimeMillis:J

    sub-long v7, p2, v7

    long-to-float v7, v7

    div-float/2addr v7, v6

    sub-long v8, p2, v4

    long-to-float v8, v8

    iget v9, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->phaseOutDuration:I

    int-to-float v9, v9

    div-float/2addr v8, v9

    invoke-virtual {p0, v7, v8}, Lcom/htc/sunny2/slideshow/SlideAnimator;->onAnimatePhaseOutTransition(FF)V

    .line 319
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 323
    :cond_8
    iget-boolean v7, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->mFlagLatest:Z

    if-eqz v7, :cond_a

    .line 325
    const-string v7, "SlideAnimator"

    const-string v8, "[SlideAnimator][onDoActionIRT]: Latest 2, DoPause !"

    invoke-static {v7, v8}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->mFlagLatest:Z

    .line 328
    iget-object v7, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->mAnimatorListener:Lcom/htc/sunny2/slideshow/SlideAnimator$AnimatorListener;

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->mAnimatorListener:Lcom/htc/sunny2/slideshow/SlideAnimator$AnimatorListener;

    const/4 v8, 0x4

    invoke-interface {v7, p0, v8}, Lcom/htc/sunny2/slideshow/SlideAnimator$AnimatorListener;->onAnimatorStatusChange(Lcom/htc/sunny2/slideshow/SlideAnimator;I)V

    .line 329
    :cond_9
    invoke-virtual {p0}, Lcom/htc/sunny2/slideshow/SlideAnimator;->pauseAnimator()V

    .line 330
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 338
    :cond_a
    const/4 v7, 0x4

    iput v7, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->mPlayStatus:I

    .line 341
    const/4 v7, 0x0

    goto/16 :goto_0
.end method

.method public onRemovedFromScene()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    .line 164
    iget v0, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->sunnySprite:I

    if-eqz v0, :cond_2

    .line 166
    iget-boolean v0, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->bKeppScrenn:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->sunnySprite:I

    invoke-static {v0, v1, v1, v1}, Lcom/htc/sunny2/Sunny2;->Sprite_SetTexture(IIII)Z

    .line 167
    :cond_0
    iget-boolean v0, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->bKeppScrenn:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->sunnySprite:I

    invoke-static {v0, v2, v2, v2}, Lcom/htc/sunny2/Sunny2;->SceneNode_SetScale(IFFF)V

    .line 168
    :cond_1
    iput v1, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->sunnySprite:I

    .line 170
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->scene:Lcom/htc/sunny2/slideshow/SlideshowScene;

    .line 171
    return-void
.end method

.method public onRemovedIRT()V
    .locals 2

    .prologue
    .line 351
    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->scene:Lcom/htc/sunny2/slideshow/SlideshowScene;

    iget-boolean v1, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->bKeppScrenn:Z

    invoke-virtual {v0, p0, v1}, Lcom/htc/sunny2/slideshow/SlideshowScene;->onSlideFinish(Lcom/htc/sunny2/slideshow/SlideAnimator;Z)V

    .line 352
    return-void
.end method

.method public pauseAnimator()V
    .locals 4

    .prologue
    const/4 v3, 0x5

    .line 193
    iget v0, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->mPlayStatus:I

    if-ne v0, v3, :cond_0

    .line 201
    :goto_0
    return-void

    .line 195
    :cond_0
    const-string v0, "SlideAnimator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KA>>> Animator Animator["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->mIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]: pauseAnimator()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->bIsPause:Z

    .line 198
    iget v0, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->mPlayStatus:I

    iput v0, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->mTempPlayStatus:I

    .line 199
    iput v3, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->mPlayStatus:I

    .line 200
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->timePause:J

    goto :goto_0
.end method

.method public abstract recycle()V
.end method

.method public resumeAnimator()V
    .locals 6

    .prologue
    .line 205
    iget v2, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->mPlayStatus:I

    const/4 v3, 0x5

    if-eq v2, v3, :cond_0

    .line 214
    :goto_0
    return-void

    .line 207
    :cond_0
    const-string v2, "SlideAnimator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KA>>> Animator Animator["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->mIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]: resumeAnimator()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->bIsPause:Z

    .line 210
    iget v2, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->mTempPlayStatus:I

    iput v2, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->mPlayStatus:I

    .line 211
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->timePause:J

    sub-long v0, v2, v4

    .line 213
    .local v0, timePauseDuration:J
    iget-wide v2, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->firstFrameTimeMillis:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->firstFrameTimeMillis:J

    goto :goto_0
.end method

.method public setDurations(III)V
    .locals 0
    .parameter "phaseInDuration"
    .parameter "mainDuration"
    .parameter "phaseOutDuration"

    .prologue
    .line 97
    iput p1, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->phaseInDuration:I

    .line 98
    iput p2, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->mainDuration:I

    .line 99
    iput p3, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->phaseOutDuration:I

    .line 100
    return-void
.end method

.method public setImageAlpha(F)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 188
    iget v0, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->sunnySprite:I

    invoke-static {v0, p1}, Lcom/htc/sunny2/Sunny2;->SceneNode_SetGroupAlpha(IF)V

    .line 189
    return-void
.end method

.method public setImageCenterPosition(FF)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 178
    iget v0, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->sunnySprite:I

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Lcom/htc/sunny2/Sunny2;->SceneNode_SetPosition(IFFF)V

    .line 179
    return-void
.end method

.method public setImageSize(FF)V
    .locals 2
    .parameter "width"
    .parameter "height"

    .prologue
    .line 183
    iget v0, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->sunnySprite:I

    const/high16 v1, 0x3f80

    invoke-static {v0, p1, p2, v1}, Lcom/htc/sunny2/Sunny2;->SceneNode_SetScale(IFFF)V

    .line 184
    return-void
.end method

.method public setLatest(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 111
    iput-boolean p1, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->mFlagLatest:Z

    .line 112
    return-void
.end method

.method public setListener(Lcom/htc/sunny2/slideshow/SlideAnimator$AnimatorListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 104
    if-nez p1, :cond_0

    .line 107
    :goto_0
    return-void

    .line 106
    :cond_0
    iput-object p1, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->mAnimatorListener:Lcom/htc/sunny2/slideshow/SlideAnimator$AnimatorListener;

    goto :goto_0
.end method

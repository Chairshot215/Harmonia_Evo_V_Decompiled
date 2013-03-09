.class public Lcom/htc/android/rosie/home/fxcontrol/UnlockAnimator;
.super Ljava/lang/Object;
.source "UnlockAnimator.java"

# interfaces
.implements Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$IUnlockAnimator;


# static fields
.field private static final ANIMATION_DELAY_FRAMES:I = 0x0

.field private static final IS_NEED_UNLOCK_ANIMATION:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "UnlockAnimator"


# instance fields
.field private mAnimationMarkerNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

.field private mPageSlideControl:Lcom/htc/fusion/fx/FxTimelineControl;


# direct methods
.method public constructor <init>(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;Lcom/htc/fusion/fx/FxTimelineControl;)V
    .locals 3
    .parameter "fxWorkspace"
    .parameter "pageSlideControl"

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/UnlockAnimator;->mAnimationMarkerNames:Ljava/util/List;

    .line 22
    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/UnlockAnimator;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    .line 23
    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/UnlockAnimator;->mPageSlideControl:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 27
    iput-object p1, p0, Lcom/htc/android/rosie/home/fxcontrol/UnlockAnimator;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    .line 28
    iput-object p2, p0, Lcom/htc/android/rosie/home/fxcontrol/UnlockAnimator;->mPageSlideControl:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/UnlockAnimator;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    invoke-virtual {v1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060015

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/UnlockAnimator;->mAnimationMarkerNames:Ljava/util/List;

    .line 33
    return-void
.end method


# virtual methods
.method public isUnlockAnimation(Lcom/htc/fusion/fx/FxPlaybackInfo;)Z
    .locals 2
    .parameter "fxPlaybackInfo"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/UnlockAnimator;->mAnimationMarkerNames:Ljava/util/List;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 90
    :cond_0
    const/4 v0, 0x0

    .line 91
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/UnlockAnimator;->mAnimationMarkerNames:Ljava/util/List;

    iget-object v1, p1, Lcom/htc/fusion/fx/FxPlaybackInfo;->name:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public prepareAnimation()V
    .locals 6

    .prologue
    .line 96
    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/UnlockAnimator;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    if-eqz v3, :cond_0

    .line 99
    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/UnlockAnimator;->mAnimationMarkerNames:Ljava/util/List;

    if-nez v3, :cond_1

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/UnlockAnimator;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    invoke-virtual {v3}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->getCurrentScreen()I

    move-result v0

    .line 103
    .local v0, currentScreen:I
    if-ltz v0, :cond_0

    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/UnlockAnimator;->mAnimationMarkerNames:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 106
    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/UnlockAnimator;->mAnimationMarkerNames:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 107
    .local v2, name:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/UnlockAnimator;->mPageSlideControl:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v3, :cond_0

    .line 108
    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/UnlockAnimator;->mPageSlideControl:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v3, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v1

    .line 109
    .local v1, m:Lcom/htc/fusion/fx/Marker;
    if-eqz v1, :cond_2

    .line 110
    const-string v3, "UnlockAnimator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setFrame: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/UnlockAnimator;->mPageSlideControl:Lcom/htc/fusion/fx/FxTimelineControl;

    iget v4, v1, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    goto :goto_0

    .line 114
    :cond_2
    const-string v3, "UnlockAnimator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " marker not found "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startAnimation()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 36
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/UnlockAnimator;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/UnlockAnimator;->mAnimationMarkerNames:Ljava/util/List;

    if-nez v0, :cond_1

    .line 60
    :cond_0
    :goto_0
    return-void

    .line 42
    :cond_1
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/UnlockAnimator;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->getCurrentScreen()I

    move-result v6

    .line 43
    .local v6, currentScreen:I
    if-ltz v6, :cond_0

    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/UnlockAnimator;->mAnimationMarkerNames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v6, v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/UnlockAnimator;->mAnimationMarkerNames:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 47
    .local v1, name:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/UnlockAnimator;->mPageSlideControl:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/UnlockAnimator;->mPageSlideControl:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v7

    .line 49
    .local v7, m:Lcom/htc/fusion/fx/Marker;
    if-eqz v7, :cond_2

    .line 50
    const-string v0, "UnlockAnimator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "playMarker: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/UnlockAnimator;->mPageSlideControl:Lcom/htc/fusion/fx/FxTimelineControl;

    const/high16 v3, 0x3f80

    const/4 v4, 0x1

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;IFZI)V

    goto :goto_0

    .line 57
    :cond_2
    const-string v0, "UnlockAnimator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " marker not found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public stopAnimation()V
    .locals 6

    .prologue
    .line 63
    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/UnlockAnimator;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    if-eqz v3, :cond_0

    .line 66
    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/UnlockAnimator;->mAnimationMarkerNames:Ljava/util/List;

    if-nez v3, :cond_1

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/UnlockAnimator;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    invoke-virtual {v3}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->getCurrentScreen()I

    move-result v0

    .line 70
    .local v0, currentScreen:I
    if-ltz v0, :cond_0

    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/UnlockAnimator;->mAnimationMarkerNames:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 73
    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/UnlockAnimator;->mAnimationMarkerNames:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 74
    .local v2, name:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/UnlockAnimator;->mPageSlideControl:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v3, :cond_0

    .line 75
    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/UnlockAnimator;->mPageSlideControl:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v3, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v1

    .line 76
    .local v1, m:Lcom/htc/fusion/fx/Marker;
    if-eqz v1, :cond_2

    .line 77
    const-string v3, "UnlockAnimator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stop Marker: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/UnlockAnimator;->mPageSlideControl:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v3}, Lcom/htc/fusion/fx/FxTimelineControl;->stop()V

    goto :goto_0

    .line 83
    :cond_2
    const-string v3, "UnlockAnimator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " marker not found "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

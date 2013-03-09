.class public Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl;
.super Ljava/lang/Object;
.source "PageSlideControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl$Direction;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PageSlideControl"

.field static final SPIN_DELAY_FRAMES:I = 0xa


# instance fields
.field public localLOGD:Z

.field private mFxPageSlide:Lcom/htc/fusion/fx/FxTimelineControl;

.field private mScrollBarControl:Lcom/htc/fusion/fx/FxTimelineControl;

.field private mScrollbarAnimator:Lcom/htc/android/rosie/home/fxcontrol/SlideAnimator;

.field private mSlideAnimator:Lcom/htc/android/rosie/home/fxcontrol/SlideAnimator;

.field private mUnlockAnimListener:Lcom/htc/fusion/fx/MessageListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/fusion/fx/MessageListener",
            "<",
            "Lcom/htc/fusion/fx/FxPlaybackInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mUnlockAnimationListener:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$IUnlockAnimationListener;

.field private mUnlockAnimator:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$IUnlockAnimator;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;Lcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/fusion/fx/FxTimelineControl;Landroid/content/res/Resources;Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$IUnlockAnimator;Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$IUnlockAnimationListener;)V
    .locals 3
    .parameter "activity"
    .parameter "fxWorkspace"
    .parameter "pageSlideControl"
    .parameter "scrollBarControl"
    .parameter "res"
    .parameter "unlockAnimator"
    .parameter "ulockAnimationListener"

    .prologue
    const/4 v2, 0x7

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    sget-boolean v0, Lcom/htc/launcher/settings/SettingUtil;->localLOGD:Z

    iput-boolean v0, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl;->localLOGD:Z

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl;->mUnlockAnimator:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$IUnlockAnimator;

    .line 169
    new-instance v0, Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl$1;

    invoke-direct {v0, p0}, Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl$1;-><init>(Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl;)V

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl;->mUnlockAnimListener:Lcom/htc/fusion/fx/MessageListener;

    .line 39
    iput-object p3, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl;->mFxPageSlide:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 40
    iput-object p4, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl;->mScrollBarControl:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 41
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl;->mScrollBarControl:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl;->mScrollBarControl:Lcom/htc/fusion/fx/FxTimelineControl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 43
    :cond_0
    iput-object p6, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl;->mUnlockAnimator:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$IUnlockAnimator;

    .line 44
    iput-object p7, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl;->mUnlockAnimationListener:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$IUnlockAnimationListener;

    .line 47
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->isTabletDevice()Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/htc/launcher/settings/SettingUtil;->sIsRingSlide:Z

    if-eqz v0, :cond_2

    .line 48
    :cond_1
    new-instance v0, Lcom/htc/android/rosie/home/fxcontrol/RingSlideAnimator;

    invoke-direct {v0, p2, p3, v2}, Lcom/htc/android/rosie/home/fxcontrol/RingSlideAnimator;-><init>(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;Lcom/htc/fusion/fx/FxTimelineControl;I)V

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl;->mSlideAnimator:Lcom/htc/android/rosie/home/fxcontrol/SlideAnimator;

    .line 53
    :goto_0
    new-instance v0, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator;

    invoke-static {}, Lcom/htc/launcher/PagesManager;->instance()Lcom/htc/launcher/PagesManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/launcher/PagesManager;->getCurrentPagesCount()I

    move-result v1

    invoke-direct {v0, p2, p4, v1}, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator;-><init>(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;Lcom/htc/fusion/fx/FxTimelineControl;I)V

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl;->mScrollbarAnimator:Lcom/htc/android/rosie/home/fxcontrol/SlideAnimator;

    .line 55
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl;->mFxPageSlide:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->getPlaybackCompleteSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/fusion/fx/IMessageSource;->unbindAll()V

    .line 56
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl;->mFxPageSlide:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->getPlaybackCompleteSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl;->mUnlockAnimListener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v0, v1}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 57
    return-void

    .line 50
    :cond_2
    new-instance v0, Lcom/htc/android/rosie/home/fxcontrol/PageSlideAnimator;

    invoke-direct {v0, p2, p3, v2}, Lcom/htc/android/rosie/home/fxcontrol/PageSlideAnimator;-><init>(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;Lcom/htc/fusion/fx/FxTimelineControl;I)V

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl;->mSlideAnimator:Lcom/htc/android/rosie/home/fxcontrol/SlideAnimator;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl;)Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$IUnlockAnimator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl;->mUnlockAnimator:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$IUnlockAnimator;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl;)Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$IUnlockAnimationListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl;->mUnlockAnimationListener:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$IUnlockAnimationListener;

    return-object v0
.end method


# virtual methods
.method public initFrame()V
    .locals 4

    .prologue
    .line 155
    iget-boolean v1, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl;->localLOGD:Z

    if-eqz v1, :cond_0

    const-string v1, "PageSlideControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Workspace.getDefaultScreenIndex():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/htc/launcher/Workspace;->getDefaultScreenIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_0
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl;->mSlideAnimator:Lcom/htc/android/rosie/home/fxcontrol/SlideAnimator;

    invoke-static {}, Lcom/htc/launcher/Workspace;->getDefaultScreenIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/android/rosie/home/fxcontrol/SlideAnimator;->getInitialFrame(I)F

    move-result v0

    .line 157
    .local v0, frame:F
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl;->mFxPageSlide:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v1, v0}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 158
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl;->mScrollBarControl:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v1, :cond_1

    .line 159
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->isDoubleShot()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 160
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl;->mScrollBarControl:Lcom/htc/fusion/fx/FxTimelineControl;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 164
    :goto_0
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl;->mScrollbarAnimator:Lcom/htc/android/rosie/home/fxcontrol/SlideAnimator;

    invoke-static {}, Lcom/htc/launcher/Workspace;->getDefaultScreenIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/android/rosie/home/fxcontrol/SlideAnimator;->getInitialFrame(I)F

    move-result v0

    .line 165
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl;->mScrollBarControl:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v1, v0}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 167
    :cond_1
    return-void

    .line 162
    :cond_2
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl;->mScrollBarControl:Lcom/htc/fusion/fx/FxTimelineControl;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public prepareAnimation()V
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl;->mUnlockAnimator:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$IUnlockAnimator;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl;->mUnlockAnimator:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$IUnlockAnimator;

    invoke-interface {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$IUnlockAnimator;->prepareAnimation()V

    .line 142
    :goto_0
    return-void

    .line 140
    :cond_0
    const-string v0, "PageSlideControl"

    const-string v1, "no animator found"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public screenCountChanged(I)V
    .locals 1
    .parameter "newScreenCount"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl;->mSlideAnimator:Lcom/htc/android/rosie/home/fxcontrol/SlideAnimator;

    invoke-virtual {v0, p1}, Lcom/htc/android/rosie/home/fxcontrol/SlideAnimator;->updateScreenCount(I)V

    .line 146
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl;->mScrollbarAnimator:Lcom/htc/android/rosie/home/fxcontrol/SlideAnimator;

    invoke-virtual {v0, p1}, Lcom/htc/android/rosie/home/fxcontrol/SlideAnimator;->updateScreenCount(I)V

    .line 147
    return-void
.end method

.method public setScrollBarControlVisibility(Z)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 183
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl;->mScrollBarControl:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl;->mScrollBarControl:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0, p1}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 185
    :cond_0
    return-void
.end method

.method public setUnlockAnimationListener(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$IUnlockAnimationListener;)V
    .locals 0
    .parameter "unlockAnimationListener"

    .prologue
    .line 151
    iput-object p1, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl;->mUnlockAnimationListener:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$IUnlockAnimationListener;

    .line 152
    return-void
.end method

.method public slideTo(FILcom/htc/android/rosie/home/fxcontrol/PageSlideControl$Direction;Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$SnapInfo;)V
    .locals 3
    .parameter "scrollX"
    .parameter "screenWidth"
    .parameter "direction"
    .parameter "snapInfo"

    .prologue
    .line 84
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl;->mFxPageSlide:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v1, :cond_0

    .line 85
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl;->mSlideAnimator:Lcom/htc/android/rosie/home/fxcontrol/SlideAnimator;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/htc/android/rosie/home/fxcontrol/SlideAnimator;->scrollXToFrame(FILcom/htc/android/rosie/home/fxcontrol/PageSlideControl$Direction;Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$SnapInfo;)F

    move-result v0

    .line 87
    .local v0, frame:F
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl;->mFxPageSlide:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v1, v0}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 88
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl;->mScrollBarControl:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v1, :cond_0

    .line 89
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->isDoubleShot()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 90
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl;->mScrollBarControl:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v1}, Lcom/htc/fusion/fx/FxTimelineControl;->getFrame()F

    move-result v1

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 91
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl;->mScrollBarControl:Lcom/htc/fusion/fx/FxTimelineControl;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 92
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl;->mScrollBarControl:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v1, v0}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 101
    .end local v0           #frame:F
    :cond_0
    :goto_0
    return-void

    .line 96
    .restart local v0       #frame:F
    :cond_1
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl;->mScrollbarAnimator:Lcom/htc/android/rosie/home/fxcontrol/SlideAnimator;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/htc/android/rosie/home/fxcontrol/SlideAnimator;->scrollXToFrame(FILcom/htc/android/rosie/home/fxcontrol/PageSlideControl$Direction;Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$SnapInfo;)F

    move-result v0

    .line 97
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl;->mScrollBarControl:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v1, v0}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    goto :goto_0
.end method

.method public unlockAnimation()V
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl;->mUnlockAnimator:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$IUnlockAnimator;

    if-eqz v0, :cond_1

    .line 105
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl;->mUnlockAnimationListener:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$IUnlockAnimationListener;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl;->mUnlockAnimationListener:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$IUnlockAnimationListener;

    invoke-interface {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$IUnlockAnimationListener;->onAnimationStart()V

    .line 111
    :goto_0
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl;->mUnlockAnimator:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$IUnlockAnimator;

    invoke-interface {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$IUnlockAnimator;->startAnimation()V

    .line 116
    :goto_1
    return-void

    .line 109
    :cond_0
    const-string v0, "PageSlideControl"

    const-string v1, "no listener"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 114
    :cond_1
    const-string v0, "PageSlideControl"

    const-string v1, "no animator found"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public unlockAnimationStop()V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl;->mUnlockAnimator:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$IUnlockAnimator;

    if-eqz v0, :cond_1

    .line 121
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl;->mUnlockAnimator:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$IUnlockAnimator;

    invoke-interface {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$IUnlockAnimator;->stopAnimation()V

    .line 122
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl;->mUnlockAnimationListener:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$IUnlockAnimationListener;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl;->mUnlockAnimationListener:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$IUnlockAnimationListener;

    invoke-interface {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$IUnlockAnimationListener;->onAnimationEnd()V

    .line 133
    :goto_0
    return-void

    .line 126
    :cond_0
    const-string v0, "PageSlideControl"

    const-string v1, "no listener"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 131
    :cond_1
    const-string v0, "PageSlideControl"

    const-string v1, "no animator found"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

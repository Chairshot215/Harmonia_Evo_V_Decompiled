.class public Lcom/htc/album/addons/slideshow/SlideShowController;
.super Landroid/widget/FrameLayout;
.source "SlideShowController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/addons/slideshow/SlideShowController$ControllerEventListener;
    }
.end annotation


# static fields
.field private static final CONTROL_BAR_SHOW_DURATION:I = 0xbb8

.field protected static final FADE_OUT:I = 0x1

.field public static final GO_BACK_TYPE_DEFAULT:I = 0x0

.field protected static final MSG_FADE_OUT:I = 0x1

.field protected static final MSG_RESET_TO_3D_SBS_STATUS:I = 0x5

.field protected static final MSG_SHOW_PROGRESS:I = 0x2

.field protected static final MSG_UPDATE_BUTTON:I = 0x3

.field protected static final UPDATE_BUTTON:I = 0x3


# instance fields
.field private final TAG:Ljava/lang/String;

.field protected mContext:Landroid/content/Context;

.field private mControlBarFileIndicator:Landroid/widget/TextView;

.field private mControlBarFolder:Landroid/widget/TextView;

.field private mCustomizationCommandBarSlideShow:Lcom/htc/album/addons/slideshow/CustomizationCommandBarSlideShow;

.field protected mDecor:Landroid/view/View;

.field protected mEventListener:Lcom/htc/album/addons/slideshow/SlideShowController$ControllerEventListener;

.field protected mFromXml:Z

.field protected mGoBack:Landroid/widget/ImageButton;

.field mGoBackParams:Landroid/widget/AbsoluteLayout$LayoutParams;

.field private mGoBackType:I

.field protected mHandler:Landroid/os/Handler;

.field private mIsPlaying:Z

.field protected mListenersSet:Z

.field protected mNextButton:Landroid/widget/ImageButton;

.field private mNextListener:Landroid/view/View$OnClickListener;

.field mNextParams:Landroid/widget/AbsoluteLayout$LayoutParams;

.field protected mPauseButton:Landroid/widget/ImageButton;

.field protected mPauseListener:Landroid/view/View$OnClickListener;

.field mPauseParams:Landroid/widget/AbsoluteLayout$LayoutParams;

.field protected mPrevButton:Landroid/widget/ImageButton;

.field private mPrevListener:Landroid/view/View$OnClickListener;

.field mPrevParams:Landroid/widget/AbsoluteLayout$LayoutParams;

.field protected mRoot:Landroid/view/View;

.field protected mSHTouchListener:Landroid/view/View$OnTouchListener;

.field protected mSettingButton:Landroid/widget/ImageButton;

.field private mSettingListener:Landroid/view/View$OnClickListener;

.field mSettingParams:Landroid/widget/AbsoluteLayout$LayoutParams;

.field protected mShowing:Z

.field protected mStopButton:Landroid/widget/ImageButton;

.field private mTitlebar:Landroid/widget/RelativeLayout;

.field protected mWindow:Landroid/view/Window;

.field protected mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 3
    .parameter "context"
    .parameter "goBackType"
    .parameter "isPlaying"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 74
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 26
    const-string v0, "SlideShowController"

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->TAG:Ljava/lang/String;

    .line 28
    iput-boolean v1, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mIsPlaying:Z

    .line 32
    iput-object v2, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mCustomizationCommandBarSlideShow:Lcom/htc/album/addons/slideshow/CustomizationCommandBarSlideShow;

    .line 35
    iput-object v2, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mTitlebar:Landroid/widget/RelativeLayout;

    .line 36
    iput-object v2, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mControlBarFolder:Landroid/widget/TextView;

    .line 37
    iput-object v2, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mControlBarFileIndicator:Landroid/widget/TextView;

    .line 41
    iput v1, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mGoBackType:I

    .line 56
    iput-boolean v1, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mFromXml:Z

    .line 58
    iput-boolean v1, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mShowing:Z

    .line 63
    iput-object v2, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mStopButton:Landroid/widget/ImageButton;

    .line 68
    iput-boolean v1, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mListenersSet:Z

    .line 193
    new-instance v0, Lcom/htc/album/addons/slideshow/SlideShowController$2;

    invoke-direct {v0, p0}, Lcom/htc/album/addons/slideshow/SlideShowController$2;-><init>(Lcom/htc/album/addons/slideshow/SlideShowController;)V

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mSHTouchListener:Landroid/view/View$OnTouchListener;

    .line 341
    new-instance v0, Lcom/htc/album/addons/slideshow/SlideShowController$3;

    invoke-direct {v0, p0}, Lcom/htc/album/addons/slideshow/SlideShowController$3;-><init>(Lcom/htc/album/addons/slideshow/SlideShowController;)V

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mHandler:Landroid/os/Handler;

    .line 454
    new-instance v0, Lcom/htc/album/addons/slideshow/SlideShowController$4;

    invoke-direct {v0, p0}, Lcom/htc/album/addons/slideshow/SlideShowController$4;-><init>(Lcom/htc/album/addons/slideshow/SlideShowController;)V

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mPauseListener:Landroid/view/View$OnClickListener;

    .line 75
    iput-object p1, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mContext:Landroid/content/Context;

    .line 77
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShowController;->initFloatingWindow()V

    .line 79
    iput p2, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mGoBackType:I

    .line 81
    iput-boolean p3, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mIsPlaying:Z

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mShowing:Z

    .line 83
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShowController;->hide()V

    .line 84
    new-instance v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mGoBackParams:Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 85
    new-instance v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mPrevParams:Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 86
    new-instance v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mPauseParams:Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 87
    new-instance v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mNextParams:Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 88
    new-instance v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mSettingParams:Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 91
    return-void
.end method

.method static synthetic access$000(Lcom/htc/album/addons/slideshow/SlideShowController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideShowController;->updatePausePlay()V

    return-void
.end method

.method private setAbolouteLayoutParams(Landroid/widget/AbsoluteLayout$LayoutParams;IIII)Landroid/widget/AbsoluteLayout$LayoutParams;
    .locals 0
    .parameter "params"
    .parameter "width"
    .parameter "height"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 372
    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 373
    iput p3, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 374
    iput p4, p1, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    .line 375
    iput p5, p1, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    .line 376
    return-object p1
.end method

.method private updatePausePlay()V
    .locals 4

    .prologue
    .line 231
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mRoot:Landroid/view/View;

    if-nez v1, :cond_1

    .line 253
    :cond_0
    :goto_0
    return-void

    .line 234
    :cond_1
    iget-boolean v1, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mShowing:Z

    if-eqz v1, :cond_0

    .line 237
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mPauseButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_0

    .line 240
    iget-boolean v1, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mIsPlaying:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 242
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mPauseButton:Landroid/widget/ImageButton;

    const v2, 0x2080915

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 250
    :goto_1
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 251
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 247
    .end local v0           #msg:Landroid/os/Message;
    :cond_2
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mPauseButton:Landroid/widget/ImageButton;

    const v2, 0x2080927

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_1
.end method


# virtual methods
.method public IsPlaying()Z
    .locals 1

    .prologue
    .line 401
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mIsPlaying:Z

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    const/16 v5, 0x4f

    const/16 v4, 0x3e

    const/4 v1, 0x0

    .line 384
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 385
    .local v0, keyCode:I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    if-eq v0, v5, :cond_0

    if-ne v0, v4, :cond_1

    .line 397
    :cond_0
    :goto_0
    return v1

    .line 391
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    if-eq v0, v5, :cond_0

    if-eq v0, v4, :cond_0

    .line 397
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public doPause()V
    .locals 2

    .prologue
    .line 257
    const-string v0, "SlideShowController"

    const-string v1, "[HTCAlbum][SlideShowController][doPause]: Begin"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mIsPlaying:Z

    if-eqz v0, :cond_0

    .line 260
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mIsPlaying:Z

    .line 261
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mEventListener:Lcom/htc/album/addons/slideshow/SlideShowController$ControllerEventListener;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mEventListener:Lcom/htc/album/addons/slideshow/SlideShowController$ControllerEventListener;

    invoke-interface {v0}, Lcom/htc/album/addons/slideshow/SlideShowController$ControllerEventListener;->onPauseTarget()V

    .line 264
    :cond_0
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideShowController;->updatePausePlay()V

    .line 265
    const-string v0, "SlideShowController"

    const-string v1, "[HTCAlbum][SlideShowController][doPause]: End"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    return-void
.end method

.method protected doPauseResume()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 308
    const-string v0, "SlideShowController"

    const-string v3, "[HTCAlbum][SlideShowController][doPauseResume]: Begin"

    invoke-static {v0, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    const-string v3, "SlideShowController"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][SlideShowController][doPauseResume]: state Change: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v4, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mIsPlaying:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " -> "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mIsPlaying:Z

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mIsPlaying:Z

    if-eqz v0, :cond_2

    .line 316
    iput-boolean v2, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mIsPlaying:Z

    .line 318
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mEventListener:Lcom/htc/album/addons/slideshow/SlideShowController$ControllerEventListener;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mEventListener:Lcom/htc/album/addons/slideshow/SlideShowController$ControllerEventListener;

    invoke-interface {v0}, Lcom/htc/album/addons/slideshow/SlideShowController$ControllerEventListener;->onPauseTarget()V

    .line 337
    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideShowController;->updatePausePlay()V

    .line 338
    const-string v0, "SlideShowController"

    const-string v1, "[HTCAlbum][SlideShowController][doPauseResume]: End"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    return-void

    :cond_1
    move v0, v2

    .line 309
    goto :goto_0

    .line 331
    :cond_2
    iput-boolean v1, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mIsPlaying:Z

    .line 332
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mEventListener:Lcom/htc/album/addons/slideshow/SlideShowController$ControllerEventListener;

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mEventListener:Lcom/htc/album/addons/slideshow/SlideShowController$ControllerEventListener;

    invoke-interface {v0}, Lcom/htc/album/addons/slideshow/SlideShowController$ControllerEventListener;->onPlayTarget()Z

    goto :goto_1
.end method

.method public doPlay(Z)V
    .locals 2
    .parameter "doCallback"

    .prologue
    .line 270
    const-string v0, "SlideShowController"

    const-string v1, "[HTCAlbum][SlideShowController][doPlay]: Begin"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mIsPlaying:Z

    if-nez v0, :cond_0

    .line 273
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mIsPlaying:Z

    .line 274
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mEventListener:Lcom/htc/album/addons/slideshow/SlideShowController$ControllerEventListener;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 275
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mEventListener:Lcom/htc/album/addons/slideshow/SlideShowController$ControllerEventListener;

    invoke-interface {v0}, Lcom/htc/album/addons/slideshow/SlideShowController$ControllerEventListener;->onPlayTarget()Z

    .line 277
    :cond_0
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideShowController;->updatePausePlay()V

    .line 278
    const-string v0, "SlideShowController"

    const-string v1, "[HTCAlbum][SlideShowController][doPlay]: End"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    return-void
.end method

.method public enableNextBtn(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 286
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 287
    return-void
.end method

.method public enablePrevBtn(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 282
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mPrevButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 283
    return-void
.end method

.method public enableSettingBtn(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 290
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mSettingButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 291
    return-void
.end method

.method public hide()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 295
    iget-boolean v1, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mShowing:Z

    if-eqz v1, :cond_0

    .line 297
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 298
    .local v0, anim:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 299
    invoke-virtual {p0, v0}, Lcom/htc/album/addons/slideshow/SlideShowController;->startAnimation(Landroid/view/animation/Animation;)V

    .line 300
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mRoot:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 301
    invoke-virtual {p0, v3}, Lcom/htc/album/addons/slideshow/SlideShowController;->setTitlebarShow(Z)V

    .line 302
    iput-boolean v3, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mShowing:Z

    .line 304
    .end local v0           #anim:Landroid/view/animation/AlphaAnimation;
    :cond_0
    return-void
.end method

.method protected initControllerView(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/16 v2, 0x8

    .line 133
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mCustomizationCommandBarSlideShow:Lcom/htc/album/addons/slideshow/CustomizationCommandBarSlideShow;

    if-nez v0, :cond_0

    .line 135
    new-instance v0, Lcom/htc/album/addons/slideshow/CustomizationCommandBarSlideShow;

    invoke-direct {v0}, Lcom/htc/album/addons/slideshow/CustomizationCommandBarSlideShow;-><init>()V

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mCustomizationCommandBarSlideShow:Lcom/htc/album/addons/slideshow/CustomizationCommandBarSlideShow;

    .line 136
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mCustomizationCommandBarSlideShow:Lcom/htc/album/addons/slideshow/CustomizationCommandBarSlideShow;

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mRoot:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/htc/album/addons/slideshow/CustomizationCommandBarSlideShow;->setResource(Landroid/view/View;)V

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mCustomizationCommandBarSlideShow:Lcom/htc/album/addons/slideshow/CustomizationCommandBarSlideShow;

    invoke-virtual {v0}, Lcom/htc/album/addons/slideshow/CustomizationCommandBarSlideShow;->getResourceId_Back()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mGoBack:Landroid/widget/ImageButton;

    .line 140
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mGoBack:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 143
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mGoBack:Landroid/widget/ImageButton;

    const v1, 0x2080886

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 144
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mGoBack:Landroid/widget/ImageButton;

    new-instance v1, Lcom/htc/album/addons/slideshow/SlideShowController$1;

    invoke-direct {v1, p0}, Lcom/htc/album/addons/slideshow/SlideShowController$1;-><init>(Lcom/htc/album/addons/slideshow/SlideShowController;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    :cond_1
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mCustomizationCommandBarSlideShow:Lcom/htc/album/addons/slideshow/CustomizationCommandBarSlideShow;

    invoke-virtual {v0}, Lcom/htc/album/addons/slideshow/CustomizationCommandBarSlideShow;->getResourceId_Previous()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mPrevButton:Landroid/widget/ImageButton;

    .line 157
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mPrevButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mFromXml:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mListenersSet:Z

    if-nez v0, :cond_2

    .line 160
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mPrevButton:Landroid/widget/ImageButton;

    const v1, 0x208092e

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 161
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mPrevButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 164
    :cond_2
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mCustomizationCommandBarSlideShow:Lcom/htc/album/addons/slideshow/CustomizationCommandBarSlideShow;

    invoke-virtual {v0}, Lcom/htc/album/addons/slideshow/CustomizationCommandBarSlideShow;->getResourceId_PlayPause()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mPauseButton:Landroid/widget/ImageButton;

    .line 165
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mPauseButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_3

    .line 167
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mPauseButton:Landroid/widget/ImageButton;

    const v1, 0x2080915

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 168
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->requestFocus()Z

    .line 169
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mPauseButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mPauseListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    :cond_3
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mCustomizationCommandBarSlideShow:Lcom/htc/album/addons/slideshow/CustomizationCommandBarSlideShow;

    invoke-virtual {v0}, Lcom/htc/album/addons/slideshow/CustomizationCommandBarSlideShow;->getResourceId_Next()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mNextButton:Landroid/widget/ImageButton;

    .line 173
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mNextButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mFromXml:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mListenersSet:Z

    if-nez v0, :cond_4

    .line 176
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mNextButton:Landroid/widget/ImageButton;

    const v1, 0x2080907

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 177
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 180
    :cond_4
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mCustomizationCommandBarSlideShow:Lcom/htc/album/addons/slideshow/CustomizationCommandBarSlideShow;

    invoke-virtual {v0}, Lcom/htc/album/addons/slideshow/CustomizationCommandBarSlideShow;->getResourceId_Setting()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mSettingButton:Landroid/widget/ImageButton;

    .line 181
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mSettingButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_5

    .line 183
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mSettingButton:Landroid/widget/ImageButton;

    const v1, 0x208095f

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 184
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mSettingButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 187
    :cond_5
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mCustomizationCommandBarSlideShow:Lcom/htc/album/addons/slideshow/CustomizationCommandBarSlideShow;

    invoke-virtual {v0}, Lcom/htc/album/addons/slideshow/CustomizationCommandBarSlideShow;->doCustomize()V

    .line 189
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShowController;->installPrevNextListeners()V

    .line 190
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShowController;->installSettingListeners()V

    .line 191
    return-void
.end method

.method protected initFloatingWindow()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 116
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mWindowManager:Landroid/view/WindowManager;

    .line 117
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 118
    .local v0, inflate:Landroid/view/LayoutInflater;
    const v1, 0x7f030036

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mRoot:Landroid/view/View;

    .line 119
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mRoot:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/htc/album/addons/slideshow/SlideShowController;->initControllerView(Landroid/view/View;)V

    .line 121
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mRoot:Landroid/view/View;

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mSHTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 122
    invoke-virtual {p0, v3}, Lcom/htc/album/addons/slideshow/SlideShowController;->setFocusable(Z)V

    .line 123
    invoke-virtual {p0, v3}, Lcom/htc/album/addons/slideshow/SlideShowController;->setFocusableInTouchMode(Z)V

    .line 124
    const/high16 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/htc/album/addons/slideshow/SlideShowController;->setDescendantFocusability(I)V

    .line 125
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShowController;->requestFocus()Z

    .line 126
    iput-boolean v3, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mIsPlaying:Z

    .line 129
    return-void
.end method

.method public initTitlebar(Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/TextView;)Z
    .locals 3
    .parameter "root"
    .parameter "textview_foldername"
    .parameter "textview_file"

    .prologue
    const/4 v0, 0x0

    .line 95
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 97
    :cond_0
    const-string v1, "SlideShowController"

    const-string v2, "[HTCAlbum][SlideShowController][initTitlebar]: initTitlebar NG !"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    :goto_0
    return v0

    .line 101
    :cond_1
    iput-object p1, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mTitlebar:Landroid/widget/RelativeLayout;

    .line 102
    iput-object p2, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mControlBarFolder:Landroid/widget/TextView;

    .line 103
    iput-object p3, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mControlBarFileIndicator:Landroid/widget/TextView;

    .line 105
    invoke-virtual {p0, v0}, Lcom/htc/album/addons/slideshow/SlideShowController;->setTitlebarShow(Z)V

    .line 107
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected installPrevNextListeners()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 467
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mNextButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 469
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mNextButton:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mNextListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 470
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mNextButton:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mNextListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 473
    :cond_0
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mPrevButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 475
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mPrevButton:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mPrevListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 476
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mPrevButton:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mPrevListener:Landroid/view/View$OnClickListener;

    if-eqz v3, :cond_3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 478
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 470
    goto :goto_0

    :cond_3
    move v1, v2

    .line 476
    goto :goto_1
.end method

.method protected installSettingListeners()V
    .locals 2

    .prologue
    .line 482
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mSettingButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 484
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mSettingButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mSettingListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 485
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mSettingButton:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mSettingListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 487
    :cond_0
    return-void

    .line 485
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public relayoutByOrientation(I)V
    .locals 0
    .parameter "nOrientation"

    .prologue
    .line 369
    return-void
.end method

.method public setControllerEventListener(Lcom/htc/album/addons/slideshow/SlideShowController$ControllerEventListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 526
    iput-object p1, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mEventListener:Lcom/htc/album/addons/slideshow/SlideShowController$ControllerEventListener;

    .line 527
    return-void
.end method

.method public setPrevNextListeners(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .locals 2
    .parameter "next"
    .parameter "prev"

    .prologue
    const/4 v1, 0x0

    .line 491
    iput-object p1, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mNextListener:Landroid/view/View$OnClickListener;

    .line 492
    iput-object p2, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mPrevListener:Landroid/view/View$OnClickListener;

    .line 493
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mListenersSet:Z

    .line 495
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mRoot:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 497
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShowController;->installPrevNextListeners()V

    .line 499
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mNextButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mFromXml:Z

    if-nez v0, :cond_0

    .line 501
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 503
    :cond_0
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mPrevButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mFromXml:Z

    if-nez v0, :cond_1

    .line 505
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mPrevButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 508
    :cond_1
    return-void
.end method

.method public setSettingBtnListeners(Landroid/view/View$OnClickListener;)V
    .locals 2
    .parameter "settingLis"

    .prologue
    .line 512
    iput-object p1, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mSettingListener:Landroid/view/View$OnClickListener;

    .line 514
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mRoot:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 516
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShowController;->installSettingListeners()V

    .line 518
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mSettingButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mFromXml:Z

    if-nez v0, :cond_0

    .line 520
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mSettingButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 523
    :cond_0
    return-void
.end method

.method public setTitlebarFileIndicator(Ljava/lang/String;)Z
    .locals 2
    .parameter "strFolder"

    .prologue
    .line 419
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mControlBarFileIndicator:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 421
    :cond_0
    const-string v0, "SlideShowController"

    const-string v1, "[HTCAlbum][SlideShowController][setTitlebarFileIndicator]: setTitlebarFileIndicator NG !"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    const/4 v0, 0x0

    .line 427
    :goto_0
    return v0

    .line 425
    :cond_1
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mControlBarFileIndicator:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 427
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setTitlebarFolderName(Ljava/lang/String;)Z
    .locals 2
    .parameter "strFolder"

    .prologue
    .line 406
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mControlBarFolder:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 408
    :cond_0
    const-string v0, "SlideShowController"

    const-string v1, "[HTCAlbum][SlideShowController][setTitlebarFolderName]: setTitlebarFolderName NG !"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    const/4 v0, 0x0

    .line 414
    :goto_0
    return v0

    .line 412
    :cond_1
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mControlBarFolder:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 414
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setTitlebarShow(Z)V
    .locals 3
    .parameter "value"

    .prologue
    .line 432
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mTitlebar:Landroid/widget/RelativeLayout;

    if-nez v1, :cond_0

    .line 434
    const-string v1, "SlideShowController"

    const-string v2, "[HTCAlbum][SlideShowController][setTitlebarShow]: setTitlebarShow NG !"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    :goto_0
    return-void

    .line 439
    :cond_0
    if-eqz p1, :cond_1

    .line 441
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mTitlebar:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 445
    :cond_1
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 446
    .local v0, anim:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 447
    invoke-virtual {p0, v0}, Lcom/htc/album/addons/slideshow/SlideShowController;->startAnimation(Landroid/view/animation/Animation;)V

    .line 448
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mTitlebar:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 449
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mTitlebar:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public show()V
    .locals 1

    .prologue
    .line 209
    const/16 v0, 0xbb8

    invoke-virtual {p0, v0}, Lcom/htc/album/addons/slideshow/SlideShowController;->show(I)V

    .line 210
    return-void
.end method

.method public show(I)V
    .locals 4
    .parameter "timeout"

    .prologue
    const/4 v3, 0x1

    .line 214
    iget-boolean v1, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mShowing:Z

    if-nez v1, :cond_0

    .line 215
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mRoot:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 216
    invoke-virtual {p0, v3}, Lcom/htc/album/addons/slideshow/SlideShowController;->setTitlebarShow(Z)V

    .line 217
    iput-boolean v3, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mShowing:Z

    .line 219
    :cond_0
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideShowController;->updatePausePlay()V

    .line 221
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 222
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 223
    if-eqz p1, :cond_1

    .line 224
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mHandler:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 226
    :cond_1
    return-void
.end method

.method public updateController()V
    .locals 1

    .prologue
    .line 358
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mShowing:Z

    if-eqz v0, :cond_0

    .line 359
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShowController;->hide()V

    .line 364
    :goto_0
    return-void

    .line 362
    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShowController;->show()V

    goto :goto_0
.end method

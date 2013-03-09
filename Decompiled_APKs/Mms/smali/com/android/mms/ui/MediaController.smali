.class public Lcom/android/mms/ui/MediaController;
.super Landroid/widget/FrameLayout;
.source "MediaController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/MediaController$MediaPlayerControl;
    }
.end annotation


# static fields
.field private static final FADE_OUT:I = 0x1

.field private static final SHOW_PROGRESS:I = 0x2

.field private static final TAG:Ljava/lang/String; = "MediaController"

.field private static final sDefaultTimeout:I = 0xbb8


# instance fields
.field private mContext:Landroid/content/Context;

.field private mExtractButton:Lcom/htc/widget/HtcFooterButton;

.field private mExtractListener:Landroid/view/View$OnClickListener;

.field mFormatBuilder:Ljava/lang/StringBuilder;

.field mFormatter:Ljava/util/Formatter;

.field private mFromXml:Z

.field private mHandler:Landroid/os/Handler;

.field private mNextButton:Lcom/htc/widget/HtcFooterButton;

.field private mNextListener:Landroid/view/View$OnClickListener;

.field private mPauseButton:Lcom/htc/widget/HtcFooterButton;

.field private mPauseListener:Landroid/view/View$OnClickListener;

.field private mPlayer:Lcom/android/mms/ui/MediaController$MediaPlayerControl;

.field private mPrevButton:Lcom/htc/widget/HtcFooterButton;

.field private mPrevListener:Landroid/view/View$OnClickListener;

.field private mRoot:Landroid/view/View;

.field private mShowing:Z

.field private mUseFastForward:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 126
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 250
    new-instance v0, Lcom/android/mms/ui/MediaController$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MediaController$1;-><init>(Lcom/android/mms/ui/MediaController;)V

    iput-object v0, p0, Lcom/android/mms/ui/MediaController;->mHandler:Landroid/os/Handler;

    .line 306
    new-instance v0, Lcom/android/mms/ui/MediaController$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MediaController$2;-><init>(Lcom/android/mms/ui/MediaController;)V

    iput-object v0, p0, Lcom/android/mms/ui/MediaController;->mPauseListener:Landroid/view/View$OnClickListener;

    .line 127
    iput-object p1, p0, Lcom/android/mms/ui/MediaController;->mContext:Landroid/content/Context;

    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/MediaController;->mUseFastForward:Z

    .line 129
    invoke-direct {p0}, Lcom/android/mms/ui/MediaController;->initFloatingWindow()V

    .line 130
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x1

    .line 105
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 250
    new-instance v0, Lcom/android/mms/ui/MediaController$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MediaController$1;-><init>(Lcom/android/mms/ui/MediaController;)V

    iput-object v0, p0, Lcom/android/mms/ui/MediaController;->mHandler:Landroid/os/Handler;

    .line 306
    new-instance v0, Lcom/android/mms/ui/MediaController$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MediaController$2;-><init>(Lcom/android/mms/ui/MediaController;)V

    iput-object v0, p0, Lcom/android/mms/ui/MediaController;->mPauseListener:Landroid/view/View$OnClickListener;

    .line 106
    iput-object p0, p0, Lcom/android/mms/ui/MediaController;->mRoot:Landroid/view/View;

    .line 107
    iput-object p1, p0, Lcom/android/mms/ui/MediaController;->mContext:Landroid/content/Context;

    .line 108
    iput-boolean v1, p0, Lcom/android/mms/ui/MediaController;->mUseFastForward:Z

    .line 109
    iput-boolean v1, p0, Lcom/android/mms/ui/MediaController;->mFromXml:Z

    .line 110
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1
    .parameter "context"
    .parameter "useFastForward"

    .prologue
    .line 119
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 250
    new-instance v0, Lcom/android/mms/ui/MediaController$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MediaController$1;-><init>(Lcom/android/mms/ui/MediaController;)V

    iput-object v0, p0, Lcom/android/mms/ui/MediaController;->mHandler:Landroid/os/Handler;

    .line 306
    new-instance v0, Lcom/android/mms/ui/MediaController$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MediaController$2;-><init>(Lcom/android/mms/ui/MediaController;)V

    iput-object v0, p0, Lcom/android/mms/ui/MediaController;->mPauseListener:Landroid/view/View$OnClickListener;

    .line 120
    iput-object p1, p0, Lcom/android/mms/ui/MediaController;->mContext:Landroid/content/Context;

    .line 121
    iput-boolean p2, p0, Lcom/android/mms/ui/MediaController;->mUseFastForward:Z

    .line 122
    invoke-direct {p0}, Lcom/android/mms/ui/MediaController;->initFloatingWindow()V

    .line 123
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/MediaController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/mms/ui/MediaController;->doPauseResume()V

    return-void
.end method

.method private doPauseResume()V
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/android/mms/ui/MediaController;->mPlayer:Lcom/android/mms/ui/MediaController$MediaPlayerControl;

    invoke-interface {v0}, Lcom/android/mms/ui/MediaController$MediaPlayerControl;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/android/mms/ui/MediaController;->mPlayer:Lcom/android/mms/ui/MediaController$MediaPlayerControl;

    invoke-interface {v0}, Lcom/android/mms/ui/MediaController$MediaPlayerControl;->pause()V

    .line 334
    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MediaController;->updatePausePlay()V

    .line 335
    return-void

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MediaController;->mPlayer:Lcom/android/mms/ui/MediaController$MediaPlayerControl;

    invoke-interface {v0}, Lcom/android/mms/ui/MediaController$MediaPlayerControl;->start()V

    goto :goto_0
.end method

.method private initControllerView(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 185
    const v0, 0x7f0e005d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcFooterButton;

    iput-object v0, p0, Lcom/android/mms/ui/MediaController;->mPrevButton:Lcom/htc/widget/HtcFooterButton;

    .line 186
    const v0, 0x7f0e005e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcFooterButton;

    iput-object v0, p0, Lcom/android/mms/ui/MediaController;->mPauseButton:Lcom/htc/widget/HtcFooterButton;

    .line 187
    iget-object v0, p0, Lcom/android/mms/ui/MediaController;->mPauseButton:Lcom/htc/widget/HtcFooterButton;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/android/mms/ui/MediaController;->mPauseButton:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v0}, Lcom/htc/widget/HtcFooterButton;->requestFocus()Z

    .line 189
    iget-object v0, p0, Lcom/android/mms/ui/MediaController;->mPauseButton:Lcom/htc/widget/HtcFooterButton;

    iget-object v1, p0, Lcom/android/mms/ui/MediaController;->mPauseListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    :cond_0
    const v0, 0x7f0e005f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcFooterButton;

    iput-object v0, p0, Lcom/android/mms/ui/MediaController;->mNextButton:Lcom/htc/widget/HtcFooterButton;

    .line 192
    const v0, 0x7f0e0060

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcFooterButton;

    iput-object v0, p0, Lcom/android/mms/ui/MediaController;->mExtractButton:Lcom/htc/widget/HtcFooterButton;

    .line 193
    return-void
.end method

.method private initFloatingWindow()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 133
    iget-object v1, p0, Lcom/android/mms/ui/MediaController;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 135
    .local v0, inflate:Landroid/view/LayoutInflater;
    const v1, 0x7f030018

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MediaController;->mRoot:Landroid/view/View;

    .line 136
    iget-object v1, p0, Lcom/android/mms/ui/MediaController;->mRoot:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/android/mms/ui/MediaController;->initControllerView(Landroid/view/View;)V

    .line 137
    iput-boolean v3, p0, Lcom/android/mms/ui/MediaController;->mShowing:Z

    .line 138
    invoke-virtual {p0}, Lcom/android/mms/ui/MediaController;->hide()V

    .line 140
    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MediaController;->setFocusable(Z)V

    .line 141
    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MediaController;->setFocusableInTouchMode(Z)V

    .line 142
    const/high16 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MediaController;->setDescendantFocusability(I)V

    .line 143
    invoke-virtual {p0}, Lcom/android/mms/ui/MediaController;->requestFocus()Z

    .line 144
    return-void
.end method

.method private installPrevNextListeners()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 358
    iget-object v0, p0, Lcom/android/mms/ui/MediaController;->mNextButton:Lcom/htc/widget/HtcFooterButton;

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/android/mms/ui/MediaController;->mNextButton:Lcom/htc/widget/HtcFooterButton;

    iget-object v3, p0, Lcom/android/mms/ui/MediaController;->mNextListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 360
    iget-object v3, p0, Lcom/android/mms/ui/MediaController;->mNextButton:Lcom/htc/widget/HtcFooterButton;

    iget-object v0, p0, Lcom/android/mms/ui/MediaController;->mNextListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 363
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MediaController;->mPrevButton:Lcom/htc/widget/HtcFooterButton;

    if-eqz v0, :cond_1

    .line 364
    iget-object v0, p0, Lcom/android/mms/ui/MediaController;->mPrevButton:Lcom/htc/widget/HtcFooterButton;

    iget-object v3, p0, Lcom/android/mms/ui/MediaController;->mPrevListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 365
    iget-object v0, p0, Lcom/android/mms/ui/MediaController;->mPrevButton:Lcom/htc/widget/HtcFooterButton;

    iget-object v3, p0, Lcom/android/mms/ui/MediaController;->mPrevListener:Landroid/view/View$OnClickListener;

    if-eqz v3, :cond_3

    :goto_1
    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 367
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 360
    goto :goto_0

    :cond_3
    move v1, v2

    .line 365
    goto :goto_1
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/16 v2, 0xbb8

    .line 277
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 278
    .local v0, keyCode:I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x4f

    if-eq v0, v1, :cond_0

    const/16 v1, 0x3e

    if-ne v0, v1, :cond_1

    .line 281
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/MediaController;->doPauseResume()V

    .line 282
    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MediaController;->show(I)V

    .line 283
    const/4 v1, 0x1

    .line 303
    :goto_0
    return v1

    .line 284
    :cond_1
    const/16 v1, 0x19

    if-eq v0, v1, :cond_2

    const/16 v1, 0x18

    if-ne v0, v1, :cond_3

    .line 287
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 288
    :cond_3
    const/4 v1, 0x4

    if-ne v0, v1, :cond_5

    .line 289
    invoke-virtual {p0}, Lcom/android/mms/ui/MediaController;->hide()V

    .line 303
    :cond_4
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 294
    :cond_5
    const/16 v1, 0x52

    if-ne v0, v1, :cond_6

    .line 295
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportHWMenuController()Z

    move-result v1

    if-nez v1, :cond_4

    .line 297
    invoke-virtual {p0}, Lcom/android/mms/ui/MediaController;->hide()V

    goto :goto_1

    .line 301
    :cond_6
    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MediaController;->show(I)V

    goto :goto_1
.end method

.method public hide()V
    .locals 3

    .prologue
    .line 231
    iget-boolean v1, p0, Lcom/android/mms/ui/MediaController;->mShowing:Z

    if-eqz v1, :cond_0

    .line 232
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 233
    .local v0, anim:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 234
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MediaController;->startAnimation(Landroid/view/animation/Animation;)V

    .line 235
    iget-object v1, p0, Lcom/android/mms/ui/MediaController;->mRoot:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 236
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/mms/ui/MediaController;->mShowing:Z

    .line 238
    .end local v0           #anim:Landroid/view/animation/AlphaAnimation;
    :cond_0
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 224
    iget-boolean v0, p0, Lcom/android/mms/ui/MediaController;->mShowing:Z

    return v0
.end method

.method public onFinishInflate()V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/mms/ui/MediaController;->mRoot:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/android/mms/ui/MediaController;->mRoot:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MediaController;->initControllerView(Landroid/view/View;)V

    .line 116
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 265
    const/16 v0, 0xbb8

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MediaController;->show(I)V

    .line 266
    const/4 v0, 0x1

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 271
    const/16 v0, 0xbb8

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MediaController;->show(I)V

    .line 272
    const/4 v0, 0x0

    return v0
.end method

.method public setExtractListListeners(Landroid/view/View$OnClickListener;)V
    .locals 2
    .parameter "extract"

    .prologue
    .line 379
    iput-object p1, p0, Lcom/android/mms/ui/MediaController;->mExtractListener:Landroid/view/View$OnClickListener;

    .line 380
    iget-object v0, p0, Lcom/android/mms/ui/MediaController;->mRoot:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/android/mms/ui/MediaController;->mExtractButton:Lcom/htc/widget/HtcFooterButton;

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/android/mms/ui/MediaController;->mExtractButton:Lcom/htc/widget/HtcFooterButton;

    iget-object v1, p0, Lcom/android/mms/ui/MediaController;->mExtractListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 385
    :cond_0
    return-void
.end method

.method public setMediaPlayer(Lcom/android/mms/ui/MediaController$MediaPlayerControl;)V
    .locals 0
    .parameter "player"

    .prologue
    .line 147
    iput-object p1, p0, Lcom/android/mms/ui/MediaController;->mPlayer:Lcom/android/mms/ui/MediaController$MediaPlayerControl;

    .line 148
    invoke-virtual {p0}, Lcom/android/mms/ui/MediaController;->updatePausePlay()V

    .line 149
    return-void
.end method

.method public setPrevNextListeners(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "prev"
    .parameter "next"

    .prologue
    .line 370
    iput-object p2, p0, Lcom/android/mms/ui/MediaController;->mNextListener:Landroid/view/View$OnClickListener;

    .line 371
    iput-object p1, p0, Lcom/android/mms/ui/MediaController;->mPrevListener:Landroid/view/View$OnClickListener;

    .line 373
    iget-object v0, p0, Lcom/android/mms/ui/MediaController;->mRoot:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 374
    invoke-direct {p0}, Lcom/android/mms/ui/MediaController;->installPrevNextListeners()V

    .line 376
    :cond_0
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 200
    const/16 v0, 0xbb8

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MediaController;->show(I)V

    .line 201
    return-void
.end method

.method public show(I)V
    .locals 4
    .parameter "timeout"

    .prologue
    const/4 v3, 0x1

    .line 210
    iget-boolean v1, p0, Lcom/android/mms/ui/MediaController;->mShowing:Z

    if-nez v1, :cond_0

    .line 211
    iget-object v1, p0, Lcom/android/mms/ui/MediaController;->mRoot:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 212
    iput-boolean v3, p0, Lcom/android/mms/ui/MediaController;->mShowing:Z

    .line 214
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MediaController;->updatePausePlay()V

    .line 216
    iget-object v1, p0, Lcom/android/mms/ui/MediaController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 217
    .local v0, msg:Landroid/os/Message;
    if-eqz p1, :cond_1

    .line 218
    iget-object v1, p0, Lcom/android/mms/ui/MediaController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 219
    iget-object v1, p0, Lcom/android/mms/ui/MediaController;->mHandler:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 221
    :cond_1
    return-void
.end method

.method public updateController()V
    .locals 1

    .prologue
    .line 241
    iget-boolean v0, p0, Lcom/android/mms/ui/MediaController;->mShowing:Z

    if-eqz v0, :cond_0

    .line 242
    invoke-virtual {p0}, Lcom/android/mms/ui/MediaController;->hide()V

    .line 247
    :goto_0
    return-void

    .line 245
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MediaController;->show()V

    goto :goto_0
.end method

.method public updatePausePlay()V
    .locals 3

    .prologue
    .line 314
    iget-object v1, p0, Lcom/android/mms/ui/MediaController;->mRoot:Landroid/view/View;

    if-nez v1, :cond_1

    .line 326
    :cond_0
    :goto_0
    return-void

    .line 317
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/MediaController;->mRoot:Landroid/view/View;

    const v2, 0x7f0e005e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcFooterButton;

    .line 318
    .local v0, button:Lcom/htc/widget/HtcFooterButton;
    if-eqz v0, :cond_0

    .line 321
    iget-object v1, p0, Lcom/android/mms/ui/MediaController;->mPlayer:Lcom/android/mms/ui/MediaController$MediaPlayerControl;

    invoke-interface {v1}, Lcom/android/mms/ui/MediaController$MediaPlayerControl;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 322
    const v1, 0x7f020165

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setImageResource(I)V

    goto :goto_0

    .line 324
    :cond_2
    const v1, 0x7f020166

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setImageResource(I)V

    goto :goto_0
.end method

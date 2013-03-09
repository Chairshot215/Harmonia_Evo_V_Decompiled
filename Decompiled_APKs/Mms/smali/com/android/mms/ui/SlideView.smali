.class public Lcom/android/mms/ui/SlideView;
.super Landroid/widget/AbsoluteLayout;
.source "SlideView.java"

# interfaces
.implements Lcom/android/mms/ui/AdaptableSlideViewInterface;


# static fields
.field private static final AUDIO_INFO_HEIGHT:I = 0x20

.field private static final DEBUG:Z = false

.field private static final LOCAL_LOGV:Z = false

.field private static final TAG:Ljava/lang/String; = "SlideView"

.field private static final TEXT_REGION_MIN_HEIGHT_FOR_BUZZ_PORT:I = 0x4b

.field private static final TEXT_REGION_MIN_WIDTH_FOR_BUZZ_LAND:I = 0x50

.field private static final TOTAL_REGION_HEIGHT_FOR_BUZZ_PORT:I = 0x120

.field private static final TOTAL_REGION_WIDTH_FOR_BUZZ_LAND:I = 0x140


# instance fields
.field private mAudioInfoView:Landroid/view/View;

.field private mAudioPlayer:Landroid/media/MediaPlayer;

.field private mBorderView:Landroid/widget/ImageView;

.field private mGifPresenter:Lcom/android/mms/ui/GifPresenter;

.field private mImageView:Lcom/android/mms/ui/GifView;

.field private mIsPrepared:Z

.field private mIsPrepared_Video:Z

.field mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field mPreparedListener_Video:Landroid/media/MediaPlayer$OnPreparedListener;

.field private mScrollText:Landroid/widget/ScrollView;

.field private mSeekWhenPrepared:I

.field private mSizeChangedListener:Lcom/android/mms/ui/AdaptableSlideViewInterface$OnSizeChangedListener;

.field private mStartWhenPrepared:Z

.field private mStopWhenPrepared:Z

.field protected mTextSpan:Landroid/text/SpannableStringBuilder;

.field private mTextView:Landroid/widget/TextView;

.field private mVideoView:Landroid/widget/VideoView;

.field private mVideoViewContainer:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 157
    invoke-direct {p0, p1}, Landroid/widget/AbsoluteLayout;-><init>(Landroid/content/Context;)V

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->mGifPresenter:Lcom/android/mms/ui/GifPresenter;

    .line 102
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->mTextSpan:Landroid/text/SpannableStringBuilder;

    .line 107
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mIsPrepared_Video:Z

    .line 109
    new-instance v0, Lcom/android/mms/ui/SlideView$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideView$1;-><init>(Lcom/android/mms/ui/SlideView;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->mPreparedListener_Video:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 128
    new-instance v0, Lcom/android/mms/ui/SlideView$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideView$2;-><init>(Lcom/android/mms/ui/SlideView;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 158
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 161
    invoke-direct {p0, p1, p2}, Landroid/widget/AbsoluteLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->mGifPresenter:Lcom/android/mms/ui/GifPresenter;

    .line 102
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->mTextSpan:Landroid/text/SpannableStringBuilder;

    .line 107
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mIsPrepared_Video:Z

    .line 109
    new-instance v0, Lcom/android/mms/ui/SlideView$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideView$1;-><init>(Lcom/android/mms/ui/SlideView;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->mPreparedListener_Video:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 128
    new-instance v0, Lcom/android/mms/ui/SlideView$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideView$2;-><init>(Lcom/android/mms/ui/SlideView;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 162
    return-void
.end method

.method static synthetic access$002(Lcom/android/mms/ui/SlideView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/android/mms/ui/SlideView;->mIsPrepared_Video:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/mms/ui/SlideView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/android/mms/ui/SlideView;->mIsPrepared:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/mms/ui/SlideView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget v0, p0, Lcom/android/mms/ui/SlideView;->mSeekWhenPrepared:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/mms/ui/SlideView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput p1, p0, Lcom/android/mms/ui/SlideView;->mSeekWhenPrepared:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/mms/ui/SlideView;)Landroid/media/MediaPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/mms/ui/SlideView;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/mms/ui/SlideView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mStartWhenPrepared:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/mms/ui/SlideView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/android/mms/ui/SlideView;->mStartWhenPrepared:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/mms/ui/SlideView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/mms/ui/SlideView;->stopMusicPlayer()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/mms/ui/SlideView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mStopWhenPrepared:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/mms/ui/SlideView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/android/mms/ui/SlideView;->mStopWhenPrepared:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/mms/ui/SlideView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/mms/ui/SlideView;->displayAudioInfo()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/mms/ui/SlideView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/mms/ui/SlideView;->hideAudioInfo()V

    return-void
.end method

.method private displayAudioInfo()V
    .locals 2

    .prologue
    .line 342
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioInfoView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 344
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x1b

    if-ne v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 347
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioInfoView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 351
    :cond_1
    return-void
.end method

.method private hideAudioInfo()V
    .locals 2

    .prologue
    .line 354
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioInfoView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioInfoView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 357
    :cond_0
    return-void
.end method

.method private initAudioInfoView(Ljava/lang/String;)V
    .locals 9
    .parameter "name"

    .prologue
    .line 316
    iget-object v3, p0, Lcom/android/mms/ui/SlideView;->mAudioInfoView:Landroid/view/View;

    if-nez v3, :cond_0

    .line 317
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 318
    .local v1, factory:Landroid/view/LayoutInflater;
    const v3, 0x7f03002c

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/SlideView;->mAudioInfoView:Landroid/view/View;

    .line 319
    iget-object v3, p0, Lcom/android/mms/ui/SlideView;->mAudioInfoView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 326
    .local v2, height:I
    iget-object v3, p0, Lcom/android/mms/ui/SlideView;->mAudioInfoView:Landroid/view/View;

    new-instance v4, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/4 v5, -0x1

    const/16 v6, 0x20

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/android/mms/ui/SlideView;->getHeight()I

    move-result v8

    add-int/lit8 v8, v8, -0x20

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {p0, v3, v4}, Lcom/android/mms/ui/SlideView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 334
    .end local v1           #factory:Landroid/view/LayoutInflater;
    .end local v2           #height:I
    :cond_0
    iget-object v3, p0, Lcom/android/mms/ui/SlideView;->mAudioInfoView:Landroid/view/View;

    const v4, 0x7f0e00a4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 335
    .local v0, audioName:Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 338
    iget-object v3, p0, Lcom/android/mms/ui/SlideView;->mAudioInfoView:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 339
    return-void
.end method

.method private setBackgroundBlack()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x2

    .line 207
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->mBorderView:Landroid/widget/ImageView;

    .line 208
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mBorderView:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-direct {v1, v3, v3, v2, v2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/SlideView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 210
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mBorderView:Landroid/widget/ImageView;

    const v1, 0x7f0200df

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 211
    return-void
.end method

.method private stopGif()V
    .locals 1

    .prologue
    .line 735
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mGifPresenter:Lcom/android/mms/ui/GifPresenter;

    if-eqz v0, :cond_0

    .line 736
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mGifPresenter:Lcom/android/mms/ui/GifPresenter;

    invoke-virtual {v0}, Lcom/android/mms/ui/GifPresenter;->Pause()V

    .line 737
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mGifPresenter:Lcom/android/mms/ui/GifPresenter;

    invoke-virtual {v0}, Lcom/android/mms/ui/GifPresenter;->FreeResource()V

    .line 738
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->mGifPresenter:Lcom/android/mms/ui/GifPresenter;

    .line 740
    :cond_0
    return-void
.end method

.method private stopMusicPlayer()V
    .locals 3

    .prologue
    .line 118
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 119
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.music.musicservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 120
    .local v0, i:Landroid/content/Intent;
    const-string v1, "command"

    const-string v2, "pause"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 125
    .end local v0           #i:Landroid/content/Intent;
    :cond_0
    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 393
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 798
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsoluteLayout;->onSizeChanged(IIII)V

    .line 800
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mSizeChangedListener:Lcom/android/mms/ui/AdaptableSlideViewInterface$OnSizeChangedListener;

    if-eqz v0, :cond_0

    .line 804
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mSizeChangedListener:Lcom/android/mms/ui/AdaptableSlideViewInterface$OnSizeChangedListener;

    add-int/lit8 v1, p2, -0x20

    invoke-interface {v0, p1, v1}, Lcom/android/mms/ui/AdaptableSlideViewInterface$OnSizeChangedListener;->onSizeChanged(II)V

    .line 806
    :cond_0
    return-void
.end method

.method public pauseAudio()V
    .locals 1

    .prologue
    .line 650
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mIsPrepared:Z

    if-eqz v0, :cond_0

    .line 651
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 652
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 655
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mStartWhenPrepared:Z

    .line 656
    return-void
.end method

.method public pauseImage()V
    .locals 1

    .prologue
    .line 744
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mImageView:Lcom/android/mms/ui/GifView;

    if-eqz v0, :cond_0

    .line 748
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mGifPresenter:Lcom/android/mms/ui/GifPresenter;

    if-eqz v0, :cond_0

    .line 749
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mGifPresenter:Lcom/android/mms/ui/GifPresenter;

    invoke-virtual {v0}, Lcom/android/mms/ui/GifPresenter;->Pause()V

    .line 752
    :cond_0
    return-void
.end method

.method public pauseVideo()V
    .locals 1

    .prologue
    .line 694
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    .line 698
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    .line 700
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 756
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mScrollText:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    .line 757
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mScrollText:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 761
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/SlideView;->stopGif()V

    .line 764
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mImageView:Lcom/android/mms/ui/GifView;

    if-eqz v0, :cond_1

    .line 765
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mImageView:Lcom/android/mms/ui/GifView;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/GifView;->setVisibility(I)V

    .line 768
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mBorderView:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 769
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mBorderView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 772
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_3

    .line 773
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideView;->stopAudio()V

    .line 777
    :cond_3
    iget-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mIsPrepared_Video:Z

    if-eqz v0, :cond_5

    .line 779
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_4

    .line 780
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideView;->stopVideo()V

    .line 781
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVisibility(I)V

    .line 783
    iput-object v2, p0, Lcom/android/mms/ui/SlideView;->mVideoViewContainer:Landroid/widget/LinearLayout;

    .line 784
    iput-object v2, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    .line 790
    :cond_4
    :goto_0
    return-void

    .line 788
    :cond_5
    const-string v0, "SlideView"

    const-string v1, "Don\'t reset video due to MediaPlayer is not prepared"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public seekAudio(I)V
    .locals 1
    .parameter "seekTo"

    .prologue
    .line 659
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mIsPrepared:Z

    if-eqz v0, :cond_0

    .line 660
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 664
    :goto_0
    return-void

    .line 662
    :cond_0
    iput p1, p0, Lcom/android/mms/ui/SlideView;->mSeekWhenPrepared:I

    goto :goto_0
.end method

.method public seekVideo(I)V
    .locals 1
    .parameter "seekTo"

    .prologue
    .line 703
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    .line 704
    if-lez p1, :cond_0

    .line 708
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, p1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 711
    :cond_0
    return-void
.end method

.method public setAudio(Landroid/net/Uri;Ljava/lang/String;ILjava/util/Map;)V
    .locals 4
    .parameter "audio"
    .parameter "name"
    .parameter "size"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .prologue
    .local p4, extras:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    const/4 v3, 0x0

    .line 360
    if-nez p1, :cond_0

    .line 361
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Audio URI may not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 368
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_1

    .line 369
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 371
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 375
    :goto_0
    iput-object v3, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    .line 377
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/mms/ui/SlideView;->mIsPrepared:Z

    .line 380
    :try_start_1
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    .line 381
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 382
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, p1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 383
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 389
    :goto_1
    invoke-direct {p0, p2}, Lcom/android/mms/ui/SlideView;->initAudioInfoView(Ljava/lang/String;)V

    .line 390
    return-void

    .line 372
    :catch_0
    move-exception v0

    .line 373
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "SlideView"

    const-string v2, "IllegalArgumentException. "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 384
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 385
    .local v0, e:Ljava/io/IOException;
    const-string v1, "SlideView"

    const-string v2, "Unexpected IOException."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 386
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 387
    iput-object v3, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    goto :goto_1
.end method

.method public setImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "name"
    .parameter "bitmap"

    .prologue
    .line 165
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/mms/ui/SlideView;->setImage(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    .line 166
    return-void
.end method

.method public setImage(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V
    .locals 4
    .parameter "name"
    .parameter "bitmap"
    .parameter "isWithBorder"

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x2

    .line 169
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mImageView:Lcom/android/mms/ui/GifView;

    if-nez v0, :cond_0

    .line 170
    new-instance v0, Lcom/android/mms/ui/GifView;

    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/mms/ui/GifView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->mImageView:Lcom/android/mms/ui/GifView;

    .line 171
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mImageView:Lcom/android/mms/ui/GifView;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-direct {v1, v3, v3, v2, v2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/SlideView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mImageView:Lcom/android/mms/ui/GifView;

    invoke-virtual {v0, p2}, Lcom/android/mms/ui/GifView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 179
    invoke-direct {p0}, Lcom/android/mms/ui/SlideView;->setBackgroundBlack()V

    .line 180
    return-void
.end method

.method public setImage(Landroid/net/Uri;)Z
    .locals 4
    .parameter "uri"

    .prologue
    const/4 v3, -0x2

    const/4 v0, 0x0

    .line 184
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mImageView:Lcom/android/mms/ui/GifView;

    if-nez v1, :cond_0

    .line 185
    new-instance v1, Lcom/android/mms/ui/GifView;

    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/mms/ui/GifView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/mms/ui/SlideView;->mImageView:Lcom/android/mms/ui/GifView;

    .line 186
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mImageView:Lcom/android/mms/ui/GifView;

    new-instance v2, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-direct {v2, v0, v0, v3, v3}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {p0, v1, v2}, Lcom/android/mms/ui/SlideView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 193
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/SlideView;->stopGif()V

    .line 195
    new-instance v1, Lcom/android/mms/ui/GifPresenter;

    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mImageView:Lcom/android/mms/ui/GifView;

    iget-object v3, p0, Lcom/android/mms/ui/SlideView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {v1, v2, p1, v3}, Lcom/android/mms/ui/GifPresenter;-><init>(Lcom/android/mms/ui/GifView;Landroid/net/Uri;Landroid/content/ContentResolver;)V

    iput-object v1, p0, Lcom/android/mms/ui/SlideView;->mGifPresenter:Lcom/android/mms/ui/GifPresenter;

    .line 196
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mGifPresenter:Lcom/android/mms/ui/GifPresenter;

    invoke-virtual {v1}, Lcom/android/mms/ui/GifPresenter;->getFrameCount()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    .line 197
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mGifPresenter:Lcom/android/mms/ui/GifPresenter;

    invoke-virtual {v1}, Lcom/android/mms/ui/GifPresenter;->FreeResource()V

    .line 198
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/mms/ui/SlideView;->mGifPresenter:Lcom/android/mms/ui/GifPresenter;

    .line 202
    :goto_0
    return v0

    .line 201
    :cond_1
    invoke-direct {p0}, Lcom/android/mms/ui/SlideView;->setBackgroundBlack()V

    .line 202
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setImageGone()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 585
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mImageView:Lcom/android/mms/ui/GifView;

    if-eqz v0, :cond_0

    .line 586
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mImageView:Lcom/android/mms/ui/GifView;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/GifView;->setVisibility(I)V

    .line 587
    iput-object v2, p0, Lcom/android/mms/ui/SlideView;->mImageView:Lcom/android/mms/ui/GifView;

    .line 590
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mBorderView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 591
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mBorderView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 592
    iput-object v2, p0, Lcom/android/mms/ui/SlideView;->mBorderView:Landroid/widget/ImageView;

    .line 595
    :cond_1
    return-void
.end method

.method public setImageRegion(IIII)V
    .locals 7
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"

    .prologue
    const/16 v6, 0xc

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 215
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mImageView:Lcom/android/mms/ui/GifView;

    if-eqz v1, :cond_0

    .line 217
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v1, v6, :cond_7

    .line 219
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v4, :cond_4

    .line 220
    const/16 v0, 0xd5

    .line 221
    .local v0, min:I
    if-le p4, v0, :cond_3

    .line 222
    if-nez p2, :cond_2

    .line 223
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mImageView:Lcom/android/mms/ui/GifView;

    new-instance v2, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-direct {v2, p3, v0, p1, p2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/GifView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 245
    .end local v0           #min:I
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mBorderView:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 247
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v1, v6, :cond_d

    .line 249
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v4, :cond_a

    .line 250
    const/16 v0, 0xd5

    .line 251
    .restart local v0       #min:I
    if-le p4, v0, :cond_9

    .line 252
    if-nez p2, :cond_8

    .line 253
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mImageView:Lcom/android/mms/ui/GifView;

    new-instance v2, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-direct {v2, p3, v0, p1, p2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/GifView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 275
    .end local v0           #min:I
    :cond_1
    :goto_1
    return-void

    .line 225
    .restart local v0       #min:I
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mImageView:Lcom/android/mms/ui/GifView;

    new-instance v2, Landroid/widget/AbsoluteLayout$LayoutParams;

    sub-int v3, p4, v0

    add-int/2addr v3, p2

    invoke-direct {v2, p3, v0, p1, v3}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/GifView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 227
    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mImageView:Lcom/android/mms/ui/GifView;

    new-instance v2, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-direct {v2, p3, p4, p1, p2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/GifView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 229
    .end local v0           #min:I
    :cond_4
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v5, :cond_0

    .line 230
    const/16 v0, 0xf0

    .line 231
    .restart local v0       #min:I
    if-le p3, v0, :cond_6

    .line 232
    if-nez p1, :cond_5

    .line 233
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mImageView:Lcom/android/mms/ui/GifView;

    new-instance v2, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-direct {v2, v0, p4, p1, p2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/GifView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 235
    :cond_5
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mImageView:Lcom/android/mms/ui/GifView;

    new-instance v2, Landroid/widget/AbsoluteLayout$LayoutParams;

    sub-int v3, p1, v0

    invoke-direct {v2, v0, p4, v3, p2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/GifView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 237
    :cond_6
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mImageView:Lcom/android/mms/ui/GifView;

    new-instance v2, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-direct {v2, p3, p4, p1, p2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/GifView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 242
    .end local v0           #min:I
    :cond_7
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mImageView:Lcom/android/mms/ui/GifView;

    new-instance v2, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-direct {v2, p3, p4, p1, p2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/GifView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 255
    .restart local v0       #min:I
    :cond_8
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mImageView:Lcom/android/mms/ui/GifView;

    new-instance v2, Landroid/widget/AbsoluteLayout$LayoutParams;

    sub-int v3, p4, v0

    add-int/2addr v3, p2

    invoke-direct {v2, p3, v0, p1, v3}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/GifView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 257
    :cond_9
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mImageView:Lcom/android/mms/ui/GifView;

    new-instance v2, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-direct {v2, p3, p4, p1, p2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/GifView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 259
    .end local v0           #min:I
    :cond_a
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v5, :cond_1

    .line 260
    const/16 v0, 0xf0

    .line 261
    .restart local v0       #min:I
    if-le p3, v0, :cond_c

    .line 262
    if-nez p1, :cond_b

    .line 263
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mImageView:Lcom/android/mms/ui/GifView;

    new-instance v2, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-direct {v2, v0, p4, p1, p2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/GifView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 265
    :cond_b
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mImageView:Lcom/android/mms/ui/GifView;

    new-instance v2, Landroid/widget/AbsoluteLayout$LayoutParams;

    sub-int v3, p1, v0

    invoke-direct {v2, v0, p4, v3, p2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/GifView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 267
    :cond_c
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mImageView:Lcom/android/mms/ui/GifView;

    new-instance v2, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-direct {v2, p3, p4, p1, p2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/GifView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 272
    .end local v0           #min:I
    :cond_d
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mBorderView:Landroid/widget/ImageView;

    new-instance v2, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-direct {v2, p3, p4, p1, p2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1
.end method

.method public setImageRegionFit(Ljava/lang/String;)V
    .locals 0
    .parameter "fit"

    .prologue
    .line 279
    return-void
.end method

.method public setImageVisibility(Z)V
    .locals 4
    .parameter "visible"

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 573
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mImageView:Lcom/android/mms/ui/GifView;

    if-eqz v0, :cond_0

    .line 574
    iget-object v3, p0, Lcom/android/mms/ui/SlideView;->mImageView:Lcom/android/mms/ui/GifView;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/android/mms/ui/GifView;->setVisibility(I)V

    .line 577
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mBorderView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 578
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mBorderView:Landroid/widget/ImageView;

    if-eqz p1, :cond_3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 581
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 574
    goto :goto_0

    :cond_3
    move v1, v2

    .line 578
    goto :goto_1
.end method

.method public setOnSizeChangedListener(Lcom/android/mms/ui/AdaptableSlideViewInterface$OnSizeChangedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 809
    iput-object p1, p0, Lcom/android/mms/ui/SlideView;->mSizeChangedListener:Lcom/android/mms/ui/AdaptableSlideViewInterface$OnSizeChangedListener;

    .line 810
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 3
    .parameter "text"

    .prologue
    .line 486
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mTextSpan:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 487
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 489
    invoke-static {}, Lcom/android/mms/util/SmileyParser;->getInstance()Lcom/android/mms/util/SmileyParser;

    move-result-object v0

    .line 490
    .local v0, parser:Lcom/android/mms/util/SmileyParser;
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mTextSpan:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, p1}, Lcom/android/mms/util/SmileyParser;->addSmileySpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 494
    .end local v0           #parser:Lcom/android/mms/util/SmileyParser;
    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "name"
    .parameter "text"

    .prologue
    const/4 v6, -0x2

    const/4 v5, 0x0

    const/4 v4, 0x5

    .line 399
    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mScrollText:Landroid/widget/ScrollView;

    if-eqz v2, :cond_0

    .line 400
    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mScrollText:Landroid/widget/ScrollView;

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/SlideView;->removeView(Landroid/view/View;)V

    .line 401
    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mScrollText:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->removeAllViews()V

    .line 402
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/mms/ui/SlideView;->mScrollText:Landroid/widget/ScrollView;

    .line 406
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mScrollText:Landroid/widget/ScrollView;

    if-nez v2, :cond_1

    .line 407
    new-instance v2, Landroid/widget/ScrollView;

    iget-object v3, p0, Lcom/android/mms/ui/SlideView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/mms/ui/SlideView;->mScrollText:Landroid/widget/ScrollView;

    .line 408
    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mScrollText:Landroid/widget/ScrollView;

    const/high16 v3, 0x300

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->setScrollBarStyle(I)V

    .line 410
    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mScrollText:Landroid/widget/ScrollView;

    new-instance v3, Lcom/android/mms/ui/SlideView$3;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/SlideView$3;-><init>(Lcom/android/mms/ui/SlideView;)V

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 420
    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mScrollText:Landroid/widget/ScrollView;

    new-instance v3, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-direct {v3, v5, v5, v6, v6}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {p0, v2, v3}, Lcom/android/mms/ui/SlideView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 427
    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    if-nez v2, :cond_2

    .line 428
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/mms/ui/SlideView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    .line 429
    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 431
    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 432
    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 440
    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mScrollText:Landroid/widget/ScrollView;

    iget-object v3, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 442
    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    new-instance v3, Lcom/android/mms/ui/SlideView$4;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/SlideView$4;-><init>(Lcom/android/mms/ui/SlideView;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 461
    :goto_0
    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mScrollText:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->requestFocus()Z

    .line 464
    invoke-static {}, Lcom/android/mms/util/SmileyParser;->getInstance()Lcom/android/mms/util/SmileyParser;

    move-result-object v1

    .line 467
    .local v1, parser:Lcom/android/mms/util/SmileyParser;
    invoke-virtual {p0, p2}, Lcom/android/mms/ui/SlideView;->setText(Ljava/lang/String;)V

    .line 468
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 469
    .local v0, buffer:Landroid/text/SpannableStringBuilder;
    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mTextSpan:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 470
    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    invoke-static {v2, v0}, Lcom/android/mms/ui/MyLinkify;->parseLinks(Landroid/widget/TextView;Landroid/text/Spannable;)V

    .line 471
    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 477
    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mScrollText:Landroid/widget/ScrollView;

    invoke-virtual {v2, v4, v4, v4, v4}, Landroid/widget/ScrollView;->setPadding(IIII)V

    .line 478
    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 479
    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    const/high16 v3, 0x4180

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 480
    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    const v3, -0x232324

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 482
    return-void

    .line 457
    .end local v0           #buffer:Landroid/text/SpannableStringBuilder;
    .end local v1           #parser:Lcom/android/mms/util/SmileyParser;
    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mScrollText:Landroid/widget/ScrollView;

    iget-object v3, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setTextRegion(IIII)V
    .locals 5
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 498
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mScrollText:Landroid/widget/ScrollView;

    if-eqz v1, :cond_1

    .line 500
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0x1b

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v1, v3, :cond_2

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    if-ne v1, v4, :cond_2

    .line 503
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mScrollText:Landroid/widget/ScrollView;

    new-instance v2, Landroid/widget/AbsoluteLayout$LayoutParams;

    add-int/lit8 v3, p4, 0x3

    invoke-direct {v2, p3, v3, p1, p2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 534
    :cond_1
    :goto_0
    return-void

    .line 505
    :cond_2
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0xc

    if-ne v1, v2, :cond_8

    .line 507
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v3, :cond_5

    .line 508
    const/16 v0, 0x4b

    .line 509
    .local v0, min:I
    if-ge p4, v0, :cond_4

    .line 510
    if-nez p2, :cond_3

    .line 511
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mScrollText:Landroid/widget/ScrollView;

    new-instance v2, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-direct {v2, p3, v0, p1, p2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 513
    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mScrollText:Landroid/widget/ScrollView;

    new-instance v2, Landroid/widget/AbsoluteLayout$LayoutParams;

    sub-int v3, v0, p4

    sub-int v3, p2, v3

    invoke-direct {v2, p3, v0, p1, v3}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 515
    :cond_4
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mScrollText:Landroid/widget/ScrollView;

    new-instance v2, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-direct {v2, p3, p4, p1, p2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 517
    .end local v0           #min:I
    :cond_5
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v4, :cond_1

    .line 518
    const/16 v0, 0x50

    .line 519
    .restart local v0       #min:I
    if-ge p3, v0, :cond_7

    .line 520
    if-nez p1, :cond_6

    .line 521
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mScrollText:Landroid/widget/ScrollView;

    new-instance v2, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-direct {v2, v0, p4, p1, p2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 523
    :cond_6
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mScrollText:Landroid/widget/ScrollView;

    new-instance v2, Landroid/widget/AbsoluteLayout$LayoutParams;

    sub-int v3, v0, p3

    sub-int v3, p1, v3

    invoke-direct {v2, v0, p4, v3, p2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 525
    :cond_7
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mScrollText:Landroid/widget/ScrollView;

    new-instance v2, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-direct {v2, p3, p4, p1, p2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 531
    .end local v0           #min:I
    :cond_8
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mScrollText:Landroid/widget/ScrollView;

    new-instance v2, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-direct {v2, p3, p4, p1, p2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0
.end method

.method public setTextVisibility(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 599
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mScrollText:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    .line 600
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mScrollText:Landroid/widget/ScrollView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 602
    :cond_0
    return-void

    .line 600
    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public setVideo(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 5
    .parameter "name"
    .parameter "video"

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 285
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoViewContainer:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 286
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoViewContainer:Landroid/widget/LinearLayout;

    .line 287
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoViewContainer:Landroid/widget/LinearLayout;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    if-nez v0, :cond_1

    .line 292
    new-instance v0, Landroid/widget/VideoView;

    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    .line 296
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoViewContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    new-instance v2, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-direct {v2, v4, v4, v3, v3}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 298
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SlideView;->addView(Landroid/view/View;)V

    .line 303
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mPreparedListener_Video:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 311
    :cond_1
    iput-boolean v3, p0, Lcom/android/mms/ui/SlideView;->mIsPrepared_Video:Z

    .line 312
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, p2}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 313
    return-void
.end method

.method public setVideoRegion(IIII)V
    .locals 4
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 540
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mVideoViewContainer:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 542
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0xc

    if-ne v1, v2, :cond_6

    .line 544
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 545
    const/16 v0, 0xd5

    .line 546
    .local v0, min:I
    if-le p4, v0, :cond_2

    .line 547
    if-nez p2, :cond_1

    .line 548
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mVideoViewContainer:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-direct {v2, p3, v0, p1, p2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 570
    .end local v0           #min:I
    :cond_0
    :goto_0
    return-void

    .line 550
    .restart local v0       #min:I
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mVideoViewContainer:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/AbsoluteLayout$LayoutParams;

    sub-int v3, p4, v0

    add-int/2addr v3, p2

    invoke-direct {v2, p3, v0, p1, v3}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 552
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mVideoViewContainer:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-direct {v2, p3, p4, p1, p2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 554
    .end local v0           #min:I
    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 555
    const/16 v0, 0xf0

    .line 556
    .restart local v0       #min:I
    if-le p3, v0, :cond_5

    .line 557
    if-nez p1, :cond_4

    .line 558
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mVideoViewContainer:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-direct {v2, v0, p4, p1, p2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 560
    :cond_4
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mVideoViewContainer:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/AbsoluteLayout$LayoutParams;

    sub-int v3, p1, v0

    invoke-direct {v2, v0, p4, v3, p2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 562
    :cond_5
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mVideoViewContainer:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-direct {v2, p3, p4, p1, p2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 567
    .end local v0           #min:I
    :cond_6
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mVideoViewContainer:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-direct {v2, p3, p4, p1, p2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public setVideoVisibility(Z)V
    .locals 3
    .parameter "visible"

    .prologue
    const/4 v1, 0x4

    const/4 v0, 0x0

    .line 605
    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    if-eqz v2, :cond_0

    .line 607
    iget-boolean v2, p0, Lcom/android/mms/ui/SlideView;->mIsPrepared_Video:Z

    if-eqz v2, :cond_2

    .line 609
    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    if-eqz p1, :cond_1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/VideoView;->setVisibility(I)V

    .line 615
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 609
    goto :goto_0

    .line 610
    :cond_2
    if-eqz p1, :cond_4

    .line 611
    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    if-eqz p1, :cond_3

    :goto_2
    invoke-virtual {v2, v0}, Landroid/widget/VideoView;->setVisibility(I)V

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    .line 613
    :cond_4
    const-string v0, "SlideView"

    const-string v1, "Video is not prepared, don\'t set to INVISIBLE to avoid ANR"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setVisibility(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 794
    return-void
.end method

.method public startAudio()V
    .locals 1

    .prologue
    .line 618
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mIsPrepared:Z

    if-eqz v0, :cond_0

    .line 619
    invoke-direct {p0}, Lcom/android/mms/ui/SlideView;->stopMusicPlayer()V

    .line 620
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 621
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mStartWhenPrepared:Z

    .line 622
    invoke-direct {p0}, Lcom/android/mms/ui/SlideView;->displayAudioInfo()V

    .line 626
    :goto_0
    return-void

    .line 624
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mStartWhenPrepared:Z

    goto :goto_0
.end method

.method public startImage()V
    .locals 1

    .prologue
    .line 715
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mImageView:Lcom/android/mms/ui/GifView;

    if-eqz v0, :cond_0

    .line 719
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mGifPresenter:Lcom/android/mms/ui/GifPresenter;

    if-eqz v0, :cond_0

    .line 720
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mGifPresenter:Lcom/android/mms/ui/GifPresenter;

    invoke-virtual {v0}, Lcom/android/mms/ui/GifPresenter;->Play()Z

    .line 723
    :cond_0
    return-void
.end method

.method public startVideo()V
    .locals 1

    .prologue
    .line 667
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    .line 671
    invoke-direct {p0}, Lcom/android/mms/ui/SlideView;->stopMusicPlayer()V

    .line 672
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 674
    :cond_0
    return-void
.end method

.method public stopAudio()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 629
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/mms/ui/SlideView;->mIsPrepared:Z

    if-eqz v1, :cond_0

    .line 630
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 632
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 637
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    .line 638
    iput-boolean v3, p0, Lcom/android/mms/ui/SlideView;->mStopWhenPrepared:Z

    .line 639
    invoke-direct {p0}, Lcom/android/mms/ui/SlideView;->hideAudioInfo()V

    .line 647
    :goto_1
    return-void

    .line 633
    :catch_0
    move-exception v0

    .line 634
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "SlideView"

    const-string v2, "IllegalArgumentException. "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 643
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :cond_0
    iput-boolean v3, p0, Lcom/android/mms/ui/SlideView;->mStartWhenPrepared:Z

    .line 645
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/mms/ui/SlideView;->mStopWhenPrepared:Z

    goto :goto_1
.end method

.method public stopImage()V
    .locals 1

    .prologue
    .line 726
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mImageView:Lcom/android/mms/ui/GifView;

    if-eqz v0, :cond_0

    .line 730
    invoke-direct {p0}, Lcom/android/mms/ui/SlideView;->stopGif()V

    .line 732
    :cond_0
    return-void
.end method

.method public stopVideo()V
    .locals 2

    .prologue
    .line 679
    iget-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mIsPrepared_Video:Z

    if-eqz v0, :cond_1

    .line 681
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    .line 685
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 691
    :cond_0
    :goto_0
    return-void

    .line 688
    :cond_1
    const-string v0, "SlideView"

    const-string v1, "Don\'t stop video due to MediaPlayer is not prepared"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

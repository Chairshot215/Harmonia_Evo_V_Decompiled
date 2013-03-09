.class public Lcom/htc/album/addons/slideshow/SlideShow;
.super Lcom/htc/album/modules/ui/ControlBarHostActivity;
.source "SlideShow.java"

# interfaces
.implements Landroid/widget/ViewSwitcher$ViewFactory;
.implements Lcom/htc/album/addons/slideshow/SlideShowController$ControllerEventListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/addons/slideshow/SlideShow$TemplateBroadcastReceiver;,
        Lcom/htc/album/addons/slideshow/SlideShow$SlideShowAudioFocusChangeListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_SLIDESHOW_INTERVAL:I = 0x3

.field private static final DEFAULT_TRANSITION_INTERVAL:I = 0x320

.field private static final IS_DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = null

.field private static final MSG_HOOKKEY_DOUBLE_CLICK_CHECK:I = 0x4

.field public static final ORIENTATION_ACTUAL_STR:Ljava/lang/String; = "1"

.field private static final ORIENTATION_BESTFIT:I = 0x0

.field private static final SLIDESHOW_ERROR_DIALOG:I = 0x1b669

.field private static final TIMEOUT_HOOKKEY_DOUBLE_CLICK_CHECK:I = 0x1f4

.field public static final TRANSITION_DEFAULT:I = 0x7


# instance fields
.field private final DIRECTION_BACKWARD:Z

.field private final DIRECTION_FORWARD:Z

.field private final MUSIC_STATE_PAUSE:I

.field private final MUSIC_STATE_PLAYING:I

.field private final MUSIC_STATE_STOP:I

.field private final SPECIFY_DIRECTION:Z

.field private mAnimiationManager:Lcom/htc/album/addons/slideshow/AnimationManager;

.field private mAudioFocusListener:Lcom/htc/album/addons/slideshow/SlideShow$SlideShowAudioFocusChangeListener;

.field private mAudioMgr:Landroid/media/AudioManager;

.field mBackupIsPlayingFlag:Z

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mBucketId:Ljava/lang/String;

.field private mControlBarFileIndicator:Landroid/widget/TextView;

.field private mControlBarFolder:Landroid/widget/TextView;

.field private mCurDirection:Z

.field private mCurFolderBucketId:Ljava/lang/String;

.field private mCurFolderIndicator:Ljava/lang/String;

.field private mCurFolderName:Ljava/lang/String;

.field private mCurMode:Ljava/lang/String;

.field private mCurMoveNext:Z

.field private mCurTransitionAnimIndex:I

.field private mCurrentPosition:I

.field private mEnableMusic:Z

.field private mEnterPosition:I

.field private mFolderType:Ljava/lang/String;

.field private final mHandler:Landroid/os/Handler;

.field private mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

.field private mIsControlShowing:Z

.field private mIsHeadsetHook:Z

.field private mIsPlaying:Z

.field mIsSettingShown:Z

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mMusicState:I

.field private mNextImageRunnable:Ljava/lang/Runnable;

.field private mOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mOrientation:I

.field private mPosted:Z

.field private mRepeat:Z

.field private mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

.field private mShuffleList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSlideshowInterval:I

.field private mStopAndLeave:Z

.field private mSwitcher:Landroid/widget/ImageSwitcher;

.field private mTitle:Landroid/widget/RelativeLayout;

.field private mTransitionAnimIndex:I

.field private mUriMusic:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 89
    const-class v0, Lcom/htc/album/addons/slideshow/SlideShow;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 85
    invoke-direct {p0}, Lcom/htc/album/modules/ui/ControlBarHostActivity;-><init>()V

    .line 98
    iput-boolean v3, p0, Lcom/htc/album/addons/slideshow/SlideShow;->SPECIFY_DIRECTION:Z

    .line 99
    iput-boolean v3, p0, Lcom/htc/album/addons/slideshow/SlideShow;->DIRECTION_FORWARD:Z

    .line 100
    iput-boolean v1, p0, Lcom/htc/album/addons/slideshow/SlideShow;->DIRECTION_BACKWARD:Z

    .line 107
    iput v3, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mMusicState:I

    .line 108
    iput-object v2, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mAudioMgr:Landroid/media/AudioManager;

    .line 109
    iput-object v2, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mAudioFocusListener:Lcom/htc/album/addons/slideshow/SlideShow$SlideShowAudioFocusChangeListener;

    .line 110
    iput-boolean v1, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mIsHeadsetHook:Z

    .line 112
    iput v3, p0, Lcom/htc/album/addons/slideshow/SlideShow;->MUSIC_STATE_STOP:I

    .line 113
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->MUSIC_STATE_PLAYING:I

    .line 114
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->MUSIC_STATE_PAUSE:I

    .line 117
    const-string v0, "album_mode"

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurMode:Ljava/lang/String;

    .line 118
    iput-object v2, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurFolderBucketId:Ljava/lang/String;

    .line 119
    iput-object v2, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurFolderName:Ljava/lang/String;

    .line 120
    iput-object v2, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurFolderIndicator:Ljava/lang/String;

    .line 124
    iput-boolean v1, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mIsControlShowing:Z

    .line 130
    iput v1, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurrentPosition:I

    .line 131
    iput v1, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mEnterPosition:I

    .line 133
    iput-object v2, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mFolderType:Ljava/lang/String;

    .line 141
    iput-boolean v1, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mPosted:Z

    .line 142
    iput-boolean v3, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mIsPlaying:Z

    .line 143
    iput-boolean v1, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mStopAndLeave:Z

    .line 151
    iput-boolean v1, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mIsSettingShown:Z

    .line 152
    iput-boolean v1, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mBackupIsPlayingFlag:Z

    .line 156
    new-instance v0, Lcom/htc/album/addons/slideshow/AnimationManager;

    invoke-direct {v0}, Lcom/htc/album/addons/slideshow/AnimationManager;-><init>()V

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mAnimiationManager:Lcom/htc/album/addons/slideshow/AnimationManager;

    .line 159
    iput-boolean v1, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurDirection:Z

    .line 160
    iput-boolean v1, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurMoveNext:Z

    .line 161
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurTransitionAnimIndex:I

    .line 165
    iput-object v2, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mTitle:Landroid/widget/RelativeLayout;

    .line 166
    iput-object v2, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mControlBarFolder:Landroid/widget/TextView;

    .line 167
    iput-object v2, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mControlBarFileIndicator:Landroid/widget/TextView;

    .line 173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mShuffleList:Ljava/util/ArrayList;

    .line 561
    new-instance v0, Lcom/htc/album/addons/slideshow/SlideShow$1;

    invoke-direct {v0, p0}, Lcom/htc/album/addons/slideshow/SlideShow$1;-><init>(Lcom/htc/album/addons/slideshow/SlideShow;)V

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 1049
    new-instance v0, Lcom/htc/album/addons/slideshow/SlideShow$2;

    invoke-direct {v0, p0}, Lcom/htc/album/addons/slideshow/SlideShow$2;-><init>(Lcom/htc/album/addons/slideshow/SlideShow;)V

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mNextImageRunnable:Ljava/lang/Runnable;

    .line 1110
    new-instance v0, Lcom/htc/album/addons/slideshow/SlideShow$3;

    invoke-direct {v0, p0}, Lcom/htc/album/addons/slideshow/SlideShow$3;-><init>(Lcom/htc/album/addons/slideshow/SlideShow;)V

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mHandler:Landroid/os/Handler;

    .line 1522
    return-void
.end method

.method private ReleaseBitmap(Landroid/widget/ImageView;)V
    .locals 3
    .parameter "aView"

    .prologue
    .line 1171
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1172
    .local v1, dw:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    instance-of v2, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_0

    .line 1173
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .end local v1           #dw:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1174
    .local v0, bmp:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1176
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1180
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    :cond_0
    return-void
.end method

.method private ReleaseNextViewOnSwitcher()V
    .locals 2

    .prologue
    .line 1183
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSwitcher:Landroid/widget/ImageSwitcher;

    invoke-virtual {v1}, Landroid/widget/ImageSwitcher;->getNextView()Landroid/view/View;

    move-result-object v0

    .line 1185
    .local v0, aView:Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 1187
    check-cast v0, Landroid/widget/ImageView;

    .end local v0           #aView:Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/htc/album/addons/slideshow/SlideShow;->ReleaseBitmap(Landroid/widget/ImageView;)V

    .line 1189
    :cond_0
    return-void
.end method

.method private abandonAudioFocus()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1339
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mAudioMgr:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 1341
    sget-object v0, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][Slideshow][requestAudioFocus]: Abandon audio focus"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1342
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mAudioMgr:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mAudioFocusListener:Lcom/htc/album/addons/slideshow/SlideShow$SlideShowAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 1343
    iput-object v2, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mAudioFocusListener:Lcom/htc/album/addons/slideshow/SlideShow$SlideShowAudioFocusChangeListener;

    .line 1344
    iput-object v2, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mAudioMgr:Landroid/media/AudioManager;

    .line 1346
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "headsetowner"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1348
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mIsHeadsetHook:Z

    .line 1350
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/htc/album/addons/slideshow/SlideShow;)Lcom/htc/album/modules/ui/ControlBarManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/album/addons/slideshow/SlideShow;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->updateControlBar()V

    return-void
.end method

.method static synthetic access$1100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/album/addons/slideshow/SlideShow;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mStopAndLeave:Z

    return v0
.end method

.method static synthetic access$300(Lcom/htc/album/addons/slideshow/SlideShow;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mRepeat:Z

    return v0
.end method

.method static synthetic access$400(Lcom/htc/album/addons/slideshow/SlideShow;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    return-object v0
.end method

.method static synthetic access$502(Lcom/htc/album/addons/slideshow/SlideShow;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mIsPlaying:Z

    return p1
.end method

.method static synthetic access$600(Lcom/htc/album/addons/slideshow/SlideShow;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->onControlbarPause()V

    return-void
.end method

.method static synthetic access$700(Lcom/htc/album/addons/slideshow/SlideShow;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->loadNextImage()V

    return-void
.end method

.method static synthetic access$800(Lcom/htc/album/addons/slideshow/SlideShow;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/htc/album/addons/slideshow/SlideShow;->showControlBar(Z)V

    return-void
.end method

.method private cancelPost()V
    .locals 2

    .prologue
    .line 870
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mNextImageRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 871
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mPosted:Z

    .line 872
    return-void
.end method

.method private initLayout()V
    .locals 3

    .prologue
    .line 522
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSwitcher:Landroid/widget/ImageSwitcher;

    if-nez v1, :cond_0

    .line 524
    const v1, 0x7f0a0078

    invoke-virtual {p0, v1}, Lcom/htc/album/addons/slideshow/SlideShow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageSwitcher;

    iput-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSwitcher:Landroid/widget/ImageSwitcher;

    .line 525
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSwitcher:Landroid/widget/ImageSwitcher;

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageSwitcher;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 526
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSwitcher:Landroid/widget/ImageSwitcher;

    invoke-virtual {v1, p0}, Landroid/widget/ImageSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    .line 529
    :cond_0
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    if-eqz v1, :cond_2

    .line 531
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->getCurrentIndex()I

    move-result v0

    .line 532
    .local v0, index:I
    const/4 v1, -0x1

    if-gt v0, v1, :cond_1

    const/4 v0, -0x1

    .line 533
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v2, v0, 0x2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurFolderIndicator:Ljava/lang/String;

    .line 534
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v1}, Lcom/htc/album/modules/ui/ControlBarManager;->invalidateControlBars()V

    .line 538
    .end local v0           #index:I
    :goto_0
    return-void

    .line 537
    :cond_2
    sget-object v1, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][Slideshow][initLayout]: initLayout NG !"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isTransAnimChange()Z
    .locals 5

    .prologue
    .line 455
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "slide_show_transition_setting"

    const/4 v4, 0x7

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 456
    .local v1, transition:Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 459
    .local v0, nTransition:I
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mAnimiationManager:Lcom/htc/album/addons/slideshow/AnimationManager;

    invoke-virtual {v2}, Lcom/htc/album/addons/slideshow/AnimationManager;->getAnimationIndex()I

    move-result v2

    if-eq v2, v0, :cond_0

    .line 461
    sget-object v2, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[HTCAlbum][Slideshow][retrieveSettings]: Stop music by Change Transition."

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    const/4 v2, 0x1

    .line 465
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private launchSetting()V
    .locals 3

    .prologue
    .line 597
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 598
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/htc/album/addons/slideshow/AlbumSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 599
    const-string v1, "slideshow_setting_mode"

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurMode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 600
    invoke-virtual {p0, v0}, Lcom/htc/album/addons/slideshow/SlideShow;->startActivity(Landroid/content/Intent;)V

    .line 601
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mIsSettingShown:Z

    .line 602
    iget-boolean v1, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mIsPlaying:Z

    iput-boolean v1, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mBackupIsPlayingFlag:Z

    .line 603
    return-void
.end method

.method private loadImage(ZZ)V
    .locals 7
    .parameter "direction"
    .parameter "moveNext"

    .prologue
    const/4 v5, 0x1

    .line 903
    iget-boolean v4, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mStopAndLeave:Z

    if-eqz v4, :cond_1

    .line 965
    :cond_0
    :goto_0
    return-void

    .line 906
    :cond_1
    iget-object v4, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->getCurrentIndex()I

    move-result v6

    invoke-interface {v4, v6}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v1

    .line 908
    .local v1, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz v1, :cond_0

    .line 912
    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v4, v1

    check-cast v4, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;

    invoke-virtual {v4}, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->getDrmType()I

    move-result v4

    if-ne v4, v5, :cond_3

    :cond_2
    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 915
    :cond_3
    iget v3, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurrentPosition:I

    .line 918
    .local v3, nNewPosition:I
    :cond_4
    if-eqz p2, :cond_c

    move v4, v5

    :goto_1
    add-int/2addr v3, v4

    .line 919
    iget-object v4, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v4}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v4

    if-lt v3, v4, :cond_5

    .line 920
    const/4 v3, 0x0

    .line 921
    :cond_5
    if-gez v3, :cond_6

    .line 922
    iget-object v4, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v4}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .line 923
    :cond_6
    iget-object v4, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-virtual {p0, v3}, Lcom/htc/album/addons/slideshow/SlideShow;->getShuffleIndex(I)I

    move-result v6

    invoke-interface {v4, v6}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v1

    .line 924
    if-eqz v1, :cond_0

    .line 928
    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v4

    if-eqz v4, :cond_7

    move-object v4, v1

    check-cast v4, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;

    invoke-virtual {v4}, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->getDrmType()I

    move-result v4

    if-ne v4, v5, :cond_8

    :cond_7
    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v4

    if-eqz v4, :cond_9

    :cond_8
    iget v4, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurrentPosition:I

    if-ne v3, v4, :cond_4

    .line 930
    :cond_9
    iput v3, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurrentPosition:I

    .line 945
    .end local v3           #nNewPosition:I
    :cond_a
    sget-object v4, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "show "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->getCurrentIndex()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "th image."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 946
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->getCurrentIndex()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/htc/album/addons/slideshow/SlideShow;->updateTitlebar(I)V

    .line 947
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->retrieveSettings()V

    .line 948
    invoke-direct {p0, p1, p2}, Lcom/htc/album/addons/slideshow/SlideShow;->setTransitionAnim(ZZ)V

    .line 949
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->updatePrevNextButtons()V

    .line 951
    const/4 v2, 0x0

    .line 954
    .local v2, mTempBmp:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/htc/album/addons/slideshow/SlideShow;->LoadImageToSwitcher(Lcom/htc/opensense2/album/util/ImageManager$IImage;)V

    .line 957
    iget-boolean v4, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mIsPlaying:Z

    if-eqz v4, :cond_b

    .line 958
    iget v4, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSlideshowInterval:I

    invoke-direct {p0, v4}, Lcom/htc/album/addons/slideshow/SlideShow;->post(I)V

    .line 959
    :cond_b
    iget-object v4, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSwitcher:Landroid/widget/ImageSwitcher;

    invoke-virtual {v4}, Landroid/widget/ImageSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 961
    :catch_0
    move-exception v0

    .line 962
    .local v0, e:Ljava/lang/Exception;
    sget-object v4, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 963
    iget v4, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSlideshowInterval:I

    invoke-direct {p0, v4}, Lcom/htc/album/addons/slideshow/SlideShow;->post(I)V

    goto/16 :goto_0

    .line 918
    .end local v0           #e:Ljava/lang/Exception;
    .end local v2           #mTempBmp:Landroid/graphics/Bitmap;
    .restart local v3       #nNewPosition:I
    :cond_c
    const/4 v4, -0x1

    goto/16 :goto_1
.end method

.method private loadNextImage()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1069
    iget v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurrentPosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurrentPosition:I

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 1070
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurrentPosition:I

    .line 1071
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->buildShuffleList()V

    .line 1074
    :cond_0
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mIsPlaying:Z

    if-eqz v0, :cond_1

    .line 1075
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->cancelPost()V

    .line 1077
    :cond_1
    invoke-direct {p0, v2, v2}, Lcom/htc/album/addons/slideshow/SlideShow;->loadImage(ZZ)V

    .line 1078
    return-void
.end method

.method private loadPreviousImage()V
    .locals 2

    .prologue
    .line 1081
    iget v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurrentPosition:I

    if-nez v0, :cond_1

    .line 1082
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurrentPosition:I

    .line 1083
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->buildShuffleList()V

    .line 1089
    :goto_0
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mIsPlaying:Z

    if-eqz v0, :cond_0

    .line 1090
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->cancelPost()V

    .line 1092
    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/htc/album/addons/slideshow/SlideShow;->loadImage(ZZ)V

    .line 1093
    return-void

    .line 1086
    :cond_1
    iget v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurrentPosition:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurrentPosition:I

    goto :goto_0
.end method

.method private onControlbarNext()V
    .locals 2

    .prologue
    .line 1642
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mRepeat:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurrentPosition:I

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    .line 1643
    :cond_0
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->loadNextImage()V

    .line 1645
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/album/addons/slideshow/SlideShow;->showControlBar(Z)V

    .line 1646
    return-void
.end method

.method private onControlbarPause()V
    .locals 1

    .prologue
    .line 1629
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->onPauseTarget()V

    .line 1630
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v0}, Lcom/htc/album/modules/ui/ControlBarManager;->invalidateControlBars()V

    .line 1631
    :cond_0
    return-void
.end method

.method private onControlbarPlay()V
    .locals 1

    .prologue
    .line 1635
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->onPlayTarget()Z

    .line 1636
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v0}, Lcom/htc/album/modules/ui/ControlBarManager;->invalidateControlBars()V

    .line 1637
    :cond_0
    return-void
.end method

.method private onControlbarPrevious()V
    .locals 1

    .prologue
    .line 1650
    iget v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurrentPosition:I

    if-ltz v0, :cond_0

    .line 1651
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->loadPreviousImage()V

    .line 1653
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/album/addons/slideshow/SlideShow;->showControlBar(Z)V

    .line 1654
    return-void
.end method

.method private post(I)V
    .locals 4
    .parameter "interval"

    .prologue
    .line 875
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mStopAndLeave:Z

    if-nez v0, :cond_0

    .line 876
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mNextImageRunnable:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 877
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mPosted:Z

    .line 879
    :cond_0
    return-void
.end method

.method private requestAudioFocus()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1313
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mAudioMgr:Landroid/media/AudioManager;

    if-nez v1, :cond_0

    .line 1314
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Lcom/htc/album/addons/slideshow/SlideShow;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mAudioMgr:Landroid/media/AudioManager;

    .line 1316
    :cond_0
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mAudioMgr:Landroid/media/AudioManager;

    if-eqz v1, :cond_3

    .line 1318
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mAudioFocusListener:Lcom/htc/album/addons/slideshow/SlideShow$SlideShowAudioFocusChangeListener;

    if-nez v1, :cond_1

    .line 1320
    new-instance v1, Lcom/htc/album/addons/slideshow/SlideShow$SlideShowAudioFocusChangeListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/htc/album/addons/slideshow/SlideShow$SlideShowAudioFocusChangeListener;-><init>(Lcom/htc/album/addons/slideshow/SlideShow;Lcom/htc/album/addons/slideshow/SlideShow$1;)V

    iput-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mAudioFocusListener:Lcom/htc/album/addons/slideshow/SlideShow$SlideShowAudioFocusChangeListener;

    .line 1323
    :cond_1
    sget-object v1, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][Slideshow][requestAudioFocus]: Request audio focus"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1325
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mAudioMgr:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mAudioFocusListener:Lcom/htc/album/addons/slideshow/SlideShow$SlideShowAudioFocusChangeListener;

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    .line 1326
    .local v0, ret:I
    if-eq v0, v4, :cond_2

    .line 1328
    sget-object v1, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][Slideshow][requestAudioFocus]: request audio focus fail. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1331
    :cond_2
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "headsetowner"

    const-string v3, "htcalbum"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1333
    iput-boolean v4, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mIsHeadsetHook:Z

    .line 1335
    .end local v0           #ret:I
    :cond_3
    return-void
.end method

.method private retrieveSettings()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 388
    iget-object v5, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    iget-object v6, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v6, "slide_show_duration_setting"

    const/4 v7, 0x3

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 389
    .local v0, interval:Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    mul-int/lit16 v5, v5, 0x3e8

    add-int/lit16 v5, v5, 0x320

    iput v5, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSlideshowInterval:I

    .line 391
    iget-object v5, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mAnimiationManager:Lcom/htc/album/addons/slideshow/AnimationManager;

    invoke-virtual {v5, p0}, Lcom/htc/album/addons/slideshow/AnimationManager;->syncPreferenceAnimSettings(Landroid/content/Context;)V

    .line 393
    iget-object v5, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    iget-object v6, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v6, "slide_show_repeat_setting"

    invoke-virtual {v5, v6, v9}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mRepeat:Z

    .line 395
    iget-object v5, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    iget-object v6, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v6, "slide_show_orientation_setting"

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 396
    .local v1, orientation:Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mOrientation:I

    .line 398
    iget-object v5, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    iget-object v6, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v6, "slide_show_transition_setting"

    const/4 v7, 0x7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 399
    .local v3, transition:Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mTransitionAnimIndex:I

    .line 402
    iget-object v5, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mAnimiationManager:Lcom/htc/album/addons/slideshow/AnimationManager;

    invoke-virtual {v5}, Lcom/htc/album/addons/slideshow/AnimationManager;->getAnimationIndex()I

    move-result v5

    iget v6, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurTransitionAnimIndex:I

    if-eq v5, v6, :cond_0

    .line 404
    sget-object v5, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v6, "[HTCAlbum][Slideshow][retrieveSettings]: Stop music by Change Transition."

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->stopMusic()V

    .line 411
    :cond_0
    iget-object v5, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    iget-object v6, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v6, "slide_show_music_enable_setting"

    invoke-virtual {v5, v6, v8}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mEnableMusic:Z

    .line 412
    iget-boolean v5, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mEnableMusic:Z

    if-ne v5, v9, :cond_6

    .line 416
    iget-object v5, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    iget-object v6, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v6, "slide_show_music_picker_setting"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 417
    .local v2, strUri:Ljava/lang/String;
    const/4 v4, 0x0

    .line 418
    .local v4, uriTemp:Landroid/net/Uri;
    if-nez v2, :cond_1

    const-string v5, ""

    if-eq v2, v5, :cond_2

    .line 420
    :cond_1
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 423
    :cond_2
    if-nez v4, :cond_3

    .line 425
    iput-boolean v8, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mEnableMusic:Z

    .line 426
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->stopMusic()V

    .line 427
    sget-object v5, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v6, "[HTCAlbum][Slideshow][retrieveSettings]: Uri.parse NG !"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    .end local v2           #strUri:Ljava/lang/String;
    .end local v4           #uriTemp:Landroid/net/Uri;
    :goto_0
    return-void

    .line 433
    .restart local v2       #strUri:Ljava/lang/String;
    .restart local v4       #uriTemp:Landroid/net/Uri;
    :cond_3
    iget-object v5, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mUriMusic:Landroid/net/Uri;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mUriMusic:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Landroid/net/Uri;->compareTo(Landroid/net/Uri;)I

    move-result v5

    if-eqz v5, :cond_5

    .line 436
    :cond_4
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->stopMusic()V

    .line 437
    iput-object v4, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mUriMusic:Landroid/net/Uri;

    .line 440
    :cond_5
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->playMusic()V

    goto :goto_0

    .line 446
    .end local v2           #strUri:Ljava/lang/String;
    .end local v4           #uriTemp:Landroid/net/Uri;
    :cond_6
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->stopMusic()V

    goto :goto_0
.end method

.method private setKeepScreenOn(Z)V
    .locals 2
    .parameter "IsScreenOn"

    .prologue
    const/16 v1, 0x80

    .line 1192
    if-eqz p1, :cond_0

    .line 1193
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1196
    :goto_0
    return-void

    .line 1195
    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0
.end method

.method private setTransitionAnim(ZZ)V
    .locals 6
    .parameter "direction"
    .parameter "moveNext"

    .prologue
    const-wide/16 v4, 0x320

    .line 471
    const/4 v0, 0x0

    .line 472
    .local v0, animIn:Landroid/view/animation/Animation;
    const/4 v1, 0x0

    .line 474
    .local v1, animOut:Landroid/view/animation/Animation;
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mAnimiationManager:Lcom/htc/album/addons/slideshow/AnimationManager;

    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    invoke-virtual {v2, p0, v3}, Lcom/htc/album/addons/slideshow/AnimationManager;->initAnimations(Landroid/content/Context;Lcom/htc/album/addons/slideshow/SlideshowSetingManager;)V

    .line 477
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mAnimiationManager:Lcom/htc/album/addons/slideshow/AnimationManager;

    invoke-virtual {v2}, Lcom/htc/album/addons/slideshow/AnimationManager;->isRandomized()Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurDirection:Z

    if-ne v2, p1, :cond_0

    iget-boolean v2, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurMoveNext:Z

    if-ne v2, p2, :cond_0

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mAnimiationManager:Lcom/htc/album/addons/slideshow/AnimationManager;

    invoke-virtual {v2}, Lcom/htc/album/addons/slideshow/AnimationManager;->getAnimationIndex()I

    move-result v2

    iget v3, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurTransitionAnimIndex:I

    if-ne v2, v3, :cond_0

    .line 518
    :goto_0
    return-void

    .line 486
    :cond_0
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mAnimiationManager:Lcom/htc/album/addons/slideshow/AnimationManager;

    invoke-virtual {v2}, Lcom/htc/album/addons/slideshow/AnimationManager;->getAnimationIndex()I

    move-result v2

    const/4 v3, -0x2

    if-eq v2, v3, :cond_1

    .line 488
    if-eqz p1, :cond_4

    if-nez p2, :cond_4

    .line 490
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mAnimiationManager:Lcom/htc/album/addons/slideshow/AnimationManager;

    invoke-virtual {v2}, Lcom/htc/album/addons/slideshow/AnimationManager;->getAnimationInReversed()Landroid/view/animation/Animation;

    move-result-object v0

    .line 491
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mAnimiationManager:Lcom/htc/album/addons/slideshow/AnimationManager;

    invoke-virtual {v2}, Lcom/htc/album/addons/slideshow/AnimationManager;->getAnimationOutReversed()Landroid/view/animation/Animation;

    move-result-object v1

    .line 503
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 505
    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 507
    :cond_2
    if-eqz v1, :cond_3

    .line 509
    invoke-virtual {v1, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 512
    :cond_3
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSwitcher:Landroid/widget/ImageSwitcher;

    invoke-virtual {v2, v0}, Landroid/widget/ImageSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 513
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSwitcher:Landroid/widget/ImageSwitcher;

    invoke-virtual {v2, v1}, Landroid/widget/ImageSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 515
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mAnimiationManager:Lcom/htc/album/addons/slideshow/AnimationManager;

    invoke-virtual {v2}, Lcom/htc/album/addons/slideshow/AnimationManager;->getAnimationIndex()I

    move-result v2

    iput v2, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurTransitionAnimIndex:I

    .line 516
    iput-boolean p1, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurDirection:Z

    .line 517
    iput-boolean p2, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurMoveNext:Z

    goto :goto_0

    .line 495
    :cond_4
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mAnimiationManager:Lcom/htc/album/addons/slideshow/AnimationManager;

    invoke-virtual {v2}, Lcom/htc/album/addons/slideshow/AnimationManager;->getAnimationIn()Landroid/view/animation/Animation;

    move-result-object v0

    .line 496
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mAnimiationManager:Lcom/htc/album/addons/slideshow/AnimationManager;

    invoke-virtual {v2}, Lcom/htc/album/addons/slideshow/AnimationManager;->getAnimationOut()Landroid/view/animation/Animation;

    move-result-object v1

    goto :goto_1
.end method

.method private shouldRotate(II)Z
    .locals 4
    .parameter "h"
    .parameter "w"

    .prologue
    const/4 v2, 0x1

    .line 1033
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v0

    .line 1034
    .local v0, screenH:I
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v1

    .line 1036
    .local v1, screenW:I
    if-le p1, p2, :cond_1

    .line 1037
    if-ge v0, v1, :cond_2

    .line 1046
    :cond_0
    :goto_0
    return v2

    .line 1041
    :cond_1
    if-ge p1, p2, :cond_2

    .line 1042
    if-gt v0, v1, :cond_0

    .line 1046
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private showControlBar(Z)V
    .locals 1
    .parameter "isShow"

    .prologue
    .line 1619
    if-eqz p1, :cond_0

    .line 1620
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mIsControlShowing:Z

    .line 1624
    :goto_0
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->updateControlBar()V

    .line 1625
    return-void

    .line 1622
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mIsControlShowing:Z

    goto :goto_0
.end method

.method private updateControlBar()V
    .locals 4

    .prologue
    const/16 v3, 0x20

    const/4 v2, 0x1

    .line 1600
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mIsControlShowing:Z

    if-eqz v0, :cond_0

    .line 1602
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mIsControlShowing:Z

    .line 1603
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v0}, Lcom/htc/album/modules/ui/ControlBarManager;->hideControlBars()V

    .line 1615
    :goto_0
    return-void

    .line 1607
    :cond_0
    iput-boolean v2, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mIsControlShowing:Z

    .line 1608
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    const/16 v1, 0x6f

    invoke-virtual {v0, v2, v1}, Lcom/htc/album/modules/ui/ControlBarManager;->createControlBar(II)V

    .line 1609
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    const/4 v1, 0x2

    const/16 v2, 0xde

    invoke-virtual {v0, v1, v2}, Lcom/htc/album/modules/ui/ControlBarManager;->createControlBar(II)V

    .line 1612
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1613
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xdac

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private updatePrevNextButtons()V
    .locals 5

    .prologue
    const/16 v1, 0x28

    const/16 v4, 0xf

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 882
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mRepeat:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurrentPosition:I

    if-gtz v0, :cond_0

    .line 884
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v0}, Lcom/htc/album/modules/ui/ControlBarManager;->getFooterBar()Lcom/htc/album/modules/ui/widget/GalleryFooterBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->findButton(I)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v0

    check-cast v0, Lcom/htc/album/modules/ui/widget/FooterButton;

    invoke-virtual {v0, v2}, Lcom/htc/album/modules/ui/widget/FooterButton;->setEnabled(Z)V

    .line 892
    :goto_0
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mRepeat:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurrentPosition:I

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_1

    .line 894
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v0}, Lcom/htc/album/modules/ui/ControlBarManager;->getFooterBar()Lcom/htc/album/modules/ui/widget/GalleryFooterBar;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->findButton(I)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v0

    check-cast v0, Lcom/htc/album/modules/ui/widget/FooterButton;

    invoke-virtual {v0, v2}, Lcom/htc/album/modules/ui/widget/FooterButton;->setEnabled(Z)V

    .line 900
    :goto_1
    return-void

    .line 888
    :cond_0
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v0}, Lcom/htc/album/modules/ui/ControlBarManager;->getFooterBar()Lcom/htc/album/modules/ui/widget/GalleryFooterBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->findButton(I)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v0

    check-cast v0, Lcom/htc/album/modules/ui/widget/FooterButton;

    invoke-virtual {v0, v3}, Lcom/htc/album/modules/ui/widget/FooterButton;->setEnabled(Z)V

    goto :goto_0

    .line 898
    :cond_1
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v0}, Lcom/htc/album/modules/ui/ControlBarManager;->getFooterBar()Lcom/htc/album/modules/ui/widget/GalleryFooterBar;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->findButton(I)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v0

    check-cast v0, Lcom/htc/album/modules/ui/widget/FooterButton;

    invoke-virtual {v0, v3}, Lcom/htc/album/modules/ui/widget/FooterButton;->setEnabled(Z)V

    goto :goto_1
.end method

.method private updateTitlebar(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 542
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    if-eqz v0, :cond_0

    .line 545
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurFolderIndicator:Ljava/lang/String;

    .line 546
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v0}, Lcom/htc/album/modules/ui/ControlBarManager;->invalidateControlBars()V

    .line 550
    :goto_0
    return-void

    .line 549
    :cond_0
    sget-object v0, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][Slideshow][updateTitlebar]: mSlideShowController is null !"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected LoadImageToSwitcher(Lcom/htc/opensense2/album/util/ImageManager$IImage;)V
    .locals 10
    .parameter "image"

    .prologue
    const/4 v9, 0x0

    .line 969
    if-nez p1, :cond_0

    .line 971
    sget-object v7, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v8, "[HTCAlbum][Slideshow][LoadImageToSwitcher]: image NG !"

    invoke-static {v7, v8}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1027
    :goto_0
    return-void

    .line 975
    :cond_0
    const/4 v1, 0x0

    .line 976
    .local v1, mTempBmp:Landroid/graphics/Bitmap;
    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getHeight()I

    move-result v0

    .line 977
    .local v0, h:I
    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getWidth()I

    move-result v6

    .line 978
    .local v6, w:I
    invoke-direct {p0, v0, v6}, Lcom/htc/album/addons/slideshow/SlideShow;->shouldRotate(II)Z

    move-result v4

    .line 980
    .local v4, shouldRotate:Z
    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->thumbBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 983
    if-eqz v1, :cond_4

    .line 986
    const-string v7, "image/jps"

    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 988
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-direct {v2, v9, v9, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 989
    .local v2, r:Landroid/graphics/Rect;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v7, v8, v9}, Lcom/htc/opensense2/album/util/BitmapUtil2;->cropImage(Landroid/graphics/Bitmap;Landroid/graphics/Rect;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 990
    .local v5, thumb:Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 991
    const/4 v1, 0x0

    .line 992
    move-object v1, v5

    .line 1006
    .end local v2           #r:Landroid/graphics/Rect;
    .end local v5           #thumb:Landroid/graphics/Bitmap;
    :cond_1
    :goto_1
    iget v7, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mOrientation:I

    if-nez v7, :cond_6

    if-eqz v4, :cond_6

    .line 1007
    const/4 v3, 0x0

    .line 1010
    .local v3, rotateImg:Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Display;->getOrientation()I

    move-result v7

    if-nez v7, :cond_5

    .line 1011
    const/16 v7, 0x5a

    invoke-static {v1, v7}, Lcom/htc/opensense2/album/util/ImageManager;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1017
    :goto_2
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->ReleaseNextViewOnSwitcher()V

    .line 1018
    iget-object v7, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSwitcher:Landroid/widget/ImageSwitcher;

    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v8, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v7, v8}, Landroid/widget/ImageSwitcher;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1019
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1020
    const/4 v1, 0x0

    .line 1021
    goto :goto_0

    .line 994
    .end local v3           #rotateImg:Landroid/graphics/Bitmap;
    :cond_2
    const-string v7, "video/3gpp-3d"

    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "video/mp4-3d"

    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 997
    :cond_3
    sget-object v7, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v8, "[HTCAlbum][Slideshow][LoadImageToSwitcher]: Shouldn\'t run to here, Slideshow not support Video !!!"

    invoke-static {v7, v8}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1002
    :cond_4
    sget-object v7, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v8, "[HTCAlbum][Slideshow][LoadImageToSwitcher]: Bitmap curImage.thumbBitmap is NG !"

    invoke-static {v7, v8}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1015
    .restart local v3       #rotateImg:Landroid/graphics/Bitmap;
    :cond_5
    const/16 v7, -0x5a

    invoke-static {v1, v7}, Lcom/htc/opensense2/album/util/ImageManager;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_2

    .line 1023
    .end local v3           #rotateImg:Landroid/graphics/Bitmap;
    :cond_6
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->ReleaseNextViewOnSwitcher()V

    .line 1024
    iget-object v7, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSwitcher:Landroid/widget/ImageSwitcher;

    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v8, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v7, v8}, Landroid/widget/ImageSwitcher;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0
.end method

.method public buildShuffleList()V
    .locals 3

    .prologue
    .line 1553
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mShuffleList:Ljava/util/ArrayList;

    .line 1554
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1555
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mShuffleList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1554
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1556
    :cond_0
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mShuffleList:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 1557
    return-void
.end method

.method public checkInit()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 359
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v1

    if-gtz v1, :cond_1

    .line 361
    :cond_0
    sget-object v1, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][Slideshow][checkInit]: mImageList NG !"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    :goto_0
    return v0

    .line 365
    :cond_1
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mAnimiationManager:Lcom/htc/album/addons/slideshow/AnimationManager;

    if-nez v1, :cond_2

    .line 367
    sget-object v1, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][Slideshow][checkInit]: mAnimiationManager NG !"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 371
    :cond_2
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    if-nez v0, :cond_3

    .line 373
    sget-object v0, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][Slideshow][checkInit]: mSettingMgr NG !"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    :cond_3
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_4

    .line 379
    sget-object v0, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][Slideshow][checkInit]: mMediaPlayer NG !"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public destoryMusic()V
    .locals 2

    .prologue
    .line 1289
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 1290
    sget-object v0, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][Slideshow][destoryMusic]: Begin"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1292
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->abandonAudioFocus()V

    .line 1294
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 1295
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 1296
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 1298
    sget-object v0, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][Slideshow][destoryMusic]: end"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1300
    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/4 v4, 0x4

    const/4 v1, 0x1

    .line 1357
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 1359
    .local v0, keyCode:I
    iget-boolean v2, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mEnableMusic:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mIsHeadsetHook:Z

    if-nez v2, :cond_2

    :cond_0
    invoke-super {p0, p1}, Lcom/htc/album/modules/ui/ControlBarHostActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    .line 1392
    :cond_1
    :goto_0
    return v1

    .line 1361
    :cond_2
    const/16 v2, 0x4f

    if-ne v0, v2, :cond_5

    .line 1365
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_3

    .line 1366
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "headsetowner"

    const-string v3, "htcalbum"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1367
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1368
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1392
    :cond_3
    :goto_1
    invoke-super {p0, p1}, Lcom/htc/album/modules/ui/ControlBarHostActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 1371
    :cond_4
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 1375
    :cond_5
    const/16 v2, 0x55

    if-eq v0, v2, :cond_6

    const/16 v2, 0x3e

    if-ne v0, v2, :cond_7

    .line 1378
    :cond_6
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_1

    goto :goto_0

    .line 1384
    :cond_7
    const/16 v2, 0x57

    if-eq v0, v2, :cond_1

    const/16 v2, 0x58

    if-eq v0, v2, :cond_1

    const/16 v2, 0x5a

    if-eq v0, v2, :cond_1

    const/16 v2, 0x59

    if-ne v0, v2, :cond_3

    goto :goto_0
.end method

.method public enableBroadcastReceiver()V
    .locals 3

    .prologue
    .line 1502
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 1504
    new-instance v1, Lcom/htc/album/addons/slideshow/SlideShow$TemplateBroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/htc/album/addons/slideshow/SlideShow$TemplateBroadcastReceiver;-><init>(Lcom/htc/album/addons/slideshow/SlideShow;Lcom/htc/album/addons/slideshow/SlideShow$1;)V

    iput-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1507
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1508
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1509
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1510
    const-string v1, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1511
    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1512
    const-string v1, "android.intent.action.MEDIA_NOFS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1513
    const-string v1, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1514
    const-string v1, "android.intent.action.MEDIA_UNMOUNTABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1516
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1517
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/htc/album/addons/slideshow/SlideShow;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1518
    const-string v1, "skyer"

    const-string v2, "skyer register broadcast"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1520
    .end local v0           #intentFilter:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method public getCurrentIndex()I
    .locals 1

    .prologue
    .line 1561
    iget v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurrentPosition:I

    invoke-virtual {p0, v0}, Lcom/htc/album/addons/slideshow/SlideShow;->getShuffleIndex(I)I

    move-result v0

    return v0
.end method

.method public getHeaderSubtitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1729
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurFolderIndicator:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1731
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurFolderIndicator:Ljava/lang/String;

    .line 1736
    :goto_0
    return-object v0

    .line 1735
    :cond_0
    sget-object v0, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][slideshow3D][getHeaderTitle]: Get mCurFolderIndicator NG !"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1736
    const-string v0, ""

    goto :goto_0
.end method

.method public getHeaderTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1716
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurFolderName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1718
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurFolderName:Ljava/lang/String;

    .line 1723
    :goto_0
    return-object v0

    .line 1722
    :cond_0
    sget-object v0, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][slideshow3D][getHeaderTitle]: Get mCurFolderName NG !"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1723
    const-string v0, ""

    goto :goto_0
.end method

.method public getShuffleIndex(I)I
    .locals 4
    .parameter "index"

    .prologue
    .line 1566
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mShuffleList:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 1568
    sget-object v1, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][Slideshow][getShuffleIndex]: mShuffleList is null, set index = 0"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1583
    .end local p1
    :goto_0
    return p1

    .line 1572
    .restart local p1
    :cond_0
    const/4 v1, -0x1

    if-le p1, v1, :cond_1

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mShuffleList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p1, v1, :cond_2

    .line 1574
    :cond_1
    sget-object v1, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][Slideshow][getShuffleIndex]: request index:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", out of list size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mShuffleList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1578
    :cond_2
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "slide_show_shuffle_setting"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1580
    .local v0, bShuffle:Z
    if-eqz v0, :cond_3

    .line 1581
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mShuffleList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    .line 1583
    :cond_3
    iget p1, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurrentPosition:I

    goto :goto_0
.end method

.method public initControlBarManager()V
    .locals 4

    .prologue
    .line 1590
    const v1, 0x7f0a0053

    invoke-virtual {p0, v1}, Lcom/htc/album/addons/slideshow/SlideShow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1591
    .local v0, root:Landroid/view/ViewGroup;
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v1, v0}, Lcom/htc/album/modules/ui/ControlBarManager;->attach(Landroid/view/ViewGroup;)V

    .line 1593
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    const/4 v2, 0x1

    const/16 v3, 0x6f

    invoke-virtual {v1, v2, v3}, Lcom/htc/album/modules/ui/ControlBarManager;->createControlBar(II)V

    .line 1594
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    const/4 v2, 0x2

    const/16 v3, 0xde

    invoke-virtual {v1, v2, v3}, Lcom/htc/album/modules/ui/ControlBarManager;->createControlBar(II)V

    .line 1595
    return-void
.end method

.method public initTitlebar()Z
    .locals 2

    .prologue
    .line 574
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mTitle:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 577
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mTitle:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->bringToFront()V

    .line 579
    const v0, 0x2020090

    invoke-virtual {p0, v0}, Lcom/htc/album/addons/slideshow/SlideShow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mControlBarFolder:Landroid/widget/TextView;

    .line 580
    const v0, 0x2020091

    invoke-virtual {p0, v0}, Lcom/htc/album/addons/slideshow/SlideShow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mControlBarFileIndicator:Landroid/widget/TextView;

    .line 583
    :cond_0
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mTitle:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mControlBarFolder:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mControlBarFileIndicator:Landroid/widget/TextView;

    if-nez v0, :cond_2

    .line 585
    :cond_1
    sget-object v0, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][Slideshow][initTitlebar]: initTitlebar Fail !"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    const/4 v0, 0x0

    .line 590
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isLaunchSlideshow3D()Z
    .locals 6

    .prologue
    const/4 v5, 0x7

    .line 1431
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "slide_show_transition_setting"

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1432
    .local v1, strTransition:Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1434
    .local v0, nAnimIndex:I
    if-ne v0, v5, :cond_0

    const/4 v2, 0x1

    .line 1436
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public launchSlideshow3D()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1441
    sget-object v1, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][SlideshowSettingManager][onCreate]: 2D Slideshow -> 3D Slideshow !"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1442
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1443
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.htc.HTCAlbum.action.LAUNCH_SLIDESHOW3D"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1445
    const-string v1, "slideshow_setting_mode"

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurMode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1446
    const-string v1, "itemIndex"

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "itemIndex"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1447
    const-string v1, "itemfullpath"

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "itemfullpath"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1448
    const-string v1, "slideshow_back_index"

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "slideshow_back_index"

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "itemIndex"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1449
    const-string v1, "viewSingleImage"

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "viewSingleImage"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1450
    const-string v1, "folder_type"

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "folder_type"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1451
    const-string v1, "key_folder_name"

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "key_folder_name"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1452
    const-string v1, "key_bucket_id"

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "key_bucket_id"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1453
    const-string v1, "photoIds"

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "photoIds"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 1455
    invoke-virtual {p0, v0}, Lcom/htc/album/addons/slideshow/SlideShow;->startActivity(Landroid/content/Intent;)V

    .line 1456
    return-void
.end method

.method public makeView()Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 1098
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1099
    .local v1, ret:Landroid/widget/ImageView;
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1101
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setDrawingCacheEnabled(Z)V

    .line 1102
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1103
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1106
    .local v0, p:Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1107
    return-object v1
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 1546
    invoke-super {p0}, Lcom/htc/album/modules/ui/ControlBarHostActivity;->onBackPressed()V

    .line 1547
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/album/modules/ui/ControlBarManager;->enableHeaderTransparentBackground(Z)V

    .line 1548
    return-void
.end method

.method public onControlButtonClick(Lcom/htc/album/modules/ui/widget/ControlButton;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/album/modules/ui/widget/ControlButton",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1660
    .local p1, button:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<*>;"
    invoke-virtual {p1}, Lcom/htc/album/modules/ui/widget/ControlButton;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 1687
    :goto_0
    return-void

    .line 1663
    :sswitch_0
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->launchSetting()V

    goto :goto_0

    .line 1667
    :sswitch_1
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mIsPlaying:Z

    if-eqz v0, :cond_0

    .line 1669
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->onControlbarPause()V

    goto :goto_0

    .line 1673
    :cond_0
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->onControlbarPlay()V

    goto :goto_0

    .line 1678
    :sswitch_2
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->onControlbarPrevious()V

    goto :goto_0

    .line 1681
    :sswitch_3
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->onControlbarNext()V

    goto :goto_0

    .line 1684
    :sswitch_4
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->onGoBack()V

    goto :goto_0

    .line 1660
    :sswitch_data_0
    .sparse-switch
        0xf -> :sswitch_3
        0x13 -> :sswitch_4
        0x24 -> :sswitch_0
        0x25 -> :sswitch_1
        0x28 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "icicle"

    .prologue
    const/4 v13, 0x0

    const v12, 0x7f0b0049

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 179
    invoke-super {p0, p1}, Lcom/htc/album/modules/ui/ControlBarHostActivity;->onCreate(Landroid/os/Bundle;)V

    .line 180
    sget-object v6, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v7, "onCreate"

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    new-instance v6, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    invoke-direct {v6}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;-><init>()V

    iput-object v6, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    .line 184
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "slideshow_setting_mode"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurMode:Ljava/lang/String;

    .line 186
    iget-object v6, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    iget-object v7, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurMode:Ljava/lang/String;

    invoke-virtual {v6, p0, v7}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->initSlideshowSetting(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 188
    sget-object v6, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v7, "[HTCAlbum][SlideshowSettingManager][onCreate]: init SlideshowSetingManager NG !"

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->finish()V

    .line 193
    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->isLaunchSlideshow3D()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 195
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->launchSlideshow3D()V

    .line 196
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->finish()V

    .line 353
    :goto_0
    return-void

    .line 200
    :cond_1
    sget-object v6, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v7, "[HTCAlbum][Slideshow][onCreate]: Run 2D Slideshow !"

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    invoke-direct {p0, v10}, Lcom/htc/album/addons/slideshow/SlideShow;->setKeepScreenOn(Z)V

    .line 204
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "key_bucket_id"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mBucketId:Ljava/lang/String;

    .line 205
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "viewSingleImage"

    invoke-virtual {v6, v7, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 209
    .local v5, viewSingleImage:Z
    const/4 v1, 0x1

    .line 211
    .local v1, sort:I
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "folder_type"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mFolderType:Ljava/lang/String;

    .line 212
    iget-object v6, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mFolderType:Ljava/lang/String;

    if-nez v6, :cond_2

    .line 215
    sget-object v6, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v7, "[HTCAlbum][Slideshow][onCreate]: null folder detected... "

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    const-string v6, "com.htc.HTCAlbum.LOCAL_FOLDER"

    iput-object v6, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mFolderType:Ljava/lang/String;

    .line 221
    :cond_2
    iget-object v6, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mBucketId:Ljava/lang/String;

    if-nez v6, :cond_3

    .line 222
    const-string v6, "com.htc.HTCAlbum.ALL_PHOTOS"

    iput-object v6, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mBucketId:Ljava/lang/String;

    .line 228
    :cond_3
    iget-object v6, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurMode:Ljava/lang/String;

    iget-object v7, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v7, "album_mode"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 230
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "key_folder_name"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurFolderName:Ljava/lang/String;

    .line 262
    :cond_4
    :goto_1
    iget-object v6, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mAnimiationManager:Lcom/htc/album/addons/slideshow/AnimationManager;

    iget-object v7, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    invoke-virtual {v6, p0, v7}, Lcom/htc/album/addons/slideshow/AnimationManager;->initAnimations(Landroid/content/Context;Lcom/htc/album/addons/slideshow/SlideshowSetingManager;)V

    .line 264
    iget-object v6, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-nez v6, :cond_5

    .line 270
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "photoIds"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v0

    .line 271
    .local v0, nPhotoIds:[I
    if-eqz v0, :cond_d

    .line 273
    sget-object v6, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][Slideshow][onCreate]: from photo ids: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    invoke-static {p0, v0}, Lcom/htc/opensense2/album/util/ImageManager;->makeSingleImageListFromImageIds(Landroid/content/Context;[I)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 286
    .end local v0           #nPhotoIds:[I
    :cond_5
    :goto_2
    iget-object v6, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v6}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v6

    if-gtz v6, :cond_e

    .line 289
    :cond_6
    iget-object v6, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurMode:Ljava/lang/String;

    iget-object v7, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v7, "dock_mode"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 291
    sget-object v6, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v7, "[HTCAlbum][SlideshowSettingManager][onCreate]: no pref folder, set folder to all photo"

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    const-string v6, "com.htc.HTCAlbum.ALL_PHOTOS"

    iput-object v6, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mFolderType:Ljava/lang/String;

    .line 295
    const-string v6, "com.htc.HTCAlbum.ALL_PHOTOS"

    iput-object v6, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mBucketId:Ljava/lang/String;

    .line 296
    invoke-virtual {p0, v12}, Lcom/htc/album/addons/slideshow/SlideShow;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurFolderName:Ljava/lang/String;

    .line 299
    iget-object v6, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    iget-object v7, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v7, "slide_show_folder_picker_setting"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mFolderType:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mBucketId:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurFolderName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 301
    iget-object v6, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mBucketId:Ljava/lang/String;

    iget-object v7, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mFolderType:Ljava/lang/String;

    invoke-static {p0, v6, v7}, Lcom/htc/opensense2/album/util/AlbumObjectManager;->makeList_Slideshow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 304
    :cond_7
    iget-object v6, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v6}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v6

    if-gtz v6, :cond_e

    .line 306
    :cond_8
    sget-object v6, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v7, "[HTCAlbum][SlideshowSettingManager][onCreate]: empty list"

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->showErrorDialog()V

    goto/16 :goto_0

    .line 232
    :cond_9
    iget-object v6, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurMode:Ljava/lang/String;

    iget-object v7, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v7, "dock_mode"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 234
    iget-object v6, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    iget-object v7, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v7, "slide_show_folder_picker_setting"

    invoke-virtual {v6, v7, v13}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 237
    .local v2, strFolderType:Ljava/lang/String;
    if-eqz v2, :cond_c

    .line 239
    new-instance v4, Ljava/util/StringTokenizer;

    invoke-direct {v4, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 241
    .local v4, type:Ljava/util/StringTokenizer;
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mFolderType:Ljava/lang/String;

    .line 242
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 243
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mBucketId:Ljava/lang/String;

    .line 244
    :cond_a
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 245
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurFolderName:Ljava/lang/String;

    .line 246
    :cond_b
    :goto_3
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 247
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurFolderName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurFolderName:Ljava/lang/String;

    goto :goto_3

    .line 252
    .end local v4           #type:Ljava/util/StringTokenizer;
    :cond_c
    const-string v6, "com.htc.HTCAlbum.ALL_PHOTOS"

    iput-object v6, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mFolderType:Ljava/lang/String;

    .line 253
    const-string v6, "com.htc.HTCAlbum.ALL_PHOTOS"

    iput-object v6, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mBucketId:Ljava/lang/String;

    .line 254
    invoke-virtual {p0, v12}, Lcom/htc/album/addons/slideshow/SlideShow;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurFolderName:Ljava/lang/String;

    .line 257
    iget-object v6, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    iget-object v7, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v7, "slide_show_folder_picker_setting"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mFolderType:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mBucketId:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurFolderName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_1

    .line 278
    .end local v2           #strFolderType:Ljava/lang/String;
    .restart local v0       #nPhotoIds:[I
    :cond_d
    iget-object v6, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mBucketId:Ljava/lang/String;

    iget-object v7, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mFolderType:Ljava/lang/String;

    invoke-static {p0, v6, v7}, Lcom/htc/opensense2/album/util/AlbumObjectManager;->makeList_Slideshow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 279
    sget-object v6, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][Slideshow][onCreate]: from bucket id: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 313
    .end local v0           #nPhotoIds:[I
    :cond_e
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "itemIndex"

    invoke-virtual {v6, v7, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurrentPosition:I

    .line 314
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "slideshow_back_index"

    iget v8, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurrentPosition:I

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mEnterPosition:I

    .line 315
    sget-object v6, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][Slideshow][onCreate]: Slideshow Get Index: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurrentPosition:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", Get Ent Pos: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mEnterPosition:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    iget v6, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurrentPosition:I

    if-eqz v6, :cond_f

    .line 318
    const/4 v3, 0x0

    .line 319
    .local v3, strFullPath:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "itemfullpath"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 321
    iget v6, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurrentPosition:I

    iget-object v7, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-static {v6, v3, v7}, Lcom/htc/album/addons/slideshow/Slideshow3D;->searchCurIndexAtNewList(ILjava/lang/String;Lcom/htc/opensense2/album/util/ImageManager$IImageList;)I

    move-result v6

    iput v6, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurrentPosition:I

    .line 323
    .end local v3           #strFullPath:Ljava/lang/String;
    :cond_f
    sget-object v6, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][Slideshow][onCreate]: Slideshow Start play from Index: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurrentPosition:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    iget v6, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurrentPosition:I

    if-ltz v6, :cond_10

    .line 327
    iget v6, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurrentPosition:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurrentPosition:I

    .line 329
    :cond_10
    sget-object v6, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][SlideshowSettingManager][onCreate]: Slideshow reset mCurrentPosition: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurrentPosition:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->buildShuffleList()V

    .line 334
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->retrieveSettings()V

    .line 335
    const v6, 0x7f030035

    invoke-virtual {p0, v6}, Lcom/htc/album/addons/slideshow/SlideShow;->setContentView(I)V

    .line 336
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->initControlBarManager()V

    .line 337
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->initLayout()V

    .line 338
    iput-boolean v10, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mPosted:Z

    .line 341
    new-instance v6, Landroid/media/MediaPlayer;

    invoke-direct {v6}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v6, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 342
    iget-object v6, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v6, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 343
    iput v10, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mMusicState:I

    .line 347
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6, v13}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 349
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 352
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->enableBroadcastReceiver()V

    goto/16 :goto_0
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .parameter "id"
    .parameter "args"

    .prologue
    .line 1468
    const v1, 0x1b669

    if-ne p1, v1, :cond_0

    .line 1470
    new-instance v1, Lcom/htc/dialog/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/dialog/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b001e

    invoke-virtual {v1, v2}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b001f

    invoke-virtual {v1, v2}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v0

    .line 1476
    .local v0, builder:Lcom/htc/dialog/HtcAlertDialog$Builder;
    const v1, 0x20c015f

    new-instance v2, Lcom/htc/album/addons/slideshow/SlideShow$4;

    invoke-direct {v2, p0}, Lcom/htc/album/addons/slideshow/SlideShow$4;-><init>(Lcom/htc/album/addons/slideshow/SlideShow;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    .line 1484
    new-instance v1, Lcom/htc/album/addons/slideshow/SlideShow$5;

    invoke-direct {v1, p0}, Lcom/htc/album/addons/slideshow/SlideShow$5;-><init>(Lcom/htc/album/addons/slideshow/SlideShow;)V

    invoke-virtual {v0, v1}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    .line 1493
    invoke-virtual {v0}, Lcom/htc/dialog/HtcAlertDialog$Builder;->create()Lcom/htc/dialog/HtcAlertDialog;

    move-result-object v1

    .line 1496
    .end local v0           #builder:Lcom/htc/dialog/HtcAlertDialog$Builder;
    :goto_0
    return-object v1

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/htc/album/modules/ui/ControlBarHostActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v1

    goto :goto_0
.end method

.method public onCreateFooterBar(I)Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    .locals 7
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    .line 1748
    const/4 v0, 0x0

    .line 1749
    .local v0, footerBar:Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 1750
    .local v1, context:Landroid/content/Context;
    invoke-static {v1}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->makeFooter(Landroid/content/Context;)Lcom/htc/album/modules/ui/widget/GalleryFooterBar;

    move-result-object v0

    .line 1751
    const/16 v3, 0x28

    const v4, 0x208092e

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    .line 1752
    const/16 v3, 0x25

    const v4, 0x2080915

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    .line 1753
    const/16 v3, 0xf

    const v4, 0x2080907

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    .line 1755
    invoke-virtual {v0}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->getRootView()Landroid/view/ViewGroup;

    move-result-object v6

    .line 1756
    .local v6, footer:Landroid/view/ViewGroup;
    instance-of v2, v6, Lcom/htc/widget/HtcFooter;

    if-eqz v2, :cond_0

    .line 1757
    check-cast v6, Lcom/htc/widget/HtcFooter;

    .end local v6           #footer:Landroid/view/ViewGroup;
    const/4 v2, 0x1

    invoke-virtual {v6, v2}, Lcom/htc/widget/HtcFooter;->setTranparentBckground(Z)V

    .line 1760
    :cond_0
    return-object v0
.end method

.method public onCreateHeaderBar(I)Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;
    .locals 8
    .parameter "id"

    .prologue
    const/4 v7, 0x1

    .line 1698
    const/4 v0, 0x0

    .line 1699
    .local v0, headerBar:Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 1700
    .local v1, context:Landroid/content/Context;
    invoke-static {v1, v7}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->makeHeader(Landroid/content/Context;I)Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;

    move-result-object v0

    .line 1701
    const/4 v2, 0x0

    const/16 v3, 0x24

    const v4, 0x208095f

    const v5, 0x20c0163

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    .line 1703
    const v2, 0x7f020035

    invoke-virtual {v0, v2}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->setBackButtonImageResource(I)V

    .line 1705
    invoke-virtual {v0}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->getRootView()Landroid/view/ViewGroup;

    move-result-object v6

    .line 1706
    .local v6, header:Landroid/view/ViewGroup;
    instance-of v2, v6, Lcom/htc/widget/HeaderBar;

    if-eqz v2, :cond_0

    .line 1707
    check-cast v6, Lcom/htc/widget/HeaderBar;

    .end local v6           #header:Landroid/view/ViewGroup;
    invoke-virtual {v6, v7}, Lcom/htc/widget/HeaderBar;->enableTransparentBackground(Z)V

    .line 1710
    :cond_0
    return-object v0
.end method

.method public onDLNASupportRange()Z
    .locals 1

    .prologue
    .line 1129
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 801
    sget-object v2, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v3, "onDestory"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->destoryMusic()V

    .line 805
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->cancelPost()V

    .line 806
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSwitcher:Landroid/widget/ImageSwitcher;

    if-eqz v2, :cond_2

    .line 807
    const/4 v0, 0x0

    .line 808
    .local v0, aView:Landroid/view/View;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSwitcher:Landroid/widget/ImageSwitcher;

    invoke-virtual {v2}, Landroid/widget/ImageSwitcher;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 809
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSwitcher:Landroid/widget/ImageSwitcher;

    invoke-virtual {v2, v1}, Landroid/widget/ImageSwitcher;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 810
    if-eqz v0, :cond_0

    instance-of v2, v0, Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    move-object v2, v0

    .line 811
    check-cast v2, Landroid/widget/ImageView;

    invoke-direct {p0, v2}, Lcom/htc/album/addons/slideshow/SlideShow;->ReleaseBitmap(Landroid/widget/ImageView;)V

    .line 808
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 814
    :cond_1
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSwitcher:Landroid/widget/ImageSwitcher;

    invoke-virtual {v2}, Landroid/widget/ImageSwitcher;->removeAllViews()V

    .line 815
    iput-object v4, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSwitcher:Landroid/widget/ImageSwitcher;

    .line 818
    .end local v0           #aView:Landroid/view/View;
    .end local v1           #i:I
    :cond_2
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz v2, :cond_3

    .line 819
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->deactivate()V

    .line 820
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->closeCursor()V

    .line 821
    iput-object v4, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 823
    :cond_3
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 824
    invoke-super {p0}, Lcom/htc/album/modules/ui/ControlBarHostActivity;->onDestroy()V

    .line 825
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 3
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 1305
    sget-object v0, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][Slideshow3D][onError]: Stop Music, what:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", extra: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1306
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->stopMusic()V

    .line 1308
    const/4 v0, 0x0

    return v0
.end method

.method public onFfwdTarget()V
    .locals 0

    .prologue
    .line 1125
    return-void
.end method

.method public onFinishInflate(ILandroid/view/View;)V
    .locals 0
    .parameter "resourceId"
    .parameter "v"

    .prologue
    .line 1203
    return-void
.end method

.method public onGoBack()V
    .locals 0

    .prologue
    .line 1132
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->finish()V

    .line 1133
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 857
    packed-switch p1, :pswitch_data_0

    .line 866
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/htc/album/modules/ui/ControlBarHostActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 863
    :pswitch_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/album/addons/slideshow/SlideShow;->showControlBar(Z)V

    goto :goto_0

    .line 857
    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onMenuPress()V
    .locals 0

    .prologue
    .line 1127
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 651
    sget-object v0, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][Slideshow][onPause]: Begin"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    invoke-super {p0}, Lcom/htc/album/modules/ui/ControlBarHostActivity;->onPause()V

    .line 654
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    if-eqz v0, :cond_0

    .line 655
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v0, v2}, Lcom/htc/album/modules/ui/ControlBarManager;->enableHeaderTransparentBackground(Z)V

    .line 658
    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->checkInit()Z

    move-result v0

    if-nez v0, :cond_1

    .line 678
    :goto_0
    return-void

    .line 660
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "::onPause"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/opensense2/album/AlbumCommon/Constants;->memUsageTrace(Ljava/lang/String;)V

    .line 667
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->cancelPost()V

    .line 668
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mStopAndLeave:Z

    .line 670
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->onControlbarPause()V

    .line 671
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mIsSettingShown:Z

    if-eqz v0, :cond_2

    .line 673
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mBackupIsPlayingFlag:Z

    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mIsPlaying:Z

    .line 674
    iput-boolean v2, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mIsSettingShown:Z

    .line 676
    :cond_2
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSwitcher:Landroid/widget/ImageSwitcher;

    invoke-virtual {v0}, Landroid/widget/ImageSwitcher;->destroyDrawingCache()V

    .line 677
    sget-object v0, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][Slideshow][onPause]: End"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPauseTarget()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1136
    iput-boolean v4, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mIsPlaying:Z

    .line 1139
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurMode:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v3, "album_mode"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1141
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1142
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1143
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "photo_position"

    iget v3, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mEnterPosition:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1144
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1148
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #prefs:Landroid/content/SharedPreferences;
    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->pauseMusic()V

    .line 1150
    invoke-direct {p0, v4}, Lcom/htc/album/addons/slideshow/SlideShow;->setKeepScreenOn(Z)V

    .line 1151
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->cancelPost()V

    .line 1152
    return-void
.end method

.method public onPlayTarget()Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 1155
    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mIsPlaying:Z

    .line 1157
    invoke-direct {p0, v0}, Lcom/htc/album/addons/slideshow/SlideShow;->setKeepScreenOn(Z)V

    .line 1158
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->loadNextImage()V

    .line 1160
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->playMusic()V

    .line 1161
    return v0
.end method

.method public onPlaybackMode()V
    .locals 0

    .prologue
    .line 1168
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 555
    invoke-super {p0, p1}, Lcom/htc/album/modules/ui/ControlBarHostActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 556
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 557
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->updateControlBar()V

    .line 558
    const/4 v0, 0x1

    return v0
.end method

.method public onRefreshFooterBar(Lcom/htc/album/modules/ui/widget/GalleryFooterBar;)V
    .locals 2
    .parameter "footer"

    .prologue
    .line 1766
    const/16 v1, 0x25

    invoke-virtual {p1, v1}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->findButton(I)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v0

    check-cast v0, Lcom/htc/album/modules/ui/widget/FooterButton;

    .line 1767
    .local v0, playBtn:Lcom/htc/album/modules/ui/widget/FooterButton;
    iget-boolean v1, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mIsPlaying:Z

    if-eqz v1, :cond_0

    const v1, 0x2080915

    :goto_0
    invoke-virtual {v0, v1}, Lcom/htc/album/modules/ui/widget/FooterButton;->setImageResource(I)V

    .line 1768
    return-void

    .line 1767
    :cond_0
    const v1, 0x2080927

    goto :goto_0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 608
    sget-object v0, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][Slideshow][onResume]: Begin"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    invoke-super {p0}, Lcom/htc/album/modules/ui/ControlBarHostActivity;->onResume()V

    .line 612
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->checkInit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 646
    :goto_0
    return-void

    .line 614
    :cond_0
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    if-eqz v0, :cond_1

    .line 615
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v0, v2}, Lcom/htc/album/modules/ui/ControlBarManager;->enableHeaderTransparentBackground(Z)V

    .line 618
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "::onResume"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/opensense2/album/AlbumCommon/Constants;->memUsageTrace(Ljava/lang/String;)V

    .line 619
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mStopAndLeave:Z

    .line 623
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mIsPlaying:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->isTransAnimChange()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 627
    :cond_2
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->onPlayTarget()Z

    .line 628
    invoke-direct {p0, v2}, Lcom/htc/album/addons/slideshow/SlideShow;->showControlBar(Z)V

    .line 629
    const/16 v0, 0x320

    invoke-direct {p0, v0}, Lcom/htc/album/addons/slideshow/SlideShow;->post(I)V

    .line 645
    :goto_1
    sget-object v0, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][Slideshow][onResume]: End"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 633
    :cond_3
    invoke-direct {p0, v2}, Lcom/htc/album/addons/slideshow/SlideShow;->showControlBar(Z)V

    goto :goto_1
.end method

.method public onRewTarget()V
    .locals 0

    .prologue
    .line 1164
    return-void
.end method

.method public onSettings()V
    .locals 0

    .prologue
    .line 1166
    return-void
.end method

.method protected onStart()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 705
    invoke-super {p0}, Lcom/htc/album/modules/ui/ControlBarHostActivity;->onStart()V

    .line 706
    sget-object v9, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v10, "onStart"

    invoke-static {v9, v10}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->checkInit()Z

    move-result v9

    if-nez v9, :cond_1

    .line 796
    :cond_0
    :goto_0
    return-void

    .line 711
    :cond_1
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->enableBroadcastReceiver()V

    .line 714
    iget-object v9, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    iget-object v10, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v10, "slide_show_orientation_setting"

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 715
    .local v2, orientation:Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 716
    .local v1, mOrentation:I
    if-nez v1, :cond_3

    .line 717
    invoke-virtual {p0, v12}, Lcom/htc/album/addons/slideshow/SlideShow;->setRequestedOrientation(I)V

    .line 722
    :goto_1
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->isLaunchSlideshow3D()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 724
    iget-object v9, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz v9, :cond_2

    iget v9, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurrentPosition:I

    if-ltz v9, :cond_2

    iget v9, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurrentPosition:I

    iget-object v10, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v10}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v10

    if-ge v9, v10, :cond_2

    .line 726
    iget-object v9, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    iget v10, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurrentPosition:I

    invoke-interface {v9, v10}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v0

    .line 727
    .local v0, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz v0, :cond_2

    .line 729
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v10, "slideshow_back_index"

    iget v11, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mEnterPosition:I

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 731
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v10, "itemIndex"

    iget v11, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurrentPosition:I

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 733
    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v7

    .line 734
    .local v7, strFullPath:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v10, "itemfullpath"

    invoke-virtual {v9, v10, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 736
    sget-object v9, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[HTCAlbum][Slideshow][onStart]: Set CurPos: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurrentPosition:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", Set EntPos: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mEnterPosition:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    .end local v0           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .end local v7           #strFullPath:Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->launchSlideshow3D()V

    .line 741
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->finish()V

    goto/16 :goto_0

    .line 719
    :cond_3
    const/4 v9, 0x2

    invoke-virtual {p0, v9}, Lcom/htc/album/addons/slideshow/SlideShow;->setRequestedOrientation(I)V

    goto :goto_1

    .line 746
    :cond_4
    iget-object v9, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurMode:Ljava/lang/String;

    iget-object v10, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v10, "dock_mode"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 748
    iget-object v9, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    iget-object v10, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v10, "slide_show_folder_picker_setting"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 750
    .local v6, strFolderTypeKeyValue:Ljava/lang/String;
    if-eqz v6, :cond_c

    .line 752
    const/4 v5, 0x0

    .line 753
    .local v5, strFolderType:Ljava/lang/String;
    const/4 v3, 0x0

    .line 754
    .local v3, strBucketId:Ljava/lang/String;
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4}, Ljava/lang/String;-><init>()V

    .line 755
    .local v4, strFolderName:Ljava/lang/String;
    new-instance v8, Ljava/util/StringTokenizer;

    invoke-direct {v8, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 757
    .local v8, type:Ljava/util/StringTokenizer;
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    .line 758
    :cond_5
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 759
    :cond_6
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 760
    :cond_7
    :goto_2
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 761
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 763
    :cond_8
    if-eqz v5, :cond_0

    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    .line 765
    iget-object v9, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mBucketId:Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 767
    iput-object v5, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mFolderType:Ljava/lang/String;

    .line 768
    iput-object v3, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mBucketId:Ljava/lang/String;

    .line 770
    iget-object v9, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mFolderType:Ljava/lang/String;

    const-string v10, "com.htc.HTCAlbum.CAMERA_SHOTS"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 771
    const v9, 0x7f0b0048

    invoke-virtual {p0, v9}, Lcom/htc/album/addons/slideshow/SlideShow;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurFolderName:Ljava/lang/String;

    .line 775
    :goto_3
    iget-object v9, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mBucketId:Ljava/lang/String;

    iget-object v10, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mFolderType:Ljava/lang/String;

    invoke-static {p0, v9, v10}, Lcom/htc/opensense2/album/util/AlbumObjectManager;->makeList_Slideshow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 776
    const/4 v9, -0x1

    iput v9, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurrentPosition:I

    .line 777
    iget-object v9, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz v9, :cond_9

    iget-object v9, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v9}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v9

    if-gtz v9, :cond_b

    .line 779
    :cond_9
    sget-object v9, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v10, "[HTCAlbum][Slideshow][onStart]: mImageList is Null or Zero !"

    invoke-static {v9, v10}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 780
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->showErrorDialog()V

    goto/16 :goto_0

    .line 773
    :cond_a
    iput-object v4, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mCurFolderName:Ljava/lang/String;

    goto :goto_3

    .line 784
    :cond_b
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->buildShuffleList()V

    .line 786
    iget-object v9, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    if-eqz v9, :cond_0

    .line 788
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->getCurrentIndex()I

    move-result v9

    invoke-direct {p0, v9}, Lcom/htc/album/addons/slideshow/SlideShow;->updateTitlebar(I)V

    goto/16 :goto_0

    .line 794
    .end local v3           #strBucketId:Ljava/lang/String;
    .end local v4           #strFolderName:Ljava/lang/String;
    .end local v5           #strFolderType:Ljava/lang/String;
    .end local v8           #type:Ljava/util/StringTokenizer;
    :cond_c
    sget-object v9, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v10, "[HTCAlbum][Slideshow][onStart]: Get Folder from preference NG !"

    invoke-static {v9, v10}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected onStop()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 684
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v2, :cond_0

    .line 686
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/htc/album/addons/slideshow/SlideShow;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 687
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 690
    :cond_0
    sget-object v2, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v3, "onStop"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "slide_show_orientation_setting"

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 694
    .local v1, orientation:Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 695
    .local v0, mOrentation:I
    if-nez v0, :cond_1

    .line 696
    invoke-virtual {p0, v5}, Lcom/htc/album/addons/slideshow/SlideShow;->setRequestedOrientation(I)V

    .line 700
    :goto_0
    invoke-super {p0}, Lcom/htc/album/modules/ui/ControlBarHostActivity;->onStop()V

    .line 701
    return-void

    .line 698
    :cond_1
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/htc/album/addons/slideshow/SlideShow;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method public onVideoSoundEffect(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 1209
    return-void
.end method

.method public pauseMusic()V
    .locals 2

    .prologue
    .line 1259
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 1261
    sget-object v0, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][Slideshow][pauseMusic]: Begin"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1263
    iget v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mMusicState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1265
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->abandonAudioFocus()V

    .line 1266
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 1267
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mMusicState:I

    .line 1270
    :cond_0
    sget-object v0, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][Slideshow][pauseMusic]: End"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1272
    :cond_1
    return-void
.end method

.method public playMusic()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 1215
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mEnableMusic:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mIsPlaying:Z

    if-eqz v3, :cond_1

    .line 1217
    sget-object v3, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[HTCAlbum][Slideshow][playMusic]: Begin"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1219
    iget v3, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mMusicState:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    .line 1221
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->requestAudioFocus()V

    .line 1223
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->start()V

    .line 1224
    iput v6, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mMusicState:I

    .line 1226
    sget-object v3, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[HTCAlbum][Slideshow][playMusic]: Pause -> Playing"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1254
    :cond_0
    :goto_0
    sget-object v3, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[HTCAlbum][Slideshow][playMusic]: End"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1256
    :cond_1
    return-void

    .line 1228
    :cond_2
    iget v3, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mMusicState:I

    if-ne v3, v5, :cond_0

    .line 1230
    const/4 v1, 0x0

    .line 1231
    .local v1, fileA:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    .end local v1           #fileA:Ljava/io/File;
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mUriMusic:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1234
    .restart local v1       #fileA:Ljava/io/File;
    :try_start_0
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->requestAudioFocus()V

    .line 1236
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->reset()V

    .line 1237
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mUriMusic:Landroid/net/Uri;

    invoke-virtual {v3, p0, v4}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 1238
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->prepare()V

    .line 1239
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 1240
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->start()V

    .line 1242
    const/4 v3, 0x2

    iput v3, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mMusicState:I

    .line 1244
    sget-object v3, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[HTCAlbum][Slideshow][playMusic]: Stop -> Playing"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1245
    :catch_0
    move-exception v0

    .line 1246
    .local v0, ex:Ljava/io/IOException;
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 1247
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1248
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1250
    sget-object v3, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[HTCAlbum][Slideshow][playMusic]: Play Music Start NG !"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public requestFooterBar()Z
    .locals 1

    .prologue
    .line 1743
    const/4 v0, 0x1

    return v0
.end method

.method public requestHeaderBar()Z
    .locals 1

    .prologue
    .line 1692
    const/4 v0, 0x1

    return v0
.end method

.method public showErrorDialog()V
    .locals 1

    .prologue
    .line 1461
    const v0, 0x1b669

    invoke-virtual {p0, v0}, Lcom/htc/album/addons/slideshow/SlideShow;->showDialog(I)V

    .line 1462
    return-void
.end method

.method public stopMusic()V
    .locals 2

    .prologue
    .line 1275
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 1277
    sget-object v0, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][Slideshow][stopMusic]: Begin"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1279
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideShow;->abandonAudioFocus()V

    .line 1281
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 1282
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/album/addons/slideshow/SlideShow;->mMusicState:I

    .line 1284
    sget-object v0, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][Slideshow][stopMusic]: End"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1286
    :cond_0
    return-void
.end method

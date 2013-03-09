.class public Lcom/htc/album/addons/slideshow/Slideshow3D;
.super Lcom/htc/album/modules/ui/ControlBarHostActivity;
.source "Slideshow3D.java"

# interfaces
.implements Landroid/widget/ViewSwitcher$ViewFactory;
.implements Lcom/htc/album/addons/slideshow/SlideShowController$ControllerEventListener;
.implements Lcom/htc/sunny2/slideshow/SlideshowController$SlideshowControlEventListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/addons/slideshow/Slideshow3D$TemplateBroadcastReceiver;,
        Lcom/htc/album/addons/slideshow/Slideshow3D$SlideShowAudioFocusChangeListener;,
        Lcom/htc/album/addons/slideshow/Slideshow3D$SlideshowConstants;
    }
.end annotation


# static fields
.field private static final DEBUG_LOG:Ljava/lang/String; = "KA>>> S3D: "

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

.field private mAudioFocusListener:Lcom/htc/album/addons/slideshow/Slideshow3D$SlideShowAudioFocusChangeListener;

.field private mAudioMgr:Landroid/media/AudioManager;

.field mBackupIsPlayingFlag:Z

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mBucketId:Ljava/lang/String;

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

.field private mSlideShowView:Lcom/htc/sunny2/slideshow/SlideshowView;

.field private mSlideshowInterval:I

.field private mStopAndLeave:Z

.field private mTransitionAnimIndex:I

.field private mUriMusic:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    const-class v0, Lcom/htc/album/addons/slideshow/Slideshow3D;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Lcom/htc/album/modules/ui/ControlBarHostActivity;-><init>()V

    .line 93
    iput-boolean v3, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->SPECIFY_DIRECTION:Z

    .line 94
    iput-boolean v3, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->DIRECTION_FORWARD:Z

    .line 95
    iput-boolean v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->DIRECTION_BACKWARD:Z

    .line 101
    iput v3, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mMusicState:I

    .line 102
    iput-object v2, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mAudioMgr:Landroid/media/AudioManager;

    .line 103
    iput-object v2, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mAudioFocusListener:Lcom/htc/album/addons/slideshow/Slideshow3D$SlideShowAudioFocusChangeListener;

    .line 104
    iput-boolean v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mIsHeadsetHook:Z

    .line 106
    iput v3, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->MUSIC_STATE_STOP:I

    .line 107
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->MUSIC_STATE_PLAYING:I

    .line 108
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->MUSIC_STATE_PAUSE:I

    .line 111
    const-string v0, "album_mode"

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurMode:Ljava/lang/String;

    .line 112
    iput-object v2, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurFolderBucketId:Ljava/lang/String;

    .line 113
    iput-object v2, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurFolderName:Ljava/lang/String;

    .line 114
    iput-object v2, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurFolderIndicator:Ljava/lang/String;

    .line 118
    iput-boolean v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mIsControlShowing:Z

    .line 124
    iput v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurrentPosition:I

    .line 125
    iput v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mEnterPosition:I

    .line 127
    iput-object v2, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mFolderType:Ljava/lang/String;

    .line 137
    iput-boolean v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mPosted:Z

    .line 138
    iput-boolean v3, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mIsPlaying:Z

    .line 139
    iput-boolean v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mStopAndLeave:Z

    .line 147
    iput-boolean v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mIsSettingShown:Z

    .line 148
    iput-boolean v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mBackupIsPlayingFlag:Z

    .line 152
    new-instance v0, Lcom/htc/album/addons/slideshow/AnimationManager;

    invoke-direct {v0}, Lcom/htc/album/addons/slideshow/AnimationManager;-><init>()V

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mAnimiationManager:Lcom/htc/album/addons/slideshow/AnimationManager;

    .line 156
    iput-boolean v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurDirection:Z

    .line 157
    iput-boolean v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurMoveNext:Z

    .line 158
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurTransitionAnimIndex:I

    .line 163
    iput-object v2, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowView:Lcom/htc/sunny2/slideshow/SlideshowView;

    .line 551
    new-instance v0, Lcom/htc/album/addons/slideshow/Slideshow3D$1;

    invoke-direct {v0, p0}, Lcom/htc/album/addons/slideshow/Slideshow3D$1;-><init>(Lcom/htc/album/addons/slideshow/Slideshow3D;)V

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 934
    new-instance v0, Lcom/htc/album/addons/slideshow/Slideshow3D$2;

    invoke-direct {v0, p0}, Lcom/htc/album/addons/slideshow/Slideshow3D$2;-><init>(Lcom/htc/album/addons/slideshow/Slideshow3D;)V

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mNextImageRunnable:Ljava/lang/Runnable;

    .line 993
    new-instance v0, Lcom/htc/album/addons/slideshow/Slideshow3D$3;

    invoke-direct {v0, p0}, Lcom/htc/album/addons/slideshow/Slideshow3D$3;-><init>(Lcom/htc/album/addons/slideshow/Slideshow3D;)V

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mHandler:Landroid/os/Handler;

    .line 1401
    return-void
.end method

.method private ReleaseBitmap(Landroid/widget/ImageView;)V
    .locals 3
    .parameter "aView"

    .prologue
    .line 1061
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1062
    .local v1, dw:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    instance-of v2, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_0

    .line 1063
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .end local v1           #dw:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1064
    .local v0, bmp:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1066
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1070
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    :cond_0
    return-void
.end method

.method private ReleaseNextViewOnSwitcher()V
    .locals 0

    .prologue
    .line 1075
    return-void
.end method

.method private abandonAudioFocus()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1223
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mAudioMgr:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 1225
    sget-object v0, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][Slideshow3D][requestAudioFocus]: Abandon audio focus"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1226
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mAudioMgr:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mAudioFocusListener:Lcom/htc/album/addons/slideshow/Slideshow3D$SlideShowAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 1227
    iput-object v2, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mAudioFocusListener:Lcom/htc/album/addons/slideshow/Slideshow3D$SlideShowAudioFocusChangeListener;

    .line 1228
    iput-object v2, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mAudioMgr:Landroid/media/AudioManager;

    .line 1230
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "headsetowner"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1232
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mIsHeadsetHook:Z

    .line 1234
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/htc/album/addons/slideshow/Slideshow3D;)Lcom/htc/album/modules/ui/ControlBarManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/album/addons/slideshow/Slideshow3D;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->updateControlBar()V

    return-void
.end method

.method static synthetic access$1200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/album/addons/slideshow/Slideshow3D;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/album/addons/slideshow/Slideshow3D;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mStopAndLeave:Z

    return v0
.end method

.method static synthetic access$300(Lcom/htc/album/addons/slideshow/Slideshow3D;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mRepeat:Z

    return v0
.end method

.method static synthetic access$400(Lcom/htc/album/addons/slideshow/Slideshow3D;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurrentPosition:I

    return v0
.end method

.method static synthetic access$500(Lcom/htc/album/addons/slideshow/Slideshow3D;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    return-object v0
.end method

.method static synthetic access$602(Lcom/htc/album/addons/slideshow/Slideshow3D;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mIsPlaying:Z

    return p1
.end method

.method static synthetic access$700(Lcom/htc/album/addons/slideshow/Slideshow3D;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->onControlbarPause()V

    return-void
.end method

.method static synthetic access$800(Lcom/htc/album/addons/slideshow/Slideshow3D;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->loadNextImage()V

    return-void
.end method

.method static synthetic access$900(Lcom/htc/album/addons/slideshow/Slideshow3D;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/htc/album/addons/slideshow/Slideshow3D;->showControlBar(Z)V

    return-void
.end method

.method private cancelPost()V
    .locals 2

    .prologue
    .line 802
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mNextImageRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 803
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mPosted:Z

    .line 804
    return-void
.end method

.method private initLayout()V
    .locals 3

    .prologue
    .line 491
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    if-eqz v1, :cond_1

    .line 493
    iget v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurrentPosition:I

    .line 494
    .local v0, index:I
    if-gtz v0, :cond_0

    const/4 v0, 0x0

    .line 495
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurFolderIndicator:Ljava/lang/String;

    .line 496
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v1}, Lcom/htc/album/modules/ui/ControlBarManager;->invalidateControlBars()V

    .line 500
    .end local v0           #index:I
    :goto_0
    return-void

    .line 499
    :cond_1
    sget-object v1, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][slideshow3D][initLayout]: initLayout NG !"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private launchSetting()V
    .locals 3

    .prologue
    .line 563
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 564
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/htc/album/addons/slideshow/AlbumSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 565
    const-string v1, "slideshow_setting_mode"

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurMode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 566
    invoke-virtual {p0, v0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->startActivity(Landroid/content/Intent;)V

    .line 567
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mIsSettingShown:Z

    .line 568
    iget-boolean v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mIsPlaying:Z

    iput-boolean v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mBackupIsPlayingFlag:Z

    .line 569
    return-void
.end method

.method private loadImage(ZZ)V
    .locals 6
    .parameter "direction"
    .parameter "moveNext"

    .prologue
    const/4 v4, 0x1

    .line 835
    iget-boolean v3, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mStopAndLeave:Z

    if-eqz v3, :cond_1

    .line 908
    :cond_0
    :goto_0
    return-void

    .line 838
    :cond_1
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    iget v5, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurrentPosition:I

    invoke-interface {v3, v5}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v0

    .line 840
    .local v0, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz v0, :cond_0

    .line 844
    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v3, v0

    check-cast v3, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;

    invoke-virtual {v3}, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->getDrmType()I

    move-result v3

    if-ne v3, v4, :cond_3

    :cond_2
    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 847
    :cond_3
    iget v2, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurrentPosition:I

    .line 850
    .local v2, nNewPosition:I
    :cond_4
    if-eqz p2, :cond_b

    move v3, v4

    :goto_1
    add-int/2addr v2, v3

    .line 851
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v3

    if-lt v2, v3, :cond_5

    .line 852
    const/4 v2, 0x0

    .line 853
    :cond_5
    if-gez v2, :cond_6

    .line 854
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .line 855
    :cond_6
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v3, v2}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v0

    .line 856
    if-eqz v0, :cond_0

    .line 860
    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v3

    if-eqz v3, :cond_7

    move-object v3, v0

    check-cast v3, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;

    invoke-virtual {v3}, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->getDrmType()I

    move-result v3

    if-ne v3, v4, :cond_8

    :cond_7
    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v3

    if-eqz v3, :cond_9

    :cond_8
    iget v3, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurrentPosition:I

    if-ne v2, v3, :cond_4

    .line 862
    :cond_9
    iput v2, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurrentPosition:I

    .line 876
    .end local v2           #nNewPosition:I
    :cond_a
    sget-object v3, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "show "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurrentPosition:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "th image."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 877
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->retrieveSettings()V

    .line 878
    invoke-direct {p0, p1, p2}, Lcom/htc/album/addons/slideshow/Slideshow3D;->setTransitionAnim(ZZ)V

    .line 879
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->updatePrevNextButtons()V

    .line 881
    const/4 v1, 0x0

    .line 908
    .local v1, mTempBmp:Landroid/graphics/Bitmap;
    goto/16 :goto_0

    .line 850
    .end local v1           #mTempBmp:Landroid/graphics/Bitmap;
    .restart local v2       #nNewPosition:I
    :cond_b
    const/4 v3, -0x1

    goto :goto_1
.end method

.method private loadNextImage()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 954
    iget v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurrentPosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurrentPosition:I

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 955
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurrentPosition:I

    .line 958
    :cond_0
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mIsPlaying:Z

    if-eqz v0, :cond_1

    .line 959
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->cancelPost()V

    .line 961
    :cond_1
    invoke-direct {p0, v2, v2}, Lcom/htc/album/addons/slideshow/Slideshow3D;->loadImage(ZZ)V

    .line 962
    return-void
.end method

.method private loadPreviousImage()V
    .locals 2

    .prologue
    .line 965
    iget v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurrentPosition:I

    if-nez v0, :cond_1

    .line 966
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurrentPosition:I

    .line 972
    :goto_0
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mIsPlaying:Z

    if-eqz v0, :cond_0

    .line 973
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->cancelPost()V

    .line 975
    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/htc/album/addons/slideshow/Slideshow3D;->loadImage(ZZ)V

    .line 976
    return-void

    .line 969
    :cond_1
    iget v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurrentPosition:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurrentPosition:I

    goto :goto_0
.end method

.method private onControlbarNext()V
    .locals 1

    .prologue
    .line 1497
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowView:Lcom/htc/sunny2/slideshow/SlideshowView;

    invoke-virtual {v0}, Lcom/htc/sunny2/slideshow/SlideshowView;->doNextImage()Z

    .line 1498
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->showControlBar(Z)V

    .line 1499
    return-void
.end method

.method private onControlbarPause()V
    .locals 1

    .prologue
    .line 1485
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->onPauseTarget()V

    .line 1486
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v0}, Lcom/htc/album/modules/ui/ControlBarManager;->invalidateControlBars()V

    .line 1487
    :cond_0
    return-void
.end method

.method private onControlbarPlay()V
    .locals 1

    .prologue
    .line 1491
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->onPlayTarget()Z

    .line 1492
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v0}, Lcom/htc/album/modules/ui/ControlBarManager;->invalidateControlBars()V

    .line 1493
    :cond_0
    return-void
.end method

.method private onControlbarPrevious()V
    .locals 1

    .prologue
    .line 1503
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowView:Lcom/htc/sunny2/slideshow/SlideshowView;

    invoke-virtual {v0}, Lcom/htc/sunny2/slideshow/SlideshowView;->doPreviousImage()Z

    .line 1504
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->showControlBar(Z)V

    .line 1505
    return-void
.end method

.method private post(I)V
    .locals 4
    .parameter "interval"

    .prologue
    .line 807
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mStopAndLeave:Z

    if-nez v0, :cond_0

    .line 808
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mNextImageRunnable:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 809
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mPosted:Z

    .line 811
    :cond_0
    return-void
.end method

.method private requestAudioFocus()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1197
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mAudioMgr:Landroid/media/AudioManager;

    if-nez v1, :cond_0

    .line 1198
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mAudioMgr:Landroid/media/AudioManager;

    .line 1200
    :cond_0
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mAudioMgr:Landroid/media/AudioManager;

    if-eqz v1, :cond_3

    .line 1202
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mAudioFocusListener:Lcom/htc/album/addons/slideshow/Slideshow3D$SlideShowAudioFocusChangeListener;

    if-nez v1, :cond_1

    .line 1204
    new-instance v1, Lcom/htc/album/addons/slideshow/Slideshow3D$SlideShowAudioFocusChangeListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/htc/album/addons/slideshow/Slideshow3D$SlideShowAudioFocusChangeListener;-><init>(Lcom/htc/album/addons/slideshow/Slideshow3D;Lcom/htc/album/addons/slideshow/Slideshow3D$1;)V

    iput-object v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mAudioFocusListener:Lcom/htc/album/addons/slideshow/Slideshow3D$SlideShowAudioFocusChangeListener;

    .line 1207
    :cond_1
    sget-object v1, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][Slideshow3D][requestAudioFocus]: Request audio focus"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1209
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mAudioMgr:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mAudioFocusListener:Lcom/htc/album/addons/slideshow/Slideshow3D$SlideShowAudioFocusChangeListener;

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    .line 1210
    .local v0, ret:I
    if-eq v0, v4, :cond_2

    .line 1212
    sget-object v1, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][Slideshow3D][requestAudioFocus]: request audio focus fail. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1215
    :cond_2
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "headsetowner"

    const-string v3, "htcalbum"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1217
    iput-boolean v4, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mIsHeadsetHook:Z

    .line 1219
    .end local v0           #ret:I
    :cond_3
    return-void
.end method

.method private retrieveSettings()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 413
    iget-object v6, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    iget-object v7, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v7, "slide_show_duration_setting"

    const/4 v8, 0x3

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 414
    .local v0, interval:Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    mul-int/lit16 v6, v6, 0x3e8

    add-int/lit16 v6, v6, 0x320

    iput v6, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideshowInterval:I

    .line 416
    iget-object v6, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mAnimiationManager:Lcom/htc/album/addons/slideshow/AnimationManager;

    invoke-virtual {v6, p0}, Lcom/htc/album/addons/slideshow/AnimationManager;->syncPreferenceAnimSettings(Landroid/content/Context;)V

    .line 418
    iget-object v6, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    iget-object v7, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v7, "slide_show_repeat_setting"

    invoke-virtual {v6, v7, v10}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mRepeat:Z

    .line 420
    iget-object v6, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    iget-object v7, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v7, "slide_show_orientation_setting"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 421
    .local v2, orientation:Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mOrientation:I

    .line 423
    iget-object v6, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    iget-object v7, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v7, "slide_show_transition_setting"

    const/4 v8, 0x7

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 424
    .local v4, transition:Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 427
    .local v1, nTransAnimIndex:I
    iget v6, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurTransitionAnimIndex:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_0

    .line 429
    iput v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurTransitionAnimIndex:I

    .line 433
    :cond_0
    iget v6, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurTransitionAnimIndex:I

    if-eq v1, v6, :cond_1

    .line 435
    iput v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurTransitionAnimIndex:I

    .line 436
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->stopMusic()V

    .line 442
    :cond_1
    iget-object v6, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    iget-object v7, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v7, "slide_show_music_enable_setting"

    invoke-virtual {v6, v7, v9}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mEnableMusic:Z

    .line 443
    iget-boolean v6, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mEnableMusic:Z

    if-ne v6, v10, :cond_7

    .line 447
    iget-object v6, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    iget-object v7, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v7, "slide_show_music_picker_setting"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 448
    .local v3, strUri:Ljava/lang/String;
    const/4 v5, 0x0

    .line 449
    .local v5, uriTemp:Landroid/net/Uri;
    if-nez v3, :cond_2

    const-string v6, ""

    if-eq v3, v6, :cond_3

    .line 451
    :cond_2
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 454
    :cond_3
    if-nez v5, :cond_4

    .line 456
    iput-boolean v9, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mEnableMusic:Z

    .line 457
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->stopMusic()V

    .line 458
    sget-object v6, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v7, "[HTCAlbum][Slideshow3D][retrieveSettings]: Uri.parse NG !"

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    .end local v3           #strUri:Ljava/lang/String;
    .end local v5           #uriTemp:Landroid/net/Uri;
    :goto_0
    return-void

    .line 464
    .restart local v3       #strUri:Ljava/lang/String;
    .restart local v5       #uriTemp:Landroid/net/Uri;
    :cond_4
    iget-object v6, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mUriMusic:Landroid/net/Uri;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mUriMusic:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Landroid/net/Uri;->compareTo(Landroid/net/Uri;)I

    move-result v6

    if-eqz v6, :cond_6

    .line 467
    :cond_5
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->stopMusic()V

    .line 468
    iput-object v5, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mUriMusic:Landroid/net/Uri;

    .line 471
    :cond_6
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->playMusic()V

    goto :goto_0

    .line 477
    .end local v3           #strUri:Ljava/lang/String;
    .end local v5           #uriTemp:Landroid/net/Uri;
    :cond_7
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->stopMusic()V

    goto :goto_0
.end method

.method public static searchCurIndexAtNewList(ILjava/lang/String;Lcom/htc/opensense2/album/util/ImageManager$IImageList;)I
    .locals 7
    .parameter "nCurIndex"
    .parameter "strFullPath"
    .parameter "imageList"

    .prologue
    const/4 v4, 0x0

    .line 350
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v5

    if-nez v5, :cond_2

    .line 352
    :cond_0
    sget-object v5, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v6, "[HTCAlbum][slideshow3D][searchCurIndexAtNewList]: init para NG !"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v4

    .line 377
    :cond_1
    :goto_0
    return v1

    .line 356
    :cond_2
    invoke-interface {p2}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v5

    if-lt p0, v5, :cond_3

    .line 357
    invoke-interface {p2}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v5

    add-int/lit8 p0, v5, -0x1

    .line 362
    :cond_3
    move v1, p0

    .local v1, i:I
    :goto_1
    if-ltz v1, :cond_4

    .line 364
    :try_start_0
    invoke-interface {p2, v1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v2

    .line 365
    .local v2, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v3

    .line 366
    .local v3, strPath:Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_1

    .line 362
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 371
    .end local v2           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .end local v3           #strPath:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 372
    .local v0, ex:Ljava/lang/Exception;
    sget-object v5, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v6, "[HTCAlbum][slideshow3D][searchCurIndexAtNewList]: searching NG !"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v4

    .line 373
    goto :goto_0

    .line 376
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_4
    sget-object v5, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v6, "[HTCAlbum][slideshow3D][searchCurIndexAtNewList]: no found indicate index, set index 0 !"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v4

    .line 377
    goto :goto_0
.end method

.method private setKeepScreenOn(Z)V
    .locals 2
    .parameter "IsScreenOn"

    .prologue
    const/16 v1, 0x80

    .line 1078
    if-eqz p1, :cond_0

    .line 1079
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1082
    :goto_0
    return-void

    .line 1081
    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0
.end method

.method private setTransitionAnim(ZZ)V
    .locals 0
    .parameter "direction"
    .parameter "moveNext"

    .prologue
    .line 487
    return-void
.end method

.method private shouldRotate(II)Z
    .locals 4
    .parameter "h"
    .parameter "w"

    .prologue
    const/4 v2, 0x1

    .line 918
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v0

    .line 919
    .local v0, screenH:I
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v1

    .line 921
    .local v1, screenW:I
    if-le p1, p2, :cond_1

    .line 922
    if-ge v0, v1, :cond_2

    .line 931
    :cond_0
    :goto_0
    return v2

    .line 926
    :cond_1
    if-ge p1, p2, :cond_2

    .line 927
    if-gt v0, v1, :cond_0

    .line 931
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private showControlBar(Z)V
    .locals 1
    .parameter "isShow"

    .prologue
    .line 1475
    if-eqz p1, :cond_0

    .line 1476
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mIsControlShowing:Z

    .line 1480
    :goto_0
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->updateControlBar()V

    .line 1481
    return-void

    .line 1478
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mIsControlShowing:Z

    goto :goto_0
.end method

.method private updateControlBar()V
    .locals 4

    .prologue
    const/16 v3, 0x20

    const/4 v2, 0x1

    .line 1456
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mIsControlShowing:Z

    if-eqz v0, :cond_0

    .line 1458
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mIsControlShowing:Z

    .line 1459
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v0}, Lcom/htc/album/modules/ui/ControlBarManager;->hideControlBars()V

    .line 1471
    :goto_0
    return-void

    .line 1463
    :cond_0
    iput-boolean v2, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mIsControlShowing:Z

    .line 1464
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    const/16 v1, 0x6f

    invoke-virtual {v0, v2, v1}, Lcom/htc/album/modules/ui/ControlBarManager;->createControlBar(II)V

    .line 1465
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    const/4 v1, 0x2

    const/16 v2, 0xde

    invoke-virtual {v0, v1, v2}, Lcom/htc/album/modules/ui/ControlBarManager;->createControlBar(II)V

    .line 1468
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1469
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mHandler:Landroid/os/Handler;

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

    .line 814
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mRepeat:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurrentPosition:I

    if-gtz v0, :cond_0

    .line 816
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v0}, Lcom/htc/album/modules/ui/ControlBarManager;->getFooterBar()Lcom/htc/album/modules/ui/widget/GalleryFooterBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->findButton(I)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v0

    check-cast v0, Lcom/htc/album/modules/ui/widget/FooterButton;

    invoke-virtual {v0, v2}, Lcom/htc/album/modules/ui/widget/FooterButton;->setEnabled(Z)V

    .line 824
    :goto_0
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mRepeat:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurrentPosition:I

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_1

    .line 826
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v0}, Lcom/htc/album/modules/ui/ControlBarManager;->getFooterBar()Lcom/htc/album/modules/ui/widget/GalleryFooterBar;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->findButton(I)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v0

    check-cast v0, Lcom/htc/album/modules/ui/widget/FooterButton;

    invoke-virtual {v0, v2}, Lcom/htc/album/modules/ui/widget/FooterButton;->setEnabled(Z)V

    .line 832
    :goto_1
    return-void

    .line 820
    :cond_0
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v0}, Lcom/htc/album/modules/ui/ControlBarManager;->getFooterBar()Lcom/htc/album/modules/ui/widget/GalleryFooterBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->findButton(I)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v0

    check-cast v0, Lcom/htc/album/modules/ui/widget/FooterButton;

    invoke-virtual {v0, v3}, Lcom/htc/album/modules/ui/widget/FooterButton;->setEnabled(Z)V

    goto :goto_0

    .line 830
    :cond_1
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v0}, Lcom/htc/album/modules/ui/ControlBarManager;->getFooterBar()Lcom/htc/album/modules/ui/widget/GalleryFooterBar;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->findButton(I)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v0

    check-cast v0, Lcom/htc/album/modules/ui/widget/FooterButton;

    invoke-virtual {v0, v3}, Lcom/htc/album/modules/ui/widget/FooterButton;->setEnabled(Z)V

    goto :goto_1
.end method

.method private updateTitlebar(II)V
    .locals 2
    .parameter "index"
    .parameter "total"

    .prologue
    .line 504
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    if-eqz v0, :cond_1

    .line 507
    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    .line 509
    iput p1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurrentPosition:I

    .line 510
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurFolderIndicator:Ljava/lang/String;

    .line 511
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v0}, Lcom/htc/album/modules/ui/ControlBarManager;->invalidateControlBars()V

    .line 516
    :cond_0
    :goto_0
    return-void

    .line 515
    :cond_1
    sget-object v0, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][Slideshow][updateTitlebar]: mSlideShowController is null !"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected LoadImageToSwitcher(Lcom/htc/opensense2/album/util/ImageManager$IImage;)V
    .locals 0
    .parameter "image"

    .prologue
    .line 912
    return-void
.end method

.method public checkInit()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 384
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v1

    if-gtz v1, :cond_1

    .line 386
    :cond_0
    sget-object v1, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][slideshow3D][checkInit]: mImageList NG !"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    :goto_0
    return v0

    .line 390
    :cond_1
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowView:Lcom/htc/sunny2/slideshow/SlideshowView;

    if-nez v1, :cond_2

    .line 392
    sget-object v1, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][slideshow3D][checkInit]: mSlideShowView NG 0 !"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 396
    :cond_2
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    if-nez v0, :cond_3

    .line 398
    sget-object v0, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][slideshow3D][checkInit]: mSettingMgr NG !"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    :cond_3
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_4

    .line 404
    sget-object v0, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][slideshow3D][checkInit]: mMediaPlayer NG !"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public deinitControlBarManager()V
    .locals 1

    .prologue
    .line 1450
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    if-eqz v0, :cond_0

    .line 1451
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v0}, Lcom/htc/album/modules/ui/ControlBarManager;->detach()V

    .line 1452
    :cond_0
    return-void
.end method

.method public destoryMusic()V
    .locals 2

    .prologue
    .line 1173
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 1174
    sget-object v0, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][Slideshow3D][destoryMusic]: Begin"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1176
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->abandonAudioFocus()V

    .line 1178
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 1179
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 1180
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 1182
    sget-object v0, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][Slideshow3D][destoryMusic]: end"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1184
    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/4 v4, 0x4

    const/4 v1, 0x1

    .line 1241
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 1243
    .local v0, keyCode:I
    iget-boolean v2, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mEnableMusic:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mIsHeadsetHook:Z

    if-nez v2, :cond_2

    :cond_0
    invoke-super {p0, p1}, Lcom/htc/album/modules/ui/ControlBarHostActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    .line 1276
    :cond_1
    :goto_0
    return v1

    .line 1245
    :cond_2
    const/16 v2, 0x4f

    if-ne v0, v2, :cond_5

    .line 1249
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_3

    .line 1250
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "headsetowner"

    const-string v3, "htcalbum"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1251
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1252
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1276
    :cond_3
    :goto_1
    invoke-super {p0, p1}, Lcom/htc/album/modules/ui/ControlBarHostActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 1255
    :cond_4
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 1259
    :cond_5
    const/16 v2, 0x55

    if-eq v0, v2, :cond_6

    const/16 v2, 0x3e

    if-ne v0, v2, :cond_7

    .line 1262
    :cond_6
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_1

    goto :goto_0

    .line 1268
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
    .line 1381
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 1383
    new-instance v1, Lcom/htc/album/addons/slideshow/Slideshow3D$TemplateBroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/htc/album/addons/slideshow/Slideshow3D$TemplateBroadcastReceiver;-><init>(Lcom/htc/album/addons/slideshow/Slideshow3D;Lcom/htc/album/addons/slideshow/Slideshow3D$1;)V

    iput-object v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1386
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1387
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1388
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1389
    const-string v1, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1390
    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1391
    const-string v1, "android.intent.action.MEDIA_NOFS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1392
    const-string v1, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1393
    const-string v1, "android.intent.action.MEDIA_UNMOUNTABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1395
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1396
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1397
    const-string v1, "skyer"

    const-string v2, "skyer register broadcast"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1399
    .end local v0           #intentFilter:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method public getHeaderSubtitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1606
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurFolderIndicator:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1608
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurFolderIndicator:Ljava/lang/String;

    .line 1613
    :goto_0
    return-object v0

    .line 1612
    :cond_0
    sget-object v0, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][slideshow3D][getHeaderTitle]: Get mCurFolderIndicator NG !"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1613
    const-string v0, ""

    goto :goto_0
.end method

.method public getHeaderTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1593
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurFolderName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1595
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurFolderName:Ljava/lang/String;

    .line 1600
    :goto_0
    return-object v0

    .line 1599
    :cond_0
    sget-object v0, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][slideshow3D][getHeaderTitle]: Get mCurFolderName NG !"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1600
    const-string v0, ""

    goto :goto_0
.end method

.method public initControlBarManager()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1441
    const v1, 0x7f0a0053

    invoke-virtual {p0, v1}, Lcom/htc/album/addons/slideshow/Slideshow3D;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1442
    .local v0, root:Landroid/view/ViewGroup;
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v1, v0}, Lcom/htc/album/modules/ui/ControlBarManager;->attach(Landroid/view/ViewGroup;)V

    .line 1444
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    const/16 v2, 0x6f

    invoke-virtual {v1, v2, v3}, Lcom/htc/album/modules/ui/ControlBarManager;->createHeaderBar(IZ)V

    .line 1445
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    const/16 v2, 0xde

    invoke-virtual {v1, v2, v3}, Lcom/htc/album/modules/ui/ControlBarManager;->createFooterBar(IZ)V

    .line 1446
    return-void
.end method

.method public isLaunchSlideshow2D()Z
    .locals 6

    .prologue
    const/4 v5, 0x7

    .line 1288
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    iget-object v3, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "slide_show_transition_setting"

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1289
    .local v1, strTransition:Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1291
    .local v0, nAnimIndex:I
    if-ne v0, v5, :cond_0

    const/4 v2, 0x0

    .line 1293
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public launchSlideshow2D()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1298
    sget-object v1, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][Slideshow3D][launchSlideshow2D]: 3D Slideshow -> 2D Slideshow !"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1299
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1300
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.htc.HTCAlbum.action.LAUNCH_SLIDESHOW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1302
    const-string v1, "slideshow_setting_mode"

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurMode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1303
    const-string v1, "itemIndex"

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "itemIndex"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1304
    const-string v1, "itemfullpath"

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "itemfullpath"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1305
    const-string v1, "slideshow_back_index"

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "slideshow_back_index"

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "itemIndex"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1306
    const-string v1, "viewSingleImage"

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "viewSingleImage"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1307
    const-string v1, "folder_type"

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "folder_type"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1308
    const-string v1, "key_folder_name"

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "key_folder_name"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1309
    const-string v1, "key_bucket_id"

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "key_bucket_id"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1311
    invoke-virtual {p0, v0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->startActivity(Landroid/content/Intent;)V

    .line 1312
    return-void
.end method

.method public makeView()Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 981
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 982
    .local v1, ret:Landroid/widget/ImageView;
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 984
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setDrawingCacheEnabled(Z)V

    .line 985
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 986
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 989
    .local v0, p:Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 990
    return-object v1
.end method

.method public onBubbleDismissed()V
    .locals 0

    .prologue
    .line 1558
    return-void
.end method

.method public onBubblePopped()V
    .locals 0

    .prologue
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
    .line 1511
    .local p1, button:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<*>;"
    invoke-virtual {p1}, Lcom/htc/album/modules/ui/widget/ControlButton;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 1538
    :goto_0
    return-void

    .line 1514
    :sswitch_0
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->launchSetting()V

    goto :goto_0

    .line 1518
    :sswitch_1
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mIsPlaying:Z

    if-eqz v0, :cond_0

    .line 1520
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->onControlbarPause()V

    goto :goto_0

    .line 1524
    :cond_0
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->onControlbarPlay()V

    goto :goto_0

    .line 1529
    :sswitch_2
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->onControlbarPrevious()V

    goto :goto_0

    .line 1532
    :sswitch_3
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->onControlbarNext()V

    goto :goto_0

    .line 1535
    :sswitch_4
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->onGoBack()V

    goto :goto_0

    .line 1511
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
    .locals 13
    .parameter "bundle"

    .prologue
    const/4 v12, 0x0

    const v11, 0x7f0b0049

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 172
    invoke-super {p0, p1}, Lcom/htc/album/modules/ui/ControlBarHostActivity;->onCreate(Landroid/os/Bundle;)V

    .line 173
    sget-object v5, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v6, "onCreate"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    new-instance v5, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    invoke-direct {v5}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;-><init>()V

    iput-object v5, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    .line 177
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "slideshow_setting_mode"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurMode:Ljava/lang/String;

    .line 179
    iget-object v5, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    iget-object v6, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurMode:Ljava/lang/String;

    invoke-virtual {v5, p0, v6}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->initSlideshowSetting(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 181
    sget-object v5, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v6, "[HTCAlbum][SlideshowSettingManager][onCreate]: init SlideshowSetingManager NG !"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->finish()V

    .line 346
    :goto_0
    return-void

    .line 187
    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->isLaunchSlideshow2D()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 189
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->launchSlideshow2D()V

    .line 190
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->finish()V

    goto :goto_0

    .line 194
    :cond_1
    sget-object v5, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v6, "[HTCAlbum][Slideshow3D][onCreate]: Run 3D Slideshow !"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    invoke-direct {p0, v9}, Lcom/htc/album/addons/slideshow/Slideshow3D;->setKeepScreenOn(Z)V

    .line 200
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "folder_type"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mFolderType:Ljava/lang/String;

    .line 201
    iget-object v5, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mFolderType:Ljava/lang/String;

    if-nez v5, :cond_2

    .line 203
    sget-object v5, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v6, "mFolderType = null, change folder type to com.htc.HTCAlbum.LOCAL_FOLDER"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    const-string v5, "com.htc.HTCAlbum.LOCAL_FOLDER"

    iput-object v5, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mFolderType:Ljava/lang/String;

    .line 207
    :cond_2
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "key_bucket_id"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mBucketId:Ljava/lang/String;

    .line 208
    iget-object v5, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mBucketId:Ljava/lang/String;

    if-nez v5, :cond_3

    .line 209
    const-string v5, "com.htc.HTCAlbum.ALL_PHOTOS"

    iput-object v5, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mBucketId:Ljava/lang/String;

    .line 213
    :cond_3
    iget-object v5, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurMode:Ljava/lang/String;

    iget-object v6, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v6, "album_mode"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 215
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "key_folder_name"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurFolderName:Ljava/lang/String;

    .line 246
    :cond_4
    :goto_1
    iget-object v5, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mAnimiationManager:Lcom/htc/album/addons/slideshow/AnimationManager;

    iget-object v6, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    invoke-virtual {v5, p0, v6}, Lcom/htc/album/addons/slideshow/AnimationManager;->initAnimations(Landroid/content/Context;Lcom/htc/album/addons/slideshow/SlideshowSetingManager;)V

    .line 248
    iget-object v5, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-nez v5, :cond_5

    .line 254
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "photoIds"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v0

    .line 255
    .local v0, nPhotoIds:[I
    if-eqz v0, :cond_d

    .line 257
    sget-object v5, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][SlideShow3D][onCreate]: from photo ids: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    invoke-static {p0, v0}, Lcom/htc/opensense2/album/util/ImageManager;->makeSingleImageListFromImageIds(Landroid/content/Context;[I)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 270
    .end local v0           #nPhotoIds:[I
    :cond_5
    :goto_2
    iget-object v5, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v5}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v5

    if-gtz v5, :cond_e

    .line 273
    :cond_6
    iget-object v5, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurMode:Ljava/lang/String;

    iget-object v6, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v6, "dock_mode"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 275
    sget-object v5, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v6, "[HTCAlbum][SlideshowSettingManager][onCreate]: Preference Folder is not exist, Set folder to Default folder !! (Dock Mode)"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    const-string v5, "com.htc.HTCAlbum.ALL_PHOTOS"

    iput-object v5, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mFolderType:Ljava/lang/String;

    .line 279
    const-string v5, "com.htc.HTCAlbum.ALL_PHOTOS"

    iput-object v5, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mBucketId:Ljava/lang/String;

    .line 280
    invoke-virtual {p0, v11}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurFolderName:Ljava/lang/String;

    .line 283
    iget-object v5, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    iget-object v6, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v6, "slide_show_folder_picker_setting"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mFolderType:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mBucketId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurFolderName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 285
    iget-object v5, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mBucketId:Ljava/lang/String;

    iget-object v6, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mFolderType:Ljava/lang/String;

    invoke-static {p0, v5, v6}, Lcom/htc/opensense2/album/util/AlbumObjectManager;->makeList_Slideshow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 288
    :cond_7
    iget-object v5, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v5}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v5

    if-gtz v5, :cond_e

    .line 290
    :cond_8
    sget-object v5, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v6, "[HTCAlbum][SlideshowSettingManager][onCreate]: mImageList is Null or Zero !"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->showErrorDialog()V

    goto/16 :goto_0

    .line 217
    :cond_9
    iget-object v5, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurMode:Ljava/lang/String;

    iget-object v6, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v6, "dock_mode"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 219
    iget-object v5, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    iget-object v6, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v6, "slide_show_folder_picker_setting"

    invoke-virtual {v5, v6, v12}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 222
    .local v2, strFolderType:Ljava/lang/String;
    if-eqz v2, :cond_c

    .line 224
    new-instance v4, Ljava/util/StringTokenizer;

    invoke-direct {v4, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 226
    .local v4, type:Ljava/util/StringTokenizer;
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mFolderType:Ljava/lang/String;

    .line 227
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 228
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mBucketId:Ljava/lang/String;

    .line 229
    :cond_a
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 230
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurFolderName:Ljava/lang/String;

    .line 231
    :cond_b
    :goto_3
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 232
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurFolderName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurFolderName:Ljava/lang/String;

    goto :goto_3

    .line 237
    .end local v4           #type:Ljava/util/StringTokenizer;
    :cond_c
    const-string v5, "com.htc.HTCAlbum.ALL_PHOTOS"

    iput-object v5, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mFolderType:Ljava/lang/String;

    .line 238
    const-string v5, "com.htc.HTCAlbum.ALL_PHOTOS"

    iput-object v5, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mBucketId:Ljava/lang/String;

    .line 239
    invoke-virtual {p0, v11}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurFolderName:Ljava/lang/String;

    .line 242
    iget-object v5, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    iget-object v6, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v6, "slide_show_folder_picker_setting"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mFolderType:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mBucketId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurFolderName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_1

    .line 262
    .end local v2           #strFolderType:Ljava/lang/String;
    .restart local v0       #nPhotoIds:[I
    :cond_d
    iget-object v5, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mBucketId:Ljava/lang/String;

    iget-object v6, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mFolderType:Ljava/lang/String;

    invoke-static {p0, v5, v6}, Lcom/htc/opensense2/album/util/AlbumObjectManager;->makeList_Slideshow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 263
    sget-object v5, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][SlideShow3D][onCreate]: from bucket id: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 296
    .end local v0           #nPhotoIds:[I
    :cond_e
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->retrieveSettings()V

    .line 297
    const v5, 0x7f030035

    invoke-virtual {p0, v5}, Lcom/htc/album/addons/slideshow/Slideshow3D;->setContentView(I)V

    .line 300
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "itemIndex"

    invoke-virtual {v5, v6, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurrentPosition:I

    .line 301
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "slideshow_back_index"

    iget v7, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurrentPosition:I

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mEnterPosition:I

    .line 302
    sget-object v5, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][Slideshow3D][onCreate]: Slideshow Get Index: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurrentPosition:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", Get Ent Pos: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mEnterPosition:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    iget v5, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurrentPosition:I

    if-eqz v5, :cond_f

    .line 305
    const/4 v3, 0x0

    .line 306
    .local v3, strFullPath:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "itemfullpath"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 307
    iget v5, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurrentPosition:I

    iget-object v6, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-static {v5, v3, v6}, Lcom/htc/album/addons/slideshow/Slideshow3D;->searchCurIndexAtNewList(ILjava/lang/String;Lcom/htc/opensense2/album/util/ImageManager$IImageList;)I

    move-result v5

    iput v5, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurrentPosition:I

    .line 309
    .end local v3           #strFullPath:Ljava/lang/String;
    :cond_f
    sget-object v5, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][Slideshow3D][onCreate]: Slideshow Start play from Index: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurrentPosition:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    iget v5, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurrentPosition:I

    iget-object v6, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v6}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v6

    if-ge v5, v6, :cond_10

    iget v5, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurrentPosition:I

    if-gez v5, :cond_11

    :cond_10
    iput v10, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurrentPosition:I

    .line 313
    :cond_11
    new-instance v5, Lcom/htc/sunny2/slideshow/SlideshowView;

    invoke-direct {v5, p0}, Lcom/htc/sunny2/slideshow/SlideshowView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowView:Lcom/htc/sunny2/slideshow/SlideshowView;

    .line 314
    iget-object v5, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowView:Lcom/htc/sunny2/slideshow/SlideshowView;

    iget-object v6, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v5, v6}, Lcom/htc/sunny2/slideshow/SlideshowView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 315
    iget-object v5, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowView:Lcom/htc/sunny2/slideshow/SlideshowView;

    iget v6, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurrentPosition:I

    invoke-virtual {v5, v6}, Lcom/htc/sunny2/slideshow/SlideshowView;->setPlayIndex(I)V

    .line 316
    iget-object v5, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowView:Lcom/htc/sunny2/slideshow/SlideshowView;

    new-instance v6, Lcom/htc/sunny2/slideshow/SlideAnimatorsFactory_Kabaeva;

    invoke-direct {v6}, Lcom/htc/sunny2/slideshow/SlideAnimatorsFactory_Kabaeva;-><init>()V

    invoke-virtual {v5, v6}, Lcom/htc/sunny2/slideshow/SlideshowView;->setSlideAnimatorsFactory(Lcom/htc/sunny2/slideshow/SlideAnimatorsFactory;)V

    .line 317
    iget-object v5, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowView:Lcom/htc/sunny2/slideshow/SlideshowView;

    iget-object v6, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    invoke-virtual {v5, v6}, Lcom/htc/sunny2/slideshow/SlideshowView;->setSlideshowSetingManager(Lcom/htc/album/addons/slideshow/SlideshowSetingManager;)V

    .line 318
    iget-object v5, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowView:Lcom/htc/sunny2/slideshow/SlideshowView;

    invoke-virtual {v5, p0}, Lcom/htc/sunny2/slideshow/SlideshowView;->setEventListener(Lcom/htc/sunny2/slideshow/SlideshowController$SlideshowControlEventListener;)V

    .line 319
    iget-object v5, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowView:Lcom/htc/sunny2/slideshow/SlideshowView;

    invoke-virtual {v5, p1}, Lcom/htc/sunny2/slideshow/SlideshowView;->create(Landroid/os/Bundle;)Z

    move-result v5

    if-nez v5, :cond_12

    .line 321
    sget-object v5, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v6, "onCreate() NG - SlideshowView create"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    :cond_12
    iget-object v6, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowView:Lcom/htc/sunny2/slideshow/SlideshowView;

    iget-object v5, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    check-cast v5, Lcom/htc/sunny2/IMediaList;

    invoke-virtual {v6, v5}, Lcom/htc/sunny2/slideshow/SlideshowView;->bindMediaListIHT(Lcom/htc/sunny2/IMediaList;)Z

    .line 327
    const v5, 0x7f0a0053

    invoke-virtual {p0, v5}, Lcom/htc/album/addons/slideshow/Slideshow3D;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 328
    .local v1, rootLayout:Landroid/widget/RelativeLayout;
    iget-object v5, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowView:Lcom/htc/sunny2/slideshow/SlideshowView;

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 330
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->initControlBarManager()V

    .line 331
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->initLayout()V

    .line 332
    iput-boolean v9, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mPosted:Z

    .line 335
    new-instance v5, Landroid/media/MediaPlayer;

    invoke-direct {v5}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v5, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 336
    iget-object v5, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 337
    iput v9, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mMusicState:I

    .line 340
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v12}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 342
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 345
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->enableBroadcastReceiver()V

    goto/16 :goto_0
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .parameter "id"
    .parameter "args"

    .prologue
    .line 1347
    const v1, 0x1b669

    if-ne p1, v1, :cond_0

    .line 1349
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

    .line 1355
    .local v0, builder:Lcom/htc/dialog/HtcAlertDialog$Builder;
    const v1, 0x20c015f

    new-instance v2, Lcom/htc/album/addons/slideshow/Slideshow3D$4;

    invoke-direct {v2, p0}, Lcom/htc/album/addons/slideshow/Slideshow3D$4;-><init>(Lcom/htc/album/addons/slideshow/Slideshow3D;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    .line 1363
    new-instance v1, Lcom/htc/album/addons/slideshow/Slideshow3D$5;

    invoke-direct {v1, p0}, Lcom/htc/album/addons/slideshow/Slideshow3D$5;-><init>(Lcom/htc/album/addons/slideshow/Slideshow3D;)V

    invoke-virtual {v0, v1}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    .line 1372
    invoke-virtual {v0}, Lcom/htc/dialog/HtcAlertDialog$Builder;->create()Lcom/htc/dialog/HtcAlertDialog;

    move-result-object v1

    .line 1375
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

    .line 1625
    const/4 v0, 0x0

    .line 1626
    .local v0, footerBar:Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 1627
    .local v1, context:Landroid/content/Context;
    invoke-static {v1}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->makeFooter(Landroid/content/Context;)Lcom/htc/album/modules/ui/widget/GalleryFooterBar;

    move-result-object v0

    .line 1628
    const/16 v3, 0x28

    const v4, 0x208092e

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    .line 1629
    const/16 v3, 0x25

    const v4, 0x2080915

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    .line 1630
    const/16 v3, 0xf

    const v4, 0x2080907

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    .line 1632
    invoke-virtual {v0}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->getRootView()Landroid/view/ViewGroup;

    move-result-object v6

    .line 1633
    .local v6, footer:Landroid/view/ViewGroup;
    instance-of v2, v6, Lcom/htc/widget/HtcFooter;

    if-eqz v2, :cond_0

    .line 1634
    check-cast v6, Lcom/htc/widget/HtcFooter;

    .end local v6           #footer:Landroid/view/ViewGroup;
    const/4 v2, 0x1

    invoke-virtual {v6, v2}, Lcom/htc/widget/HtcFooter;->setTranparentBckground(Z)V

    .line 1637
    :cond_0
    return-object v0
.end method

.method public onCreateHeaderBar(I)Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;
    .locals 8
    .parameter "id"

    .prologue
    const/4 v7, 0x1

    .line 1569
    const/4 v0, 0x0

    .line 1570
    .local v0, headerBar:Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 1571
    .local v1, context:Landroid/content/Context;
    invoke-static {v1, v7}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->makeHeader(Landroid/content/Context;I)Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;

    move-result-object v0

    .line 1572
    const/4 v2, 0x0

    const/16 v3, 0x24

    const v4, 0x208095f

    const v5, 0x20c0163

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    .line 1574
    const v2, 0x7f020035

    invoke-virtual {v0, v2}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->setBackButtonImageResource(I)V

    .line 1576
    invoke-virtual {v0}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->getRootView()Landroid/view/ViewGroup;

    move-result-object v6

    .line 1577
    .local v6, header:Landroid/view/ViewGroup;
    instance-of v2, v6, Lcom/htc/widget/HeaderBar;

    if-eqz v2, :cond_0

    .line 1578
    check-cast v6, Lcom/htc/widget/HeaderBar;

    .end local v6           #header:Landroid/view/ViewGroup;
    invoke-virtual {v6, v7}, Lcom/htc/widget/HeaderBar;->enableTransparentBackground(Z)V

    .line 1581
    :cond_0
    return-object v0
.end method

.method public onCurIndexChange(II)V
    .locals 2
    .parameter "nIndex"
    .parameter "ntotal"

    .prologue
    .line 1318
    if-nez p2, :cond_0

    .line 1320
    sget-object v0, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideshowSettingManager][onCurIndexChange]: no image !"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1321
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->showErrorDialog()V

    .line 1326
    :goto_0
    return-void

    .line 1325
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/htc/album/addons/slideshow/Slideshow3D;->updateTitlebar(II)V

    goto :goto_0
.end method

.method public onDLNASupportRange()Z
    .locals 1

    .prologue
    .line 1012
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 744
    sget-object v0, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onDestory"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->destoryMusic()V

    .line 748
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->cancelPost()V

    .line 750
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowView:Lcom/htc/sunny2/slideshow/SlideshowView;

    if-eqz v0, :cond_0

    .line 751
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowView:Lcom/htc/sunny2/slideshow/SlideshowView;

    invoke-virtual {v0}, Lcom/htc/sunny2/slideshow/SlideshowView;->unbindMediaListIHT()V

    .line 752
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowView:Lcom/htc/sunny2/slideshow/SlideshowView;

    invoke-virtual {v0}, Lcom/htc/sunny2/slideshow/SlideshowView;->destroy()V

    .line 753
    iput-object v2, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowView:Lcom/htc/sunny2/slideshow/SlideshowView;

    .line 756
    :cond_0
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz v0, :cond_1

    .line 757
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->deactivate()V

    .line 758
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->closeCursor()V

    .line 759
    iput-object v2, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 761
    :cond_1
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 762
    invoke-super {p0}, Lcom/htc/album/modules/ui/ControlBarHostActivity;->onDestroy()V

    .line 763
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 3
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 1189
    sget-object v0, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

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

    .line 1190
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->stopMusic()V

    .line 1192
    const/4 v0, 0x0

    return v0
.end method

.method public onFfwdTarget()V
    .locals 0

    .prologue
    .line 1008
    return-void
.end method

.method public onFinishInflate(ILandroid/view/View;)V
    .locals 0
    .parameter "resourceId"
    .parameter "v"

    .prologue
    .line 1089
    return-void
.end method

.method public onGoBack()V
    .locals 0

    .prologue
    .line 1015
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->finish()V

    .line 1016
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 789
    packed-switch p1, :pswitch_data_0

    .line 798
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/htc/album/modules/ui/ControlBarHostActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 795
    :pswitch_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->showControlBar(Z)V

    goto :goto_0

    .line 789
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
    .line 1010
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 607
    sget-object v0, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v1, "KA>>> S3D: [HTCAlbum][Slideshow3D][onPause]: Begin"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    invoke-super {p0}, Lcom/htc/album/modules/ui/ControlBarHostActivity;->onPause()V

    .line 610
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    if-eqz v0, :cond_0

    .line 611
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v0, v2}, Lcom/htc/album/modules/ui/ControlBarManager;->enableHeaderTransparentBackground(Z)V

    .line 614
    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->checkInit()Z

    move-result v0

    if-nez v0, :cond_1

    .line 634
    :goto_0
    return-void

    .line 616
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "::onPause"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/opensense2/album/AlbumCommon/Constants;->memUsageTrace(Ljava/lang/String;)V

    .line 623
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->cancelPost()V

    .line 624
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mStopAndLeave:Z

    .line 626
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->onControlbarPause()V

    .line 627
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mIsSettingShown:Z

    if-eqz v0, :cond_2

    .line 629
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mBackupIsPlayingFlag:Z

    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mIsPlaying:Z

    .line 630
    iput-boolean v2, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mIsSettingShown:Z

    .line 633
    :cond_2
    sget-object v0, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][Slideshow3D][onPause]: End"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPauseTarget()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1019
    sget-object v2, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v3, "KA>>> S3D: [HTCAlbum][Slideshow3D][onPauseTarget]: onPauseTarget()"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1021
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurMode:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v3, "album_mode"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1024
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1025
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1026
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "photo_position"

    iget v3, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mEnterPosition:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1027
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1030
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #prefs:Landroid/content/SharedPreferences;
    :cond_0
    iput-boolean v4, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mIsPlaying:Z

    .line 1032
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowView:Lcom/htc/sunny2/slideshow/SlideshowView;

    invoke-virtual {v2}, Lcom/htc/sunny2/slideshow/SlideshowView;->doPause()Z

    .line 1035
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->pauseMusic()V

    .line 1037
    invoke-direct {p0, v4}, Lcom/htc/album/addons/slideshow/Slideshow3D;->setKeepScreenOn(Z)V

    .line 1038
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->cancelPost()V

    .line 1039
    return-void
.end method

.method public onPlayTarget()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1042
    sget-object v0, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v1, "KA>>> S3D: [HTCAlbum][Slideshow3D][onPlayTarget]: onPlayTarget()"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1044
    iput-boolean v2, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mIsPlaying:Z

    .line 1046
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowView:Lcom/htc/sunny2/slideshow/SlideshowView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowView:Lcom/htc/sunny2/slideshow/SlideshowView;

    invoke-virtual {v0}, Lcom/htc/sunny2/slideshow/SlideshowView;->doPlay()Z

    .line 1048
    :cond_0
    invoke-direct {p0, v2}, Lcom/htc/album/addons/slideshow/Slideshow3D;->setKeepScreenOn(Z)V

    .line 1049
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->loadNextImage()V

    .line 1050
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->playMusic()V

    .line 1051
    return v2
.end method

.method public onPlaybackMode()V
    .locals 0

    .prologue
    .line 1058
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 545
    invoke-super {p0, p1}, Lcom/htc/album/modules/ui/ControlBarHostActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 546
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 547
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->updateControlBar()V

    .line 548
    const/4 v0, 0x1

    return v0
.end method

.method public onRefreshFooterBar(Lcom/htc/album/modules/ui/widget/GalleryFooterBar;)V
    .locals 2
    .parameter "footer"

    .prologue
    .line 1643
    const/16 v1, 0x25

    invoke-virtual {p1, v1}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->findButton(I)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v0

    check-cast v0, Lcom/htc/album/modules/ui/widget/FooterButton;

    .line 1644
    .local v0, playBtn:Lcom/htc/album/modules/ui/widget/FooterButton;
    iget-boolean v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mIsPlaying:Z

    if-eqz v1, :cond_0

    const v1, 0x2080915

    :goto_0
    invoke-virtual {v0, v1}, Lcom/htc/album/modules/ui/widget/FooterButton;->setImageResource(I)V

    .line 1645
    return-void

    .line 1644
    :cond_0
    const v1, 0x2080927

    goto :goto_0
.end method

.method public onRefreshHeaderBar(Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;)V
    .locals 0
    .parameter "header"

    .prologue
    .line 1588
    return-void
.end method

.method public onRepeatPause(I)V
    .locals 2
    .parameter "nDelay"

    .prologue
    .line 1426
    move v0, p1

    .line 1428
    .local v0, nDelayTime:I
    new-instance v1, Lcom/htc/album/addons/slideshow/Slideshow3D$6;

    invoke-direct {v1, p0, v0}, Lcom/htc/album/addons/slideshow/Slideshow3D$6;-><init>(Lcom/htc/album/addons/slideshow/Slideshow3D;I)V

    invoke-virtual {p0, v1}, Lcom/htc/album/addons/slideshow/Slideshow3D;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1435
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 575
    sget-object v0, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v1, "KA>>> S3D: [HTCAlbum][Slideshow3D][onResume]: Begin"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    invoke-super {p0}, Lcom/htc/album/modules/ui/ControlBarHostActivity;->onResume()V

    .line 578
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->checkInit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 602
    :goto_0
    return-void

    .line 580
    :cond_0
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    if-eqz v0, :cond_1

    .line 581
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v0, v2}, Lcom/htc/album/modules/ui/ControlBarManager;->enableHeaderTransparentBackground(Z)V

    .line 584
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "::onResume"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/opensense2/album/AlbumCommon/Constants;->memUsageTrace(Ljava/lang/String;)V

    .line 585
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mStopAndLeave:Z

    .line 588
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mIsPlaying:Z

    if-eqz v0, :cond_2

    .line 590
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->onPlayTarget()Z

    .line 591
    invoke-direct {p0, v2}, Lcom/htc/album/addons/slideshow/Slideshow3D;->showControlBar(Z)V

    .line 601
    :goto_1
    sget-object v0, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][Slideshow3D][onResume]: End"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 597
    :cond_2
    invoke-direct {p0, v2}, Lcom/htc/album/addons/slideshow/Slideshow3D;->showControlBar(Z)V

    goto :goto_1
.end method

.method public onRewTarget()V
    .locals 0

    .prologue
    .line 1054
    return-void
.end method

.method public onSettings()V
    .locals 0

    .prologue
    .line 1056
    return-void
.end method

.method protected onStart()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, -0x1

    .line 653
    invoke-super {p0}, Lcom/htc/album/modules/ui/ControlBarHostActivity;->onStart()V

    .line 654
    sget-object v7, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v8, "onStart"

    invoke-static {v7, v8}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->checkInit()Z

    move-result v7

    if-nez v7, :cond_1

    .line 739
    :cond_0
    :goto_0
    return-void

    .line 659
    :cond_1
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->enableBroadcastReceiver()V

    .line 662
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->isLaunchSlideshow2D()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 664
    iget-object v7, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz v7, :cond_2

    iget v7, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurrentPosition:I

    if-ltz v7, :cond_2

    iget v7, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurrentPosition:I

    iget-object v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v8}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v8

    if-ge v7, v8, :cond_2

    .line 666
    iget-object v7, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    iget v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurrentPosition:I

    invoke-interface {v7, v8}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v0

    .line 667
    .local v0, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz v0, :cond_2

    .line 669
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "slideshow_back_index"

    iget v9, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mEnterPosition:I

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 671
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "itemIndex"

    iget v9, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurrentPosition:I

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 673
    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v5

    .line 674
    .local v5, strFullPath:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "itemfullpath"

    invoke-virtual {v7, v8, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 676
    sget-object v7, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[HTCAlbum][Slideshow][onStart]: Set CurPos: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurrentPosition:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", Set EntPos: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mEnterPosition:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    .end local v0           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .end local v5           #strFullPath:Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->launchSlideshow2D()V

    .line 680
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->finish()V

    .line 684
    :cond_3
    iget-object v7, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurMode:Ljava/lang/String;

    iget-object v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v8, "dock_mode"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 686
    iget-object v7, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    iget-object v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v8, "slide_show_folder_picker_setting"

    invoke-virtual {v7, v8, v11}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 688
    .local v4, strFolderTypeKeyValue:Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 690
    const/4 v3, 0x0

    .line 691
    .local v3, strFolderType:Ljava/lang/String;
    const/4 v1, 0x0

    .line 692
    .local v1, strBucketId:Ljava/lang/String;
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    .line 693
    .local v2, strFolderName:Ljava/lang/String;
    new-instance v6, Ljava/util/StringTokenizer;

    invoke-direct {v6, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 695
    .local v6, type:Ljava/util/StringTokenizer;
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 696
    :cond_4
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 697
    :cond_5
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 698
    :cond_6
    :goto_1
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 699
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 701
    :cond_7
    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 703
    iget-object v7, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mBucketId:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 705
    iput-object v3, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mFolderType:Ljava/lang/String;

    .line 706
    iput-object v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mBucketId:Ljava/lang/String;

    .line 708
    iget-object v7, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mFolderType:Ljava/lang/String;

    const-string v8, "com.htc.HTCAlbum.CAMERA_SHOTS"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 709
    const v7, 0x7f0b0048

    invoke-virtual {p0, v7}, Lcom/htc/album/addons/slideshow/Slideshow3D;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurFolderName:Ljava/lang/String;

    .line 713
    :goto_2
    iget-object v7, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz v7, :cond_8

    .line 714
    iget-object v7, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v7}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->deactivate()V

    .line 715
    iget-object v7, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v7}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->closeCursor()V

    .line 716
    iput-object v11, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 719
    :cond_8
    iget-object v7, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mBucketId:Ljava/lang/String;

    iget-object v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mFolderType:Ljava/lang/String;

    invoke-static {p0, v7, v8}, Lcom/htc/opensense2/album/util/AlbumObjectManager;->makeList_Slideshow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 721
    iget-object v7, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v7}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v7

    if-gtz v7, :cond_b

    .line 723
    :cond_9
    sget-object v7, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v8, "[HTCAlbum][SlideshowSettingManager][onStart]: mImageList is Null or Zero !"

    invoke-static {v7, v8}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->showErrorDialog()V

    goto/16 :goto_0

    .line 711
    :cond_a
    iput-object v2, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurFolderName:Ljava/lang/String;

    goto :goto_2

    .line 728
    :cond_b
    iget-object v7, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowView:Lcom/htc/sunny2/slideshow/SlideshowView;

    invoke-virtual {v7}, Lcom/htc/sunny2/slideshow/SlideshowView;->unbindMediaListIHT()V

    .line 729
    iget-object v8, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mSlideShowView:Lcom/htc/sunny2/slideshow/SlideshowView;

    iget-object v7, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    check-cast v7, Lcom/htc/sunny2/IMediaList;

    invoke-virtual {v8, v7}, Lcom/htc/sunny2/slideshow/SlideshowView;->bindMediaListIHT(Lcom/htc/sunny2/IMediaList;)Z

    .line 732
    iget-boolean v7, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mIsPlaying:Z

    if-nez v7, :cond_c

    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->onControlbarPause()V

    .line 734
    :cond_c
    invoke-direct {p0, v10, v10}, Lcom/htc/album/addons/slideshow/Slideshow3D;->updateTitlebar(II)V

    goto/16 :goto_0
.end method

.method public onStatusChange(I)V
    .locals 2
    .parameter "nStatus"

    .prologue
    .line 1330
    sget-object v0, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][Slideshow3D][onStatusChange]:"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1332
    sget v0, Lcom/htc/sunny2/slideshow/SlideshowController;->STATUS_PAUSE:I

    if-ne p1, v0, :cond_0

    .line 1333
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->onControlbarPause()V

    .line 1334
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 640
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 642
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 643
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 646
    :cond_0
    sget-object v0, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    invoke-super {p0}, Lcom/htc/album/modules/ui/ControlBarHostActivity;->onStop()V

    .line 649
    return-void
.end method

.method public onVideoSoundEffect(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 1095
    return-void
.end method

.method public pauseMusic()V
    .locals 2

    .prologue
    .line 1143
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 1145
    sget-object v0, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][Slideshow3D][pauseMusic]: Begin"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1147
    iget v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mMusicState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1149
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->abandonAudioFocus()V

    .line 1150
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 1151
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mMusicState:I

    .line 1154
    :cond_0
    sget-object v0, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][Slideshow3D][pauseMusic]: End"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1156
    :cond_1
    return-void
.end method

.method public playMusic()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 1099
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mEnableMusic:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mIsPlaying:Z

    if-eqz v3, :cond_1

    .line 1101
    sget-object v3, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[HTCAlbum][Slideshow3D][playMusic]: Begin"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1103
    iget v3, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mMusicState:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    .line 1105
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->requestAudioFocus()V

    .line 1107
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->start()V

    .line 1108
    iput v6, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mMusicState:I

    .line 1110
    sget-object v3, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[HTCAlbum][Slideshow3D][playMusic]: Pause -> Playing"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1138
    :cond_0
    :goto_0
    sget-object v3, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[HTCAlbum][Slideshow3D][playMusic]: End"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1140
    :cond_1
    return-void

    .line 1112
    :cond_2
    iget v3, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mMusicState:I

    if-ne v3, v5, :cond_0

    .line 1114
    const/4 v1, 0x0

    .line 1115
    .local v1, fileA:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    .end local v1           #fileA:Ljava/io/File;
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mUriMusic:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1118
    .restart local v1       #fileA:Ljava/io/File;
    :try_start_0
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->requestAudioFocus()V

    .line 1120
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->reset()V

    .line 1121
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mUriMusic:Landroid/net/Uri;

    invoke-virtual {v3, p0, v4}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 1122
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->prepare()V

    .line 1123
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 1124
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->start()V

    .line 1126
    const/4 v3, 0x2

    iput v3, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mMusicState:I

    .line 1128
    sget-object v3, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[HTCAlbum][Slideshow3D][playMusic]: Stop -> Playing"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1129
    :catch_0
    move-exception v0

    .line 1130
    .local v0, ex:Ljava/io/IOException;
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 1131
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1132
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1134
    sget-object v3, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[HTCAlbum][Slideshow3D][playMusic]: Play Music Start NG !"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public requestFooterBar()Z
    .locals 1

    .prologue
    .line 1620
    const/4 v0, 0x1

    return v0
.end method

.method public requestHeaderBar()Z
    .locals 1

    .prologue
    .line 1563
    const/4 v0, 0x1

    return v0
.end method

.method public showErrorDialog()V
    .locals 1

    .prologue
    .line 1340
    const v0, 0x1b669

    invoke-virtual {p0, v0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->showDialog(I)V

    .line 1341
    return-void
.end method

.method public stopMusic()V
    .locals 2

    .prologue
    .line 1159
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 1161
    sget-object v0, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][Slideshow3D][stopMusic]: Begin"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1163
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->abandonAudioFocus()V

    .line 1165
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 1166
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D;->mMusicState:I

    .line 1168
    sget-object v0, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][Slideshow3D][stopMusic]: End"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1170
    :cond_0
    return-void
.end method

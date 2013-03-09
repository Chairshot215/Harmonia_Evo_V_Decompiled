.class public Lcom/htc/music/MediaPlaybackService;
.super Landroid/app/Service;
.source "MediaPlaybackService.java"

# interfaces
.implements Lcom/htc/music/util/IMonitorHeadSetStatus;
.implements Lcom/htc/music/util/HdmiPlugReceiver$IHdmiPlugReceiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/MediaPlaybackService$PublicServiceStub;,
        Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;,
        Lcom/htc/music/MediaPlaybackService$LocalPlayer;,
        Lcom/htc/music/MediaPlaybackService$MultiPlayer;,
        Lcom/htc/music/MediaPlaybackService$Shuffler;,
        Lcom/htc/music/MediaPlaybackService$DockEventListener;,
        Lcom/htc/music/MediaPlaybackService$NonUiHandler;,
        Lcom/htc/music/MediaPlaybackService$ORIENTATION;
    }
.end annotation


# static fields
.field private static final ACTION_A2DP_PLUG:Ljava/lang/String; = "android.intent.action.A2DP_PLUG"

.field public static final ALBUMID:I = 0x0

.field public static final AND_NEXT_ACTION:Ljava/lang/String; = "com.android.music.musicservicecommand.next"

.field public static final AND_PAUSE_ACTION:Ljava/lang/String; = "com.android.music.musicservicecommand.pause"

.field public static final AND_PREVIOUS_ACTION:Ljava/lang/String; = "com.android.music.musicservicecommand.previous"

.field public static final AND_TOGGLEPAUSE_ACTION:Ljava/lang/String; = "com.android.music.musicservicecommand.togglepause"

.field public static final ANIMATION_CHANGE_ART:Ljava/lang/String; = "com.htc.music.changeart"

.field public static final ANIMATION_COMPLETE:Ljava/lang/String; = "com.htc.music.animationcomplete"

.field private static final ANIMATION_ENDED:I = 0x1

.field public static final ANIMATION_MOVE_NEXT:Ljava/lang/String; = "com.htc.music.rotateright"

.field public static final ANIMATION_MOVE_PREV:Ljava/lang/String; = "com.htc.music.rotateleft"

.field public static final ANIMATION_QUICKLY:Ljava/lang/String; = "com.htc.music.rotatequickly"

.field public static final ANIMATION_REFRESH:Ljava/lang/String; = "com.htc.music.refresh"

.field public static final ANIMATION_ROTATE_SELF_NEXT:Ljava/lang/String; = "com.htc.music.rotatecircle_next"

.field public static final ANIMATION_ROTATE_SELF_PREV:Ljava/lang/String; = "com.htc.music.rotatecircle_previous"

.field public static final ANIMATION_SHUFFLE:Ljava/lang/String; = "com.htc.music.shuffle"

.field public static final ARTISTID:I = 0x1

.field public static final ASYNC_OPEN_COMPLETE:Ljava/lang/String; = "com.htc.music.asyncopencomplete"

.field private static final BINDPLUGIN_ON_BIND_COMPLETE:I = 0x4

.field private static final BOOKMARKCOLIDX:I = 0x9

.field public static final CMDBINDPLUGIN:Ljava/lang/String; = "bindplugin"

.field public static final CMDFFSTART:Ljava/lang/String; = "ffstart"

.field public static final CMDFFSTOP:Ljava/lang/String; = "ffstop"

.field public static final CMDNAME:Ljava/lang/String; = "command"

.field public static final CMDNEXT:Ljava/lang/String; = "next"

.field public static final CMDPAUSE:Ljava/lang/String; = "pause"

.field public static final CMDPLAY:Ljava/lang/String; = "play"

.field public static final CMDPNEXT:I = 0x4

.field public static final CMDPPAUSE:I = 0x2

.field public static final CMDPPLAY:I = 0x0

.field public static final CMDPPREV:I = 0x3

.field public static final CMDPREVIOUS:Ljava/lang/String; = "previous"

.field public static final CMDPSTOP:I = 0x1

.field public static final CMDP_APPLY_SOUNDEFFECT:I = 0xb

.field public static final CMDP_RESTORE_SOUNDEFFECT:I = 0xc

.field public static final CMDRESUME:Ljava/lang/String; = "resume"

.field public static final CMDRWSTART:Ljava/lang/String; = "rwstart"

.field public static final CMDRWSTOP:Ljava/lang/String; = "rwstop"

.field public static final CMDSTOP:Ljava/lang/String; = "stop"

.field public static final CMDTOGGLEPAUSE:Ljava/lang/String; = "togglepause"

.field public static final CMD_A2DP_ON:I = 0x13

.field public static final CMD_DECODE_NOTIFICATION_ALBUMART:I = 0x10

.field public static final CMD_NOTIFY_CHANGE_FOR_RELOAD_QUEUE:I = 0xf

.field public static final CMD_PLAY_FOR_RELOAD_QUEUE:I = 0xe

.field public static final CMD_REFRESH_PLAYLIST:I = 0x12

.field public static final CMD_RELOAD_QUEUE:I = 0xd

.field public static final CMD_USER_PROFILING_LOG:I = 0x11

.field private static final FADEIN:I = 0x4

.field private static final FFRW_REPEAT_FF:I = 0x1

.field private static final FFRW_REPEAT_NONE:I = 0x0

.field private static final FFRW_REPEAT_RW:I = 0x2

.field private static final FF_RW:I = 0x5

.field public static final GENREID:I = 0x2

.field private static final IDCOLIDX:I = 0x0

.field private static final IDLE_DELAY:I = 0xea60

.field public static final LAST:I = 0x3

.field private static final LICENSE_EXPIRED:I = 0x6

.field private static final MAX_HISTORY_SIZE:I = 0xa

.field private static final MEDIA_ERROR_STATE:I = -0x26

.field public static final META_CHANGED:Ljava/lang/String; = "com.htc.music.metachanged"

.field public static final NEXT:I = 0x2

.field public static final NEXT_ACTION:Ljava/lang/String; = "com.htc.music.musicservicecommand.next"

.field public static final NOW:I = 0x1

.field public static final OS_ART_PATH_SHUFFLE_UPDATED:Ljava/lang/String; = "com.htc.music.artpathshuffleupdated"

.field public static final OS_ART_PATH_UPDATED:Ljava/lang/String; = "com.htc.music.artpathupdated"

.field public static final OS_NOWPLAYING_QUEUE_UPDATED:Ljava/lang/String; = "com.htc.music.nowplayingqueueupdated"

.field public static final OS_ON_ERROR:Ljava/lang/String; = "com.htc.music.onerror"

.field public static final OS_TRACK_DETAILS_UPDATED:Ljava/lang/String; = "com.htc.music.trackdetailsupdated"

.field public static final PAUSE_ACTION:Ljava/lang/String; = "com.htc.music.musicservicecommand.pause"

.field public static final PLAYBACKSERVICE_STATUS:I = 0x1

.field public static final PLAYBACK_COMPLETE:Ljava/lang/String; = "com.htc.music.playbackcomplete"

.field public static final PLAYBACK_RINGTONE:Ljava/lang/String; = "android.htc.intent.action.PLAYBACK_RINGTONE"

.field public static final PLAYLISTID:I = 0x3

.field public static final PLAYSTATE_CHANGED:Ljava/lang/String; = "com.htc.music.playstatechanged"

.field public static final PLAY_STARTED:Ljava/lang/String; = "com.htc.music.playstarted"

.field private static final PLUGIN_NOTIFY_CHANGE:I = 0x3

.field private static final PLUGIN_UPDATE_NOTIFICATION:I = 0x2

.field private static final PODCASTCOLIDX:I = 0x8

.field public static final PREVIOUS_ACTION:Ljava/lang/String; = "com.htc.music.musicservicecommand.previous"

.field public static final QUEUE_CHANGED:Ljava/lang/String; = "com.htc.music.queuechanged"

.field public static final RECENT_PLAYED_CHANGED:Ljava/lang/String; = "com.htc.music.recentplayedchanged"

.field private static final RELEASE_WAKELOCK:I = 0x2

.field public static final REPEAT_ALL:I = 0x2

.field public static final REPEAT_CURRENT:I = 0x1

.field public static final REPEAT_NONE:I = 0x0

.field public static final SAVE_STATUS_NONE:I = 0x0

.field public static final SAVE_STATUS_PERMANENT:I = 0x2

.field public static final SAVE_STATUS_TEMP:I = 0x1

.field private static final SERVER_DIED:I = 0x3

.field public static final SERVICECMD:Ljava/lang/String; = "com.htc.music.musicservicecommand"

.field public static final SHUFFLE_AUTO:I = 0x2

.field public static final SHUFFLE_NONE:I = 0x0

.field public static final SHUFFLE_NORMAL:I = 0x1

.field private static final TAG:Ljava/lang/String; = "[MediaPlaybackService]"

.field private static final TOAST_WARNING:I = 0x6

.field public static final TOGGLEPAUSE_ACTION:Ljava/lang/String; = "com.htc.music.musicservicecommand.togglepause"

.field public static final TRACKID:I = 0x4

.field private static final TRACK_ENDED:I = 0x1

.field private static final ULOG_MUSIC_COUNT:I = 0x1

.field private static final UNBINDPLUGIN_ON_BIND_COMPLETE:I = 0x5

.field private static final UPDATE_NOTIFICATION_ALBUMART:I = 0x7

.field private static final mDoAnimationViaHeadset:Z = false

.field private static final mMaxNotifyAlbumArtSideLen:I = 0x48


# instance fields
.field private final MAX_RECENT_TRACK_LIST_SIZE:I

.field private final NO_ANIMATION:I

.field private final PLAY_NEXT_ANIMATION:I

.field private final PLAY_PREV_ANIMATION:I

.field private final RECENT_ALBUM_LIST_COUNT:I

.field private final hexdigits:[C

.field private mA2DPReceiver:Landroid/content/BroadcastReceiver;

.field private mActivityIsLive:Z

.field private mAirPlaneReceiver:Landroid/content/BroadcastReceiver;

.field private mAlbumList:[I

.field private mAlbumListLen:I

.field private mAnimation:Z

.field private mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAutoShuffleList:[I

.field private mBindFailedCounter:I

.field private final mBinder:Landroid/os/IBinder;

.field private mCAlbumId:I

.field private mCArtistId:I

.field private mCComposer:Ljava/lang/StringBuilder;

.field private mCGenreId:I

.field private mCPlaylistId:I

.field private mCardId:I

.field private mCategory:I

.field private mCurrSkin:Ljava/lang/String;

.field private mCursor:Landroid/database/Cursor;

.field mCursorCols:[Ljava/lang/String;

.field private mDelayedStopHandler:Landroid/os/Handler;

.field private mDockEventListener:Landroid/content/BroadcastReceiver;

.field private mDrmConsumed:Z

.field private mFFRWRepeat:I

.field private mFFToEndIsPlaying:Z

.field private mFileToPlay:Ljava/lang/String;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mHdmiPlugReceiver:Lcom/htc/music/util/HdmiPlugReceiver;

.field private mHeadSetHelper:Lcom/htc/music/util/HeadSetHelper;

.field private mHistory:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private volatile mIsReloadingQueue:Z

.field private mIsSupposedToBePlaying:Z

.field private mIsSystemReady:Z

.field private volatile mIsWaitAnimation:Z

.field private mLastAlbumPos:I

.field private mLastRepeatTime:J

.field private mLastSeekEventTime:J

.field private mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

.field private mLocalRecentAlbumId:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mMediaMountedCount:I

.field private mMediaplayerHandler:Landroid/os/Handler;

.field private mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

.field private mMuteByTransientLossOfFocusCanDuck:Z

.field private mNonShuffleAlbumList:[I

.field private mNonShufflePlayList:[I

.field private mNonShuffleShrinkAlbumList:[I

.field private mNonShuffleShrinkAlbumListLen:I

.field private mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

.field private mNotification:Landroid/app/Notification;

.field private mNotificationLock:Ljava/lang/Object;

.field private mOpenFailedCounter:I

.field private mOpts:Landroid/graphics/BitmapFactory$Options;

.field private mOrientation:I

.field private mPausedByTransientLossOfFocus:Z

.field private mPlayList:[I

.field private mPlayListLen:I

.field private mPlayOnNextPrev:Z

.field private mPlayPos:I

.field private mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

.field private mPosOverride:J

.field private mPreferences:Landroid/content/SharedPreferences;

.field private final mPublicBinder:Landroid/os/IBinder;

.field private mQueueModified:Z

.field private mQuietMode:Z

.field private final mRand:Lcom/htc/music/MediaPlaybackService$Shuffler;

.field private mRecentPlayTrackId:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRefreshPlayList:Z

.field private mRepcnt:I

.field private mRepeatMode:I

.field private mSdCardRemoved:Z

.field private mSeeking:Z

.field private mServiceInUse:I

.field private mServiceStartId:I

.field private mShrinkAlbumList:[I

.field private mShrinkAlbumListLen:I

.field private mShuffleAlbumList:[I

.field private mShuffleMode:I

.field private mShufflePlayList:[I

.field mShuffleSeq:[I

.field private mShuffleSeqLen:I

.field private mShuffleShrinkAlbumList:[I

.field private mShuffleShrinkAlbumListLen:I

.field private mShutdownReceiver:Landroid/content/BroadcastReceiver;

.field private mStartSeekPos:J

.field mTest:Z

.field private mToast:Landroid/widget/Toast;

.field private mUiHandler:Landroid/os/Handler;

.field private mUnbindFailedCounter:I

.field private mUnmountReceiver:Landroid/content/BroadcastReceiver;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private volatile mWakeLockAcquired:Z

.field private m_bUpdateBeatsLogo:Z

.field private noisy_action_time:J


# direct methods
.method public constructor <init>()V
    .locals 9

    const-wide/16 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    iput-boolean v3, p0, Lcom/htc/music/MediaPlaybackService;->mIsSystemReady:Z

    iput-boolean v3, p0, Lcom/htc/music/MediaPlaybackService;->mIsWaitAnimation:Z

    iput v3, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    iput v3, p0, Lcom/htc/music/MediaPlaybackService;->mRepeatMode:I

    iput v3, p0, Lcom/htc/music/MediaPlaybackService;->mMediaMountedCount:I

    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mAutoShuffleList:[I

    iput-boolean v3, p0, Lcom/htc/music/MediaPlaybackService;->mQueueModified:Z

    iput-boolean v3, p0, Lcom/htc/music/MediaPlaybackService;->mAnimation:Z

    iput-boolean v3, p0, Lcom/htc/music/MediaPlaybackService;->mActivityIsLive:Z

    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumList:[I

    iput v3, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mShrinkAlbumList:[I

    iput v3, p0, Lcom/htc/music/MediaPlaybackService;->mShrinkAlbumListLen:I

    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    iput v3, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    new-instance v0, Ljava/util/Vector;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    iput v5, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    iput v5, p0, Lcom/htc/music/MediaPlaybackService;->mLastAlbumPos:I

    new-instance v0, Lcom/htc/music/MediaPlaybackService$Shuffler;

    invoke-direct {v0, p0, v4}, Lcom/htc/music/MediaPlaybackService$Shuffler;-><init>(Lcom/htc/music/MediaPlaybackService;Lcom/htc/music/MediaPlaybackService$1;)V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mRand:Lcom/htc/music/MediaPlaybackService$Shuffler;

    iput v3, p0, Lcom/htc/music/MediaPlaybackService;->mOpenFailedCounter:I

    iput v3, p0, Lcom/htc/music/MediaPlaybackService;->mOrientation:I

    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleSeq:[I

    iput v3, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleSeqLen:I

    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "audio._id AS _id"

    aput-object v1, v0, v3

    const-string v1, "artist"

    aput-object v1, v0, v6

    const/4 v1, 0x2

    const-string v2, "album"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "album_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "artist_id"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "is_podcast"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "bookmark"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "composer"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "_display_name"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mCursorCols:[Ljava/lang/String;

    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mAirPlaneReceiver:Landroid/content/BroadcastReceiver;

    iput v5, p0, Lcom/htc/music/MediaPlaybackService;->mServiceStartId:I

    iput v3, p0, Lcom/htc/music/MediaPlaybackService;->mServiceInUse:I

    iput-boolean v3, p0, Lcom/htc/music/MediaPlaybackService;->mIsSupposedToBePlaying:Z

    iput-boolean v3, p0, Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z

    iput-boolean v3, p0, Lcom/htc/music/MediaPlaybackService;->mQuietMode:Z

    iput-boolean v3, p0, Lcom/htc/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z

    iput-boolean v3, p0, Lcom/htc/music/MediaPlaybackService;->mMuteByTransientLossOfFocusCanDuck:Z

    iput v3, p0, Lcom/htc/music/MediaPlaybackService;->mFFRWRepeat:I

    iput-wide v7, p0, Lcom/htc/music/MediaPlaybackService;->mStartSeekPos:J

    iput-wide v7, p0, Lcom/htc/music/MediaPlaybackService;->mLastRepeatTime:J

    iput v3, p0, Lcom/htc/music/MediaPlaybackService;->mRepcnt:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/music/MediaPlaybackService;->mPosOverride:J

    iput-boolean v3, p0, Lcom/htc/music/MediaPlaybackService;->mSeeking:Z

    iput-boolean v3, p0, Lcom/htc/music/MediaPlaybackService;->mDrmConsumed:Z

    iput-boolean v3, p0, Lcom/htc/music/MediaPlaybackService;->mFFToEndIsPlaying:Z

    iput-wide v7, p0, Lcom/htc/music/MediaPlaybackService;->noisy_action_time:J

    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    new-instance v0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;

    invoke-direct {v0, p0}, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;-><init>(Lcom/htc/music/MediaPlaybackService;)V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mBinder:Landroid/os/IBinder;

    new-instance v0, Lcom/htc/music/MediaPlaybackService$PublicServiceStub;

    invoke-direct {v0, p0}, Lcom/htc/music/MediaPlaybackService$PublicServiceStub;-><init>(Lcom/htc/music/MediaPlaybackService;)V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mPublicBinder:Landroid/os/IBinder;

    iput v5, p0, Lcom/htc/music/MediaPlaybackService;->mCategory:I

    iput v5, p0, Lcom/htc/music/MediaPlaybackService;->mCArtistId:I

    iput v5, p0, Lcom/htc/music/MediaPlaybackService;->mCAlbumId:I

    const/4 v0, -0x2

    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->mCGenreId:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mCComposer:Ljava/lang/StringBuilder;

    iput v5, p0, Lcom/htc/music/MediaPlaybackService;->mCPlaylistId:I

    new-instance v0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    invoke-direct {v0, p0, v4}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;-><init>(Lcom/htc/music/MediaPlaybackService;Lcom/htc/music/MediaPlaybackService$1;)V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mHandlerThread:Landroid/os/HandlerThread;

    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    new-instance v0, Lcom/htc/music/util/HeadSetHelper;

    invoke-direct {v0}, Lcom/htc/music/util/HeadSetHelper;-><init>()V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mHeadSetHelper:Lcom/htc/music/util/HeadSetHelper;

    new-instance v0, Lcom/htc/music/util/HdmiPlugReceiver;

    invoke-direct {v0}, Lcom/htc/music/util/HdmiPlugReceiver;-><init>()V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mHdmiPlugReceiver:Lcom/htc/music/util/HdmiPlugReceiver;

    iput v3, p0, Lcom/htc/music/MediaPlaybackService;->mBindFailedCounter:I

    iput v3, p0, Lcom/htc/music/MediaPlaybackService;->mUnbindFailedCounter:I

    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mShufflePlayList:[I

    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleAlbumList:[I

    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleAlbumList:[I

    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleShrinkAlbumList:[I

    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleShrinkAlbumList:[I

    iput v3, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleShrinkAlbumListLen:I

    iput v3, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleShrinkAlbumListLen:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mLocalRecentAlbumId:Ljava/util/ArrayList;

    const/16 v0, 0x8

    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->RECENT_ALBUM_LIST_COUNT:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mRecentPlayTrackId:Ljava/util/ArrayList;

    const/16 v0, 0x64

    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->MAX_RECENT_TRACK_LIST_SIZE:I

    iput-boolean v3, p0, Lcom/htc/music/MediaPlaybackService;->mIsReloadingQueue:Z

    iput-boolean v3, p0, Lcom/htc/music/MediaPlaybackService;->mWakeLockAcquired:Z

    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mDockEventListener:Landroid/content/BroadcastReceiver;

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mNotificationLock:Ljava/lang/Object;

    iput-boolean v3, p0, Lcom/htc/music/MediaPlaybackService;->mRefreshPlayList:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mCurrSkin:Ljava/lang/String;

    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mToast:Landroid/widget/Toast;

    new-instance v0, Lcom/htc/music/MediaPlaybackService$1;

    invoke-direct {v0, p0}, Lcom/htc/music/MediaPlaybackService$1;-><init>(Lcom/htc/music/MediaPlaybackService;)V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    new-instance v0, Lcom/htc/music/MediaPlaybackService$2;

    invoke-direct {v0, p0}, Lcom/htc/music/MediaPlaybackService$2;-><init>(Lcom/htc/music/MediaPlaybackService;)V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mUiHandler:Landroid/os/Handler;

    new-instance v0, Lcom/htc/music/MediaPlaybackService$3;

    invoke-direct {v0, p0}, Lcom/htc/music/MediaPlaybackService$3;-><init>(Lcom/htc/music/MediaPlaybackService;)V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/htc/music/MediaPlaybackService$4;

    invoke-direct {v0, p0}, Lcom/htc/music/MediaPlaybackService$4;-><init>(Lcom/htc/music/MediaPlaybackService;)V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mA2DPReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/htc/music/MediaPlaybackService$5;

    invoke-direct {v0, p0}, Lcom/htc/music/MediaPlaybackService$5;-><init>(Lcom/htc/music/MediaPlaybackService;)V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    new-instance v0, Lcom/htc/music/MediaPlaybackService$6;

    invoke-direct {v0, p0}, Lcom/htc/music/MediaPlaybackService$6;-><init>(Lcom/htc/music/MediaPlaybackService;)V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mShutdownReceiver:Landroid/content/BroadcastReceiver;

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->hexdigits:[C

    new-instance v0, Lcom/htc/music/MediaPlaybackService$7;

    invoke-direct {v0, p0}, Lcom/htc/music/MediaPlaybackService$7;-><init>(Lcom/htc/music/MediaPlaybackService;)V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    iput v3, p0, Lcom/htc/music/MediaPlaybackService;->NO_ANIMATION:I

    iput v6, p0, Lcom/htc/music/MediaPlaybackService;->PLAY_PREV_ANIMATION:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->PLAY_NEXT_ANIMATION:I

    iput-boolean v3, p0, Lcom/htc/music/MediaPlaybackService;->mTest:Z

    iput-boolean v6, p0, Lcom/htc/music/MediaPlaybackService;->m_bUpdateBeatsLogo:Z

    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mNotification:Landroid/app/Notification;

    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mOpts:Landroid/graphics/BitmapFactory$Options;

    return-void

    nop

    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x61t 0x0t
        0x62t 0x0t
        0x63t 0x0t
        0x64t 0x0t
        0x65t 0x0t
        0x66t 0x0t
    .end array-data
.end method

.method public static Search([III)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    aget v1, p0, v0

    if-ne v1, p1, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "[MediaPlaybackService]"

    const-string v2, "Bad thing ! I don\'t want to see this"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    goto :goto_1
.end method

.method static synthetic access$1000(Lcom/htc/music/MediaPlaybackService;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->refreshPlaylist()V

    return-void
.end method

.method static synthetic access$10000(Lcom/htc/music/MediaPlaybackService;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->getPluginNotReadyMsg()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$10100(Lcom/htc/music/MediaPlaybackService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginReady()Z

    move-result v0

    return v0
.end method

.method static synthetic access$10200(Lcom/htc/music/MediaPlaybackService;)[I
    .locals 1

    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->getRecentAlbumId()[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$10300(Lcom/htc/music/MediaPlaybackService;[I)[Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/htc/music/MediaPlaybackService;->getRecentAlbumartPath([I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$10400(Lcom/htc/music/MediaPlaybackService;[IILcom/htc/music/NpCategory;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/htc/music/MediaPlaybackService;->openWithCategory([IILcom/htc/music/NpCategory;)V

    return-void
.end method

.method static synthetic access$10500(Lcom/htc/music/MediaPlaybackService;)[I
    .locals 1

    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->getNowplaying()[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$10600(Lcom/htc/music/MediaPlaybackService;)[I
    .locals 1

    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->getRecentPlayedPlaylist()[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$10700(Lcom/htc/music/MediaPlaybackService;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/htc/music/MediaPlaybackService;->addToQueue(II)V

    return-void
.end method

.method static synthetic access$10800(Lcom/htc/music/MediaPlaybackService;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/htc/music/MediaPlaybackService;->addToQueueForMultiConditions(III)V

    return-void
.end method

.method static synthetic access$10900(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/htc/music/MediaPlaybackService;->setAudioEffect(Ljava/lang/String;ZI)V

    return-void
.end method

.method static synthetic access$1100(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    return-object v0
.end method

.method static synthetic access$11000(Lcom/htc/music/MediaPlaybackService;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->getAudioEffect()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$11100(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/music/MediaPlaybackService;->setLastAudioEffect(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$11200(Lcom/htc/music/MediaPlaybackService;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->getLastAudioEffect()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/music/MediaPlaybackService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mFileToPlay:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/htc/music/MediaPlaybackService;->mFileToPlay:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/htc/music/MediaPlaybackService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/music/MediaPlaybackService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mIsSupposedToBePlaying:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/htc/music/MediaPlaybackService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/music/MediaPlaybackService;->mIsSupposedToBePlaying:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/htc/music/MediaPlaybackService;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->openCurrent()V

    return-void
.end method

.method static synthetic access$1600(Lcom/htc/music/MediaPlaybackService;)I
    .locals 1

    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mRepeatMode:I

    return v0
.end method

.method static synthetic access$1700(Lcom/htc/music/MediaPlaybackService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/htc/music/MediaPlaybackService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/htc/music/MediaPlaybackService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mDrmConsumed:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/htc/music/MediaPlaybackService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/music/MediaPlaybackService;->mDrmConsumed:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/htc/music/MediaPlaybackService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mWakeLockAcquired:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/htc/music/MediaPlaybackService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/music/MediaPlaybackService;->mWakeLockAcquired:Z

    return p1
.end method

.method static synthetic access$200(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MusicPluginManager;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/htc/music/MediaPlaybackService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mIsWaitAnimation:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/htc/music/MediaPlaybackService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/music/MediaPlaybackService;->mIsWaitAnimation:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/htc/music/MediaPlaybackService;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/htc/music/MediaPlaybackService;)I
    .locals 1

    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mRepcnt:I

    return v0
.end method

.method static synthetic access$2202(Lcom/htc/music/MediaPlaybackService;I)I
    .locals 0

    iput p1, p0, Lcom/htc/music/MediaPlaybackService;->mRepcnt:I

    return p1
.end method

.method static synthetic access$2208(Lcom/htc/music/MediaPlaybackService;)I
    .locals 2

    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mRepcnt:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/htc/music/MediaPlaybackService;->mRepcnt:I

    return v0
.end method

.method static synthetic access$2300(Lcom/htc/music/MediaPlaybackService;)J
    .locals 2

    iget-wide v0, p0, Lcom/htc/music/MediaPlaybackService;->mLastRepeatTime:J

    return-wide v0
.end method

.method static synthetic access$2302(Lcom/htc/music/MediaPlaybackService;J)J
    .locals 0

    iput-wide p1, p0, Lcom/htc/music/MediaPlaybackService;->mLastRepeatTime:J

    return-wide p1
.end method

.method static synthetic access$2400(Lcom/htc/music/MediaPlaybackService;)I
    .locals 1

    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mFFRWRepeat:I

    return v0
.end method

.method static synthetic access$2402(Lcom/htc/music/MediaPlaybackService;I)I
    .locals 0

    iput p1, p0, Lcom/htc/music/MediaPlaybackService;->mFFRWRepeat:I

    return p1
.end method

.method static synthetic access$2500(Lcom/htc/music/MediaPlaybackService;IJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/htc/music/MediaPlaybackService;->scanForward(IJ)V

    return-void
.end method

.method static synthetic access$2600(Lcom/htc/music/MediaPlaybackService;IJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/htc/music/MediaPlaybackService;->scanBackward(IJ)V

    return-void
.end method

.method static synthetic access$2700(Lcom/htc/music/MediaPlaybackService;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->waitForAnimation()V

    return-void
.end method

.method static synthetic access$2800(Lcom/htc/music/MediaPlaybackService;Landroid/app/Notification;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/music/MediaPlaybackService;->pluginUpdateNotification(Landroid/app/Notification;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/htc/music/MediaPlaybackService;)I
    .locals 1

    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mBindFailedCounter:I

    return v0
.end method

.method static synthetic access$2902(Lcom/htc/music/MediaPlaybackService;I)I
    .locals 0

    iput p1, p0, Lcom/htc/music/MediaPlaybackService;->mBindFailedCounter:I

    return p1
.end method

.method static synthetic access$2908(Lcom/htc/music/MediaPlaybackService;)I
    .locals 2

    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mBindFailedCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/htc/music/MediaPlaybackService;->mBindFailedCounter:I

    return v0
.end method

.method static synthetic access$300(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/util/HeadSetHelper;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mHeadSetHelper:Lcom/htc/music/util/HeadSetHelper;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/htc/music/MediaPlaybackService;)I
    .locals 1

    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mUnbindFailedCounter:I

    return v0
.end method

.method static synthetic access$3002(Lcom/htc/music/MediaPlaybackService;I)I
    .locals 0

    iput p1, p0, Lcom/htc/music/MediaPlaybackService;->mUnbindFailedCounter:I

    return p1
.end method

.method static synthetic access$3008(Lcom/htc/music/MediaPlaybackService;)I
    .locals 2

    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mUnbindFailedCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/htc/music/MediaPlaybackService;->mUnbindFailedCounter:I

    return v0
.end method

.method static synthetic access$3100(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/htc/music/MediaPlaybackService;->showToast(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$3200(Lcom/htc/music/MediaPlaybackService;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/htc/music/MediaPlaybackService;->showToast(II)V

    return-void
.end method

.method static synthetic access$3300(Lcom/htc/music/MediaPlaybackService;Landroid/graphics/Bitmap;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/htc/music/MediaPlaybackService;->updateAlbumArtInNotification(Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method static synthetic access$3400(Lcom/htc/music/MediaPlaybackService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z

    return v0
.end method

.method static synthetic access$3402(Lcom/htc/music/MediaPlaybackService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z

    return p1
.end method

.method static synthetic access$3500(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$NonUiHandler;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/htc/music/MediaPlaybackService;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->startAndFadeIn()V

    return-void
.end method

.method static synthetic access$3702(Lcom/htc/music/MediaPlaybackService;J)J
    .locals 0

    iput-wide p1, p0, Lcom/htc/music/MediaPlaybackService;->noisy_action_time:J

    return-wide p1
.end method

.method static synthetic access$3800(Lcom/htc/music/MediaPlaybackService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3900(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$LocalPlayer;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/util/HdmiPlugReceiver;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mHdmiPlugReceiver:Lcom/htc/music/util/HdmiPlugReceiver;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/htc/music/MediaPlaybackService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mMuteByTransientLossOfFocusCanDuck:Z

    return v0
.end method

.method static synthetic access$4102(Lcom/htc/music/MediaPlaybackService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/music/MediaPlaybackService;->mMuteByTransientLossOfFocusCanDuck:Z

    return p1
.end method

.method static synthetic access$4500(Lcom/htc/music/MediaPlaybackService;)I
    .locals 1

    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mServiceInUse:I

    return v0
.end method

.method static synthetic access$4600(Lcom/htc/music/MediaPlaybackService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/music/MediaPlaybackService;->saveQueue(Z)V

    return-void
.end method

.method static synthetic access$4700(Lcom/htc/music/MediaPlaybackService;)I
    .locals 1

    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mServiceStartId:I

    return v0
.end method

.method static synthetic access$4902(Lcom/htc/music/MediaPlaybackService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/music/MediaPlaybackService;->mSdCardRemoved:Z

    return p1
.end method

.method static synthetic access$500(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5002(Lcom/htc/music/MediaPlaybackService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/music/MediaPlaybackService;->mQueueModified:Z

    return p1
.end method

.method static synthetic access$5108(Lcom/htc/music/MediaPlaybackService;)I
    .locals 2

    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mMediaMountedCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/htc/music/MediaPlaybackService;->mMediaMountedCount:I

    return v0
.end method

.method static synthetic access$5202(Lcom/htc/music/MediaPlaybackService;I)I
    .locals 0

    iput p1, p0, Lcom/htc/music/MediaPlaybackService;->mCardId:I

    return p1
.end method

.method static synthetic access$5300(Lcom/htc/music/MediaPlaybackService;IJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/htc/music/MediaPlaybackService;->sendULogMessage(IJ)V

    return-void
.end method

.method static synthetic access$5900(Lcom/htc/music/MediaPlaybackService;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->addRecentAlbumList()V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/music/MediaPlaybackService;)Landroid/graphics/BitmapFactory$Options;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mOpts:Landroid/graphics/BitmapFactory$Options;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/htc/music/MediaPlaybackService;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->addRecentPlayedPlaylist()V

    return-void
.end method

.method static synthetic access$602(Lcom/htc/music/MediaPlaybackService;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/BitmapFactory$Options;
    .locals 0

    iput-object p1, p0, Lcom/htc/music/MediaPlaybackService;->mOpts:Landroid/graphics/BitmapFactory$Options;

    return-object p1
.end method

.method static synthetic access$6200(Lcom/htc/music/MediaPlaybackService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->m_bUpdateBeatsLogo:Z

    return v0
.end method

.method static synthetic access$6202(Lcom/htc/music/MediaPlaybackService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/music/MediaPlaybackService;->m_bUpdateBeatsLogo:Z

    return p1
.end method

.method static synthetic access$6500(Lcom/htc/music/MediaPlaybackService;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->checkIfStopFFRWRepeat()V

    return-void
.end method

.method static synthetic access$6600(Lcom/htc/music/MediaPlaybackService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mFFToEndIsPlaying:Z

    return v0
.end method

.method static synthetic access$6700(Lcom/htc/music/MediaPlaybackService;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->gotoIdleState()V

    return-void
.end method

.method static synthetic access$6800(Lcom/htc/music/MediaPlaybackService;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->saveBookmarkIfNeeded()V

    return-void
.end method

.method static synthetic access$6900(Lcom/htc/music/MediaPlaybackService;)I
    .locals 1

    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    return v0
.end method

.method static synthetic access$700(Lcom/htc/music/MediaPlaybackService;Landroid/graphics/Bitmap;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/htc/music/MediaPlaybackService;->showNotificationAlbumArtInUiThread(Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method static synthetic access$7000(Lcom/htc/music/MediaPlaybackService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mAnimation:Z

    return v0
.end method

.method static synthetic access$7100(Lcom/htc/music/MediaPlaybackService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mActivityIsLive:Z

    return v0
.end method

.method static synthetic access$7200(Lcom/htc/music/MediaPlaybackService;)I
    .locals 1

    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    return v0
.end method

.method static synthetic access$7202(Lcom/htc/music/MediaPlaybackService;I)I
    .locals 0

    iput p1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    return p1
.end method

.method static synthetic access$7208(Lcom/htc/music/MediaPlaybackService;)I
    .locals 2

    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    return v0
.end method

.method static synthetic access$7210(Lcom/htc/music/MediaPlaybackService;)I
    .locals 2

    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    return v0
.end method

.method static synthetic access$7300(Lcom/htc/music/MediaPlaybackService;)Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$7400(Lcom/htc/music/MediaPlaybackService;)[I
    .locals 1

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumList:[I

    return-object v0
.end method

.method static synthetic access$7500(Lcom/htc/music/MediaPlaybackService;[II)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/htc/music/MediaPlaybackService;->getAlbumPos([II)I

    move-result v0

    return v0
.end method

.method static synthetic access$7600(Lcom/htc/music/MediaPlaybackService;)I
    .locals 1

    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mLastAlbumPos:I

    return v0
.end method

.method static synthetic access$7602(Lcom/htc/music/MediaPlaybackService;I)I
    .locals 0

    iput p1, p0, Lcom/htc/music/MediaPlaybackService;->mLastAlbumPos:I

    return p1
.end method

.method static synthetic access$7700(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$7800(Lcom/htc/music/MediaPlaybackService;)Landroid/database/Cursor;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$7802(Lcom/htc/music/MediaPlaybackService;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0

    iput-object p1, p0, Lcom/htc/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$7900(Lcom/htc/music/MediaPlaybackService;)Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/music/MediaPlaybackService;)Landroid/database/Cursor;
    .locals 1

    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->getDefaultTracks()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8000(Lcom/htc/music/MediaPlaybackService;)Landroid/media/AudioManager;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$8100(Lcom/htc/music/MediaPlaybackService;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->pauseOtherPlayer()V

    return-void
.end method

.method static synthetic access$8200(Lcom/htc/music/MediaPlaybackService;Landroid/net/Uri;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/htc/music/MediaPlaybackService;->checkExpirationAndConsumeRights(Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$8302(Lcom/htc/music/MediaPlaybackService;I)I
    .locals 0

    iput p1, p0, Lcom/htc/music/MediaPlaybackService;->mOpenFailedCounter:I

    return p1
.end method

.method static synthetic access$8308(Lcom/htc/music/MediaPlaybackService;)I
    .locals 2

    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mOpenFailedCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/htc/music/MediaPlaybackService;->mOpenFailedCounter:I

    return v0
.end method

.method static synthetic access$8400(Lcom/htc/music/MediaPlaybackService;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->updateNotification()V

    return-void
.end method

.method static synthetic access$8500(Lcom/htc/music/MediaPlaybackService;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/htc/music/MediaPlaybackService;->showToastInUiThread(II)V

    return-void
.end method

.method static synthetic access$8600(Ljava/lang/ref/WeakReference;)Z
    .locals 1

    invoke-static {p0}, Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$8700(Lcom/htc/music/MediaPlaybackService;[II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/htc/music/MediaPlaybackService;->openWithoutCategory([II)V

    return-void
.end method

.method static synthetic access$8800(Lcom/htc/music/MediaPlaybackService;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->stopActivePlugin()V

    return-void
.end method

.method static synthetic access$8900(Lcom/htc/music/MediaPlaybackService;)I
    .locals 1

    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->getPluginCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/htc/music/MediaPlaybackService;)Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$9000(Lcom/htc/music/MediaPlaybackService;I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/htc/music/MediaPlaybackService;->getPluginName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$902(Lcom/htc/music/MediaPlaybackService;Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;
    .locals 0

    iput-object p1, p0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    return-object p1
.end method

.method static synthetic access$9100(Lcom/htc/music/MediaPlaybackService;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->refreshPlugin()V

    return-void
.end method

.method static synthetic access$9200(Lcom/htc/music/MediaPlaybackService;)Landroid/graphics/Bitmap;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->getPluginIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$9300(Lcom/htc/music/MediaPlaybackService;I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/htc/music/MediaPlaybackService;->getPluginDescription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$9400(Lcom/htc/music/MediaPlaybackService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/music/MediaPlaybackService;->setOrientation(I)V

    return-void
.end method

.method static synthetic access$9500(Lcom/htc/music/MediaPlaybackService;Lcom/htc/music/NpCategory;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/music/MediaPlaybackService;->setCategory(Lcom/htc/music/NpCategory;)V

    return-void
.end method

.method static synthetic access$9600(Lcom/htc/music/MediaPlaybackService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isServiceConnected()Z

    move-result v0

    return v0
.end method

.method static synthetic access$9700(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/music/MediaPlaybackService;->bindPluginService(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$9800(Lcom/htc/music/MediaPlaybackService;I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/htc/music/MediaPlaybackService;->getPluginClass(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$9900(Lcom/htc/music/MediaPlaybackService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isDmcOrPushMode()Z

    move-result v0

    return v0
.end method

.method private addRecentAlbumList()V
    .locals 6

    const/16 v5, 0x8

    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getAlbumId()I

    move-result v0

    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mLocalRecentAlbumId:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-nez v1, :cond_1

    const-string v2, "[MediaPlaybackService]"

    const-string v3, "current album is recently album"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_1
    :try_start_1
    const-string v2, "[MediaPlaybackService]"

    const-string v3, "addRecentPlayList"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mLocalRecentAlbumId:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_2
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mLocalRecentAlbumId:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mLocalRecentAlbumId:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v5, :cond_3

    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mLocalRecentAlbumId:Ljava/util/ArrayList;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private addRecentPlayedPlaylist()V
    .locals 6

    const/16 v5, 0x64

    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getAudioId()I

    move-result v0

    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mRecentPlayTrackId:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-nez v1, :cond_1

    const-string v2, "[MediaPlaybackService]"

    const-string v3, "Current track is the most recent track."

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_1
    :try_start_1
    const-string v2, "[MediaPlaybackService]"

    const-string v3, "addRecentPlayedPlaylist"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mRecentPlayTrackId:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_2
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mRecentPlayTrackId:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mRecentPlayTrackId:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v5, :cond_3

    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mRecentPlayTrackId:Ljava/util/ArrayList;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private addToAlbumList([II)V
    .locals 7

    array-length v0, p1

    if-gez p2, :cond_0

    const/4 v3, 0x0

    iput v3, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    const/4 p2, 0x0

    :cond_0
    iget v3, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    add-int/2addr v3, v0

    invoke-direct {p0, v3}, Lcom/htc/music/MediaPlaybackService;->ensureAlbumListCapacity(I)V

    iget v3, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    if-le p2, v3, :cond_1

    iget p2, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    :cond_1
    iget v3, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    sub-int v2, v3, p2

    move v1, v2

    :goto_0
    if-lez v1, :cond_2

    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleAlbumList:[I

    add-int v4, p2, v1

    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumList:[I

    add-int v6, p2, v1

    sub-int/2addr v6, v0

    aget v5, v5, v6

    aput v5, v3, v4

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_3

    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleAlbumList:[I

    add-int v4, p2, v1

    aget v5, p1, v1

    aput v5, v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iget v3, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    add-int/2addr v3, v0

    iput v3, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    return-void
.end method

.method private addToPlayList([II)V
    .locals 9

    const/4 v8, 0x1

    array-length v0, p1

    if-gez p2, :cond_0

    const-string v4, "[MediaPlaybackService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addToPlayList, position: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", reset PlayList Length."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    iput v4, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    const/4 p2, 0x0

    :cond_0
    iget v4, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    add-int/2addr v4, v0

    invoke-direct {p0, v4}, Lcom/htc/music/MediaPlaybackService;->ensurePlayListCapacity(I)V

    iget v4, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-le p2, v4, :cond_1

    iget p2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    :cond_1
    iget v4, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    sub-int v3, v4, p2

    move v1, v3

    :goto_0
    if-lez v1, :cond_2

    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    add-int v5, p2, v1

    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    add-int v7, p2, v1

    sub-int/2addr v7, v0

    aget v6, v6, v7

    aput v6, v4, v5

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_3

    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    add-int v5, p2, v1

    aget v6, p1, v1

    aput v6, v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iget v4, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    add-int/2addr v4, v0

    iput v4, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    const-string v4, "[MediaPlaybackService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addToPlayList, mPlayListLen: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v4, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    if-ne v4, v8, :cond_5

    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    iget v5, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    invoke-direct {p0, v4, v5}, Lcom/htc/music/MediaPlaybackService;->applyShuffleSeq([II)[I

    move-result-object v2

    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mShufflePlayList:[I

    iget v5, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    invoke-static {v2, v4, v5}, Lcom/htc/music/util/MusicUtils;->arrayDeepClone([I[II)V

    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mShufflePlayList:[I

    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    :goto_2
    iget-boolean v4, p0, Lcom/htc/music/MediaPlaybackService;->mSdCardRemoved:Z

    if-eqz v4, :cond_4

    iput-boolean v8, p0, Lcom/htc/music/MediaPlaybackService;->mQueueModified:Z

    :cond_4
    return-void

    :cond_5
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    goto :goto_2
.end method

.method private addToQueue(II)V
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x0

    monitor-enter p0

    packed-switch p1, :pswitch_data_0

    :goto_0
    :try_start_0
    monitor-exit p0

    return-void

    :pswitch_0
    const/4 v2, 0x1

    new-array v0, v2, [I

    const/4 v2, 0x0

    aput p2, v0, v2

    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->resetQueueAlbumList([I)V

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/htc/music/util/MusicUtils;->getSongListForAlbum(Landroid/content/Context;I)[I

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/htc/music/MediaPlaybackService;->addToQueue([I)V

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :pswitch_1
    :try_start_1
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/htc/music/util/MusicUtils;->getAlbumListForArtist(Landroid/content/Context;I)[I

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->resetQueueAlbumList([I)V

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/htc/music/util/MusicUtils;->getSongListForArtist(Landroid/content/Context;I)[I

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/htc/music/MediaPlaybackService;->addToQueue([I)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/htc/music/util/MusicUtils;->getAlbumListForGenre(Landroid/content/Context;I)[I

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->resetQueueAlbumList([I)V

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/htc/music/util/MusicUtils;->getSongListForGenre(Landroid/content/Context;I)[I

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/htc/music/MediaPlaybackService;->addToQueue([I)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    int-to-long v3, p2

    invoke-static {v2, v3, v4}, Lcom/htc/music/util/MusicUtils;->getAlbumListForPlaylist(Landroid/content/Context;J)[I

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->resetQueueAlbumList([I)V

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    int-to-long v3, p2

    invoke-static {v2, v3, v4}, Lcom/htc/music/util/MusicUtils;->getSongListForPlaylist(Landroid/content/Context;J)[I

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/htc/music/MediaPlaybackService;->addToQueue([I)V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/htc/music/util/MusicUtils;->getAlbumListForSong(Landroid/content/Context;I)[I

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->resetQueueAlbumList([I)V

    const/4 v2, 0x1

    new-array v1, v2, [I

    const/4 v2, 0x0

    aput p2, v1, v2

    invoke-direct {p0, v1}, Lcom/htc/music/MediaPlaybackService;->addToQueue([I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private addToQueue([I)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    array-length v2, p1

    if-gtz v2, :cond_1

    const-string v2, "[MediaPlaybackService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addToQueue size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-lez v2, :cond_2

    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    array-length v3, p1

    add-int/2addr v2, v3

    new-array v0, v2, [I

    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    iget v3, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    invoke-static {v2, v7, v0, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    array-length v3, p1

    invoke-static {p1, v7, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0, v0, v8}, Lcom/htc/music/MediaPlaybackService;->setPlaylist([IZ)V

    :goto_1
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0004

    array-length v4, p1

    new-array v5, v8, [Ljava/lang/Object;

    array-length v6, p1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v7}, Lcom/htc/music/MediaPlaybackService;->showPluginToast(Ljava/lang/String;I)V

    iget-boolean v2, p0, Lcom/htc/music/MediaPlaybackService;->mSdCardRemoved:Z

    if-eqz v2, :cond_0

    iput-boolean v8, p0, Lcom/htc/music/MediaPlaybackService;->mQueueModified:Z

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1, v8}, Lcom/htc/music/MediaPlaybackService;->setPlaylist([IZ)V

    goto :goto_1
.end method

.method private addToQueueForMultiConditions(III)V
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    monitor-enter p0

    const/4 v2, 0x1

    :try_start_0
    new-array v0, v2, [I

    const/4 v2, 0x0

    aput p3, v0, v2

    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->resetQueueAlbumList([I)V

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1, p2, p3}, Lcom/htc/music/util/MusicUtils;->getSongListForAlbum(Landroid/content/Context;III)[I

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/htc/music/MediaPlaybackService;->addToQueue([I)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private applyShuffleSeq([II)[I
    .locals 3

    if-nez p1, :cond_1

    const/4 p1, 0x0

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleSeq:[I

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleSeqLen:I

    if-eq p2, v2, :cond_2

    const/4 v2, 0x0

    invoke-direct {p0, p2, v2}, Lcom/htc/music/MediaPlaybackService;->setShuffleSeq(II)V

    :cond_2
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleSeq:[I

    if-eqz v2, :cond_0

    new-array v1, p2, [I

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p2, :cond_3

    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleSeq:[I

    aget v2, v2, v0

    aget v2, p1, v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move-object p1, v1

    goto :goto_0
.end method

.method private bindPluginService(Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    if-eqz v3, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v3}, Lcom/htc/music/MusicPluginManager;->isPluginConnected()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lcom/htc/music/MusicPluginManager;->getPluginClass(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v3}, Lcom/htc/music/MusicPluginManager;->stopActivePlugin()V

    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v3, p1, v5, v5}, Lcom/htc/music/MusicPluginManager;->bindPluginService(Ljava/lang/String;ZZ)Z

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v3}, Lcom/htc/music/MusicPluginManager;->getBindingClass()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v3}, Lcom/htc/music/MusicPluginManager;->isBindingService()Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    const/4 v3, 0x4

    iput v3, v2, Landroid/os/Message;->what:I

    iput-object p1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mUiHandler:Landroid/os/Handler;

    const-wide/16 v4, 0xc8

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_3
    iget-boolean v3, p0, Lcom/htc/music/MediaPlaybackService;->mIsSupposedToBePlaying:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    #calls: Lcom/htc/music/MediaPlaybackService$LocalPlayer;->pause()V
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->access$4200(Lcom/htc/music/MediaPlaybackService$LocalPlayer;)V

    :cond_4
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v3, p1, v5, v5}, Lcom/htc/music/MusicPluginManager;->bindPluginService(Ljava/lang/String;ZZ)Z

    goto :goto_0
.end method

.method private checkExpirationAndConsumeRights(Landroid/net/Uri;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {p0, p1}, Lcom/htc/music/util/MusicUtils;->getDrmStatus(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "[MediaPlaybackService]"

    const-string v2, "getDrmStatus Failed"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/music/MediaPlaybackService;->consumeRights(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "[MediaPlaybackService]"

    const-string v2, "Consume Rights Failed"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private checkIfStopFFRWRepeat()V
    .locals 1

    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mFFRWRepeat:I

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mSeeking:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->stopFFRWRepeat()V

    :cond_0
    return-void
.end method

.method private clearRecentAlbumList()V
    .locals 1

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mLocalRecentAlbumId:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mLocalRecentAlbumId:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    return-void
.end method

.method private clearRecentPlayedPlaylist()V
    .locals 1

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mRecentPlayTrackId:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mRecentPlayTrackId:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    return-void
.end method

.method private consumeRights(Landroid/net/Uri;)Z
    .locals 8

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {p0, p1}, Lcom/htc/music/util/MusicUtils;->getDrmCursor(Landroid/content/Context;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v3, "[MediaPlaybackService]"

    const-string v5, "consumeRights: drmCursor is null"

    invoke-static {v3, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v4

    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v5, "_data"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    invoke-static {p0, p1, v2, v5}, Landroid/provider/DrmStore;->consumeRights(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;I)I

    move-result v1

    const-string v5, "[MediaPlaybackService]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "consumeRights(uri) error code="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    const/4 v0, 0x0

    move v4, v3

    goto :goto_0

    :cond_1
    move v3, v4

    goto :goto_1

    :catchall_0
    move-exception v3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    const/4 v0, 0x0

    throw v3
.end method

.method private doAutoShuffleUpdate()V
    .locals 8

    const/4 v2, 0x0

    iget v5, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    const/16 v6, 0xa

    if-le v5, v6, :cond_0

    const/4 v5, 0x0

    iget v6, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    add-int/lit8 v6, v6, -0x9

    invoke-virtual {p0, v5, v6}, Lcom/htc/music/MediaPlaybackService;->removeTracks(II)I

    const/4 v2, 0x1

    :cond_0
    iget v6, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    iget v5, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    if-gez v5, :cond_1

    const/4 v5, -0x1

    :goto_0
    sub-int v5, v6, v5

    rsub-int/lit8 v3, v5, 0x7

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_2

    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService;->mRand:Lcom/htc/music/MediaPlaybackService$Shuffler;

    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService;->mAutoShuffleList:[I

    array-length v6, v6

    invoke-virtual {v5, v6}, Lcom/htc/music/MediaPlaybackService$Shuffler;->nextInt(I)I

    move-result v1

    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService;->mAutoShuffleList:[I

    aget v5, v5, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    add-int/lit8 v5, v5, 0x1

    invoke-direct {p0, v5}, Lcom/htc/music/MediaPlaybackService;->ensurePlayListCapacity(I)V

    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    iget v6, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput v7, v5, v6

    const/4 v2, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget v5, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    const-string v5, "com.htc.music.queuechanged"

    invoke-direct {p0, v5}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private ensureAlbumListCapacity(I)V
    .locals 6

    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleAlbumList:[I

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleAlbumList:[I

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumList:[I

    array-length v4, v4

    if-le p1, v4, :cond_3

    :cond_0
    shl-int/lit8 v4, p1, 0x1

    new-array v2, v4, [I

    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleAlbumList:[I

    if-eqz v4, :cond_1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleAlbumList:[I

    aget v4, v4, v0

    aput v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iput-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleAlbumList:[I

    shl-int/lit8 v4, p1, 0x1

    new-array v3, v4, [I

    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleAlbumList:[I

    if-eqz v4, :cond_2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_2

    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleAlbumList:[I

    aget v4, v4, v0

    aput v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iput-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleAlbumList:[I

    iget v4, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleAlbumList:[I

    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumList:[I

    :cond_3
    :goto_2
    return-void

    :cond_4
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleAlbumList:[I

    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumList:[I

    goto :goto_2
.end method

.method private ensurePlayListCapacity(I)V
    .locals 6

    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mShufflePlayList:[I

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    array-length v4, v4

    if-le p1, v4, :cond_3

    :cond_0
    mul-int/lit8 v4, p1, 0x2

    new-array v2, v4, [I

    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    if-eqz v4, :cond_1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    aget v4, v4, v0

    aput v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iput-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    mul-int/lit8 v4, p1, 0x2

    new-array v3, v4, [I

    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mShufflePlayList:[I

    if-eqz v4, :cond_2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_2

    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mShufflePlayList:[I

    aget v4, v4, v0

    aput v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iput-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mShufflePlayList:[I

    iget v4, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mShufflePlayList:[I

    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    :cond_3
    :goto_2
    return-void

    :cond_4
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    goto :goto_2
.end method

.method private ensureShrinkAlbumListCapacity(I)V
    .locals 4

    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleShrinkAlbumList:[I

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleShrinkAlbumList:[I

    array-length v3, v3

    if-le p1, v3, :cond_2

    :cond_0
    shl-int/lit8 v3, p1, 0x1

    new-array v2, v3, [I

    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleShrinkAlbumListLen:I

    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleShrinkAlbumList:[I

    if-eqz v3, :cond_1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleShrinkAlbumList:[I

    aget v3, v3, v0

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iput-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleShrinkAlbumList:[I

    :cond_2
    return-void
.end method

.method private ensureShuffleSeqCapacity(I)V
    .locals 4

    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleSeq:[I

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleSeq:[I

    array-length v3, v3

    if-le p1, v3, :cond_2

    :cond_0
    shl-int/lit8 v3, p1, 0x1

    new-array v2, v3, [I

    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleSeqLen:I

    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleSeq:[I

    if-eqz v3, :cond_1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleSeq:[I

    aget v3, v3, v0

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iput-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleSeq:[I

    :cond_2
    return-void
.end method

.method private ensureShuffleShrinkAlbumListCapacity(I)V
    .locals 4

    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleShrinkAlbumList:[I

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleShrinkAlbumList:[I

    array-length v3, v3

    if-le p1, v3, :cond_2

    :cond_0
    shl-int/lit8 v3, p1, 0x1

    new-array v2, v3, [I

    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleShrinkAlbumListLen:I

    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleShrinkAlbumList:[I

    if-eqz v3, :cond_1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleShrinkAlbumList:[I

    aget v3, v3, v0

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iput-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleShrinkAlbumList:[I

    :cond_2
    return-void
.end method

.method private forcePlay()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mIsWaitAnimation:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->openCurrent()V

    const-string v0, "[MediaPlaybackService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "forcePlay mPlayOnNextPrev= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->play()V

    :cond_0
    const-string v0, "com.htc.music.metachanged"

    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mIsWaitAnimation:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mAnimation:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mTest:Z

    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mWakeLockAcquired:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getAlbumPos([II)I
    .locals 7

    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v6

    if-eqz v6, :cond_1

    move v2, v4

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget v6, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-gtz v6, :cond_2

    move v2, v5

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    aget v3, p1, v4

    iget v4, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    if-lt p2, v4, :cond_3

    move v2, v5

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_1
    if-gt v0, p2, :cond_0

    aget v1, p1, v0

    if-eq v1, v3, :cond_4

    add-int/lit8 v2, v2, 0x1

    move v3, v1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private getAudioEffect()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/music/util/SoundEffectHelper;->getCurrentAudioStyle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getBookmark()J
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    monitor-exit p0

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    const/16 v1, 0x9

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getDefaultTracks()Landroid/database/Cursor;
    .locals 7

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "album_id"

    aput-object v3, v2, v0

    const-string v3, "is_music>=1"

    const/4 v4, 0x0

    const-string v5, "title_key"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    return-object v6
.end method

.method private getLastAudioEffect()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/htc/music/util/SoundEffectHelper;->getLastAudioEffect(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getNextAlbumPos([II)I
    .locals 3

    aget v1, p1, p2

    add-int/lit8 v0, p2, 0x1

    :goto_0
    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    if-ge v0, v2, :cond_1

    aget v2, p1, v0

    if-eq v2, v1, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private getNowplaying()[I
    .locals 4

    monitor-enter p0

    :try_start_0
    iget v3, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-gtz v3, :cond_0

    const/4 v2, 0x0

    monitor-exit p0

    :goto_0
    return-object v2

    :cond_0
    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    new-array v2, v1, [I

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_1

    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    aget v3, v3, v0

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private getPluginClass(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0, p1}, Lcom/htc/music/MusicPluginManager;->getPluginClass(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getPluginCount()I
    .locals 1

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->getPluginCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getPluginDescription(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0, p1}, Lcom/htc/music/MusicPluginManager;->getPluginDescription(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getPluginIcon()Landroid/graphics/Bitmap;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->getPluginIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getPluginName(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0, p1}, Lcom/htc/music/MusicPluginManager;->getPluginName(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getPluginNotReadyMsg()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->getPluginNotReadyMsg()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getPluginUpdateNotification()Landroid/app/Notification;
    .locals 17

    new-instance v8, Landroid/app/Notification;

    invoke-direct {v8}, Landroid/app/Notification;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->isPlaying()Z

    move-result v12

    if-eqz v12, :cond_4

    new-instance v11, Landroid/widget/RemoteViews;

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getPackageName()Ljava/lang/String;

    move-result-object v12

    const v13, 0x7f03005e

    invoke-direct {v11, v12, v13}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    const v12, 0x7f0800e7

    const-string v13, "common_icon_glance_pause_on"

    const v14, 0x2080915

    move-object/from16 v0, p0

    invoke-static {v0, v13, v14}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v13

    invoke-virtual {v11, v12, v13}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getAlbumArtPath()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_5

    const v12, 0x7f080071

    const v13, 0x7f020057

    invoke-virtual {v11, v12, v13}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v10

    const v12, 0x7f0800e8

    invoke-virtual {v11, v12, v10}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    if-eqz v2, :cond_0

    const-string v12, "<unknown>"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    :cond_0
    const v12, 0x7f070043

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/htc/music/MediaPlaybackService;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v12, "<unknown>"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    :cond_2
    const v12, 0x7f070044

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/htc/music/MediaPlaybackService;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_3
    const v12, 0x7f0800e9

    const v13, 0x7f070215

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v2, v14, v15

    const/4 v15, 0x1

    aput-object v1, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/htc/music/MediaPlaybackService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iput-object v11, v8, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    iget v12, v8, Landroid/app/Notification;->flags:I

    const/high16 v13, 0x4

    or-int/2addr v12, v13

    iput v12, v8, Landroid/app/Notification;->flags:I

    const v12, 0x7f02006b

    iput v12, v8, Landroid/app/Notification;->icon:I

    new-instance v9, Landroid/content/Intent;

    const-string v12, "com.htc.music.PLAYBACK_VIEWER"

    invoke-direct {v9, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v12, 0x0

    const/high16 v13, 0x800

    move-object/from16 v0, p0

    invoke-static {v0, v12, v9, v13}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v12

    iput-object v12, v8, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    const-string v12, "command"

    const-string v13, "pause"

    invoke-virtual {v5, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v12, "com.htc.music.musicservicecommand.pause"

    invoke-virtual {v5, v12}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v12, v8, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v13, 0x7f0800e7

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v14, v15, v5, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getAudioId()I

    move-result v12

    if-ltz v12, :cond_4

    iget-object v12, v8, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v13, "music_track"

    invoke-virtual {v12, v13, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v12, v8, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v13, "music_artist"

    invoke-virtual {v12, v13, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v12, v8, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v13, "music_album"

    invoke-virtual {v12, v13, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v12, v8, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v13, "music_albumid"

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getAlbumId()I

    move-result v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-object v8

    :cond_5
    const/16 v4, 0x48

    invoke-static {v7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_6

    const-string v12, "[MediaPlaybackService]"

    const-string v13, " bitmap is null..."

    invoke-static {v12, v13}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const v12, 0x7f080071

    const v13, 0x7f020057

    invoke-virtual {v11, v12, v13}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    :goto_1
    const-string v12, "[MediaPlaybackService]"

    invoke-static {v12, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    if-gt v12, v4, :cond_7

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    if-le v12, v4, :cond_8

    :cond_7
    const/4 v12, 0x0

    invoke-static {v3, v4, v4, v12}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v3, 0x0

    const v12, 0x7f080071

    invoke-virtual {v11, v12, v6}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    goto :goto_1

    :cond_8
    const v12, 0x7f080071

    invoke-virtual {v11, v12, v3}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    goto :goto_1
.end method

.method private getPrevAlbumPos([II)I
    .locals 4

    aget v1, p1, p2

    add-int/lit8 v0, p2, -0x1

    :goto_0
    if-ltz v0, :cond_1

    aget v2, p1, v0

    if-eq v2, v1, :cond_0

    if-eqz v0, :cond_2

    add-int/lit8 v2, v0, -0x1

    aget v2, p1, v2

    aget v3, p1, v0

    if-ne v2, v3, :cond_2

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    add-int/lit8 v0, v2, -0x1

    :cond_2
    return v0
.end method

.method private getRecentAlbumId()[I
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mLocalRecentAlbumId:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v1, v2, [I

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mLocalRecentAlbumId:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mLocalRecentAlbumId:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private getRecentAlbumartPath([I)[Ljava/lang/String;
    .locals 14

    const/4 v13, 0x0

    if-nez p1, :cond_1

    move-object v11, v13

    :cond_0
    :goto_0
    return-object v11

    :cond_1
    const/16 v0, 0x8

    new-array v11, v0, [Ljava/lang/String;

    const-string v0, "[MediaPlaybackService]"

    const-string v1, "getRecentAlbumartPath"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x0

    :try_start_0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mLocalRecentAlbumId:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v4, v0, [Ljava/lang/String;

    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v9, 0x0

    :goto_1
    :try_start_1
    array-length v0, p1

    if-ge v9, v0, :cond_3

    const-string v0, "_id = ?"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, p1, v9

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v9

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    if-eq v9, v0, :cond_2

    const-string v0, " OR "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v0, "[MediaPlaybackService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "where = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/htc/music/util/MusicUtils;->sMdColumns:[Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_6

    :cond_4
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "Cursor is null or count <= 0"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v7, :cond_5

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    const/4 v7, 0x0

    :cond_5
    move-object v11, v13

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v8

    :try_start_5
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "getRecentAlbumartPath error"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :goto_2
    const/4 v7, 0x0

    goto/16 :goto_0

    :cond_6
    :try_start_6
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/music/util/MusicUtils;->isMusicEnhancerEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v7}, Lcom/htc/music/util/MusicUtils;->mergeDlAlbumArt(Landroid/content/Context;Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_7

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_9

    :cond_7
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "Cursor is null or count <= 0"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    if-eqz v7, :cond_8

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    const/4 v7, 0x0

    :cond_8
    move-object v11, v13

    goto/16 :goto_0

    :cond_9
    :try_start_7
    monitor-enter p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    const/4 v9, 0x0

    :goto_3
    :try_start_8
    array-length v0, p1

    if-ge v9, v0, :cond_c

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v10, 0x0

    :goto_4
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v10, v0, :cond_a

    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    aget v0, p1, v9

    if-ne v6, v0, :cond_b

    const-string v0, "album_art"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v11, v9

    const-string v0, "[MediaPlaybackService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "recentAlbumartpath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v11, v9

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_b
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_c
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_1
    move-exception v0

    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    :catchall_2
    move-exception v0

    if-eqz v7, :cond_d

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    const/4 v7, 0x0

    :cond_d
    throw v0
.end method

.method private getRecentPlayedPlaylist()[I
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mRecentPlayTrackId:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v1, v2, [I

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mRecentPlayTrackId:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mRecentPlayTrackId:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private gotoIdleState()V
    .locals 6

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z

    const-string v2, "[MediaPlaybackService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "gotoIdleState: mPlayOnNextPrev: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const-wide/32 v3, 0xea60

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v1}, Lcom/htc/music/MediaPlaybackService;->startForeground(ILandroid/app/Notification;)V

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeats(Landroid/content/Context;)Z

    move-result v2

    const/4 v2, 0x1

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/htc/music/MediaPlaybackService;->m_bUpdateBeatsLogo:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v5, v5}, Lcom/htc/music/util/SoundEffectHelper;->setBeatsNotificationBar(Landroid/content/Context;ZZ)V

    :cond_0
    return-void
.end method

.method private isDmcOrPushMode()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/music/util/MusicUtils;->CheckDLNAStatus(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    monitor-exit p0

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private isPluginMode()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->isPluginMode()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPluginReady()Z
    .locals 1

    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->isPluginReady()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isPodcast()Z
    .locals 3

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_0

    monitor-exit p0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    const/16 v2, 0x8

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-lez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isServiceConnected()Z
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v1}, Lcom/htc/music/MusicPluginManager;->isPluginConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isServiceReady(Ljava/lang/ref/WeakReference;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/htc/music/MediaPlaybackService;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const-string v1, "[MediaPlaybackService]"

    const-string v2, "mService.get() is null"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v1, "[MediaPlaybackService]"

    const-string v2, "mService is null"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private loadRecentAlbumList(Landroid/content/SharedPreferences;Z)V
    .locals 11

    iget-object v8, p0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v9, "localrecentalbumid"

    const-string v10, ""

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x1

    if-le v8, v9, :cond_4

    const-string v8, ";"

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v4, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_4

    if-eqz p2, :cond_3

    aget-object v7, v1, v2

    const/4 v5, 0x0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v3, v8, -0x1

    :goto_1
    if-ltz v3, :cond_2

    shl-int/lit8 v5, v5, 0x4

    invoke-virtual {v7, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v8, 0x30

    if-lt v0, v8, :cond_0

    const/16 v8, 0x39

    if-gt v0, v8, :cond_0

    add-int/lit8 v8, v0, -0x30

    add-int/2addr v5, v8

    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_0
    const/16 v8, 0x61

    if-lt v0, v8, :cond_1

    const/16 v8, 0x66

    if-gt v0, v8, :cond_1

    add-int/lit8 v8, v0, 0xa

    add-int/lit8 v8, v8, -0x61

    add-int/2addr v5, v8

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    :cond_2
    invoke-direct {p0, v5}, Lcom/htc/music/MediaPlaybackService;->restoreRecentAlbumList(I)V

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    aget-object v8, v1, v2

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-direct {p0, v8}, Lcom/htc/music/MediaPlaybackService;->restoreRecentAlbumList(I)V

    goto :goto_3

    :cond_4
    return-void
.end method

.method private loadRecentPlayedPlaylist(Landroid/content/SharedPreferences;Z)V
    .locals 11

    iget-object v8, p0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v9, "recentplayedplaylist"

    const-string v10, ""

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "[MediaPlaybackService]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "loadRecentPlayedPlaylist:newstyle="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ";q="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x1

    if-le v8, v9, :cond_4

    const-string v8, ";"

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v4, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_4

    if-eqz p2, :cond_3

    aget-object v7, v1, v2

    const/4 v5, 0x0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v3, v8, -0x1

    :goto_1
    if-ltz v3, :cond_2

    shl-int/lit8 v5, v5, 0x4

    invoke-virtual {v7, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v8, 0x30

    if-lt v0, v8, :cond_0

    const/16 v8, 0x39

    if-gt v0, v8, :cond_0

    add-int/lit8 v8, v0, -0x30

    add-int/2addr v5, v8

    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_0
    const/16 v8, 0x61

    if-lt v0, v8, :cond_1

    const/16 v8, 0x66

    if-gt v0, v8, :cond_1

    add-int/lit8 v8, v0, 0xa

    add-int/lit8 v8, v8, -0x61

    add-int/2addr v5, v8

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    :cond_2
    invoke-direct {p0, v5}, Lcom/htc/music/MediaPlaybackService;->restoreRecentPlayedPlaylist(I)V

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    aget-object v8, v1, v2

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-direct {p0, v8}, Lcom/htc/music/MediaPlaybackService;->restoreRecentPlayedPlaylist(I)V

    goto :goto_3

    :cond_4
    return-void
.end method

.method private makeAutoShuffleList()Z
    .locals 14

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const/4 v6, 0x0

    :try_start_0
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const-string v3, "is_music>=1"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    move v0, v13

    :goto_0
    return v0

    :cond_2
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v9

    new-array v10, v9, [I

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v9, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    aput v0, v10, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_3
    iput-object v10, p0, Lcom/htc/music/MediaPlaybackService;->mAutoShuffleList:[I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    move v0, v12

    goto :goto_0

    :catch_0
    move-exception v7

    :try_start_2
    const-string v0, "[MediaPlaybackService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "caught exception in makeAutoShuffleList. Ex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    move v0, v13

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_6

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0
.end method

.method private notifyChange(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "id"

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getAudioId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "artist"

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "album"

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "track"

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "albumid"

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getAlbumId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "isplaying"

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->isPlaying()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/htc/music/MediaPlaybackService;->sendBroadcast(Landroid/content/Intent;)V

    const-string v1, "com.htc.music.playstatechanged"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_0
    const-string v1, "com.htc.music.queuechanged"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "[MediaPlaybackService]"

    const-string v2, "notifyChange: QUEUE_CHANGED"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/htc/music/MediaPlaybackService;->saveQueue(Z)V

    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/htc/music/MediaPlaybackService;->saveQueue(Z)V

    goto :goto_0
.end method

.method private notifyChange(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 7

    const/4 v6, 0x0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "id"

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getAudioId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v3, "artist"

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "album"

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "track"

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "albumid"

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getAlbumId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v3, "isplaying"

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->isPlaying()Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    if-eqz p2, :cond_2

    const-string v3, "animationtype"

    invoke-virtual {p2, v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v3, 0x2

    if-le v1, v3, :cond_1

    :cond_0
    const/4 v1, 0x0

    :cond_1
    const-string v3, "animationtype"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "updatewidget"

    invoke-virtual {p2, v3, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const-string v3, "updatewidget"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_2
    invoke-virtual {p0, v0}, Lcom/htc/music/MediaPlaybackService;->sendBroadcast(Landroid/content/Intent;)V

    const-string v3, "[MediaPlaybackService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "!!!=== notifyChange: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "com.htc.music.queuechanged"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/htc/music/MediaPlaybackService;->saveQueue(Z)V

    :goto_0
    return-void

    :cond_3
    invoke-direct {p0, v6}, Lcom/htc/music/MediaPlaybackService;->saveQueue(Z)V

    goto :goto_0
.end method

.method private openCurrent()V
    .locals 11

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    :cond_0
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-nez v0, :cond_1

    monitor-exit p0

    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    if-ltz v0, :cond_2

    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-lt v0, v1, :cond_3

    :cond_2
    const-string v0, "[MediaPlaybackService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad! we can\'t open mPlayPos "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mPlayListLen "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    const/4 v1, 0x0

    #calls: Lcom/htc/music/MediaPlaybackService$LocalPlayer;->stop(Z)V
    invoke-static {v0, v1}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->access$4800(Lcom/htc/music/MediaPlaybackService$LocalPlayer;Z)V

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    :cond_4
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mCursorCols:[Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_9

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v8

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v10

    if-lez v8, :cond_5

    if-gez v10, :cond_7

    :cond_5
    const-string v0, "[MediaPlaybackService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openCurrent: cols count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    :cond_6
    monitor-exit p0

    goto/16 :goto_0

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/htc/music/MediaPlaybackService;->open(Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPodcast()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->getBookmark()J

    move-result-wide v6

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    const-wide/16 v1, 0x1388

    sub-long v1, v6, v1

    #calls: Lcom/htc/music/MediaPlaybackService$LocalPlayer;->seek(J)J
    invoke-static {v0, v1, v2}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->access$4300(Lcom/htc/music/MediaPlaybackService$LocalPlayer;J)J

    :cond_8
    :goto_1
    monitor-exit p0

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private openWithCategory([IILcom/htc/music/NpCategory;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/htc/music/NpCategory;

    const/16 v1, 0x15

    invoke-direct {v0, v1}, Lcom/htc/music/NpCategory;-><init>(S)V

    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->setCategory(Lcom/htc/music/NpCategory;)V

    invoke-virtual {p0, p1, p2}, Lcom/htc/music/MediaPlaybackService;->open([II)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private openWithoutCategory([II)V
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/htc/music/NpCategory;

    const/16 v1, 0x15

    invoke-direct {v0, v1}, Lcom/htc/music/NpCategory;-><init>(S)V

    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->setCategory(Lcom/htc/music/NpCategory;)V

    invoke-virtual {p0, p1, p2}, Lcom/htc/music/MediaPlaybackService;->open([II)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private pauseOtherPlayer()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v2, "kkbox.media.action.pause"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/htc/music/MediaPlaybackService;->sendBroadcast(Landroid/content/Intent;)V

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/htc/music/MediaPlaybackService$9;

    invoke-direct {v2, p0}, Lcom/htc/music/MediaPlaybackService$9;-><init>(Lcom/htc/music/MediaPlaybackService;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private pluginUpdateNotification(Landroid/app/Notification;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v3, p1}, Lcom/htc/music/MediaPlaybackService;->startForeground(ILandroid/app/Notification;)V

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeats(Landroid/content/Context;)Z

    move-result v2

    const/4 v2, 0x1

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {p0}, Lcom/htc/music/util/SoundEffectHelper;->isBeatsEffectOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v1, v3, v3}, Lcom/htc/music/util/SoundEffectHelper;->setBeatsNotificationBar(Landroid/content/Context;ZZ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p0}, Lcom/htc/music/util/SoundEffectHelper;->IsBeatsCanBeEnable(Landroid/content/Context;)Z

    move-result v2

    const/4 v2, 0x1

    if-eqz v2, :cond_2

    invoke-static {v1, v4, v3}, Lcom/htc/music/util/SoundEffectHelper;->setBeatsNotificationBar(Landroid/content/Context;ZZ)V

    goto :goto_0

    :cond_2
    invoke-static {v1}, Lcom/htc/music/util/SoundEffectHelper;->isBeatsBTWork(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v1, v3, v3, v3}, Lcom/htc/music/util/SoundEffectHelper;->setBeatsNotificationBar(Landroid/content/Context;ZZI)V

    goto :goto_0

    :cond_3
    invoke-static {v1, v4, v4}, Lcom/htc/music/util/SoundEffectHelper;->setBeatsNotificationBar(Landroid/content/Context;ZZ)V

    goto :goto_0

    :cond_4
    invoke-static {v1, v4, v4}, Lcom/htc/music/util/SoundEffectHelper;->setBeatsNotificationBar(Landroid/content/Context;ZZ)V

    goto :goto_0
.end method

.method private refreshPlaylist()V
    .locals 18

    const-string v1, "[MediaPlaybackService]"

    const-string v2, "refreshPlaylist"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-lez v1, :cond_5

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "title != \'\'"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AND _id IN ("

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v11, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    array-length v1, v1

    if-ge v11, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    aget v1, v1, v11

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v11, v1, :cond_0

    const-string v1, ","

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_1
    const-string v1, ")"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AND is_music>=1"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "title_key"

    invoke-static/range {v1 .. v6}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    const/4 v7, 0x0

    if-eqz v10, :cond_6

    const-string v1, "[MediaPlaybackService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "refreshPlaylist: cursor count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    if-eqz v10, :cond_2

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_8

    :cond_2
    const/4 v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/music/MediaPlaybackService;->mShrinkAlbumListLen:I

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleShrinkAlbumListLen:I

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/music/MediaPlaybackService;->mShuffleShrinkAlbumListLen:I

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v16

    const-string v1, "[MediaPlaybackService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "refreshPlaylist: state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "[MediaPlaybackService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "refreshPlaylist: mediascanning = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {p0 .. p0}, Lcom/htc/music/util/MusicUtils;->isMediaScannerScanning(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "mounted"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v10, :cond_4

    :cond_3
    invoke-static/range {p0 .. p0}, Lcom/htc/music/util/MusicUtils;->isMediaScannerScanning(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_4
    if-eqz v10, :cond_5

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    const/4 v10, 0x0

    :cond_5
    :goto_2
    return-void

    :cond_6
    const-string v1, "[MediaPlaybackService]"

    const-string v2, "refreshPlaylist: cursor = null "

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    const-string v1, "[MediaPlaybackService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "refreshPlaylist, cursor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", reset PlayList Length."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.htc.music.queuechanged"

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    if-eqz v10, :cond_5

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    const/4 v10, 0x0

    goto :goto_2

    :cond_8
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    array-length v1, v1

    if-ne v9, v1, :cond_9

    if-eqz v10, :cond_5

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    const/4 v10, 0x0

    goto :goto_2

    :cond_9
    invoke-static {v10}, Lcom/htc/music/util/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[I

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    array-length v1, v1

    sub-int/2addr v1, v9

    new-array v15, v1, [I

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const/4 v11, 0x0

    :goto_3
    array-length v1, v13

    if-ge v11, v1, :cond_a

    aget v1, v13, v11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aget v2, v13, v11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_a
    const/4 v12, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-ge v11, v1, :cond_b

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    aget v1, v1, v11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    array-length v1, v1

    sub-int/2addr v1, v9

    if-lt v12, v1, :cond_d

    const-string v1, "[MediaPlaybackService]"

    const-string v2, "CMD_REFRESH_PLAYLIST, list length is wrong!"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    if-eqz v8, :cond_c

    new-array v14, v12, [I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v15, v1, v14, v2, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/htc/music/MediaPlaybackService;->mRefreshPlayList:Z

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/htc/music/MediaPlaybackService;->removeQueueTracks([I)I

    :cond_c
    if-eqz v10, :cond_5

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    :cond_d
    aput v11, v15, v12

    add-int/lit8 v12, v12, 0x1

    const/4 v8, 0x1

    :cond_e
    add-int/lit8 v11, v11, 0x1

    goto :goto_4
.end method

.method private refreshPlugin()V
    .locals 1

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->refreshPlugins()V

    :cond_0
    return-void
.end method

.method private reloadQueueImpl()V
    .locals 24

    const-string v2, "[MediaPlaybackService]"

    const-string v3, "reloadQueueImpl +"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v18, 0x0

    const/16 v16, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->clearRecentAlbumList()V

    invoke-direct/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->clearRecentPlayedPlaylist()V

    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/music/MediaPlaybackService;->mCardId:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "cardid"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v16, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "cardid"

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/music/MediaPlaybackService;->mCardId:I

    xor-int/lit8 v4, v4, -0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v12

    :cond_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/MediaPlaybackService;->mCardId:I

    if-ne v12, v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "queue"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v2, "[MediaPlaybackService]"

    const-string v3, "reloadQueueImpl: card id is the same."

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz v18, :cond_38

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_38

    const-string v2, "[MediaPlaybackService]"

    const-string v3, "reloadQueueImpl: q != null && q.length() > 1"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/MediaPlaybackService;->mIsSystemReady:Z

    const-string v2, ";"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    array-length v14, v10

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/htc/music/MediaPlaybackService;->ensurePlayListCapacity(I)V

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v14, :cond_6

    if-eqz v16, :cond_5

    aget-object v20, v10, v11

    const/4 v15, 0x0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v13, v2, -0x1

    :goto_1
    if-ltz v13, :cond_4

    shl-int/lit8 v15, v15, 0x4

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v2, 0x30

    if-lt v9, v2, :cond_2

    const/16 v2, 0x39

    if-gt v9, v2, :cond_2

    add-int/lit8 v2, v9, -0x30

    add-int/2addr v15, v2

    :goto_2
    add-int/lit8 v13, v13, -0x1

    goto :goto_1

    :cond_2
    const/16 v2, 0x61

    if-lt v9, v2, :cond_3

    const/16 v2, 0x66

    if-gt v9, v2, :cond_3

    add-int/lit8 v2, v9, 0xa

    add-int/lit8 v2, v2, -0x61

    add-int/2addr v15, v2

    goto :goto_2

    :cond_3
    const/4 v14, 0x0

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    aput v15, v2, v11

    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    aget-object v3, v10, v11

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v11

    goto :goto_3

    :cond_6
    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-lez v2, :cond_7

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-le v14, v2, :cond_7

    const/4 v8, 0x1

    :cond_7
    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "queuealbum"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_d

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_d

    const-string v2, ";"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    array-length v14, v10

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/htc/music/MediaPlaybackService;->ensureAlbumListCapacity(I)V

    const/4 v11, 0x0

    :goto_4
    if-ge v11, v14, :cond_c

    if-eqz v16, :cond_b

    aget-object v20, v10, v11

    const/4 v15, 0x0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v13, v2, -0x1

    :goto_5
    if-ltz v13, :cond_a

    shl-int/lit8 v15, v15, 0x4

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v2, 0x30

    if-lt v9, v2, :cond_8

    const/16 v2, 0x39

    if-gt v9, v2, :cond_8

    add-int/lit8 v2, v9, -0x30

    add-int/2addr v15, v2

    :goto_6
    add-int/lit8 v13, v13, -0x1

    goto :goto_5

    :cond_8
    const/16 v2, 0x61

    if-lt v9, v2, :cond_9

    const/16 v2, 0x66

    if-gt v9, v2, :cond_9

    add-int/lit8 v2, v9, 0xa

    add-int/lit8 v2, v2, -0x61

    add-int/2addr v15, v2

    goto :goto_6

    :cond_9
    const/4 v14, 0x0

    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleAlbumList:[I

    aput v15, v2, v11

    :goto_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleAlbumList:[I

    aget-object v3, v10, v11

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v11

    goto :goto_7

    :cond_c
    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleAlbumList:[I

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mAlbumList:[I

    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "queueshrinkalbum"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_16

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_16

    const-string v2, ";"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    array-length v14, v10

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/htc/music/MediaPlaybackService;->ensureShrinkAlbumListCapacity(I)V

    const/4 v11, 0x0

    :goto_9
    if-ge v11, v14, :cond_12

    if-eqz v16, :cond_11

    aget-object v20, v10, v11

    const/4 v15, 0x0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v13, v2, -0x1

    :goto_a
    if-ltz v13, :cond_10

    shl-int/lit8 v15, v15, 0x4

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v2, 0x30

    if-lt v9, v2, :cond_e

    const/16 v2, 0x39

    if-gt v9, v2, :cond_e

    add-int/lit8 v2, v9, -0x30

    add-int/2addr v15, v2

    :goto_b
    add-int/lit8 v13, v13, -0x1

    goto :goto_a

    :cond_d
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/MediaPlaybackService;->mIsSystemReady:Z

    goto :goto_8

    :cond_e
    const/16 v2, 0x61

    if-lt v9, v2, :cond_f

    const/16 v2, 0x66

    if-gt v9, v2, :cond_f

    add-int/lit8 v2, v9, 0xa

    add-int/lit8 v2, v2, -0x61

    add-int/2addr v15, v2

    goto :goto_b

    :cond_f
    const/4 v14, 0x0

    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleShrinkAlbumList:[I

    aput v15, v2, v11

    :goto_c
    add-int/lit8 v11, v11, 0x1

    goto :goto_9

    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleShrinkAlbumList:[I

    aget-object v3, v10, v11

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v11

    goto :goto_c

    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleShrinkAlbumList:[I

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mShrinkAlbumList:[I

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleShrinkAlbumListLen:I

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/music/MediaPlaybackService;->mShrinkAlbumListLen:I

    :goto_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "repeatmode"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v19

    const/4 v2, 0x2

    move/from16 v0, v19

    if-eq v0, v2, :cond_13

    const/4 v2, 0x1

    move/from16 v0, v19

    if-eq v0, v2, :cond_13

    const/16 v19, 0x0

    :cond_13
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/music/MediaPlaybackService;->mRepeatMode:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "shufflemode"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v23

    const/4 v2, 0x2

    move/from16 v0, v23

    if-eq v0, v2, :cond_14

    const/4 v2, 0x1

    move/from16 v0, v23

    if-eq v0, v2, :cond_14

    const/16 v23, 0x0

    :cond_14
    const/4 v2, 0x2

    move/from16 v0, v23

    if-ne v0, v2, :cond_15

    invoke-direct/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->makeAutoShuffleList()Z

    move-result v2

    if-nez v2, :cond_15

    const/16 v23, 0x0

    :cond_15
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_28

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "shufflequeue"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_1c

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_1c

    const-string v2, ";"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    array-length v14, v10

    const/4 v11, 0x0

    :goto_e
    if-ge v11, v14, :cond_1b

    if-eqz v16, :cond_1a

    aget-object v20, v10, v11

    const/4 v15, 0x0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v13, v2, -0x1

    :goto_f
    if-ltz v13, :cond_19

    shl-int/lit8 v15, v15, 0x4

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v2, 0x30

    if-lt v9, v2, :cond_17

    const/16 v2, 0x39

    if-gt v9, v2, :cond_17

    add-int/lit8 v2, v9, -0x30

    add-int/2addr v15, v2

    :goto_10
    add-int/lit8 v13, v13, -0x1

    goto :goto_f

    :cond_16
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/MediaPlaybackService;->mIsSystemReady:Z

    goto/16 :goto_d

    :cond_17
    const/16 v2, 0x61

    if-lt v9, v2, :cond_18

    const/16 v2, 0x66

    if-gt v9, v2, :cond_18

    add-int/lit8 v2, v9, 0xa

    add-int/lit8 v2, v2, -0x61

    add-int/2addr v15, v2

    goto :goto_10

    :cond_18
    const/4 v14, 0x0

    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mShufflePlayList:[I

    aput v15, v2, v11

    :goto_11
    add-int/lit8 v11, v11, 0x1

    goto :goto_e

    :cond_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mShufflePlayList:[I

    aget-object v3, v10, v11

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v11

    goto :goto_11

    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mShufflePlayList:[I

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    :goto_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "shufflequeuealbum"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_22

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_22

    const-string v2, ";"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    array-length v14, v10

    const/4 v11, 0x0

    :goto_13
    if-ge v11, v14, :cond_21

    if-eqz v16, :cond_20

    aget-object v20, v10, v11

    const/4 v15, 0x0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v13, v2, -0x1

    :goto_14
    if-ltz v13, :cond_1f

    shl-int/lit8 v15, v15, 0x4

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v2, 0x30

    if-lt v9, v2, :cond_1d

    const/16 v2, 0x39

    if-gt v9, v2, :cond_1d

    add-int/lit8 v2, v9, -0x30

    add-int/2addr v15, v2

    :goto_15
    add-int/lit8 v13, v13, -0x1

    goto :goto_14

    :cond_1c
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/MediaPlaybackService;->mIsSystemReady:Z

    goto :goto_12

    :cond_1d
    const/16 v2, 0x61

    if-lt v9, v2, :cond_1e

    const/16 v2, 0x66

    if-gt v9, v2, :cond_1e

    add-int/lit8 v2, v9, 0xa

    add-int/lit8 v2, v2, -0x61

    add-int/2addr v15, v2

    goto :goto_15

    :cond_1e
    const/4 v14, 0x0

    :cond_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mShuffleAlbumList:[I

    aput v15, v2, v11

    :goto_16
    add-int/lit8 v11, v11, 0x1

    goto :goto_13

    :cond_20
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mShuffleAlbumList:[I

    aget-object v3, v10, v11

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v11

    goto :goto_16

    :cond_21
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mShuffleAlbumList:[I

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mAlbumList:[I

    :goto_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "shufflequeueshrinkalbum"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_2f

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_2f

    const-string v2, ";"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    array-length v14, v10

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/htc/music/MediaPlaybackService;->ensureShuffleShrinkAlbumListCapacity(I)V

    const/4 v11, 0x0

    :goto_18
    if-ge v11, v14, :cond_27

    if-eqz v16, :cond_26

    aget-object v20, v10, v11

    const/4 v15, 0x0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v13, v2, -0x1

    :goto_19
    if-ltz v13, :cond_25

    shl-int/lit8 v15, v15, 0x4

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v2, 0x30

    if-lt v9, v2, :cond_23

    const/16 v2, 0x39

    if-gt v9, v2, :cond_23

    add-int/lit8 v2, v9, -0x30

    add-int/2addr v15, v2

    :goto_1a
    add-int/lit8 v13, v13, -0x1

    goto :goto_19

    :cond_22
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/MediaPlaybackService;->mIsSystemReady:Z

    goto :goto_17

    :cond_23
    const/16 v2, 0x61

    if-lt v9, v2, :cond_24

    const/16 v2, 0x66

    if-gt v9, v2, :cond_24

    add-int/lit8 v2, v9, 0xa

    add-int/lit8 v2, v2, -0x61

    add-int/2addr v15, v2

    goto :goto_1a

    :cond_24
    const/4 v14, 0x0

    :cond_25
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mShuffleShrinkAlbumList:[I

    aput v15, v2, v11

    :goto_1b
    add-int/lit8 v11, v11, 0x1

    goto :goto_18

    :cond_26
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mShuffleShrinkAlbumList:[I

    aget-object v3, v10, v11

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v11

    goto :goto_1b

    :cond_27
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mShuffleShrinkAlbumList:[I

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mShrinkAlbumList:[I

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/music/MediaPlaybackService;->mShuffleShrinkAlbumListLen:I

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/music/MediaPlaybackService;->mShrinkAlbumListLen:I

    :cond_28
    :goto_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v2, v1}, Lcom/htc/music/MediaPlaybackService;->loadRecentAlbumList(Landroid/content/SharedPreferences;Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v2, v1}, Lcom/htc/music/MediaPlaybackService;->loadRecentPlayedPlaylist(Landroid/content/SharedPreferences;Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "curpos"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v17

    if-ltz v17, :cond_29

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    move/from16 v0, v17

    if-lt v0, v2, :cond_2a

    :cond_29
    if-gez v17, :cond_30

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-ltz v2, :cond_30

    const/16 v17, 0x0

    :cond_2a
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    if-eqz v8, :cond_2c

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->stop()V

    :cond_2b
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    :cond_2c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "prealbum"

    const/4 v4, -0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/music/MediaPlaybackService;->mLastAlbumPos:I

    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "_id"

    aput-object v5, v4, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    aget v5, v5, v6

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " AND "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "is_music>=1"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-nez v9, :cond_31

    const-string v2, "[MediaPlaybackService]"

    const-string v3, "reloadQueueImp: cursor = null"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1d
    if-eqz v9, :cond_2d

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_32

    :cond_2d
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->refreshPlaylist()V

    const-string v2, "[MediaPlaybackService]"

    const-string v3, "reloadQueueImpl: failed to get data from database."

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v9, :cond_2e

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    const/4 v9, 0x0

    :cond_2e
    const-string v2, "[MediaPlaybackService]"

    const-string v3, "reloadQueueImpl -"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1e
    return-void

    :cond_2f
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/MediaPlaybackService;->mIsSystemReady:Z

    goto/16 :goto_1c

    :cond_30
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/music/MediaPlaybackService;->mShrinkAlbumListLen:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/MediaPlaybackService;->mIsSystemReady:Z

    const-string v2, "[MediaPlaybackService]"

    const-string v3, "reloadQueue -"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1e

    :cond_31
    const-string v2, "[MediaPlaybackService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reloadQueueImp: cursor length = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d

    :cond_32
    if-eqz v9, :cond_33

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    const/4 v9, 0x0

    :cond_33
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    #calls: Lcom/htc/music/MediaPlaybackService$LocalPlayer;->isPlaying()Z
    invoke-static {v2}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->access$4000(Lcom/htc/music/MediaPlaybackService$LocalPlayer;)Z

    move-result v2

    if-eqz v2, :cond_34

    const-string v2, "[MediaPlaybackService]"

    const-string v3, "reloadQueueImpl -, song is playing now, don\'t do opencurrent.!!! return."

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1e

    :cond_34
    const/16 v2, 0x14

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/music/MediaPlaybackService;->mOpenFailedCounter:I

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/MediaPlaybackService;->mQuietMode:Z

    invoke-direct/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->openCurrent()V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/MediaPlaybackService;->mQuietMode:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "seekpos"

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v21

    if-eqz v8, :cond_36

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    const-wide/16 v3, 0x0

    #calls: Lcom/htc/music/MediaPlaybackService$LocalPlayer;->seek(J)J
    invoke-static {v2, v3, v4}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->access$4300(Lcom/htc/music/MediaPlaybackService$LocalPlayer;J)J

    :goto_1f
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/music/MediaPlaybackService;->mIsSystemReady:Z

    if-nez v2, :cond_35

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/music/MediaPlaybackService;->mShrinkAlbumListLen:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    :cond_35
    const-string v2, "[MediaPlaybackService]"

    const-string v3, "reloadQueueImpl -"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1e

    :cond_36
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    const-wide/16 v3, 0x0

    cmp-long v3, v21, v3

    if-ltz v3, :cond_37

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    #calls: Lcom/htc/music/MediaPlaybackService$LocalPlayer;->duration()J
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->access$4400(Lcom/htc/music/MediaPlaybackService$LocalPlayer;)J

    move-result-wide v3

    cmp-long v3, v21, v3

    if-gez v3, :cond_37

    :goto_20
    move-wide/from16 v0, v21

    #calls: Lcom/htc/music/MediaPlaybackService$LocalPlayer;->seek(J)J
    invoke-static {v2, v0, v1}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->access$4300(Lcom/htc/music/MediaPlaybackService$LocalPlayer;J)J

    goto :goto_1f

    :cond_37
    const-wide/16 v21, 0x0

    goto :goto_20

    :cond_38
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/music/MediaPlaybackService;->mShrinkAlbumListLen:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/MediaPlaybackService;->mIsSystemReady:Z

    goto :goto_1f
.end method

.method private removeTracksInternal(II)I
    .locals 12

    const/4 v11, 0x1

    const/4 v7, 0x0

    monitor-enter p0

    :try_start_0
    const-string v8, "[MediaPlaybackService]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "removeTracksInternal, first: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", last: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mPlayListLen: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-ge p2, p1, :cond_0

    monitor-exit p0

    :goto_0
    return v7

    :cond_0
    if-gez p1, :cond_1

    const/4 p1, 0x0

    :cond_1
    iget v7, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-lt p2, v7, :cond_2

    iget v7, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    add-int/lit8 p2, v7, -0x1

    :cond_2
    const/4 v0, 0x0

    iget v7, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    if-ne v7, v11, :cond_6

    iget v7, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    invoke-virtual {p0, v7}, Lcom/htc/music/MediaPlaybackService;->getPositionByShufflePosition(I)I

    move-result v4

    if-gt p1, v4, :cond_5

    if-gt v4, p2, :cond_5

    const/4 v0, 0x1

    :cond_3
    :goto_1
    iget v7, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    sub-int/2addr v7, p2

    add-int/lit8 v2, v7, -0x1

    iget v3, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    iget v7, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    if-ne v7, v11, :cond_9

    move v1, p1

    :goto_2
    if-gt v1, p2, :cond_8

    invoke-virtual {p0, v1}, Lcom/htc/music/MediaPlaybackService;->getShufflePositionByPosition(I)I

    move-result v5

    if-ltz v5, :cond_4

    if-ge v5, v3, :cond_4

    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService;->mShufflePlayList:[I

    invoke-static {v7, v3, v5}, Lcom/htc/music/util/MusicUtils;->deleteArrayItem([III)V

    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleAlbumList:[I

    invoke-static {v7, v3, v5}, Lcom/htc/music/util/MusicUtils;->deleteArrayItem([III)V

    add-int/lit8 v3, v3, -0x1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    iget v7, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    if-le v7, p2, :cond_3

    iget v7, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    sub-int v8, p2, p1

    add-int/lit8 v8, v8, 0x1

    sub-int/2addr v7, v8

    iput v7, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    goto :goto_1

    :catchall_0
    move-exception v7

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    :cond_6
    :try_start_1
    iget v7, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    if-gt p1, v7, :cond_7

    iget v7, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    if-gt v7, p2, :cond_7

    iput p1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    const/4 v0, 0x1

    goto :goto_1

    :cond_7
    iget v7, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    if-le v7, p2, :cond_3

    iget v7, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    sub-int v8, p2, p1

    add-int/lit8 v8, v8, 0x1

    sub-int/2addr v7, v8

    iput v7, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    goto :goto_1

    :cond_8
    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleAlbumList:[I

    invoke-direct {p0, v7, v3}, Lcom/htc/music/MediaPlaybackService;->shrinkShuffleAlbumList([II)V

    iget v7, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleShrinkAlbumListLen:I

    iput v7, p0, Lcom/htc/music/MediaPlaybackService;->mShrinkAlbumListLen:I

    :cond_9
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v2, :cond_a

    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    add-int v8, p1, v1

    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    add-int/lit8 v10, p2, 0x1

    add-int/2addr v10, v1

    aget v9, v9, v10

    aput v9, v7, v8

    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleAlbumList:[I

    add-int v8, p1, v1

    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleAlbumList:[I

    add-int/lit8 v10, p2, 0x1

    add-int/2addr v10, v1

    aget v9, v9, v10

    aput v9, v7, v8

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_a
    iget v7, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    sub-int v8, p2, p1

    add-int/lit8 v8, v8, 0x1

    sub-int/2addr v7, v8

    iput v7, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    iget v7, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    invoke-direct {p0, v7}, Lcom/htc/music/MediaPlaybackService;->ensureAlbumListCapacity(I)V

    iget v7, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    iput v7, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    iget v7, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    if-lez v7, :cond_d

    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleAlbumList:[I

    iget v8, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    invoke-direct {p0, v7, v8}, Lcom/htc/music/MediaPlaybackService;->shrinkAlbumList([II)V

    iget v7, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    if-ne v7, v11, :cond_c

    iget v7, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleShrinkAlbumListLen:I

    iput v7, p0, Lcom/htc/music/MediaPlaybackService;->mShrinkAlbumListLen:I

    :goto_4
    if-eqz v0, :cond_b

    iget v7, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-nez v7, :cond_e

    const/4 v7, 0x1

    invoke-direct {p0, v7}, Lcom/htc/music/MediaPlaybackService;->stop(Z)V

    const/4 v7, -0x1

    iput v7, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    :cond_b
    :goto_5
    sub-int v7, p2, p1

    add-int/lit8 v7, v7, 0x1

    monitor-exit p0

    goto/16 :goto_0

    :cond_c
    iget v7, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleShrinkAlbumListLen:I

    iput v7, p0, Lcom/htc/music/MediaPlaybackService;->mShrinkAlbumListLen:I

    goto :goto_4

    :cond_d
    const/4 v7, 0x0

    iput v7, p0, Lcom/htc/music/MediaPlaybackService;->mShrinkAlbumListLen:I

    goto :goto_4

    :cond_e
    iget v7, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    iget v8, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-lt v7, v8, :cond_f

    const/4 v7, 0x0

    iput v7, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    :cond_f
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->isPlaying()Z

    move-result v6

    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/htc/music/MediaPlaybackService;->stop(Z)V

    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->openCurrent()V

    if-eqz v6, :cond_b

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->play()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5
.end method

.method private resetQueueAlbumList([I)V
    .locals 4

    const/4 v3, 0x0

    array-length v1, p1

    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    add-int/2addr v1, v2

    new-array v0, v1, [I

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumList:[I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumList:[I

    array-length v1, v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumList:[I

    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    invoke-virtual {p0, v0}, Lcom/htc/music/MediaPlaybackService;->setAlbumQueue([I)V

    return-void

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method private restoreRecentAlbumList(I)V
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mLocalRecentAlbumId:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private restoreRecentPlayedPlaylist(I)V
    .locals 3

    const-string v0, "[MediaPlaybackService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restoreRecentPlayedPlaylist:audioId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mRecentPlayTrackId:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private saveBookmarkIfNeeded()V
    .locals 12

    const-wide/16 v10, 0x2710

    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPodcast()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->position()J

    move-result-wide v4

    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->getBookmark()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->duration()J

    move-result-wide v2

    cmp-long v8, v4, v0

    if-gez v8, :cond_0

    add-long v8, v4, v10

    cmp-long v8, v8, v0

    if-gtz v8, :cond_1

    :cond_0
    cmp-long v8, v4, v0

    if-lez v8, :cond_2

    sub-long v8, v4, v10

    cmp-long v8, v8, v0

    if-gez v8, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-wide/16 v8, 0x3a98

    cmp-long v8, v4, v8

    if-ltz v8, :cond_3

    add-long v8, v4, v10

    cmp-long v8, v8, v2

    if-lez v8, :cond_4

    :cond_3
    const-wide/16 v4, 0x0

    :cond_4
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    const-string v8, "bookmark"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-object v8, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-static {v8, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v6, v7, v9, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v8

    goto :goto_0
.end method

.method private saveQueue(Z)V
    .locals 13

    const/4 v12, 0x0

    const-string v9, "[MediaPlaybackService]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "saveQueue: SdCardRemoved = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/htc/music/MediaPlaybackService;->mSdCardRemoved:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "[MediaPlaybackService]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "saveQueue: mQueueModified = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/htc/music/MediaPlaybackService;->mQueueModified:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v9, p0, Lcom/htc/music/MediaPlaybackService;->mSdCardRemoved:Z

    if-eqz v9, :cond_0

    iget-boolean v9, p0, Lcom/htc/music/MediaPlaybackService;->mQueueModified:Z

    if-nez v9, :cond_0

    const/4 p1, 0x0

    :cond_0
    const-string v9, "Music"

    const/4 v10, 0x3

    invoke-virtual {p0, v9, v10}, Lcom/htc/music/MediaPlaybackService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v9, "version"

    const/4 v10, 0x4

    invoke-interface {v3, v9, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    if-eqz p1, :cond_1a

    iget v9, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-eqz v9, :cond_1

    iget v9, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    if-eqz v9, :cond_1

    iget v9, p0, Lcom/htc/music/MediaPlaybackService;->mShrinkAlbumListLen:I

    if-nez v9, :cond_2

    :cond_1
    const-string v9, "[MediaPlaybackService]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "BadQueue mPlayListLen : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " mAlbumListLen : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " mShrinkAlbumListLen : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/htc/music/MediaPlaybackService;->mShrinkAlbumListLen:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput v12, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    iput v12, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    iput v12, p0, Lcom/htc/music/MediaPlaybackService;->mShrinkAlbumListLen:I

    iput v12, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleShrinkAlbumListLen:I

    iput v12, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleShrinkAlbumListLen:I

    :cond_2
    iget v5, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_4

    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumList:[I

    aget v7, v9, v4

    if-gtz v7, :cond_3

    const-string v9, "[MediaPlaybackService]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " BadQueue mAlbumList["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    iget v5, p0, Lcom/htc/music/MediaPlaybackService;->mShrinkAlbumListLen:I

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v5, :cond_6

    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService;->mShrinkAlbumList:[I

    aget v7, v9, v4

    if-gtz v7, :cond_5

    const-string v9, "[MediaPlaybackService]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " BadQueue mShrinkAlbumList["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    const-string v9, "[MediaPlaybackService]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "saveQueue mPlayListLen : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v6, :cond_9

    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    aget v7, v9, v4

    if-nez v7, :cond_7

    const-string v9, "0;"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_7
    :goto_5
    if-eqz v7, :cond_8

    and-int/lit8 v1, v7, 0xf

    shr-int/lit8 v7, v7, 0x4

    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService;->hexdigits:[C

    aget-char v9, v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_8
    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_9
    const-string v9, "queue"

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v9, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    invoke-virtual {v8, v12, v9}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    const-string v9, "[MediaPlaybackService]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "saveQueue mAlbumListLen : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    :goto_6
    if-ge v4, v6, :cond_c

    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleAlbumList:[I

    aget v7, v9, v4

    if-nez v7, :cond_a

    const-string v9, "0;"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_a
    :goto_8
    if-eqz v7, :cond_b

    and-int/lit8 v1, v7, 0xf

    shr-int/lit8 v7, v7, 0x4

    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService;->hexdigits:[C

    aget-char v9, v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_8

    :cond_b
    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    :cond_c
    const-string v9, "queuealbum"

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v9, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    invoke-virtual {v8, v12, v9}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    invoke-direct {p0, v3, v8}, Lcom/htc/music/MediaPlaybackService;->saveRecentAlbumList(Landroid/content/SharedPreferences$Editor;Ljava/lang/StringBuilder;)V

    invoke-direct {p0, v3, v8}, Lcom/htc/music/MediaPlaybackService;->saveRecentPlayedPlaylist(Landroid/content/SharedPreferences$Editor;Ljava/lang/StringBuilder;)V

    iget v6, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleShrinkAlbumListLen:I

    const-string v9, "[MediaPlaybackService]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "saveQueue mShrinkAlbumListLen : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/htc/music/MediaPlaybackService;->mShrinkAlbumListLen:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    :goto_9
    if-ge v4, v6, :cond_f

    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleShrinkAlbumList:[I

    aget v7, v9, v4

    if-nez v7, :cond_d

    const-string v9, "0;"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_d
    :goto_b
    if-eqz v7, :cond_e

    and-int/lit8 v1, v7, 0xf

    shr-int/lit8 v7, v7, 0x4

    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService;->hexdigits:[C

    aget-char v9, v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_b

    :cond_e
    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a

    :cond_f
    const-string v9, "queueshrinkalbum"

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v9, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    invoke-virtual {v8, v12, v9}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    iget v9, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_19

    iget v6, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    const/4 v4, 0x0

    :goto_c
    if-ge v4, v6, :cond_12

    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService;->mShufflePlayList:[I

    aget v7, v9, v4

    if-nez v7, :cond_10

    const-string v9, "0;"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_d
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    :cond_10
    :goto_e
    if-eqz v7, :cond_11

    and-int/lit8 v1, v7, 0xf

    shr-int/lit8 v7, v7, 0x4

    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService;->hexdigits:[C

    aget-char v9, v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_e

    :cond_11
    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    :cond_12
    const-string v9, "shufflequeue"

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v9, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    invoke-virtual {v8, v12, v9}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    const/4 v4, 0x0

    :goto_f
    if-ge v4, v6, :cond_15

    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleAlbumList:[I

    aget v7, v9, v4

    if-nez v7, :cond_13

    const-string v9, "0;"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_10
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    :cond_13
    :goto_11
    if-eqz v7, :cond_14

    and-int/lit8 v1, v7, 0xf

    shr-int/lit8 v7, v7, 0x4

    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService;->hexdigits:[C

    aget-char v9, v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_11

    :cond_14
    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_10

    :cond_15
    const-string v9, "shufflequeuealbum"

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v9, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    invoke-virtual {v8, v12, v9}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleShrinkAlbumListLen:I

    const/4 v4, 0x0

    :goto_12
    if-ge v4, v6, :cond_18

    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleShrinkAlbumList:[I

    aget v7, v9, v4

    if-nez v7, :cond_16

    const-string v9, "0;"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_13
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    :cond_16
    :goto_14
    if-eqz v7, :cond_17

    and-int/lit8 v1, v7, 0xf

    shr-int/lit8 v7, v7, 0x4

    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService;->hexdigits:[C

    aget-char v9, v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_14

    :cond_17
    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_13

    :cond_18
    const-string v9, "shufflequeueshrinkalbum"

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v9, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    invoke-virtual {v8, v12, v9}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_19
    const-string v9, "cardid"

    iget v10, p0, Lcom/htc/music/MediaPlaybackService;->mCardId:I

    invoke-interface {v3, v9, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :cond_1a
    const-string v9, "curpos"

    iget v10, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    invoke-interface {v3, v9, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v9, "prealbum"

    iget v10, p0, Lcom/htc/music/MediaPlaybackService;->mLastAlbumPos:I

    invoke-interface {v3, v9, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    if-eqz v9, :cond_1b

    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v9}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v9

    if-eqz v9, :cond_1b

    const-string v9, "seekpos"

    iget-object v10, p0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v10}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->position()J

    move-result-wide v10

    invoke-interface {v3, v9, v10, v11}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    :cond_1b
    const-string v9, "repeatmode"

    iget v10, p0, Lcom/htc/music/MediaPlaybackService;->mRepeatMode:I

    invoke-interface {v3, v9, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v9, "shufflemode"

    iget v10, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    invoke-interface {v3, v9, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const/4 v0, 0x0

    :try_start_0
    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v9}, Lcom/htc/music/MusicPluginManager;->getCurrentPluginClass()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_1c

    const-string v9, "plugin"

    invoke-interface {v3, v9, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1c
    if-nez v0, :cond_1d

    const-string v9, "plugin"

    const-string v10, ""

    invoke-interface {v3, v9, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_1d
    :try_start_1
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v2

    const-string v9, "[MediaPlaybackService]"

    const-string v10, "Exception in ed.apply: "

    invoke-static {v9, v10, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :catchall_0
    move-exception v9

    if-nez v0, :cond_1e

    const-string v10, "plugin"

    const-string v11, ""

    invoke-interface {v3, v10, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_1e
    throw v9
.end method

.method private saveRecentAlbumList(Landroid/content/SharedPreferences$Editor;Ljava/lang/StringBuilder;)V
    .locals 7

    if-nez p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    :cond_0
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mLocalRecentAlbumId:Ljava/util/ArrayList;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mLocalRecentAlbumId:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    const-string v4, "[MediaPlaybackService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "saveQueue mLocalRecentAlbumId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_4

    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mLocalRecentAlbumId:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_2

    const-string v4, "0;"

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    :goto_2
    if-eqz v3, :cond_3

    and-int/lit8 v0, v3, 0xf

    shr-int/lit8 v3, v3, 0x4

    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->hexdigits:[C

    aget-char v4, v4, v0

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    const-string v4, ";"

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    const-string v4, "localrecentalbumid"

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v4, "[MediaPlaybackService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "saveRecentAlbumList "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {p2, v4, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    return-void
.end method

.method private saveRecentPlayedPlaylist(Landroid/content/SharedPreferences$Editor;Ljava/lang/StringBuilder;)V
    .locals 7

    if-nez p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    :cond_0
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mRecentPlayTrackId:Ljava/util/ArrayList;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mRecentPlayTrackId:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    const-string v4, "[MediaPlaybackService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "saveQueue mRecentPlayTrackId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_4

    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mRecentPlayTrackId:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_2

    const-string v4, "0;"

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    :goto_2
    if-eqz v3, :cond_3

    and-int/lit8 v0, v3, 0xf

    shr-int/lit8 v3, v3, 0x4

    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->hexdigits:[C

    aget-char v4, v4, v0

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    const-string v4, ";"

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    const-string v4, "recentplayedplaylist"

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v4, "[MediaPlaybackService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "saveRecentPlayedPlaylist "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {p2, v4, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    return-void
.end method

.method private scanBackward(IJ)V
    .locals 10

    const-wide/16 v4, 0x1388

    const-wide/16 v8, 0x0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/music/MediaPlaybackService;->mSeeking:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->position()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/htc/music/MediaPlaybackService;->mStartSeekPos:J

    iput-wide v8, p0, Lcom/htc/music/MediaPlaybackService;->mLastSeekEventTime:J

    :goto_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/music/MediaPlaybackService;->mSeeking:Z

    return-void

    :cond_0
    cmp-long v2, p2, v4

    if-gez v2, :cond_4

    const-wide/16 v2, 0xa

    mul-long/2addr p2, v2

    :goto_1
    iget-wide v2, p0, Lcom/htc/music/MediaPlaybackService;->mStartSeekPos:J

    sub-long v0, v2, p2

    cmp-long v2, v0, v8

    if-gez v2, :cond_1

    const-wide/16 v0, 0x0

    :cond_1
    iget-wide v2, p0, Lcom/htc/music/MediaPlaybackService;->mLastSeekEventTime:J

    sub-long v2, p2, v2

    const-wide/16 v4, 0xfa

    cmp-long v2, v2, v4

    if-gtz v2, :cond_2

    if-gez p1, :cond_3

    :cond_2
    invoke-virtual {p0, v0, v1}, Lcom/htc/music/MediaPlaybackService;->seek(J)J

    iput-wide p2, p0, Lcom/htc/music/MediaPlaybackService;->mLastSeekEventTime:J

    :cond_3
    if-ltz p1, :cond_5

    iput-wide v0, p0, Lcom/htc/music/MediaPlaybackService;->mPosOverride:J

    goto :goto_0

    :cond_4
    const-wide/32 v2, 0xc350

    sub-long v4, p2, v4

    const-wide/16 v6, 0x28

    mul-long/2addr v4, v6

    add-long p2, v2, v4

    goto :goto_1

    :cond_5
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/htc/music/MediaPlaybackService;->mPosOverride:J

    goto :goto_0
.end method

.method private scanForward(IJ)V
    .locals 11

    const-wide/16 v6, 0x1388

    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/htc/music/MediaPlaybackService;->mSeeking:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->position()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/htc/music/MediaPlaybackService;->mStartSeekPos:J

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/htc/music/MediaPlaybackService;->mLastSeekEventTime:J

    :goto_0
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/music/MediaPlaybackService;->mSeeking:Z

    return-void

    :cond_0
    cmp-long v4, p2, v6

    if-gez v4, :cond_4

    const-wide/16 v4, 0xa

    mul-long/2addr p2, v4

    :goto_1
    iget-wide v4, p0, Lcom/htc/music/MediaPlaybackService;->mStartSeekPos:J

    add-long v2, v4, p2

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->duration()J

    move-result-wide v0

    const-wide/16 v4, 0x1f4

    add-long/2addr v4, v2

    cmp-long v4, v4, v0

    if-ltz v4, :cond_1

    move-wide v2, v0

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->isPlaying()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/htc/music/MediaPlaybackService;->mFFToEndIsPlaying:Z

    if-nez v4, :cond_1

    iput-boolean v10, p0, Lcom/htc/music/MediaPlaybackService;->mFFToEndIsPlaying:Z

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->pause()V

    :cond_1
    iget-wide v4, p0, Lcom/htc/music/MediaPlaybackService;->mLastSeekEventTime:J

    sub-long v4, p2, v4

    const-wide/16 v6, 0xfa

    cmp-long v4, v4, v6

    if-gtz v4, :cond_2

    if-gez p1, :cond_3

    :cond_2
    invoke-virtual {p0, v2, v3}, Lcom/htc/music/MediaPlaybackService;->seek(J)J

    iput-wide p2, p0, Lcom/htc/music/MediaPlaybackService;->mLastSeekEventTime:J

    :cond_3
    if-ltz p1, :cond_5

    iput-wide v2, p0, Lcom/htc/music/MediaPlaybackService;->mPosOverride:J

    goto :goto_0

    :cond_4
    const-wide/32 v4, 0xc350

    sub-long v6, p2, v6

    const-wide/16 v8, 0x28

    mul-long/2addr v6, v8

    add-long p2, v4, v6

    goto :goto_1

    :cond_5
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/htc/music/MediaPlaybackService;->mPosOverride:J

    goto :goto_0
.end method

.method private sendULogMessage(IJ)V
    .locals 3

    const/16 v2, 0x11

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    invoke-virtual {v1, v2}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->removeMessages(I)V

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    invoke-virtual {v1, v2}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    invoke-virtual {v1, v0, p2, p3}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private setAudioEffect(Ljava/lang/String;ZI)V
    .locals 2

    const/4 v1, 0x0

    packed-switch p3, :pswitch_data_0

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/htc/music/util/SoundEffectHelper;->setTempAudioStyle(Ljava/lang/String;Landroid/content/Context;)V

    :goto_0
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getAudioSessionId()I

    move-result v1

    invoke-static {v0, p1, v1}, Lcom/htc/music/util/SoundEffectHelper;->setAudioEffect(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/htc/music/util/SoundEffectHelper;->setTempAudioStyle(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/htc/music/util/SoundEffectHelper;->setTempAudioStyle(Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/htc/music/util/SoundEffectHelper;->setAudioStyle(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setCategory(IIIILjava/lang/String;I)V
    .locals 4

    const/4 v3, -0x1

    const-string v0, "[MediaPlaybackService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCategory("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-ltz p1, :cond_0

    const/16 v0, 0x16

    if-le p1, v0, :cond_2

    :cond_0
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "Category wrong in setCategory()."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-lt p2, v3, :cond_3

    if-lt p3, v3, :cond_3

    const/4 v0, -0x2

    if-lt p4, v0, :cond_3

    if-ge p6, v3, :cond_1

    :cond_3
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "Something wrong in setCategory()"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setCategory(Lcom/htc/music/NpCategory;)V
    .locals 0

    return-void
.end method

.method private setDefaultNotificationAlbum(Landroid/widget/RemoteViews;)V
    .locals 2

    if-eqz p1, :cond_0

    const v0, 0x7f080071

    const v1, 0x7f020057

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "RemoteViews is null"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setLastAudioEffect(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/htc/music/util/SoundEffectHelper;->setLastAudioEffect(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private setOrientation(I)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const/4 v0, 0x4

    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->mOrientation:I

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->mOrientation:I

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->mOrientation:I

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->mOrientation:I

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->mOrientation:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private setShuffleAlbumList([II)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/htc/music/MediaPlaybackService;->applyShuffleSeq([II)[I

    move-result-object v0

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleAlbumList:[I

    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    invoke-static {v0, v1, v2}, Lcom/htc/music/util/MusicUtils;->arrayDeepClone([I[II)V

    return-void
.end method

.method private setShuffleSeq(II)V
    .locals 7

    if-nez p1, :cond_0

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleSeq:[I

    :goto_0
    return-void

    :cond_0
    if-lt p2, p1, :cond_1

    const-string v4, "[MediaPlaybackService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setShuffleSeq(), nFirst should be less than len, len: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", nFirst: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    :cond_1
    new-array v4, p1, [I

    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleSeq:[I

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    move v1, p2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_2

    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleSeq:[I

    aput v0, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_2
    add-int/lit8 v4, p1, -0x1

    if-ge v0, v4, :cond_3

    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleSeq:[I

    aget v3, v4, v0

    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleSeq:[I

    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleSeq:[I

    aget v5, v5, v1

    aput v5, v4, v0

    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleSeq:[I

    aput v3, v4, v1

    add-int/lit8 v4, v0, 0x1

    add-int/lit8 v5, v0, 0x1

    sub-int v5, p1, v5

    invoke-virtual {v2, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    add-int v1, v4, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    iput p1, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleSeqLen:I

    goto :goto_0
.end method

.method private showNotificationAlbumArtInUiThread(Landroid/graphics/Bitmap;I)V
    .locals 3

    const/4 v2, 0x7

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput p2, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private showToast(II)V
    .locals 1

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mToast:Landroid/widget/Toast;

    :cond_0
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mToast:Landroid/widget/Toast;

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private showToast(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mToast:Landroid/widget/Toast;

    :cond_0
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mToast:Landroid/widget/Toast;

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private showToastInUiThread(II)V
    .locals 4

    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mUiHandler:Landroid/os/Handler;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "resId"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "duration"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private shrinkAlbumList([II)V
    .locals 5

    const/4 v2, -0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    iput v3, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleShrinkAlbumListLen:I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    aget v3, p1, v0

    if-eq v2, v3, :cond_0

    aget v2, p1, v0

    iget v3, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleShrinkAlbumListLen:I

    add-int/lit8 v3, v3, 0x1

    invoke-direct {p0, v3}, Lcom/htc/music/MediaPlaybackService;->ensureShrinkAlbumListCapacity(I)V

    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleShrinkAlbumList:[I

    aget v4, p1, v0

    aput v4, v3, v1

    iget v3, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleShrinkAlbumListLen:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleShrinkAlbumListLen:I

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget v3, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleShrinkAlbumList:[I

    iput-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mShrinkAlbumList:[I

    iget v3, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleShrinkAlbumListLen:I

    iput v3, p0, Lcom/htc/music/MediaPlaybackService;->mShrinkAlbumListLen:I

    :goto_1
    return-void

    :cond_2
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleShrinkAlbumList:[I

    iput-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mShrinkAlbumList:[I

    iget v3, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleShrinkAlbumListLen:I

    iput v3, p0, Lcom/htc/music/MediaPlaybackService;->mShrinkAlbumListLen:I

    goto :goto_1
.end method

.method private shrinkShuffleAlbumList([II)V
    .locals 5

    const/4 v2, -0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    iput v3, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleShrinkAlbumListLen:I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    aget v3, p1, v0

    if-eq v2, v3, :cond_0

    aget v2, p1, v0

    iget v3, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleShrinkAlbumListLen:I

    add-int/lit8 v3, v3, 0x1

    invoke-direct {p0, v3}, Lcom/htc/music/MediaPlaybackService;->ensureShuffleShrinkAlbumListCapacity(I)V

    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleShrinkAlbumList:[I

    aget v4, p1, v0

    aput v4, v3, v1

    iget v3, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleShrinkAlbumListLen:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleShrinkAlbumListLen:I

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget v3, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleShrinkAlbumList:[I

    iput-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mShrinkAlbumList:[I

    iget v3, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleShrinkAlbumListLen:I

    iput v3, p0, Lcom/htc/music/MediaPlaybackService;->mShrinkAlbumListLen:I

    :goto_1
    return-void

    :cond_2
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleShrinkAlbumList:[I

    iput-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mShrinkAlbumList:[I

    iget v3, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleShrinkAlbumListLen:I

    iput v3, p0, Lcom/htc/music/MediaPlaybackService;->mShrinkAlbumListLen:I

    goto :goto_1
.end method

.method private startAndFadeIn()V
    .locals 4

    const/4 v3, 0x4

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x18

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x39

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x58

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x3a

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x5dc

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private startFFRWRepeat(I)V
    .locals 4

    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->stopFFRWRepeat()V

    iput p1, p0, Lcom/htc/music/MediaPlaybackService;->mFFRWRepeat:I

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x104

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private stop(Z)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    invoke-virtual {v0, v1}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    invoke-virtual {v0, v1}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->sendEmptyMessage(I)Z

    :goto_0
    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    #calls: Lcom/htc/music/MediaPlaybackService$LocalPlayer;->stop(Z)V
    invoke-static {v0, p1}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->access$4800(Lcom/htc/music/MediaPlaybackService$LocalPlayer;Z)V

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private stopActivePlugin()V
    .locals 4

    const/4 v3, 0x5

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/music/MusicPluginManager;->setLastPluginClass(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->stopActivePlugin()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->isBindingService()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mUiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mUiHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private stopFFRWRepeat()V
    .locals 3

    const/4 v2, 0x0

    iput v2, p0, Lcom/htc/music/MediaPlaybackService;->mRepcnt:I

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iput v2, p0, Lcom/htc/music/MediaPlaybackService;->mFFRWRepeat:I

    return-void
.end method

.method private updateAlbumArtInNotification(Landroid/graphics/Bitmap;I)V
    .locals 9

    const-string v5, "[MediaPlaybackService]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateAlbumArtInNotification, albumArt: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->isPlaying()Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "[MediaPlaybackService]"

    const-string v6, "updateAlbumArtInNotification, not playing. return."

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_1

    const-string v5, "[MediaPlaybackService]"

    const-string v6, "updateAlbumArtInNotification, albumArt is null, return."

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService;->mNotification:Landroid/app/Notification;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService;->mNotification:Landroid/app/Notification;

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    if-eq v5, p2, :cond_3

    :cond_2
    const-string v5, "[MediaPlaybackService]"

    const-string v7, "updateAlbumArtInNotification, (mNotification == null || mNotification.hashCode() != key), return."

    invoke-static {v5, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    :cond_3
    :try_start_1
    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService;->mNotification:Landroid/app/Notification;

    iget-object v5, v5, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    if-nez v5, :cond_4

    const-string v5, "[MediaPlaybackService]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateAlbumArtInNotification, mNotification.extras: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/music/MediaPlaybackService;->mNotification:Landroid/app/Notification;

    iget-object v8, v8, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v6

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/16 v1, 0x48

    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService;->mNotification:Landroid/app/Notification;

    iget-object v4, v5, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-nez v4, :cond_5

    const-string v5, "[MediaPlaybackService]"

    const-string v7, "updateAlbumArtInNotification, (views == null) return."

    invoke-static {v5, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_5
    :try_start_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-gt v5, v1, :cond_6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    if-le v5, v1, :cond_7

    :cond_6
    const/4 v5, 0x0

    invoke-static {p1, v1, v1, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    const/4 p1, 0x0

    const v5, 0x7f080071

    invoke-virtual {v4, v5, v2}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    :goto_1
    const/4 v5, 0x1

    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService;->mNotification:Landroid/app/Notification;

    invoke-virtual {p0, v5, v7}, Lcom/htc/music/MediaPlaybackService;->startForeground(ILandroid/app/Notification;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :cond_7
    const v5, 0x7f080071

    :try_start_4
    invoke-virtual {v4, v5, p1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_5
    const-string v5, "[MediaPlaybackService]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateAlbumArtInNotification. Exception :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2
.end method

.method private updateNotification()V
    .locals 20

    new-instance v13, Landroid/widget/RemoteViews;

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getPackageName()Ljava/lang/String;

    move-result-object v14

    const v15, 0x7f03005e

    invoke-direct {v13, v14, v15}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    const v14, 0x7f0800e7

    const-string v15, "common_icon_glance_pause_on"

    const v16, 0x2080915

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-static {v0, v15, v1}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v15

    invoke-virtual {v13, v14, v15}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getAudioId()I

    move-result v6

    if-gez v6, :cond_7

    const v14, 0x7f0800e8

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getPath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v14, 0x7f0800e9

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v14, 0x7f080071

    const v15, 0x7f020057

    invoke-virtual {v13, v14, v15}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v12

    const v14, 0x7f0800e8

    invoke-virtual {v13, v14, v12}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    if-eqz v5, :cond_0

    const-string v14, "<unknown>"

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    :cond_0
    const v14, 0x7f070043

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/htc/music/MediaPlaybackService;->getString(I)Ljava/lang/String;

    move-result-object v5

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v14, "<unknown>"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    :cond_2
    const v14, 0x7f070044

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/htc/music/MediaPlaybackService;->getString(I)Ljava/lang/String;

    move-result-object v3

    :cond_3
    const v14, 0x7f0800e9

    const v15, 0x7f070215

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v5, v16, v17

    const/16 v17, 0x1

    aput-object v3, v16, v17

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/htc/music/MediaPlaybackService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getAlbumId()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MediaPlaybackService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v15

    :try_start_0
    new-instance v14, Landroid/app/Notification;

    invoke-direct {v14}, Landroid/app/Notification;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/htc/music/MediaPlaybackService;->mNotification:Landroid/app/Notification;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/MediaPlaybackService;->mNotification:Landroid/app/Notification;

    iput-object v13, v14, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/MediaPlaybackService;->mNotification:Landroid/app/Notification;

    iget v0, v14, Landroid/app/Notification;->flags:I

    move/from16 v16, v0

    const/high16 v17, 0x4

    or-int v16, v16, v17

    move/from16 v0, v16

    iput v0, v14, Landroid/app/Notification;->flags:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/MediaPlaybackService;->mNotification:Landroid/app/Notification;

    const v16, 0x7f02006b

    move/from16 v0, v16

    iput v0, v14, Landroid/app/Notification;->icon:I

    new-instance v11, Landroid/content/Intent;

    const-string v14, "com.htc.music.PLAYBACK_VIEWER"

    invoke-direct {v11, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/MediaPlaybackService;->mNotification:Landroid/app/Notification;

    const/16 v16, 0x0

    const/high16 v17, 0x800

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-static {v0, v1, v11, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v14, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    const-string v14, "command"

    const-string v16, "pause"

    move-object/from16 v0, v16

    invoke-virtual {v10, v14, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v14, "com.htc.music.musicservicecommand.pause"

    invoke-virtual {v10, v14}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/MediaPlaybackService;->mNotification:Landroid/app/Notification;

    iget-object v14, v14, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v16, 0x7f0800e7

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v10, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v17

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v14, v0, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    if-ltz v6, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    if-eqz v14, :cond_8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    const/16 v16, 0x10

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/MediaPlaybackService;->mOpts:Landroid/graphics/BitmapFactory$Options;

    if-eqz v14, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/MediaPlaybackService;->mOpts:Landroid/graphics/BitmapFactory$Options;

    const/16 v16, 0x1

    move/from16 v0, v16

    iput-boolean v0, v14, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    const/16 v16, 0x10

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/MediaPlaybackService;->mNotification:Landroid/app/Notification;

    invoke-virtual {v14}, Ljava/lang/Object;->hashCode()I

    move-result v14

    iput v14, v9, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    invoke-virtual {v14, v9}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->sendMessage(Landroid/os/Message;)Z

    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/MediaPlaybackService;->mNotification:Landroid/app/Notification;

    iget-object v14, v14, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v16, "music_track"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/MediaPlaybackService;->mNotification:Landroid/app/Notification;

    iget-object v14, v14, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v16, "music_artist"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/MediaPlaybackService;->mNotification:Landroid/app/Notification;

    iget-object v14, v14, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v16, "music_album"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/MediaPlaybackService;->mNotification:Landroid/app/Notification;

    iget-object v14, v14, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v16, "music_albumid"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v14, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService;->mNotification:Landroid/app/Notification;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v14, v1}, Lcom/htc/music/MediaPlaybackService;->startForeground(ILandroid/app/Notification;)V

    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeats(Landroid/content/Context;)Z

    move-result v14

    const/4 v14, 0x1

    if-eqz v14, :cond_6

    invoke-static/range {p0 .. p0}, Lcom/htc/music/util/SoundEffectHelper;->isBeatsEffectOn(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_9

    const/4 v14, 0x1

    const/4 v15, 0x1

    invoke-static {v8, v14, v15}, Lcom/htc/music/util/SoundEffectHelper;->setBeatsNotificationBar(Landroid/content/Context;ZZ)V

    :cond_6
    :goto_2
    return-void

    :cond_7
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/htc/music/MediaPlaybackService;->setDefaultNotificationAlbum(Landroid/widget/RemoteViews;)V

    goto/16 :goto_0

    :cond_8
    :try_start_1
    const-string v14, "[MediaPlaybackService]"

    const-string v16, "updateNotification, mNonUiHandler is null."

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v14

    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v14

    :cond_9
    invoke-static/range {p0 .. p0}, Lcom/htc/music/util/SoundEffectHelper;->IsBeatsCanBeEnable(Landroid/content/Context;)Z

    move-result v14

    const/4 v14, 0x1

    if-eqz v14, :cond_a

    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-static {v8, v14, v15}, Lcom/htc/music/util/SoundEffectHelper;->setBeatsNotificationBar(Landroid/content/Context;ZZ)V

    goto :goto_2

    :cond_a
    invoke-static {v8}, Lcom/htc/music/util/SoundEffectHelper;->isBeatsBTWork(Landroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_b

    const/4 v14, 0x1

    const/4 v15, 0x1

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-static {v8, v14, v15, v0}, Lcom/htc/music/util/SoundEffectHelper;->setBeatsNotificationBar(Landroid/content/Context;ZZI)V

    goto :goto_2

    :cond_b
    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static {v8, v14, v15}, Lcom/htc/music/util/SoundEffectHelper;->setBeatsNotificationBar(Landroid/content/Context;ZZ)V

    goto :goto_2
.end method

.method private waitForAnimation()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mAnimation:Z

    if-eqz v0, :cond_0

    monitor-exit p0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->openCurrent()V

    const-string v0, "[MediaPlaybackService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "waitForAnimation mPlayOnNextPrev= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->play()V

    :cond_1
    const-string v0, "com.htc.music.metachanged"

    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mIsWaitAnimation:Z

    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mWakeLockAcquired:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public BTHeadSetStatusChanged(Z)V
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeats(Landroid/content/Context;)Z

    move-result v1

    const/4 v1, 0x1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/htc/music/util/HeadSetHelper;->isWiredHeadsetPlugged()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v0, "SRS"

    if-nez p1, :cond_0

    invoke-static {}, Lcom/htc/music/util/HdmiPlugReceiver;->isHDMIConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "Original"

    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/music/util/SoundEffectHelper;->isBeatsBTWork(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "Original"

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getAudioSessionId()I

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/htc/music/util/SoundEffectHelper;->setAudioEffect(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3, v3, v3}, Lcom/htc/music/util/SoundEffectHelper;->setBeatsNotificationBar(Landroid/content/Context;ZZI)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/SoundEffectHelper;->setAudioStyle(Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getAudioSessionId()I

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/htc/music/util/SoundEffectHelper;->setAudioEffect(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public BeatsAudioStatusChanged(Z)V
    .locals 4

    const-string v1, "[MediaPlaybackService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BeatsAudioStatusChanged, newStatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    sget v0, Lcom/htc/music/util/SoundEffectHelper;->BEATS_Beats:I

    :goto_0
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/SoundEffectHelper;->setAudioStyleByIndex(ILandroid/content/Context;)V

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/htc/music/util/SoundEffectHelper;->getSoundEffectStyleByIndex(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getAudioSessionId()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/htc/music/util/SoundEffectHelper;->setAudioEffect(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/htc/music/util/SoundEffectHelper;->getSoundEffectStyleByIndex(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/htc/music/MediaPlaybackService;->setLastAudioEffect(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/music/util/HeadSetHelper;->isBeatsHeadset(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget v0, Lcom/htc/music/util/SoundEffectHelper;->BEATS_Original:I

    goto :goto_0

    :cond_2
    sget v0, Lcom/htc/music/util/SoundEffectHelper;->BEATS_SRS:I

    goto :goto_0
.end method

.method public OnHdmiPlugReceiver(Lcom/htc/music/util/HdmiPlugReceiver;I)V
    .locals 4

    const-string v1, "[MediaPlaybackService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OnHdmiPlugReceiver bIsPluged: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", from: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/htc/music/util/HeadSetHelper;->isHeadsetPlugged(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "[MediaPlaybackService]"

    const-string v2, "OnHdmiPlugReceiver, Wired/BT headset is plugged. Do Nothing for HDMI plugging in/out."

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-lez p2, :cond_3

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/music/util/SoundEffectHelper;->getCurrentAudioStyle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "Original"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "Original"

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/SoundEffectHelper;->setAudioStyle(Ljava/lang/String;Landroid/content/Context;)V

    :cond_2
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Original"

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getAudioSessionId()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/htc/music/util/SoundEffectHelper;->setAudioEffect(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeats(Landroid/content/Context;)Z

    move-result v1

    const/4 v1, 0x1

    if-eqz v1, :cond_0

    sget v1, Lcom/htc/music/util/SoundEffectHelper;->BEATS_SRS:I

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/SoundEffectHelper;->setAudioStyleByIndex(ILandroid/content/Context;)V

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "SRS"

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getAudioSessionId()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/htc/music/util/SoundEffectHelper;->setAudioEffect(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public activityGoSleep()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mActivityIsLive:Z

    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mIsWaitAnimation:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->forcePlay()V

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public activityWakeup()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mActivityIsLive:Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clearAlbumArtRequests()V
    .locals 1

    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->clearAlbumArtRequests()V

    :cond_0
    return-void
.end method

.method public clearNowplayingQueueRequests()V
    .locals 1

    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->clearNowplayingQueueRequests()V

    :cond_0
    return-void
.end method

.method public closeExternalStorageFiles(Ljava/lang/String;)V
    .locals 5

    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    const-string v4, "_data"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/htc/music/MediaPlaybackService;->stop(Z)V

    const-string v2, "com.htc.music.metachanged"

    invoke-direct {p0, v2}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    const/4 v3, 0x0

    #calls: Lcom/htc/music/MediaPlaybackService$LocalPlayer;->stop(Z)V
    invoke-static {v2, v3}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->access$4800(Lcom/htc/music/MediaPlaybackService$LocalPlayer;Z)V

    goto :goto_0
.end method

.method public duration()J
    .locals 2

    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->duration()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    #calls: Lcom/htc/music/MediaPlaybackService$LocalPlayer;->duration()J
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->access$4400(Lcom/htc/music/MediaPlaybackService$LocalPlayer;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public endAnimation()V
    .locals 2

    const-string v0, "[MediaPlaybackService]"

    const-string v1, "endAnimation"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mAnimation:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mAnimation:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mTest:Z

    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->waitForAnimation()V

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "Bad !! endAnimation is not pair"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public enqueue([II)V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    :try_start_0
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-ge v0, v1, :cond_3

    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/htc/music/MediaPlaybackService;->addToPlayList([II)V

    const-string v0, "com.htc.music.queuechanged"

    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    :cond_0
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    if-gez v0, :cond_2

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->openCurrent()V

    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->play()V

    :cond_1
    const-string v0, "com.htc.music.metachanged"

    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    :cond_2
    monitor-exit p0

    :goto_0
    return-void

    :cond_3
    const v0, 0x7fffffff

    invoke-direct {p0, p1, v0}, Lcom/htc/music/MediaPlaybackService;->addToPlayList([II)V

    const-string v0, "com.htc.music.queuechanged"

    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    array-length v1, p1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->openCurrent()V

    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->play()V

    :cond_4
    const-string v0, "com.htc.music.metachanged"

    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAlbumArtPath()Ljava/lang/String;
    .locals 12

    const/4 v11, 0x0

    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getQueuePosition()I

    move-result v10

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getShuffleMode()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0, v10}, Lcom/htc/music/MusicPluginManager;->getAlbumArtPathByPosition(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0, v10}, Lcom/htc/music/MusicPluginManager;->getAlbumArtPathByShufflePosition(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getAlbumId()I

    move-result v9

    const/4 v0, -0x1

    if-ne v9, v0, :cond_3

    move-object v0, v11

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    const-string v0, "<unknown>"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    move-object v0, v11

    goto :goto_0

    :cond_5
    const/4 v8, 0x0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v1, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/htc/music/util/MusicUtils;->sMdColumns:[Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "album_key"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_6

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_8

    :cond_6
    const-string v0, "[MediaPlaybackService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot find album with id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v8, :cond_7

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    const/4 v8, 0x0

    :cond_7
    move-object v0, v11

    goto :goto_0

    :cond_8
    :try_start_1
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/music/util/MusicUtils;->isMusicEnhancerEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v8}, Lcom/htc/music/util/MusicUtils;->mergeDlAlbumArt(Landroid/content/Context;Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_9

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_b

    :cond_9
    const-string v0, "[MediaPlaybackService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot find album art with id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v8, :cond_a

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    const/4 v8, 0x0

    :cond_a
    move-object v0, v11

    goto/16 :goto_0

    :cond_b
    :try_start_2
    const-string v0, "album_art"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    if-gez v7, :cond_d

    const-string v0, "[MediaPlaybackService]"

    const-string v1, "Cannot find art column index"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v8, :cond_c

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    const/4 v8, 0x0

    :cond_c
    move-object v0, v11

    goto/16 :goto_0

    :cond_d
    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v8, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    const/4 v8, 0x0

    goto/16 :goto_0

    :cond_e
    :try_start_4
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "Cannot move to first position"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v8, :cond_f

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    const/4 v8, 0x0

    :cond_f
    move-object v0, v11

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    if-eqz v8, :cond_10

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    const/4 v8, 0x0

    :cond_10
    throw v0
.end method

.method public getAlbumArtPathByPosition(I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0, p1}, Lcom/htc/music/MusicPluginManager;->getAlbumArtPathByPosition(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAlbumArtPathByShufflePosition(I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0, p1}, Lcom/htc/music/MusicPluginManager;->getAlbumArtPathByShufflePosition(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAlbumId()I
    .locals 3

    const/4 v0, -0x1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit p0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_1

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    const-string v2, "album_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getAlbumName()Ljava/lang/String;
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->getAlbumName()Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_1

    const-string v0, "[MediaPlaybackService]"

    const-string v1, "getAlbumName: mCursor == null"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    const-string v2, "album"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getAlbumQueue()[I
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    new-array v2, v3, [I

    monitor-exit p0

    :goto_0
    return-object v2

    :cond_0
    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mShrinkAlbumListLen:I

    new-array v2, v1, [I

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_1

    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mShrinkAlbumList:[I

    aget v3, v3, v0

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getAlbumQueuePosition()I
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    monitor-exit p0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumList:[I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumList:[I

    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    invoke-direct {p0, v0, v1}, Lcom/htc/music/MediaPlaybackService;->getAlbumPos([II)I

    move-result v0

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    const/4 v0, -0x1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getAlbumQueueSize()I
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    monitor-exit p0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mShrinkAlbumListLen:I

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAnimationStatus()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mAnimation:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mIsWaitAnimation:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getArtistId()I
    .locals 3

    const/4 v0, -0x1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit p0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_1

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    const-string v2, "artist_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getArtistName()Ljava/lang/String;
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->getArtistName()Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_1

    const-string v0, "[MediaPlaybackService]"

    const-string v1, "getArtistName: mCursor == null"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    const-string v2, "artist"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getAudioId()I
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    if-ltz v0, :cond_2

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mIsWaitAnimation:Z

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    aget v0, v0, v1

    monitor-exit p0

    :goto_0
    return v0

    :cond_2
    monitor-exit p0

    const/4 v0, -0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAudioSessionId()I
    .locals 1

    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->getAudioSessionId()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    #calls: Lcom/htc/music/MediaPlaybackService$LocalPlayer;->getAudioSessionId()I
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->access$5700(Lcom/htc/music/MediaPlaybackService$LocalPlayer;)I

    move-result v0

    goto :goto_0
.end method

.method public getBufferingPercent()I
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->getBufferingPercent()I

    move-result v0

    monitor-exit p0

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x64

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getComposer()Ljava/lang/String;
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->getComposer()Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    const-string v2, "composer"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getDrmConstraint(Landroid/net/Uri;)Landroid/provider/DrmStore$DrmConstraint;
    .locals 2

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/provider/DrmStore;->getDrmConstraint(Landroid/content/ContentResolver;Landroid/net/Uri;I)Landroid/provider/DrmStore$DrmConstraint;

    move-result-object v0

    return-object v0
.end method

.method getDrmPlaybackUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 13

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const/4 v0, 0x6

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "title"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "_data"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "content_offset"

    aput-object v1, v2, v0

    const/4 v0, 0x4

    const-string v1, "content_id"

    aput-object v1, v2, v0

    const/4 v0, 0x5

    const-string v1, "content_boundary_offset"

    aput-object v1, v2, v0

    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    :try_start_0
    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    if-eqz v11, :cond_0

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    const-string v0, "_data"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v0, "content_offset"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const-string v0, "content_id"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v0, "content_boundary_offset"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/htcfs/oma-drm1-fs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&drm_header_len="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&drm_trailor_len="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&sd_content_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v10

    :cond_0
    if-eqz v11, :cond_1

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    const/4 v11, 0x0

    :cond_1
    return-object v10

    :catchall_0
    move-exception v0

    if-eqz v11, :cond_2

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    const/4 v11, 0x0

    :cond_2
    throw v0
.end method

.method public getExternalPluginCount()I
    .locals 1

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->getExternalPluginCount()I

    move-result v0

    return v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->getFileName()Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    const-string v2, "_display_name"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getGenre()Ljava/lang/String;
    .locals 9

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->getGenre()Ljava/lang/String;

    move-result-object v8

    monitor-exit p0

    :goto_0
    return-object v8

    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getAudioId()I

    move-result v6

    const/4 v8, 0x0

    if-ltz v6, :cond_2

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "name"

    aput-object v1, v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id in (select genre_id from audio_genres_map where audio_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Genres;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, "name"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    :cond_1
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->getLocation()Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    const-string v2, "_data"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getMediaMountedCount()I
    .locals 1

    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mMediaMountedCount:I

    return v0
.end method

.method public getNowplayingQueue(I)V
    .locals 1

    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0, p1}, Lcom/htc/music/MusicPluginManager;->getNowplayingQueue(I)V

    :cond_0
    return-void
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "plugin_file_path"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mFileToPlay:Ljava/lang/String;

    goto :goto_0
.end method

.method public getPositionByShufflePosition(I)I
    .locals 4

    const/4 v2, -0x1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v2, p1}, Lcom/htc/music/MusicPluginManager;->getPositionByShufflePosition(I)I

    move-result v1

    monitor-exit p0

    :goto_0
    return v1

    :cond_0
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mShufflePlayList:[I

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-ge p1, v3, :cond_1

    if-gez p1, :cond_2

    :cond_1
    monitor-exit p0

    move v1, v2

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mShufflePlayList:[I

    aget v0, v3, p1

    const/4 v1, 0x0

    :goto_1
    iget v3, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-ge v1, v3, :cond_4

    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    aget v3, v3, v1

    if-ne v3, v0, :cond_3

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v1, v2

    goto :goto_0
.end method

.method public getQueue()[I
    .locals 4

    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    new-array v2, v1, [I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    aget v3, v3, v0

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getQueuePosition()I
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->getQueuePosition()I

    move-result v0

    monitor-exit p0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getQueueSize()I
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->getQueueSize()I

    move-result v0

    monitor-exit p0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRepeatMode()I
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->getRepeatMode()I

    move-result v0

    monitor-exit p0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mRepeatMode:I

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getShuffleMode()I
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->getShuffleMode()I

    move-result v0

    monitor-exit p0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getShufflePositionByPosition(I)I
    .locals 4

    const/4 v2, -0x1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v2, p1}, Lcom/htc/music/MusicPluginManager;->getShufflePositionByPosition(I)I

    move-result v1

    monitor-exit p0

    :goto_0
    return v1

    :cond_0
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mShufflePlayList:[I

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-ge p1, v3, :cond_1

    if-gez p1, :cond_2

    :cond_1
    monitor-exit p0

    move v1, v2

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    aget v0, v3, p1

    const/4 v1, 0x0

    :goto_1
    iget v3, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-ge v1, v3, :cond_4

    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mShufflePlayList:[I

    aget v3, v3, v1

    if-ne v3, v0, :cond_3

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v1, v2

    goto :goto_0
.end method

.method public getTrackDetails(I)V
    .locals 1

    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0, p1}, Lcom/htc/music/MusicPluginManager;->getTrackDetails(I)V

    :cond_0
    return-void
.end method

.method public getTrackName()Ljava/lang/String;
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->getTrackName()Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_1

    const-string v0, "[MediaPlaybackService]"

    const-string v1, "getTrackName: mCursor == null"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    const-string v2, "title"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public headSetStatusChanged(ZZ)V
    .locals 5

    const-string v2, "[MediaPlaybackService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "headSetStatusChanged, newStatus: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isBeatsHeadset: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeats(Landroid/content/Context;)Z

    move-result v2

    const/4 v2, 0x1

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/music/util/SoundEffectHelper;->getCurrentAudioStyleIndex(Landroid/content/Context;)I

    move-result v1

    invoke-static {}, Lcom/htc/music/util/HdmiPlugReceiver;->isHDMIConnected()Z

    move-result v2

    if-eqz v2, :cond_2

    sget v2, Lcom/htc/music/util/SoundEffectHelper;->Original:I

    if-eq v1, v2, :cond_0

    const-string v2, "Original"

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/SoundEffectHelper;->setAudioStyle(Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "Original"

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getAudioSessionId()I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/htc/music/util/SoundEffectHelper;->setAudioEffect(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    sget v2, Lcom/htc/music/util/SoundEffectHelper;->Equalizer:I

    if-ne v1, v2, :cond_0

    invoke-static {}, Lcom/htc/music/util/SoundEffectHelper;->getDefaultEffectStr()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/music/util/SoundEffectHelper;->setAudioStyle(Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getAudioSessionId()I

    move-result v3

    invoke-static {v2, v0, v3}, Lcom/htc/music/util/SoundEffectHelper;->setAudioEffect(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 1

    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->isPlaying()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    #calls: Lcom/htc/music/MediaPlaybackService$LocalPlayer;->isPlaying()Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->access$4000(Lcom/htc/music/MediaPlaybackService$LocalPlayer;)Z

    move-result v0

    goto :goto_0
.end method

.method public isSystemReady()Z
    .locals 3

    const-string v0, "[MediaPlaybackService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSystemReady= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/music/MediaPlaybackService;->mIsSystemReady:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mIsSystemReady:Z

    return v0
.end method

.method public moveQueueItem(II)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-lt p1, v2, :cond_0

    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    add-int/lit8 p1, v2, -0x1

    :cond_0
    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-lt p2, v2, :cond_1

    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    add-int/lit8 p2, v2, -0x1

    :cond_1
    if-ge p1, p2, :cond_5

    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    aget v1, v2, p1

    move v0, p1

    :goto_0
    if-ge v0, p2, :cond_2

    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    add-int/lit8 v4, v0, 0x1

    aget v3, v3, v4

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    aput v1, v2, p2

    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    if-ne v2, p1, :cond_4

    iput p2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    :cond_3
    :goto_1
    const-string v2, "com.htc.music.queuechanged"

    invoke-direct {p0, v2}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    monitor-exit p0

    return-void

    :cond_4
    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    if-lt v2, p1, :cond_3

    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    if-gt v2, p2, :cond_3

    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_5
    if-ge p2, p1, :cond_3

    :try_start_1
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    aget v1, v2, p1

    move v0, p1

    :goto_2
    if-le v0, p2, :cond_6

    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    add-int/lit8 v4, v0, -0x1

    aget v3, v3, v4

    aput v3, v2, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_6
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    aput v1, v2, p2

    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    if-ne v2, p1, :cond_7

    iput p2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    goto :goto_1

    :cond_7
    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    if-lt v2, p2, :cond_3

    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    if-gt v2, p1, :cond_3

    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public next(Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/htc/music/MediaPlaybackService;->next(ZZ)V

    return-void
.end method

.method public next(ZZ)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->sendEmptyMessage(I)Z

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    #calls: Lcom/htc/music/MediaPlaybackService$LocalPlayer;->next(ZZ)V
    invoke-static {v0, p1, p2}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->access$5600(Lcom/htc/music/MediaPlaybackService$LocalPlayer;ZZ)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public nextAlbum(Z)V
    .locals 3

    const/4 v2, 0x1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mAnimation:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mTest:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mActivityIsLive:Z

    if-eqz v0, :cond_0

    const-string v0, "[MediaPlaybackService]"

    const-string v1, "==========skip one next"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mAnimation:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mActivityIsLive:Z

    if-eqz v0, :cond_1

    const-string v0, "com.htc.music.rotatequickly"

    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->removeElementAt(I)V

    :cond_2
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_6

    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mRepeatMode:I

    if-nez v0, :cond_3

    if-nez p1, :cond_3

    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->gotoIdleState()V

    const-string v0, "com.htc.music.playbackcomplete"

    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :try_start_1
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mRepeatMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    if-eqz p1, :cond_5

    :cond_4
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    :cond_5
    :goto_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->stop(Z)V

    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mActivityIsLive:Z

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mTest:Z

    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mShrinkAlbumListLen:I

    if-eq v0, v2, :cond_8

    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mLastAlbumPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->mLastAlbumPos:I

    :goto_2
    const-string v0, "com.htc.music.rotateright"

    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    :goto_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mIsWaitAnimation:Z

    :goto_4
    monitor-exit p0

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumList:[I

    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    invoke-direct {p0, v0, v1}, Lcom/htc/music/MediaPlaybackService;->getNextAlbumPos([II)I

    move-result v0

    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    goto :goto_1

    :cond_7
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->mLastAlbumPos:I

    goto :goto_2

    :cond_8
    const-string v0, "com.htc.music.rotatecircle_next"

    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->openCurrent()V

    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->play()V

    :cond_a
    const-string v0, "com.htc.music.metachanged"

    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 4

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mServiceInUse:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/music/MediaPlaybackService;->mServiceInUse:I

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[MediaPlaybackService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MediaPlayback is onBind: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ref count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/music/MediaPlaybackService;->mServiceInUse:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-class v1, Lcom/htc/service/music/IHtcMediaPlaybackService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "[MediaPlaybackService]"

    const-string v2, "onBind IHtcMediaPlaybackService"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mPublicBinder:Landroid/os/IBinder;

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mBinder:Landroid/os/IBinder;

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    const-string v0, "[MediaPlaybackService]"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mCurrSkin:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mCurrSkin:Ljava/lang/String;

    :cond_0
    iget-object v0, p1, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mCurrSkin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->updateNotification()V

    :cond_1
    return-void
.end method

.method public onCreate()V
    .locals 13

    const/4 v12, 0x0

    const/4 v11, 0x1

    const-string v7, "[MediaPlaybackService]"

    const-string v8, "onCreate"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v7, "audio"

    invoke-virtual {p0, v7}, Lcom/htc/music/MediaPlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/AudioManager;

    iput-object v7, p0, Lcom/htc/music/MediaPlaybackService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService;->mAudioManager:Landroid/media/AudioManager;

    new-instance v8, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const-class v10, Lcom/htc/music/MediaButtonIntentReceiver;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    new-instance v6, Landroid/app/Notification;

    invoke-direct {v6}, Landroid/app/Notification;-><init>()V

    invoke-virtual {p0, v11, v6}, Lcom/htc/music/MediaPlaybackService;->startForeground(ILandroid/app/Notification;)V

    const-string v7, "Music"

    const/4 v8, 0x3

    invoke-virtual {p0, v7, v8}, Lcom/htc/music/MediaPlaybackService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/os/FileUtils;->getFatVolumeId(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/htc/music/MediaPlaybackService;->mCardId:I

    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v8, "plugin"

    const-string v9, ""

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/htc/music/util/ProjectSettings;->getEnablePlugin(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_1

    if-eqz v2, :cond_0

    const-string v7, ""

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_0
    new-instance v7, Lcom/htc/music/MusicPluginManager;

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, p0, v8}, Lcom/htc/music/MusicPluginManager;-><init>(Lcom/htc/music/MediaPlaybackService;Landroid/content/Context;)V

    iput-object v7, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    :cond_1
    :goto_0
    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v7, v2}, Lcom/htc/music/MusicPluginManager;->setLastPluginClass(Ljava/lang/String;)V

    new-instance v7, Landroid/os/HandlerThread;

    const-string v8, "MediaPlaybackServiceWorker"

    invoke-direct {v7, v8}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lcom/htc/music/MediaPlaybackService;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v7}, Landroid/os/HandlerThread;->start()V

    new-instance v7, Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    iget-object v8, p0, Lcom/htc/music/MediaPlaybackService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v8}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-direct {v7, p0, v8}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;-><init>(Lcom/htc/music/MediaPlaybackService;Landroid/os/Looper;)V

    iput-object v7, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->registerExternalStorageListener()V

    new-instance v7, Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    invoke-direct {v7, p0}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;-><init>(Lcom/htc/music/MediaPlaybackService;)V

    iput-object v7, p0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    iget-object v8, p0, Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    invoke-virtual {v7, v8}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->setHandler(Landroid/os/Handler;)V

    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    const/16 v8, 0xd

    invoke-virtual {v7, v8}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->sendEmptyMessage(I)Z

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v7, "com.htc.music.musicservicecommand"

    invoke-virtual {v0, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v7, "com.htc.music.musicservicecommand.togglepause"

    invoke-virtual {v0, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v7, "com.htc.music.musicservicecommand.pause"

    invoke-virtual {v0, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v7, "com.htc.music.musicservicecommand.next"

    invoke-virtual {v0, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v7, "com.htc.music.musicservicecommand.previous"

    invoke-virtual {v0, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v7, "com.android.music.musicservicecommand.togglepause"

    invoke-virtual {v0, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v7, "com.android.music.musicservicecommand.pause"

    invoke-virtual {v0, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v7, "com.android.music.musicservicecommand.next"

    invoke-virtual {v0, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v7, "com.android.music.musicservicecommand.previous"

    invoke-virtual {v0, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v7, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {v0, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v7, "com.android.music.musicservicecommand"

    invoke-virtual {v0, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v7, v0}, Lcom/htc/music/MediaPlaybackService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService;->mA2DPReceiver:Landroid/content/BroadcastReceiver;

    new-instance v8, Landroid/content/IntentFilter;

    const-string v9, "android.intent.action.ACTION_A2DP_PLUG"

    invoke-direct {v8, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v7, v8}, Lcom/htc/music/MediaPlaybackService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    const-string v7, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v5, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v7, "android.intent.action.QUICKBOOT_POWEROFF"

    invoke-virtual {v5, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService;->mShutdownReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v7, v5}, Lcom/htc/music/MediaPlaybackService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v7, Lcom/htc/music/MediaPlaybackService$DockEventListener;

    invoke-direct {v7, p0}, Lcom/htc/music/MediaPlaybackService$DockEventListener;-><init>(Lcom/htc/music/MediaPlaybackService;)V

    iput-object v7, p0, Lcom/htc/music/MediaPlaybackService;->mDockEventListener:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v7, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService;->mDockEventListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v7, v1}, Lcom/htc/music/MediaPlaybackService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v7, "power"

    invoke-virtual {p0, v7}, Lcom/htc/music/MediaPlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v11, v7}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/music/MediaPlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v7, v12}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v7}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const-wide/32 v8, 0xea60

    invoke-virtual {v7, v3, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    const-wide/16 v7, 0x2710

    invoke-direct {p0, v11, v7, v8}, Lcom/htc/music/MediaPlaybackService;->sendULogMessage(IJ)V

    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService;->mHeadSetHelper:Lcom/htc/music/util/HeadSetHelper;

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v7, v8, p0}, Lcom/htc/music/util/HeadSetHelper;->startMonitor(Landroid/content/Context;Lcom/htc/music/util/IMonitorHeadSetStatus;)V

    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService;->mHdmiPlugReceiver:Lcom/htc/music/util/HdmiPlugReceiver;

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v7, v8, p0}, Lcom/htc/music/util/HdmiPlugReceiver;->initInstance(Landroid/content/Context;Lcom/htc/music/util/HdmiPlugReceiver$IHdmiPlugReceiver;)Z

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeats(Landroid/content/Context;)Z

    move-result v7

    const/4 v7, 0x1

    if-eqz v7, :cond_2

    invoke-virtual {p0, v12}, Lcom/htc/music/MediaPlaybackService;->updateBeatsEffectSetting(Z)V

    :cond_2
    const-string v7, "[MediaPlaybackService]"

    const-string v8, "onCreate finished"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    new-instance v7, Lcom/htc/music/MusicPluginManager;

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, p0, v2, v8}, Lcom/htc/music/MusicPluginManager;-><init>(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;Landroid/content/Context;)V

    iput-object v7, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v0, "[MediaPlaybackService]"

    const-string v1, "[onDestroy Begin]"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "[MediaPlaybackService]"

    const-string v1, "Service being destroyed while still playing."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/music/MediaPlaybackService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mA2DPReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/music/MediaPlaybackService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mDockEventListener:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mDockEventListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/music/MediaPlaybackService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mDockEventListener:Landroid/content/BroadcastReceiver;

    :cond_1
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/music/MediaPlaybackService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    :cond_2
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    invoke-virtual {v0, v2}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    iput-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mHandlerThread:Landroid/os/HandlerThread;

    iput-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    :cond_3
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mUiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mUiHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_4
    iput-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mNotification:Landroid/app/Notification;

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mOpts:Landroid/graphics/BitmapFactory$Options;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mOpts:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    :cond_5
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mAirPlaneReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mAirPlaneReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/music/MediaPlaybackService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mAirPlaneReceiver:Landroid/content/BroadcastReceiver;

    :cond_6
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mShutdownReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mShutdownReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/music/MediaPlaybackService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mShutdownReceiver:Landroid/content/BroadcastReceiver;

    :cond_7
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    iput-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    :cond_8
    invoke-static {p0}, Lcom/htc/music/util/SoundEffectHelper;->disableSoundEffect(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mHeadSetHelper:Lcom/htc/music/util/HeadSetHelper;

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/music/util/HeadSetHelper;->stopMonitor(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mHdmiPlugReceiver:Lcom/htc/music/util/HdmiPlugReceiver;

    invoke-virtual {v0}, Lcom/htc/music/util/HdmiPlugReceiver;->deInitInstance()Z

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->release()V

    iput-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    invoke-virtual {p0, v3}, Lcom/htc/music/MediaPlaybackService;->stopForeground(Z)V

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->resetMusicPluginManager()V

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->stopHandlerThread()V

    :cond_9
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const-string v0, "[MediaPlaybackService]"

    const-string v1, "[onDestroy End]"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPluginSelected(I)V
    .locals 2

    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->getExternalPluginCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->pause()V

    :cond_2
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0, p1}, Lcom/htc/music/MusicPluginManager;->onPluginSelected(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->getExternalPluginCount()I

    move-result v0

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->stopActivePlugin()V

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/music/MusicPluginManager;->setLastPluginClass(Ljava/lang/String;)V

    const-string v0, "com.htc.music.metachanged"

    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->getExternalPluginCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0, p1}, Lcom/htc/music/MusicPluginManager;->onPluginSelected(I)V

    goto :goto_0
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 4

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mServiceInUse:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/music/MediaPlaybackService;->mServiceInUse:I

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[MediaPlaybackService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MediaPlayback is onRebind: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ref count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/music/MediaPlaybackService;->mServiceInUse:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 11

    const-string v7, "[MediaPlaybackService]"

    const-string v8, "onStartCommand"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iput p3, p0, Lcom/htc/music/MediaPlaybackService;->mServiceStartId:I

    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->shutdownServcieDelay()V

    const-string v7, "[MediaPlaybackService]"

    const-string v8, "onStartCommand intent NULL"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x1

    :goto_0
    return v7

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v7, "command"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v7, "forcePlay"

    const/4 v8, 0x0

    invoke-virtual {p1, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    const-string v7, "classname"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v7, "phone"

    invoke-virtual {p0, v7}, Lcom/htc/music/MediaPlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    if-nez v6, :cond_1

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->shutdownServcieDelay()V

    const-string v7, "[MediaPlaybackService]"

    const-string v8, "onStartCommand TelephonyManager NULL"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v7

    if-nez v7, :cond_2

    const/4 v4, 0x1

    :goto_1
    if-nez v4, :cond_3

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->shutdownServcieDelay()V

    const-string v7, "[MediaPlaybackService]"

    const-string v8, "onStartCommand call state is not idle"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    :cond_3
    const-string v7, "next"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "com.htc.music.musicservicecommand.next"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "com.android.music.musicservicecommand.next"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    :cond_4
    const-string v7, "[MediaPlaybackService]"

    const-string v8, "onStartCommand CMDNEXT"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_5

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z

    :cond_5
    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8}, Lcom/htc/music/MediaPlaybackService;->next(ZZ)V

    :cond_6
    :goto_2
    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v7}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v5

    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const-wide/32 v8, 0xea60

    invoke-virtual {v7, v5, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    const/4 v7, 0x1

    goto/16 :goto_0

    :cond_7
    const-string v7, "previous"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    const-string v7, "com.htc.music.musicservicecommand.previous"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    const-string v7, "com.android.music.musicservicecommand.previous"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    :cond_8
    const-string v7, "[MediaPlaybackService]"

    const-string v8, "onStartCommand CMDPREVIOUS"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_9

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z

    :cond_9
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/htc/music/MediaPlaybackService;->prev(Z)V

    goto :goto_2

    :cond_a
    const-string v7, "togglepause"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    const-string v7, "com.htc.music.musicservicecommand.togglepause"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    const-string v7, "com.android.music.musicservicecommand.togglepause"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    :cond_b
    const-string v7, "[MediaPlaybackService]"

    const-string v8, "onStartCommand CMDTOGGLEPAUSE"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-wide v9, p0, Lcom/htc/music/MediaPlaybackService;->noisy_action_time:J

    sub-long/2addr v7, v9

    const-wide/16 v9, 0x3e8

    cmp-long v7, v7, v9

    if-ltz v7, :cond_6

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->isPlaying()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->pause()V

    goto :goto_2

    :cond_c
    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    if-eqz v7, :cond_d

    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v7}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v7

    if-nez v7, :cond_d

    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    const/16 v8, 0xd

    invoke-virtual {v7, v8}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->removeMessages(I)V

    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    const/16 v8, 0xd

    invoke-virtual {v7, v8}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->sendEmptyMessage(I)Z

    :cond_d
    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    const/16 v8, 0xe

    invoke-virtual {v7, v8}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->removeMessages(I)V

    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    const/16 v8, 0xe

    invoke-virtual {v7, v8}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_2

    :cond_e
    const-string v7, "pause"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_f

    const-string v7, "com.htc.music.musicservicecommand.pause"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_f

    const-string v7, "com.android.music.musicservicecommand.pause"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    :cond_f
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->pause()V

    goto/16 :goto_2

    :cond_10
    const-string v7, "play"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->play()V

    goto/16 :goto_2

    :cond_11
    const-string v7, "stop"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->pause()V

    const-wide/16 v7, 0x0

    invoke-virtual {p0, v7, v8}, Lcom/htc/music/MediaPlaybackService;->seek(J)J

    const-string v7, "com.htc.music.playstatechanged"

    invoke-direct {p0, v7}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_12
    const-string v7, "ffstart"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    const-string v7, "[MediaPlaybackService]"

    const-string v8, "onStartCommand CMDFFSTART"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x0

    iput v7, p0, Lcom/htc/music/MediaPlaybackService;->mRepcnt:I

    const/4 v7, 0x1

    iput v7, p0, Lcom/htc/music/MediaPlaybackService;->mFFRWRepeat:I

    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    const/4 v8, 0x5

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    const-wide/16 v8, 0x104

    invoke-virtual {v7, v5, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_2

    :cond_13
    const-string v7, "rwstart"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14

    const-string v7, "[MediaPlaybackService]"

    const-string v8, "onStartCommand CMDRWSTART"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x0

    iput v7, p0, Lcom/htc/music/MediaPlaybackService;->mRepcnt:I

    const/4 v7, 0x2

    iput v7, p0, Lcom/htc/music/MediaPlaybackService;->mFFRWRepeat:I

    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    const/4 v8, 0x5

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    const-wide/16 v8, 0x104

    invoke-virtual {v7, v5, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_2

    :cond_14
    const-string v7, "ffstop"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_15

    const-string v7, "rwstop"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_16

    :cond_15
    const-string v7, "[MediaPlaybackService]"

    const-string v8, "onStartCommand CMDFF/RWSTOP"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x0

    iput v7, p0, Lcom/htc/music/MediaPlaybackService;->mFFRWRepeat:I

    iget-boolean v7, p0, Lcom/htc/music/MediaPlaybackService;->mFFToEndIsPlaying:Z

    if-eqz v7, :cond_6

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->play()V

    goto/16 :goto_2

    :cond_16
    const-string v7, "resume"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_17

    const-string v7, "[MediaPlaybackService]"

    const-string v8, "onStartCommand CMDRESUME"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/htc/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z

    if-eqz v7, :cond_6

    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->startAndFadeIn()V

    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/htc/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z

    goto/16 :goto_2

    :cond_17
    const-string v7, "bindplugin"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const-string v7, "[MediaPlaybackService]"

    const-string v8, "onStartCommand CMDBINDPLUGIN"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/htc/music/MediaPlaybackService;->bindPluginService(Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 6

    const/4 v5, 0x1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mServiceInUse:I

    if-gtz v2, :cond_1

    const-string v2, "[MediaPlaybackService]"

    const-string v3, "incorrect service refer count, try to recover it"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v5

    :cond_1
    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mServiceInUse:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/htc/music/MediaPlaybackService;->mServiceInUse:I

    const-string v2, "[MediaPlaybackService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MediaPlayback is onUnbind: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ref count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/music/MediaPlaybackService;->mServiceInUse:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mServiceInUse:I

    if-gtz v2, :cond_0

    invoke-direct {p0, v5}, Lcom/htc/music/MediaPlaybackService;->saveQueue(Z)V

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->isPlaying()Z

    move-result v2

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/htc/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z

    if-eqz v2, :cond_3

    :cond_2
    const-string v2, "[MediaPlaybackService]"

    const-string v3, "onUnbind isPlaying() || mResumeAfterCall"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-gtz v2, :cond_4

    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const-wide/32 v3, 0xea60

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    const-string v2, "[MediaPlaybackService]"

    const-string v3, "onUnbind mPlayListLen > 0"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0, v5}, Lcom/htc/music/MediaPlaybackService;->stopForeground(Z)V

    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mServiceStartId:I

    invoke-virtual {p0, v2}, Lcom/htc/music/MediaPlaybackService;->stopSelf(I)V

    const-string v2, "[MediaPlaybackService]"

    const-string v3, "onUnbind finished"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public open(Ljava/lang/String;Z)V
    .locals 12

    const/4 v11, 0x1

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    monitor-exit p0

    :goto_0
    return-void

    :cond_0
    const/4 v9, 0x0

    if-eqz p2, :cond_3

    new-instance v0, Lcom/htc/music/NpCategory;

    const/16 v2, 0x15

    invoke-direct {v0, v2}, Lcom/htc/music/NpCategory;-><init>(S)V

    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->setCategory(Lcom/htc/music/NpCategory;)V

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    const/4 v2, 0x1

    #calls: Lcom/htc/music/MediaPlaybackService$LocalPlayer;->stop(Z)V
    invoke-static {v0, v2}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->access$4800(Lcom/htc/music/MediaPlaybackService$LocalPlayer;Z)V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mIsSystemReady:Z

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->ensurePlayListCapacity(I)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->ensureAlbumListCapacity(I)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->ensureShrinkAlbumListCapacity(I)V

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mShrinkAlbumList:[I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleShrinkAlbumList:[I

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mShrinkAlbumList:[I

    :cond_2
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumList:[I

    const/4 v2, 0x0

    const/4 v5, -0x1

    aput v5, v0, v2

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mShrinkAlbumList:[I

    const/4 v2, 0x0

    const/4 v5, -0x1

    aput v5, v0, v2

    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->mShrinkAlbumListLen:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleShrinkAlbumListLen:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleShrinkAlbumListLen:I

    :cond_3
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_5

    const/4 v7, 0x0

    const-string v0, "content://media/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    :try_start_1
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mCursorCols:[Ljava/lang/String;

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_10

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    const/4 v7, 0x0

    :cond_4
    :goto_2
    iput-object v7, p0, Lcom/htc/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_5
    :goto_3
    :try_start_2
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    const-string v5, "_data"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/htc/music/MediaPlaybackService;->wasDrmContent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/music/MediaPlaybackService;->getDrmPlaybackUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v9

    move-object p1, v8

    :cond_6
    :goto_4
    iput-object p1, p0, Lcom/htc/music/MediaPlaybackService;->mFileToPlay:Ljava/lang/String;

    if-eqz v9, :cond_14

    const-string v0, "[MediaPlaybackService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "drmFileToPlay= "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v0, v9}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->setDataSource(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mDrmConsumed:Z

    :goto_5
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_18

    const/16 v10, 0xa

    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    const/16 v2, 0xa

    if-ge v0, v2, :cond_7

    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-le v0, v11, :cond_7

    iget v10, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    :cond_7
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mOpenFailedCounter:I

    if-lt v0, v10, :cond_16

    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-le v0, v11, :cond_16

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    const/4 v2, 0x1

    #calls: Lcom/htc/music/MediaPlaybackService$LocalPlayer;->stop(Z)V
    invoke-static {v0, v2}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->access$4800(Lcom/htc/music/MediaPlaybackService$LocalPlayer;Z)V

    :cond_8
    :goto_6
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mOpenFailedCounter:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/htc/music/MediaPlaybackService;->mOpenFailedCounter:I

    if-ge v0, v10, :cond_9

    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-le v0, v11, :cond_9

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/music/MediaPlaybackService;->next(Z)V

    :cond_9
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mOpenFailedCounter:I

    if-le v0, v10, :cond_a

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->mOpenFailedCounter:I

    :cond_a
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_c

    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mOpenFailedCounter:I

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mQuietMode:Z

    if-nez v0, :cond_c

    if-nez v9, :cond_b

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->hasValidRights()Z

    move-result v0

    if-nez v0, :cond_17

    :cond_b
    const v0, 0x7f07008b

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/htc/music/MediaPlaybackService;->showToast(II)V

    :cond_c
    :goto_7
    monitor-exit p0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_d
    :try_start_3
    const-string v0, "/sdcard/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v3, "_data=? AND (is_music>=1 OR is_ringtone>=1)"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v2, "/sdcard"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v2, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v0

    goto/16 :goto_1

    :cond_e
    invoke-virtual {p0, p1}, Lcom/htc/music/MediaPlaybackService;->wasDrmContent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    :goto_8
    const-string v3, "_data=? AND (is_music>=1 OR is_ringtone>=1)"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    goto/16 :goto_1

    :cond_f
    invoke-static {p1}, Landroid/provider/MediaStore$Audio$Media;->getContentUriForPath(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v1

    goto :goto_8

    :cond_10
    :try_start_4
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->ensurePlayListCapacity(I)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-interface {v7, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    aput v5, v0, v2

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    const/4 v6, -0x1

    if-eqz v7, :cond_11

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_11

    const-string v0, "album_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    :cond_11
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->ensureAlbumListCapacity(I)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumList:[I

    const/4 v2, 0x0

    aput v6, v0, v2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->ensureShrinkAlbumListCapacity(I)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->mShrinkAlbumListLen:I

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mShrinkAlbumList:[I

    const/4 v2, 0x0

    aput v6, v0, v2

    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleShrinkAlbumListLen:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleShrinkAlbumListLen:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v0

    goto/16 :goto_3

    :cond_12
    :try_start_5
    invoke-virtual {p0, p1}, Lcom/htc/music/MediaPlaybackService;->wasDrmContent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "[MediaPlaybackService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "open, wasDrmContent, path: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", reset playlist length"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/music/MediaPlaybackService;->getDrmPlaybackUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v9

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    goto/16 :goto_4

    :cond_13
    const-string v0, "[MediaPlaybackService]"

    const-string v2, "drm setDataSource fail, because mPlayer = null."

    invoke-static {v0, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_14
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mFileToPlay:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->setDataSource(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_15
    const-string v0, "[MediaPlaybackService]"

    const-string v2, "setDataSource fail, because mPlayer = null."

    invoke-static {v0, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_16
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    const/4 v2, 0x0

    #calls: Lcom/htc/music/MediaPlaybackService$LocalPlayer;->stop(Z)V
    invoke-static {v0, v2}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->access$4800(Lcom/htc/music/MediaPlaybackService$LocalPlayer;Z)V

    goto/16 :goto_6

    :cond_17
    const v0, 0x7f07005d

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/htc/music/MediaPlaybackService;->showToast(II)V

    goto/16 :goto_7

    :cond_18
    if-nez v9, :cond_c

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->mOpenFailedCounter:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_7
.end method

.method public open([II)V
    .locals 7

    const/4 v6, 0x1

    monitor-enter p0

    :try_start_0
    iget v4, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    iput v4, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getAudioId()I

    move-result v3

    array-length v1, p1

    const/4 v2, 0x1

    iget v4, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-ne v4, v1, :cond_1

    const/4 v2, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget v4, p1, v0

    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    aget v5, v5, v0

    if-eq v4, v5, :cond_5

    const/4 v2, 0x1

    :cond_1
    if-eqz v2, :cond_3

    iget v4, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    if-ne v4, v6, :cond_6

    if-gez p2, :cond_2

    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mRand:Lcom/htc/music/MediaPlaybackService$Shuffler;

    invoke-virtual {v4, v1}, Lcom/htc/music/MediaPlaybackService$Shuffler;->nextInt(I)I

    move-result p2

    :cond_2
    invoke-direct {p0, v1, p2}, Lcom/htc/music/MediaPlaybackService;->setShuffleSeq(II)V

    const/4 p2, 0x0

    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleAlbumList:[I

    iget v5, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    invoke-direct {p0, v4, v5}, Lcom/htc/music/MediaPlaybackService;->setShuffleAlbumList([II)V

    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleAlbumList:[I

    iget v5, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    invoke-direct {p0, v4, v5}, Lcom/htc/music/MediaPlaybackService;->shrinkShuffleAlbumList([II)V

    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleAlbumList:[I

    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumList:[I

    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleShrinkAlbumList:[I

    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mShrinkAlbumList:[I

    iget v4, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleShrinkAlbumListLen:I

    iput v4, p0, Lcom/htc/music/MediaPlaybackService;->mShrinkAlbumListLen:I

    :goto_1
    const/4 v4, -0x1

    invoke-direct {p0, p1, v4}, Lcom/htc/music/MediaPlaybackService;->addToPlayList([II)V

    const-string v4, "com.htc.music.queuechanged"

    invoke-direct {p0, v4}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    :cond_3
    if-ltz p2, :cond_7

    iput p2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    :goto_2
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumList:[I

    iget v5, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    invoke-direct {p0, v4, v5}, Lcom/htc/music/MediaPlaybackService;->getAlbumPos([II)I

    move-result v4

    iput v4, p0, Lcom/htc/music/MediaPlaybackService;->mLastAlbumPos:I

    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->clear()V

    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->saveBookmarkIfNeeded()V

    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->openCurrent()V

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getAudioId()I

    move-result v4

    if-eq v3, v4, :cond_4

    const-string v4, "com.htc.music.metachanged"

    invoke-direct {p0, v4}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    :cond_4
    monitor-exit p0

    return-void

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleAlbumList:[I

    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumList:[I

    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleShrinkAlbumList:[I

    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mShrinkAlbumList:[I

    iget v4, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleShrinkAlbumListLen:I

    iput v4, p0, Lcom/htc/music/MediaPlaybackService;->mShrinkAlbumListLen:I

    goto :goto_1

    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :cond_7
    :try_start_1
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mRand:Lcom/htc/music/MediaPlaybackService$Shuffler;

    iget v5, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    invoke-virtual {v4, v5}, Lcom/htc/music/MediaPlaybackService$Shuffler;->nextInt(I)I

    move-result v4

    iput v4, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method public openAsync(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    monitor-exit p0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->ensurePlayListCapacity(I)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->ensureAlbumListCapacity(I)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->ensureShrinkAlbumListCapacity(I)V

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mShrinkAlbumList:[I

    const/4 v1, 0x0

    const/4 v2, -0x1

    aput v2, v0, v1

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->mShrinkAlbumListLen:I

    iput-object p1, p0, Lcom/htc/music/MediaPlaybackService;->mFileToPlay:Ljava/lang/String;

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    :cond_1
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mFileToPlay:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->setDataSourceAsync(Ljava/lang/String;)V

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public pause()V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    const-string v1, "[MediaPlaybackService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pause, isPluginMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->removeMessages(I)V

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->sendEmptyMessage(I)Z

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    #calls: Lcom/htc/music/MediaPlaybackService$LocalPlayer;->pause()V
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->access$4200(Lcom/htc/music/MediaPlaybackService$LocalPlayer;)V

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->printATSPauseMusictoStopLog()V

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public play()V
    .locals 5

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/music/MediaPlaybackService;->mFFToEndIsPlaying:Z

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mAudioManager:Landroid/media/AudioManager;

    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/htc/music/MediaButtonIntentReceiver;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    invoke-virtual {v0, v4}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    invoke-virtual {v0, v4}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->sendEmptyMessage(I)Z

    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->pauseOtherPlayer()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    #calls: Lcom/htc/music/MediaPlaybackService$LocalPlayer;->play()V
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->access$5400(Lcom/htc/music/MediaPlaybackService$LocalPlayer;)V

    goto :goto_0
.end method

.method public playAlbum(I)I
    .locals 5

    const/4 v4, 0x1

    const/4 v1, 0x0

    iget v3, p0, Lcom/htc/music/MediaPlaybackService;->mShrinkAlbumListLen:I

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/htc/music/MediaPlaybackService;->mShrinkAlbumListLen:I

    if-lt p1, v3, :cond_1

    :cond_0
    const-string v3, "[MediaPlaybackService]"

    const-string v4, "Something bad happened"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_1
    monitor-enter p0

    :try_start_0
    iget v3, p0, Lcom/htc/music/MediaPlaybackService;->mShrinkAlbumListLen:I

    if-ne v3, v4, :cond_5

    iput p1, p0, Lcom/htc/music/MediaPlaybackService;->mLastAlbumPos:I

    const/4 v3, 0x0

    iput v3, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeats(Landroid/content/Context;)Z

    move-result v3

    const/4 v3, 0x1

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/htc/music/MediaPlaybackService;->m_bUpdateBeatsLogo:Z

    :cond_2
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->openCurrent()V

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeats(Landroid/content/Context;)Z

    move-result v3

    const/4 v3, 0x1

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/htc/music/MediaPlaybackService;->m_bUpdateBeatsLogo:Z

    :cond_3
    iget-boolean v3, p0, Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->play()V

    :cond_4
    const-string v3, "com.htc.music.metachanged"

    invoke-direct {p0, v3}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_5
    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_1
    :try_start_1
    iget v3, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_6

    if-ne v0, p1, :cond_a

    :cond_6
    iput p1, p0, Lcom/htc/music/MediaPlaybackService;->mLastAlbumPos:I

    iput v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeats(Landroid/content/Context;)Z

    move-result v3

    const/4 v3, 0x1

    if-eqz v3, :cond_7

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/htc/music/MediaPlaybackService;->m_bUpdateBeatsLogo:Z

    :cond_7
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->openCurrent()V

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeats(Landroid/content/Context;)Z

    move-result v3

    const/4 v3, 0x1

    if-eqz v3, :cond_8

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/htc/music/MediaPlaybackService;->m_bUpdateBeatsLogo:Z

    :cond_8
    iget-boolean v3, p0, Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z

    if-eqz v3, :cond_9

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->play()V

    :cond_9
    const-string v3, "com.htc.music.metachanged"

    invoke-direct {p0, v3}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    monitor-exit p0

    goto :goto_0

    :cond_a
    add-int/lit8 v2, v1, 0x1

    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumList:[I

    aget v3, v3, v1

    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumList:[I

    aget v4, v4, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq v3, v4, :cond_b

    add-int/lit8 v0, v0, 0x1

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public pluginAlbumArtPathByShuffleUpdated(ILjava/lang/String;)V
    .locals 2

    if-ltz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "com.htc.music.metachanged"

    invoke-virtual {p0, v1}, Lcom/htc/music/MediaPlaybackService;->pluginNotifyChange(Ljava/lang/String;)V

    const-string v1, "com.htc.music.changeart"

    invoke-virtual {p0, v1}, Lcom/htc/music/MediaPlaybackService;->pluginNotifyChange(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.music.artpathshuffleupdated"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "position"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "path"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/htc/music/MediaPlaybackService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public pluginAlbumArtPathUpdated(ILjava/lang/String;)V
    .locals 2

    if-ltz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "com.htc.music.metachanged"

    invoke-virtual {p0, v1}, Lcom/htc/music/MediaPlaybackService;->pluginNotifyChange(Ljava/lang/String;)V

    const-string v1, "com.htc.music.changeart"

    invoke-virtual {p0, v1}, Lcom/htc/music/MediaPlaybackService;->pluginNotifyChange(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.music.artpathupdated"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "position"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "path"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/htc/music/MediaPlaybackService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public pluginNotifyChange(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x2

    if-eqz p1, :cond_2

    iget-boolean v2, p0, Lcom/htc/music/MediaPlaybackService;->mFFToEndIsPlaying:Z

    if-nez v2, :cond_2

    const-string v2, "com.htc.music.playstatechanged"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "com.htc.music.playbackcomplete"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "com.htc.music.metachanged"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->getPluginUpdateNotification()Landroid/app/Notification;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mUiHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    :cond_2
    return-void
.end method

.method public pluginNowplayingQueueUpdated([Landroid/content/ContentValues;II)V
    .locals 2

    if-eqz p1, :cond_0

    if-ltz p2, :cond_0

    if-ltz p3, :cond_0

    if-ge p3, p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.music.nowplayingqueueupdated"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "start"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "end"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "values"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/htc/music/MediaPlaybackService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public pluginTrackDetailsUpdated(ILandroid/content/ContentValues;)V
    .locals 2

    if-ltz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.music.trackdetailsupdated"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "position"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "values"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/htc/music/MediaPlaybackService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public position()J
    .locals 2

    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->position()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    #calls: Lcom/htc/music/MediaPlaybackService$LocalPlayer;->position()J
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->access$5800(Lcom/htc/music/MediaPlaybackService$LocalPlayer;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public prev()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/music/MediaPlaybackService;->prev(Z)V

    return-void
.end method

.method public prev(Z)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->sendEmptyMessage(I)Z

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    #calls: Lcom/htc/music/MediaPlaybackService$LocalPlayer;->prev(Z)V
    invoke-static {v0, p1}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->access$5500(Lcom/htc/music/MediaPlaybackService$LocalPlayer;Z)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public prevAlbum()V
    .locals 3

    const/4 v2, 0x1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mAnimation:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mTest:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mActivityIsLive:Z

    if-eqz v0, :cond_0

    const-string v0, "[MediaPlaybackService]"

    const-string v1, "===========skip one prev"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mAnimation:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mActivityIsLive:Z

    if-eqz v0, :cond_1

    const-string v0, "com.htc.music.rotatequickly"

    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    :cond_1
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumList:[I

    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    invoke-direct {p0, v0, v1}, Lcom/htc/music/MediaPlaybackService;->getPrevAlbumPos([II)I

    move-result v0

    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    :goto_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->stop(Z)V

    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mActivityIsLive:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mTest:Z

    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mShrinkAlbumListLen:I

    if-eq v0, v2, :cond_5

    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_4

    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mLastAlbumPos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->mLastAlbumPos:I

    :goto_2
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mShrinkAlbumListLen:I

    if-eq v0, v2, :cond_2

    const-string v0, "com.htc.music.rotateleft"

    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    :cond_2
    :goto_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mIsWaitAnimation:Z

    :goto_4
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :try_start_1
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    goto :goto_1

    :cond_4
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->mLastAlbumPos:I

    goto :goto_2

    :cond_5
    const-string v0, "com.htc.music.rotatecircle_previous"

    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->openCurrent()V

    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->play()V

    :cond_7
    const-string v0, "com.htc.music.metachanged"

    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4
.end method

.method printATSPauseMusictoStopLog()V
    .locals 0

    return-void
.end method

.method printATSPlayMusicLog()V
    .locals 0

    return-void
.end method

.method printATSStopMusicByPhoneCallLog()V
    .locals 0

    return-void
.end method

.method public registerExternalStorageListener()V
    .locals 2

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    new-instance v1, Lcom/htc/music/MediaPlaybackService$8;

    invoke-direct {v1, p0}, Lcom/htc/music/MediaPlaybackService$8;-><init>(Lcom/htc/music/MediaPlaybackService;)V

    iput-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/htc/music/MediaPlaybackService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method public reloadQueue()V
    .locals 2

    const-string v0, "[MediaPlaybackService]"

    const-string v1, "reloadQueue +"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mIsReloadingQueue:Z

    if-eqz v0, :cond_0

    const-string v0, "[MediaPlaybackService]"

    const-string v1, "reloadQueue: mIsReloadingQueue = true"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    monitor-enter p0

    :try_start_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "reloadQueue -"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mIsReloadingQueue:Z

    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->reloadQueueImpl()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mIsReloadingQueue:Z

    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public removeQueueTracks([I)I
    .locals 5

    const/4 v4, 0x0

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/util/Arrays;->sort([I)V

    monitor-enter p0

    :try_start_0
    array-length v2, p1

    add-int/lit8 v0, v2, -0x1

    :goto_0
    if-ltz v0, :cond_0

    aget v2, p1, v0

    aget v3, p1, v0

    invoke-direct {p0, v2, v3}, Lcom/htc/music/MediaPlaybackService;->removeTracksInternal(II)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-gtz v2, :cond_1

    iput-boolean v4, p0, Lcom/htc/music/MediaPlaybackService;->mIsSystemReady:Z

    :cond_1
    if-lez v1, :cond_3

    const-string v2, "com.htc.music.queuechanged"

    invoke-direct {p0, v2}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/htc/music/MediaPlaybackService;->mSdCardRemoved:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/htc/music/MediaPlaybackService;->mRefreshPlayList:Z

    if-nez v2, :cond_2

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/music/MediaPlaybackService;->mQueueModified:Z

    :cond_2
    iput-boolean v4, p0, Lcom/htc/music/MediaPlaybackService;->mRefreshPlayList:Z

    :cond_3
    return v1

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public removeTrack(I)I
    .locals 3

    const/4 v1, 0x0

    monitor-enter p0

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_0

    invoke-direct {p0, v0, v0}, Lcom/htc/music/MediaPlaybackService;->removeTracksInternal(II)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, -0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v1, :cond_2

    const-string v2, "com.htc.music.queuechanged"

    invoke-direct {p0, v2}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    :cond_2
    return v1

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public removeTracks(II)I
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/htc/music/MediaPlaybackService;->removeTracksInternal(II)I

    move-result v0

    if-lez v0, :cond_0

    const-string v1, "com.htc.music.queuechanged"

    invoke-direct {p0, v1}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    :cond_0
    return v0
.end method

.method public removeTracksReduceBroadcast([I)I
    .locals 7

    const/4 v3, 0x0

    const/4 v0, 0x0

    array-length v4, p1

    invoke-static {p1}, Ljava/util/Arrays;->sort([I)V

    monitor-enter p0

    add-int/lit8 v1, v4, -0x1

    :goto_0
    if-ltz v1, :cond_5

    const/4 v2, 0x0

    :goto_1
    :try_start_0
    iget v5, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-ge v2, v5, :cond_1

    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    aget v5, v5, v2

    aget v6, p1, v1

    if-ne v5, v6, :cond_0

    invoke-direct {p0, v2, v2}, Lcom/htc/music/MediaPlaybackService;->removeTracksInternal(II)I

    move-result v5

    add-int/2addr v3, v5

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    if-lez v3, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    const/16 v5, 0x32

    if-ne v0, v5, :cond_3

    const-string v5, "com.htc.music.queuechanged"

    invoke-direct {p0, v5}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_3
    add-int/lit8 v5, v4, -0x1

    if-ne v1, v5, :cond_4

    const-string v5, "com.htc.music.queuechanged"

    invoke-direct {p0, v5}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_5
    monitor-exit p0

    return v3

    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public seek(J)J
    .locals 4

    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->checkIfStopFFRWRepeat()V

    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v2}, Lcom/htc/music/MusicPluginManager;->duration()J

    move-result-wide v0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    move-wide p1, v0

    :cond_0
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v2, p1, p2}, Lcom/htc/music/MusicPluginManager;->seek(J)J

    move-result-wide v2

    :goto_0
    return-wide v2

    :cond_1
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    #calls: Lcom/htc/music/MediaPlaybackService$LocalPlayer;->seek(J)J
    invoke-static {v2, p1, p2}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->access$4300(Lcom/htc/music/MediaPlaybackService$LocalPlayer;J)J

    move-result-wide v2

    goto :goto_0
.end method

.method public setAlbumQueue([I)V
    .locals 1

    monitor-enter p0

    const/4 v0, -0x1

    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/htc/music/MediaPlaybackService;->addToAlbumList([II)V

    array-length v0, p1

    invoke-direct {p0, p1, v0}, Lcom/htc/music/MediaPlaybackService;->shrinkAlbumList([II)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mSdCardRemoved:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mIsSystemReady:Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setPlaylist([IZ)V
    .locals 9

    const/4 v8, 0x1

    monitor-enter p0

    :try_start_0
    iget v6, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    const/4 v6, 0x1

    iput v6, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getAudioId()I

    move-result v4

    array-length v2, p1

    const/4 v3, 0x1

    if-nez p2, :cond_1

    iget v6, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-ne v6, v2, :cond_1

    const/4 v3, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget v6, p1, v0

    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    aget v7, v7, v0

    if-eq v6, v7, :cond_8

    const/4 v3, 0x1

    :cond_1
    if-eqz v3, :cond_2

    iget v6, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    if-ne v6, v8, :cond_9

    iget v6, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    invoke-direct {p0, v2, v6}, Lcom/htc/music/MediaPlaybackService;->setShuffleSeq(II)V

    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleAlbumList:[I

    iget v7, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    invoke-direct {p0, v6, v7}, Lcom/htc/music/MediaPlaybackService;->setShuffleAlbumList([II)V

    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleAlbumList:[I

    iget v7, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    invoke-direct {p0, v6, v7}, Lcom/htc/music/MediaPlaybackService;->shrinkShuffleAlbumList([II)V

    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleAlbumList:[I

    iput-object v6, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumList:[I

    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleShrinkAlbumList:[I

    iput-object v6, p0, Lcom/htc/music/MediaPlaybackService;->mShrinkAlbumList:[I

    iget v6, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleShrinkAlbumListLen:I

    iput v6, p0, Lcom/htc/music/MediaPlaybackService;->mShrinkAlbumListLen:I

    :goto_1
    const/4 v6, -0x1

    invoke-direct {p0, p1, v6}, Lcom/htc/music/MediaPlaybackService;->addToPlayList([II)V

    const-string v6, "com.htc.music.queuechanged"

    invoke-direct {p0, v6}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    :cond_2
    const/4 v5, 0x0

    const/4 v0, 0x0

    :goto_2
    iget v6, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-ge v0, v6, :cond_3

    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    aget v6, v6, v0

    if-ne v6, v4, :cond_a

    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    const/4 v5, 0x1

    :cond_3
    if-nez v5, :cond_5

    const-string v6, "[MediaPlaybackService]"

    const-string v7, "setPlaylist: cannot find the same audio id. Some thing must be wrong."

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    iput v6, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/htc/music/MediaPlaybackService;->mQuietMode:Z

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->isPlaying()Z

    move-result v1

    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->openCurrent()V

    if-eqz v1, :cond_4

    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v6}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->play()V

    :cond_4
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/htc/music/MediaPlaybackService;->mQuietMode:Z

    :cond_5
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumList:[I

    iget v7, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    invoke-direct {p0, v6, v7}, Lcom/htc/music/MediaPlaybackService;->getAlbumPos([II)I

    move-result v6

    iput v6, p0, Lcom/htc/music/MediaPlaybackService;->mLastAlbumPos:I

    const-string v6, "[MediaPlaybackService]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mLastAlbumPos :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/htc/music/MediaPlaybackService;->mLastAlbumPos:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->clear()V

    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->saveBookmarkIfNeeded()V

    if-nez v5, :cond_6

    const-string v6, "com.htc.music.metachanged"

    invoke-direct {p0, v6}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    :cond_6
    iget-boolean v6, p0, Lcom/htc/music/MediaPlaybackService;->mActivityIsLive:Z

    if-eqz v6, :cond_7

    const-string v6, "com.htc.music.refresh"

    invoke-direct {p0, v6}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    :cond_7
    monitor-exit p0

    return-void

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_9
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleAlbumList:[I

    iput-object v6, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumList:[I

    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleShrinkAlbumList:[I

    iput-object v6, p0, Lcom/htc/music/MediaPlaybackService;->mShrinkAlbumList:[I

    iget v6, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleShrinkAlbumListLen:I

    iput v6, p0, Lcom/htc/music/MediaPlaybackService;->mShrinkAlbumListLen:I

    goto/16 :goto_1

    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2
.end method

.method public setQueuePosition(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0, p1}, Lcom/htc/music/MusicPluginManager;->setQueuePosition(I)V

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->stop(Z)V

    iput p1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->openCurrent()V

    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->play()V

    :cond_1
    const-string v0, "com.htc.music.metachanged"

    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setRepeatMode(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0, p1}, Lcom/htc/music/MusicPluginManager;->setRepeatMode(I)V

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    iput p1, p0, Lcom/htc/music/MediaPlaybackService;->mRepeatMode:I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->saveQueue(Z)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setShuffleMode(I)V
    .locals 4

    const/4 v3, 0x1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v1, p1}, Lcom/htc/music/MusicPluginManager;->setShuffleMode(I)V

    :cond_0
    :goto_0
    monitor-exit p0

    :goto_1
    return-void

    :cond_1
    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    if-ne v1, p1, :cond_2

    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-lez v1, :cond_2

    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :try_start_1
    iput p1, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->makeAutoShuffleList()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "[MediaPlaybackService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setShuffleMode, shufflemode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", makeAutoShuffleList, reset playlist lenght."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->doAutoShuffleUpdate()V

    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->openCurrent()V

    iget-boolean v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-lez v1, :cond_3

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->play()V

    :cond_3
    const-string v1, "com.htc.music.metachanged"

    invoke-direct {p0, v1}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    monitor-exit p0

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    :cond_5
    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    if-ne v1, v3, :cond_6

    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    new-array v0, v1, [I

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    invoke-static {v1, v0, v2}, Lcom/htc/music/util/MusicUtils;->arrayDeepClone([I[II)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/htc/music/MediaPlaybackService;->setPlaylist([IZ)V

    goto :goto_0

    :cond_6
    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    iput-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleAlbumList:[I

    iput-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumList:[I

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleShrinkAlbumList:[I

    iput-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mShrinkAlbumList:[I

    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleShrinkAlbumListLen:I

    iput v1, p0, Lcom/htc/music/MediaPlaybackService;->mShrinkAlbumListLen:I

    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    invoke-virtual {p0, v1}, Lcom/htc/music/MediaPlaybackService;->getPositionByShufflePosition(I)I

    move-result v1

    iput v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumList:[I

    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    invoke-direct {p0, v1, v2}, Lcom/htc/music/MediaPlaybackService;->getAlbumPos([II)I

    move-result v1

    iput v1, p0, Lcom/htc/music/MediaPlaybackService;->mLastAlbumPos:I

    const-string v1, "com.htc.music.queuechanged"

    invoke-direct {p0, v1}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    const-string v1, "com.htc.music.metachanged"

    invoke-direct {p0, v1}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public showPluginToast(Ljava/lang/String;I)V
    .locals 4

    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mUiHandler:Landroid/os/Handler;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "message"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "duration"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method shutdownServcieDelay()V
    .locals 4

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public startAnimation()V
    .locals 2

    const-string v0, "[MediaPlaybackService]"

    const-string v1, "startAnimation"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mAnimation:Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stop()V
    .locals 2

    const-string v0, "[MediaPlaybackService]"

    const-string v1, "!!!! @@@@ stop()"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->stop(Z)V

    return-void
.end method

.method public syncNowPlayingQueue([I)V
    .locals 5

    monitor-enter p0

    :try_start_0
    const-string v2, "[MediaPlaybackService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "syncNowPlayingQueue :: mPlayPos "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mPlayListLen "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    monitor-exit p0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    iget v3, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    aget v1, v2, v3

    const-string v2, "[MediaPlaybackService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tmp : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    array-length v2, p1

    invoke-direct {p0, v2}, Lcom/htc/music/MediaPlaybackService;->ensurePlayListCapacity(I)V

    const/4 v0, 0x0

    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    aget v3, p1, v0

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    iget v3, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    invoke-static {v2, v1, v3}, Lcom/htc/music/MediaPlaybackService;->Search([III)I

    move-result v2

    iput v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumList:[I

    iget v3, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    invoke-direct {p0, v2, v3}, Lcom/htc/music/MediaPlaybackService;->getAlbumPos([II)I

    move-result v2

    iput v2, p0, Lcom/htc/music/MediaPlaybackService;->mLastAlbumPos:I

    const-string v2, "com.htc.music.queuechanged"

    invoke-direct {p0, v2}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/htc/music/MediaPlaybackService;->mSdCardRemoved:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/music/MediaPlaybackService;->mQueueModified:Z

    :cond_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public updateBeatsEffectSetting(Z)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {p0}, Lcom/htc/music/util/SoundEffectHelper;->IsBeatsCanBeEnable(Landroid/content/Context;)Z

    move-result v4

    const/4 v4, 0x1

    if-eqz v4, :cond_4

    invoke-static {p0}, Lcom/htc/music/util/SoundEffectHelper;->getBeatsLastState(Landroid/content/Context;)Z

    move-result v0

    const-string v4, "[MediaPlaybackService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateBeatsEffectSetting, bBeatsOn: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", isPlaying(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->isPlaying()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->isPlaying()Z

    move-result v4

    invoke-static {v2, v0, v4}, Lcom/htc/music/util/SoundEffectHelper;->setBeatsNotificationBar(Landroid/content/Context;ZZ)V

    :goto_0
    sget v3, Lcom/htc/music/util/SoundEffectHelper;->BEATS_Original:I

    if-eqz v0, :cond_6

    sget v3, Lcom/htc/music/util/SoundEffectHelper;->BEATS_Beats:I

    :cond_0
    :goto_1
    const-string v4, "[MediaPlaybackService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateBeatsEffectSetting, set styleIndex :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {v2}, Lcom/htc/music/util/SoundEffectHelper;->isBeatsBTWork(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "[MediaPlaybackService]"

    const-string v5, "updateBeatsEffectSetting, beatsBT plug, bSaveAudioStyle = false"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_1
    if-eqz v1, :cond_2

    invoke-static {v3, v2}, Lcom/htc/music/util/SoundEffectHelper;->setAudioStyleByIndex(ILandroid/content/Context;)V

    :cond_2
    if-eqz p1, :cond_b

    invoke-static {v2, v3}, Lcom/htc/music/util/SoundEffectHelper;->getSoundEffectStyleByIndex(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getAudioSessionId()I

    move-result v5

    invoke-static {v2, v4, v5}, Lcom/htc/music/util/SoundEffectHelper;->setAudioEffect(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_3
    :goto_2
    return-void

    :cond_4
    invoke-static {v2}, Lcom/htc/music/util/SoundEffectHelper;->isBeatsBTWork(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "[MediaPlaybackService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateBeatsEffectSetting, beatsBT plug, isPlaying() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->isPlaying()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->isPlaying()Z

    move-result v4

    invoke-static {v2, v7, v4, v7}, Lcom/htc/music/util/SoundEffectHelper;->setBeatsNotificationBar(Landroid/content/Context;ZZI)V

    goto :goto_0

    :cond_5
    const-string v4, "[MediaPlaybackService]"

    const-string v5, "updateBeatsEffectSetting, Beats can\'t be enable, setAudioEffect : Original"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, v6, v6}, Lcom/htc/music/util/SoundEffectHelper;->setBeatsNotificationBar(Landroid/content/Context;ZZ)V

    goto :goto_0

    :cond_6
    invoke-static {}, Lcom/htc/music/util/HeadSetHelper;->isWiredHeadsetPlugged()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-static {v2}, Lcom/htc/music/util/HeadSetHelper;->isBeatsHeadset(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_7

    sget v3, Lcom/htc/music/util/SoundEffectHelper;->BEATS_Original:I

    goto :goto_1

    :cond_7
    sget v3, Lcom/htc/music/util/SoundEffectHelper;->BEATS_SRS:I

    goto :goto_1

    :cond_8
    invoke-static {p0}, Lcom/htc/music/util/HeadSetHelper;->isBTHeadsetPlugged(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_9

    sget v3, Lcom/htc/music/util/SoundEffectHelper;->BEATS_SRS:I

    invoke-static {v2}, Lcom/htc/music/util/SoundEffectHelper;->isBeatsBTWork(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget v3, Lcom/htc/music/util/SoundEffectHelper;->BEATS_Original:I

    goto/16 :goto_1

    :cond_9
    invoke-static {}, Lcom/htc/music/util/HdmiPlugReceiver;->isHDMIConnected()Z

    move-result v4

    if-eqz v4, :cond_a

    sget v3, Lcom/htc/music/util/SoundEffectHelper;->BEATS_Original:I

    goto/16 :goto_1

    :cond_a
    sget v3, Lcom/htc/music/util/SoundEffectHelper;->BEATS_SRS:I

    goto/16 :goto_1

    :cond_b
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->isPlaying()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {v2, v3}, Lcom/htc/music/util/SoundEffectHelper;->getSoundEffectStyleByIndex(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getAudioSessionId()I

    move-result v5

    invoke-static {v2, v4, v5}, Lcom/htc/music/util/SoundEffectHelper;->setAudioEffect(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_2
.end method

.method wasDrmContent(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "content://drm/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public wiredHeadSetStatusChanged(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeats(Landroid/content/Context;)Z

    move-result v0

    const/4 v0, 0x1

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/htc/music/MediaPlaybackService;->updateBeatsEffectSetting(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

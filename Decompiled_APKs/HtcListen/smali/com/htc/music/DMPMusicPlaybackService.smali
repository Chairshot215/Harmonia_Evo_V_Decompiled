.class public Lcom/htc/music/DMPMusicPlaybackService;
.super Landroid/app/Service;
.source "DMPMusicPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/DMPMusicPlaybackService$DmpUiPlaybackServiceStub;,
        Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;,
        Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;,
        Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;,
        Lcom/htc/music/DMPMusicPlaybackService$DMPState;
    }
.end annotation


# static fields
.field private static final CLASS_NAME:Ljava/lang/String; = "com.htc.music.DMPMusicPlaybackService"

.field public static final CMDFORCEPLAY:Ljava/lang/String; = "forcePlay"

.field public static final CMDNAME:Ljava/lang/String; = "command"

.field public static final CMDREFRESH_PLAYLIST:Ljava/lang/String; = "com.htc.music.refreshplaylist"

.field private static final DLNA_ERROR_HANDLE:I = 0x4

.field private static final ERROR_ALREADY_CONNECTED:I = -0x3e8

.field private static final ERROR_BUFFER_TOO_SMALL:I = -0x3f1

.field private static final ERROR_CANNOT_CONNECT:I = -0x3eb

.field private static final ERROR_CONNECTION_LOST:I = -0x3ed

.field private static final ERROR_END_OF_STREAM:I = -0x3f3

.field private static final ERROR_IO:I = -0x3ec

.field private static final ERROR_MALFORMED:I = -0x3ef

.field private static final ERROR_NOT_CONNECTED:I = -0x3e9

.field private static final ERROR_OUT_OF_RANGE:I = -0x3f0

.field private static final ERROR_UNKNOWN_HOST:I = -0x3ea

.field private static final ERROR_UNSUPPORTED:I = -0x3f2

.field public static final EXTRA_KEY_CONTAINER:Ljava/lang/String; = "container"

.field public static final EXTRA_KEY_CONTENT:Ljava/lang/String; = "content"

.field public static final EXTRA_KEY_DIRECTION:Ljava/lang/String; = "direction"

.field public static final EXTRA_KEY_DMSFILEPATH:Ljava/lang/String; = "dmsFilePath"

.field public static final EXTRA_KEY_ENDIDX:Ljava/lang/String; = "endIdx"

.field public static final EXTRA_KEY_SERVER:Ljava/lang/String; = "server"

.field public static final EXTRA_KEY_STARTIDX:Ljava/lang/String; = "startIdx"

.field private static final IDLE_DELAY:I = 0xea60

.field private static final MEDIA_ERROR_BASE:I = -0x3e8

.field private static final MEDIA_ERROR_STATE:I = -0x26

.field private static final NOTIFY_UPPER:I = 0x5

.field public static final PLAYBACKSERVICE_STATUS:I = 0x2

.field private static final PLUGIN_META_CHANGED:Ljava/lang/String; = "com.htc.music.plugin.metachanged"

.field private static final PLUGIN_PLAYBACK_COMPLETE:Ljava/lang/String; = "com.htc.music.plugin.playbackcomplete"

.field private static final PLUGIN_PLAYSTATE_CHANGED:Ljava/lang/String; = "com.htc.music.plugin.statechanged"

.field private static final PLUGIN_QUEUE_CHANGED:Ljava/lang/String; = "com.htc.music.plugin.queuechanged"

.field private static final RELEASE_WAKELOCK:I = 0x2

.field public static final REPEAT_ALL:I = 0x2

.field public static final REPEAT_CURRENT:I = 0x1

.field public static final REPEAT_NONE:I = 0x0

.field private static final SERVER_DIED:I = 0x3

.field public static final SHUFFLE_AUTO:I = 0x2

.field public static final SHUFFLE_NONE:I = 0x0

.field public static final SHUFFLE_NORMAL:I = 0x1

.field private static final TAG:Ljava/lang/String; = "[DMPMusicPlaybackService]"

.field private static final TRACK_ENDED:I = 0x1


# instance fields
.field private final CV_CONTENT:Ljava/lang/String;

.field private final CV_POSITION:Ljava/lang/String;

.field private final CV_SERVER:Ljava/lang/String;

.field private final CV_SHUFFLE_MODE:Ljava/lang/String;

.field private final DLNA_CALLER_MUSIC:I

.field private final MAX_ERROR_RETRY_TIMES:I

.field private final MAX_SONGS_IN_PLAYLIST:I

.field private final MSG_CLEAR_ALBUMART_REQ_QUEUE:I

.field private final MSG_GET_NOW_PLAYING_QUEUE:I

.field private final MSG_HANDLE_ALBUMART:I

.field private final MSG_NEXT:I

.field private final MSG_PLAYER_ERROR_HANDLE:I

.field private final MSG_PREV:I

.field private final MSG_RELEASE_PLAYER_AND_QUIT:I

.field private final MSG_REQUEST_ALBUMART:I

.field private final MSG_SET_DATA_SOURCE:I

.field private final UPDATE_QUEUE_INTERVAL:I

.field private final hexdigits:[C

.field private mAlbumArtNameTable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAlbumSize:I

.field private mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field private final mBinder:Landroid/os/IBinder;

.field private mContainerID:Ljava/lang/String;

.field private mContentID:Ljava/lang/String;

.field private mCurrentState:Lcom/htc/music/DMPMusicPlaybackService$DMPState;

.field private mCursor:Landroid/database/Cursor;

.field private mCursorCols:[Ljava/lang/String;

.field private mDLNAConnection:Landroid/content/ServiceConnection;

.field private mDLNAContentItemDetails:Lcom/htc/music/DMPContentItemDetails;

.field private mDLNAPluginNotify:Lcom/htc/dlnainterface/IDLNAPluginNotify;

.field private mDLNAService:Lcom/htc/dlnainterface/IDLNAPluginService;

.field private mDelayedStopHandler:Landroid/os/Handler;

.field private mDirection:I

.field private mDmsFilePath:Ljava/lang/String;

.field private mEndIdx:J

.field private mIdToContentIdTable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIsAlbumArtGetting:Z

.field private mIsPlayPressed:Z

.field private mIsSupposedToBePlaying:Z

.field private mMatrix:Landroid/graphics/Matrix;

.field private mMediaplayerHandler:Landroid/os/Handler;

.field private mMuteByTransientLossOfFocusCanDuck:Z

.field private volatile mNonUIHandler:Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;

.field private volatile mNonUILooper:Landroid/os/Looper;

.field private mNotify:Lcom/htc/music/IPluginIPCNotify;

.field private mPaintDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

.field private mPausedByTransientLossOfFocus:Z

.field private mPlayList:[I

.field private mPlayListBak:[I

.field private mPlayListLen:I

.field private mPlayPos:I

.field private mPlayer:Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;

.field private mPlayerErrorCount:I

.field private mPreferences:Landroid/content/SharedPreferences;

.field private mQueryContentID:Ljava/lang/String;

.field private mQueryPosition:I

.field private mQueueToGetAlbumArtPath:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field

.field private mRepeatMode:I

.field private mServerID:Ljava/lang/String;

.field private mServiceInUse:I

.field private mServiceStartId:I

.field private mShuffleMode:I

.field private mShuffleSeq:[I

.field private final mSortOrder:Ljava/lang/String;

.field private mSquareAlbum:Landroid/graphics/Bitmap;

.field private mStartIdx:J

.field private mTimePointToNextOrPre:J

.field private mTimePointToUpdateQueue:J

.field private mTransCanvas:Landroid/graphics/Canvas;

.field private final mUiBinder:Landroid/os/IBinder;

.field private mUriPath:Ljava/lang/String;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .locals 7

    const/4 v6, 0x1

    const-wide/16 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/16 v0, 0x2710

    iput v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->UPDATE_QUEUE_INTERVAL:I

    const/16 v0, 0xc7

    iput v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->MAX_SONGS_IN_PLAYLIST:I

    iput v6, p0, Lcom/htc/music/DMPMusicPlaybackService;->DLNA_CALLER_MUSIC:I

    const-string v0, "server"

    iput-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->CV_SERVER:Ljava/lang/String;

    const-string v0, "content"

    iput-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->CV_CONTENT:Ljava/lang/String;

    const-string v0, "position"

    iput-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->CV_POSITION:Ljava/lang/String;

    const-string v0, "shuffle"

    iput-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->CV_SHUFFLE_MODE:Ljava/lang/String;

    const-string v0, "index_id COLLATE NOCASE ASC"

    iput-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mSortOrder:Ljava/lang/String;

    const/16 v0, 0xa

    iput v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->MAX_ERROR_RETRY_TIMES:I

    iput v2, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayerErrorCount:I

    iput-object v3, p0, Lcom/htc/music/DMPMusicPlaybackService;->mNotify:Lcom/htc/music/IPluginIPCNotify;

    new-instance v0, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;

    invoke-direct {v0, p0}, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;-><init>(Lcom/htc/music/DMPMusicPlaybackService;)V

    iput-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mBinder:Landroid/os/IBinder;

    new-instance v0, Lcom/htc/music/DMPMusicPlaybackService$DmpUiPlaybackServiceStub;

    invoke-direct {v0, p0}, Lcom/htc/music/DMPMusicPlaybackService$DmpUiPlaybackServiceStub;-><init>(Lcom/htc/music/DMPMusicPlaybackService;)V

    iput-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mUiBinder:Landroid/os/IBinder;

    iput-object v3, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayList:[I

    iput-object v3, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayListBak:[I

    iput-object v3, p0, Lcom/htc/music/DMPMusicPlaybackService;->mShuffleSeq:[I

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mAlbumArtNameTable:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mIdToContentIdTable:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mQueueToGetAlbumArtPath:Ljava/util/ArrayList;

    iput-boolean v2, p0, Lcom/htc/music/DMPMusicPlaybackService;->mIsAlbumArtGetting:Z

    iput v2, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayListLen:I

    iput v2, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayPos:I

    iput-object v3, p0, Lcom/htc/music/DMPMusicPlaybackService;->mCursor:Landroid/database/Cursor;

    iput v2, p0, Lcom/htc/music/DMPMusicPlaybackService;->mShuffleMode:I

    iput v2, p0, Lcom/htc/music/DMPMusicPlaybackService;->mRepeatMode:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mServiceStartId:I

    iput v2, p0, Lcom/htc/music/DMPMusicPlaybackService;->mServiceInUse:I

    iput-boolean v2, p0, Lcom/htc/music/DMPMusicPlaybackService;->mIsSupposedToBePlaying:Z

    iput-boolean v2, p0, Lcom/htc/music/DMPMusicPlaybackService;->mIsPlayPressed:Z

    new-instance v0, Lcom/htc/music/DMPContentItemDetails;

    invoke-direct {v0}, Lcom/htc/music/DMPContentItemDetails;-><init>()V

    iput-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mDLNAContentItemDetails:Lcom/htc/music/DMPContentItemDetails;

    iput-boolean v2, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPausedByTransientLossOfFocus:Z

    iput-boolean v2, p0, Lcom/htc/music/DMPMusicPlaybackService;->mMuteByTransientLossOfFocusCanDuck:Z

    new-instance v0, Lcom/htc/music/DMPMusicPlaybackService$1;

    invoke-direct {v0, p0}, Lcom/htc/music/DMPMusicPlaybackService$1;-><init>(Lcom/htc/music/DMPMusicPlaybackService;)V

    iput-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/16 v0, 0x2af9

    iput v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->MSG_PREV:I

    const/16 v0, 0x2afa

    iput v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->MSG_NEXT:I

    const/16 v0, 0x2afb

    iput v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->MSG_SET_DATA_SOURCE:I

    const/16 v0, 0x2afc

    iput v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->MSG_REQUEST_ALBUMART:I

    const/16 v0, 0x2afd

    iput v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->MSG_HANDLE_ALBUMART:I

    const/16 v0, 0x2afe

    iput v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->MSG_CLEAR_ALBUMART_REQ_QUEUE:I

    const/16 v0, 0x2aff

    iput v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->MSG_GET_NOW_PLAYING_QUEUE:I

    const/16 v0, 0x2b00

    iput v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->MSG_PLAYER_ERROR_HANDLE:I

    const/16 v0, 0x2b01

    iput v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->MSG_RELEASE_PLAYER_AND_QUIT:I

    iput-wide v4, p0, Lcom/htc/music/DMPMusicPlaybackService;->mTimePointToNextOrPre:J

    iput-wide v4, p0, Lcom/htc/music/DMPMusicPlaybackService;->mTimePointToUpdateQueue:J

    iput-wide v4, p0, Lcom/htc/music/DMPMusicPlaybackService;->mStartIdx:J

    iput-wide v4, p0, Lcom/htc/music/DMPMusicPlaybackService;->mEndIdx:J

    iput v2, p0, Lcom/htc/music/DMPMusicPlaybackService;->mDirection:I

    iput-object v3, p0, Lcom/htc/music/DMPMusicPlaybackService;->mServerID:Ljava/lang/String;

    iput-object v3, p0, Lcom/htc/music/DMPMusicPlaybackService;->mContainerID:Ljava/lang/String;

    iput-object v3, p0, Lcom/htc/music/DMPMusicPlaybackService;->mContentID:Ljava/lang/String;

    iput-object v3, p0, Lcom/htc/music/DMPMusicPlaybackService;->mDmsFilePath:Ljava/lang/String;

    iput-object v3, p0, Lcom/htc/music/DMPMusicPlaybackService;->mUriPath:Ljava/lang/String;

    iput v2, p0, Lcom/htc/music/DMPMusicPlaybackService;->mQueryPosition:I

    iput-object v3, p0, Lcom/htc/music/DMPMusicPlaybackService;->mQueryContentID:Ljava/lang/String;

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "content_id"

    aput-object v1, v0, v6

    const/4 v1, 0x2

    const-string v2, "content_name"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "container"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "uri_path"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "artist_name"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "albumart_uri"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "serve_id"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "index_id"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mCursorCols:[Ljava/lang/String;

    iput-object v3, p0, Lcom/htc/music/DMPMusicPlaybackService;->mDLNAService:Lcom/htc/dlnainterface/IDLNAPluginService;

    new-instance v0, Lcom/htc/music/DMPMusicPlaybackService$2;

    invoke-direct {v0, p0}, Lcom/htc/music/DMPMusicPlaybackService$2;-><init>(Lcom/htc/music/DMPMusicPlaybackService;)V

    iput-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mDLNAConnection:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/htc/music/DMPMusicPlaybackService$3;

    invoke-direct {v0, p0}, Lcom/htc/music/DMPMusicPlaybackService$3;-><init>(Lcom/htc/music/DMPMusicPlaybackService;)V

    iput-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mDLNAPluginNotify:Lcom/htc/dlnainterface/IDLNAPluginNotify;

    new-instance v0, Lcom/htc/music/DMPMusicPlaybackService$4;

    invoke-direct {v0, p0}, Lcom/htc/music/DMPMusicPlaybackService$4;-><init>(Lcom/htc/music/DMPMusicPlaybackService;)V

    iput-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    const/16 v0, 0x100

    iput v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mAlbumSize:I

    iget v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mAlbumSize:I

    iget v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mAlbumSize:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mSquareAlbum:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mSquareAlbum:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mTransCanvas:Landroid/graphics/Canvas;

    iput-object v3, p0, Lcom/htc/music/DMPMusicPlaybackService;->mMatrix:Landroid/graphics/Matrix;

    iput-object v3, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPaintDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->hexdigits:[C

    new-instance v0, Lcom/htc/music/DMPMusicPlaybackService$5;

    invoke-direct {v0, p0}, Lcom/htc/music/DMPMusicPlaybackService$5;-><init>(Lcom/htc/music/DMPMusicPlaybackService;)V

    iput-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

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

.method static synthetic access$000(Lcom/htc/music/DMPMusicPlaybackService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mMuteByTransientLossOfFocusCanDuck:Z

    return v0
.end method

.method static synthetic access$002(Lcom/htc/music/DMPMusicPlaybackService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mMuteByTransientLossOfFocusCanDuck:Z

    return p1
.end method

.method static synthetic access$100(Lcom/htc/music/DMPMusicPlaybackService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPausedByTransientLossOfFocus:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/htc/music/DMPMusicPlaybackService;)Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mNonUIHandler:Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;

    return-object v0
.end method

.method static synthetic access$102(Lcom/htc/music/DMPMusicPlaybackService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPausedByTransientLossOfFocus:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/htc/music/DMPMusicPlaybackService;)I
    .locals 1

    iget v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayListLen:I

    return v0
.end method

.method static synthetic access$1200(Lcom/htc/music/DMPMusicPlaybackService;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 1

    invoke-direct {p0, p1}, Lcom/htc/music/DMPMusicPlaybackService;->getAssetFileDescriptorFromPath(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/music/DMPMusicPlaybackService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/music/DMPMusicPlaybackService;->ensurePathExists(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/htc/music/DMPMusicPlaybackService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/music/DMPMusicPlaybackService;->eraseAllFilesIfNeeded(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/htc/music/DMPMusicPlaybackService;Landroid/content/res/AssetFileDescriptor;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/htc/music/DMPMusicPlaybackService;->saveAlbumArtToSDCard(Landroid/content/res/AssetFileDescriptor;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/htc/music/DMPMusicPlaybackService;)Lcom/htc/dlnainterface/IDLNAPluginNotify;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mDLNAPluginNotify:Lcom/htc/dlnainterface/IDLNAPluginNotify;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/htc/music/DMPMusicPlaybackService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mServerID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/htc/music/DMPMusicPlaybackService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mContentID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/htc/music/DMPMusicPlaybackService;)Lcom/htc/music/DMPContentItemDetails;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mDLNAContentItemDetails:Lcom/htc/music/DMPContentItemDetails;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/music/DMPMusicPlaybackService;)Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayer:Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/htc/music/DMPMusicPlaybackService;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/music/DMPMusicPlaybackService;->unBindDLNAService()V

    return-void
.end method

.method static synthetic access$202(Lcom/htc/music/DMPMusicPlaybackService;Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;)Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;
    .locals 0

    iput-object p1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayer:Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/htc/music/DMPMusicPlaybackService;)Lcom/htc/music/DMPMusicPlaybackService$DMPState;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mCurrentState:Lcom/htc/music/DMPMusicPlaybackService$DMPState;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/htc/music/DMPMusicPlaybackService;Lcom/htc/music/DMPMusicPlaybackService$DMPState;)Lcom/htc/music/DMPMusicPlaybackService$DMPState;
    .locals 0

    iput-object p1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mCurrentState:Lcom/htc/music/DMPMusicPlaybackService$DMPState;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/htc/music/DMPMusicPlaybackService;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/music/DMPMusicPlaybackService;->openCurrent()V

    return-void
.end method

.method static synthetic access$2300(Lcom/htc/music/DMPMusicPlaybackService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/music/DMPMusicPlaybackService;->stop(Z)V

    return-void
.end method

.method static synthetic access$2400(Lcom/htc/music/DMPMusicPlaybackService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/htc/music/DMPMusicPlaybackService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mContainerID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/htc/music/DMPMusicPlaybackService;)J
    .locals 2

    iget-wide v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mStartIdx:J

    return-wide v0
.end method

.method static synthetic access$2700(Lcom/htc/music/DMPMusicPlaybackService;)I
    .locals 1

    iget v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mDirection:I

    return v0
.end method

.method static synthetic access$2800(Lcom/htc/music/DMPMusicPlaybackService;)J
    .locals 2

    iget-wide v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mTimePointToUpdateQueue:J

    return-wide v0
.end method

.method static synthetic access$2802(Lcom/htc/music/DMPMusicPlaybackService;J)J
    .locals 0

    iput-wide p1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mTimePointToUpdateQueue:J

    return-wide p1
.end method

.method static synthetic access$2900(Lcom/htc/music/DMPMusicPlaybackService;)Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/music/DMPMusicPlaybackService;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/music/DMPMusicPlaybackService;->initErrorRetryHandle()V

    return-void
.end method

.method static synthetic access$3000(Lcom/htc/music/DMPMusicPlaybackService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/music/DMPMusicPlaybackService;->reloadQueue(Z)V

    return-void
.end method

.method static synthetic access$3100(Lcom/htc/music/DMPMusicPlaybackService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/music/DMPMusicPlaybackService;->pluginNotifyChange(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3202(Lcom/htc/music/DMPMusicPlaybackService;J)J
    .locals 0

    iput-wide p1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mEndIdx:J

    return-wide p1
.end method

.method static synthetic access$3300(Lcom/htc/music/DMPMusicPlaybackService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mQueryContentID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3302(Lcom/htc/music/DMPMusicPlaybackService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mQueryContentID:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3400(Lcom/htc/music/DMPMusicPlaybackService;)I
    .locals 1

    iget v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mQueryPosition:I

    return v0
.end method

.method static synthetic access$3500(Lcom/htc/music/DMPMusicPlaybackService;)I
    .locals 1

    iget v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayPos:I

    return v0
.end method

.method static synthetic access$3600(Lcom/htc/music/DMPMusicPlaybackService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mIsSupposedToBePlaying:Z

    return v0
.end method

.method static synthetic access$3602(Lcom/htc/music/DMPMusicPlaybackService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mIsSupposedToBePlaying:Z

    return p1
.end method

.method static synthetic access$3700(Lcom/htc/music/DMPMusicPlaybackService;)I
    .locals 1

    iget v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mRepeatMode:I

    return v0
.end method

.method static synthetic access$3800(Lcom/htc/music/DMPMusicPlaybackService;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/htc/music/DMPMusicPlaybackService;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/htc/music/DMPMusicPlaybackService;->getDLNAErrorString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/music/DMPMusicPlaybackService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mIsAlbumArtGetting:Z

    return v0
.end method

.method static synthetic access$4000(Lcom/htc/music/DMPMusicPlaybackService;)I
    .locals 1

    iget v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mServiceInUse:I

    return v0
.end method

.method static synthetic access$402(Lcom/htc/music/DMPMusicPlaybackService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mIsAlbumArtGetting:Z

    return p1
.end method

.method static synthetic access$4100(Lcom/htc/music/DMPMusicPlaybackService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/music/DMPMusicPlaybackService;->saveQueue(Z)V

    return-void
.end method

.method static synthetic access$4200(Lcom/htc/music/DMPMusicPlaybackService;)I
    .locals 1

    iget v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mServiceStartId:I

    return v0
.end method

.method static synthetic access$4300(Lcom/htc/music/DMPMusicPlaybackService;)Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/htc/music/DMPMusicPlaybackService;)Landroid/media/AudioManager;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/htc/music/DMPMusicPlaybackService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mIsPlayPressed:Z

    return v0
.end method

.method static synthetic access$500(Lcom/htc/music/DMPMusicPlaybackService;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mQueueToGetAlbumArtPath:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/htc/music/DMPMusicPlaybackService;)I
    .locals 1

    iget v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayerErrorCount:I

    return v0
.end method

.method static synthetic access$5108(Lcom/htc/music/DMPMusicPlaybackService;)I
    .locals 2

    iget v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayerErrorCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayerErrorCount:I

    return v0
.end method

.method static synthetic access$5200(Lcom/htc/music/DMPMusicPlaybackService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/htc/music/DMPMusicPlaybackService;->checkBeforeNextOrPre()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5300(Lcom/htc/music/DMPMusicPlaybackService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJIILjava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p10}, Lcom/htc/music/DMPMusicPlaybackService;->setDlnaPlaylist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJIILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/music/DMPMusicPlaybackService;)Lcom/htc/dlnainterface/IDLNAPluginService;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mDLNAService:Lcom/htc/dlnainterface/IDLNAPluginService;

    return-object v0
.end method

.method static synthetic access$602(Lcom/htc/music/DMPMusicPlaybackService;Lcom/htc/dlnainterface/IDLNAPluginService;)Lcom/htc/dlnainterface/IDLNAPluginService;
    .locals 0

    iput-object p1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mDLNAService:Lcom/htc/dlnainterface/IDLNAPluginService;

    return-object p1
.end method

.method static synthetic access$700(Lcom/htc/music/DMPMusicPlaybackService;)Ljava/util/Hashtable;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mAlbumArtNameTable:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/music/DMPMusicPlaybackService;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/htc/music/DMPMusicPlaybackService;->getDmpAlbumArtDirPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/music/DMPMusicPlaybackService;)Lcom/htc/music/IPluginIPCNotify;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mNotify:Lcom/htc/music/IPluginIPCNotify;

    return-object v0
.end method

.method private addToPlayList([II)V
    .locals 7

    array-length v0, p1

    if-gez p2, :cond_0

    const/4 v3, 0x0

    iput v3, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayListLen:I

    const/4 p2, 0x0

    :cond_0
    iget v3, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayListLen:I

    add-int/2addr v3, v0

    invoke-direct {p0, v3}, Lcom/htc/music/DMPMusicPlaybackService;->ensurePlayListCapacity(I)V

    iget v3, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayListLen:I

    if-le p2, v3, :cond_1

    iget p2, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayListLen:I

    :cond_1
    iget v3, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayListLen:I

    sub-int v2, v3, p2

    move v1, v2

    :goto_0
    if-lez v1, :cond_2

    iget-object v3, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayList:[I

    add-int v4, p2, v1

    iget-object v5, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayList:[I

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

    iget-object v3, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayList:[I

    add-int v4, p2, v1

    aget v5, p1, v1

    aput v5, v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iget v3, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayListLen:I

    add-int/2addr v3, v0

    iput v3, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayListLen:I

    const-string v3, "[DMPMusicPlaybackService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addToPlayList()...mPlayListLen = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayListLen:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private applyShuffleSeq([I)[I
    .locals 5

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/htc/music/DMPMusicPlaybackService;->mShuffleSeq:[I

    if-nez v2, :cond_2

    :cond_0
    const-string v2, "[DMPMusicPlaybackService]"

    const-string v3, "applyShuffleSeq(), (list == null || mShuffleSeq == null)."

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-object p1

    :cond_2
    const-string v2, "[DMPMusicPlaybackService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "applyShuffleSeq()...list.length:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mShuffleSeq.length = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/DMPMusicPlaybackService;->mShuffleSeq:[I

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    array-length v2, p1

    iget-object v3, p0, Lcom/htc/music/DMPMusicPlaybackService;->mShuffleSeq:[I

    array-length v3, v3

    if-eq v2, v3, :cond_3

    array-length v2, p1

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/htc/music/DMPMusicPlaybackService;->setShuffleSeq(II)V

    :cond_3
    iget-object v2, p0, Lcom/htc/music/DMPMusicPlaybackService;->mShuffleSeq:[I

    if-eqz v2, :cond_1

    array-length v2, p1

    new-array v1, v2, [I

    const/4 v0, 0x0

    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_4

    iget-object v2, p0, Lcom/htc/music/DMPMusicPlaybackService;->mShuffleSeq:[I

    aget v2, v2, v0

    aget v2, p1, v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move-object p1, v1

    goto :goto_0
.end method

.method private bindDLNAService()Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "[DMPMusicPlaybackService]"

    const-string v4, "bindDLNAService() ...."

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/htc/dlnainterface/IDLNAPluginService;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/htc/music/DMPMusicPlaybackService;->mDLNAConnection:Landroid/content/ServiceConnection;

    const/4 v5, 0x1

    invoke-virtual {p0, v3, v4, v5}, Lcom/htc/music/DMPMusicPlaybackService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "[DMPMusicPlaybackService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bindDLNAService succeed. IDLNAPluginService.class.getName() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-class v5, Lcom/htc/dlnainterface/IDLNAPluginService;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v1

    :cond_0
    const-string v1, "[DMPMusicPlaybackService]"

    const-string v3, "bindDLNAService failed."

    invoke-static {v1, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move v1, v2

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    const-string v1, "[DMPMusicPlaybackService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bindDLNAService: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    const-string v1, "[DMPMusicPlaybackService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bindDLNAService: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    goto :goto_0
.end method

.method private checkBeforeNextOrPre()Z
    .locals 7

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v3, p0, Lcom/htc/music/DMPMusicPlaybackService;->mTimePointToNextOrPre:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    const/4 v2, 0x1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-wide v3, p0, Lcom/htc/music/DMPMusicPlaybackService;->mTimePointToNextOrPre:J

    sub-long v3, v0, v3

    const-wide/16 v5, 0x1f4

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method private checkFileExist(Ljava/lang/String;)Z
    .locals 3

    const/4 v1, 0x0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private ensurePathExists(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    return-void
.end method

.method private ensurePlayListBakCapacity(I)V
    .locals 2

    iget-object v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayListBak:[I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayListBak:[I

    array-length v1, v1

    if-le p1, v1, :cond_1

    :cond_0
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayListBak:[I

    :cond_1
    return-void
.end method

.method private ensurePlayListCapacity(I)V
    .locals 4

    iget-object v3, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayList:[I

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayList:[I

    array-length v3, v3

    if-le p1, v3, :cond_2

    :cond_0
    new-array v2, p1, [I

    iget v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayListLen:I

    iget-object v3, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayList:[I

    if-eqz v3, :cond_1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v3, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayList:[I

    aget v3, v3, v0

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iput-object v2, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayList:[I

    :cond_2
    return-void
.end method

.method private eraseAllFilesIfNeeded(Ljava/lang/String;)V
    .locals 5

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v3, v1

    const/16 v4, 0x7d0

    if-le v3, v4, :cond_0

    iget-object v3, p0, Lcom/htc/music/DMPMusicPlaybackService;->mAlbumArtNameTable:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->clear()V

    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getAssetFileDescriptorFromPath(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 7

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/htc/music/DMPMusicPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "content://dlna/images"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v4, "[DMPMusicPlaybackService]"

    const-string v5, "$$ albumArtDownloadedNotify: No provider client: cpClient..."

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v0, 0x0

    :try_start_0
    const-string v4, "r"

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentProviderClient;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v4, "[DMPMusicPlaybackService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAssetFileDescriptorFromPath: afDescriptor => "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    :try_start_1
    const-string v4, "[DMPMusicPlaybackService]"

    const-string v5, "getAssetFileDescriptorFromPath: afDescriptor is null..."

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v4, "[DMPMusicPlaybackService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAssetFileDescriptorFromPath: RemoteException "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v2

    const-string v4, "[DMPMusicPlaybackService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAssetFileDescriptorFromPath: FileNotFoundException "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method private getContentIDFromID(I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mIdToContentIdTable:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private getDLNAErrorString()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mCurrentState:Lcom/htc/music/DMPMusicPlaybackService$DMPState;

    sget-object v2, Lcom/htc/music/DMPMusicPlaybackService$DMPState;->READY:Lcom/htc/music/DMPMusicPlaybackService$DMPState;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-static {p0}, Lcom/htc/music/util/DlnaUtils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/htc/music/DMPMusicPlaybackService$DMPState;->SERVER_DISCONNECTED:Lcom/htc/music/DMPMusicPlaybackService$DMPState;

    iput-object v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mCurrentState:Lcom/htc/music/DMPMusicPlaybackService$DMPState;

    :goto_1
    iget-object v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mCurrentState:Lcom/htc/music/DMPMusicPlaybackService$DMPState;

    sget-object v2, Lcom/htc/music/DMPMusicPlaybackService$DMPState;->WIFI_DISCONNECTED:Lcom/htc/music/DMPMusicPlaybackService$DMPState;

    if-ne v1, v2, :cond_3

    invoke-virtual {p0}, Lcom/htc/music/DMPMusicPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700c5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_2
    const-string v1, "[DMPMusicPlaybackService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "%%% getDLNAErrorString()... errorCause => "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/htc/music/DMPMusicPlaybackService$DMPState;->WIFI_DISCONNECTED:Lcom/htc/music/DMPMusicPlaybackService$DMPState;

    iput-object v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mCurrentState:Lcom/htc/music/DMPMusicPlaybackService$DMPState;

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mCurrentState:Lcom/htc/music/DMPMusicPlaybackService$DMPState;

    sget-object v2, Lcom/htc/music/DMPMusicPlaybackService$DMPState;->SERVER_DISCONNECTED:Lcom/htc/music/DMPMusicPlaybackService$DMPState;

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/htc/music/DMPMusicPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700c6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method private getDmpAlbumArtDirPath()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/htc/music/DMPMusicPlaybackService;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/.dmp/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v2, "[DMPMusicPlaybackService]"

    const-string v3, "getDmpAlbumArtDirPath()...vSDcard is null and return path as null..."

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private gotoIdleState()V
    .locals 5

    iget-object v2, p0, Lcom/htc/music/DMPMusicPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/htc/music/DMPMusicPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Lcom/htc/music/DMPMusicPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const-wide/32 v3, 0xea60

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    const/4 v2, 0x2

    invoke-virtual {p0, v2, v1}, Lcom/htc/music/DMPMusicPlaybackService;->startForeground(ILandroid/app/Notification;)V

    return-void
.end method

.method private initErrorRetryHandle()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayerErrorCount:I

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mNonUIHandler:Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;

    const/16 v1, 0x2b00

    invoke-virtual {v0, v1}, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->removeMessages(I)V

    return-void
.end method

.method private openCurrent()V
    .locals 12

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mCursor:Landroid/database/Cursor;

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mContentID:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mServerID:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mContainerID:Ljava/lang/String;

    iget v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayListLen:I

    if-nez v0, :cond_1

    monitor-exit p0

    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayPos:I

    if-ltz v0, :cond_2

    iget v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayPos:I

    iget v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayListLen:I

    if-lt v0, v1, :cond_3

    :cond_2
    const-string v0, "[DMPMusicPlaybackService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad! we can\'t open mPlayPos "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mPlayListLen "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayListLen:I

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
    const-string v0, "[DMPMusicPlaybackService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openCurrent()...mPlayPos = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayList:[I

    iget v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayPos:I

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Lcom/htc/music/util/MusicDLNAStore;->getServerContentUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/DMPMusicPlaybackService;->mCursorCols:[Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " AND "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "file_type"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "= "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "index_id COLLATE NOCASE ASC"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mCursor:Landroid/database/Cursor;

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mCursor:Landroid/database/Cursor;

    const-string v1, "uri_path"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/htc/music/DMPMusicPlaybackService;->mUriPath:Ljava/lang/String;

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mNonUIHandler:Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;

    const/16 v1, 0x2afb

    invoke-virtual {v0, v1}, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mNonUIHandler:Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;

    const/16 v1, 0x2afb

    invoke-virtual {v0, v1}, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const-string v0, "uriPath"

    invoke-virtual {v6, v0, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v6}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mNonUIHandler:Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;

    invoke-virtual {v0, v10}, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->sendMessage(Landroid/os/Message;)Z

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mCursor:Landroid/database/Cursor;

    const-string v1, "content_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mContentID:Ljava/lang/String;

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mCursor:Landroid/database/Cursor;

    const-string v1, "serve_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mServerID:Ljava/lang/String;

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mCursor:Landroid/database/Cursor;

    const-string v1, "container"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mContainerID:Ljava/lang/String;

    const-string v0, "[DMPMusicPlaybackService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openCurrent()...mServerID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/DMPMusicPlaybackService;->mServerID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mContentID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/DMPMusicPlaybackService;->mContentID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mDLNAService="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/DMPMusicPlaybackService;->mDLNAService:Lcom/htc/dlnainterface/IDLNAPluginService;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mServerID:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mContentID:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mDLNAService:Lcom/htc/dlnainterface/IDLNAPluginService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_4

    :try_start_2
    const-string v0, "[DMPMusicPlaybackService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "###openCurrent()...mDLNAPluginNotify = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/DMPMusicPlaybackService;->mDLNAPluginNotify:Lcom/htc/dlnainterface/IDLNAPluginNotify;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mDLNAContentItemDetails:Lcom/htc/music/DMPContentItemDetails;

    invoke-virtual {v0}, Lcom/htc/music/DMPContentItemDetails;->reset()V

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mDLNAService:Lcom/htc/dlnainterface/IDLNAPluginService;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/htc/music/DMPMusicPlaybackService;->mServerID:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/music/DMPMusicPlaybackService;->mContentID:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->getContentItemDetails(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/music/DMPMusicPlaybackService;->saveQueue(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_4
    :goto_1
    :try_start_3
    monitor-exit p0

    goto/16 :goto_0

    :catch_0
    move-exception v7

    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method private pluginNotifyChange(Ljava/lang/String;)V
    .locals 4

    iget-object v2, p0, Lcom/htc/music/DMPMusicPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "notify"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/htc/music/DMPMusicPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private reloadQueue(Z)V
    .locals 31

    const-string v2, "[DMPMusicPlaybackService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#### reloadQueue...Begin, fromDmsOrIntent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/htc/music/DMPMusicPlaybackService;->initErrorRetryHandle()V

    if-nez p1, :cond_16

    const/16 v22, 0x0

    const-string v13, ""

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/DMPMusicPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "content"

    invoke-interface {v2, v3, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/music/DMPMusicPlaybackService;->mContentID:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/DMPMusicPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "server"

    invoke-interface {v2, v3, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/music/DMPMusicPlaybackService;->mServerID:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/DMPMusicPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "container"

    invoke-interface {v2, v3, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/music/DMPMusicPlaybackService;->mContainerID:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/DMPMusicPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "startIdx"

    const-wide/16 v4, -0x1

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/htc/music/DMPMusicPlaybackService;->mStartIdx:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/DMPMusicPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "endIdx"

    const-wide/16 v4, -0x1

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/htc/music/DMPMusicPlaybackService;->mEndIdx:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/DMPMusicPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "direction"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/music/DMPMusicPlaybackService;->mDirection:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/DMPMusicPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "filepath"

    invoke-interface {v2, v3, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/music/DMPMusicPlaybackService;->mDmsFilePath:Ljava/lang/String;

    const-string v2, "[DMPMusicPlaybackService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startIdx => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/htc/music/DMPMusicPlaybackService;->mStartIdx:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", endIdx => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/htc/music/DMPMusicPlaybackService;->mEndIdx:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "[DMPMusicPlaybackService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mServerID => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/DMPMusicPlaybackService;->mServerID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "[DMPMusicPlaybackService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mContainerID => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/DMPMusicPlaybackService;->mContainerID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "[DMPMusicPlaybackService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mContentID => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/DMPMusicPlaybackService;->mContentID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/DMPMusicPlaybackService;->mDLNAService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v2, :cond_0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/DMPMusicPlaybackService;->mDLNAService:Lcom/htc/dlnainterface/IDLNAPluginService;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/DMPMusicPlaybackService;->mServerID:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/music/DMPMusicPlaybackService;->mContentID:Ljava/lang/String;

    invoke-interface {v2, v3, v4, v5}, Lcom/htc/dlnainterface/IDLNAPluginService;->isBrowsingCmdDone(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v11

    const-string v2, "[DMPMusicPlaybackService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reloadQueue, From Preference, query done? => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/DMPMusicPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "queue"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_1

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v23

    :goto_1
    if-eqz v22, :cond_15

    const/4 v2, 0x1

    move/from16 v0, v23

    if-le v0, v2, :cond_15

    const-string v2, "[DMPMusicPlaybackService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DMP reload queue, loaded queue: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, ";"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    array-length v0, v14

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/htc/music/DMPMusicPlaybackService;->ensurePlayListCapacity(I)V

    const/4 v15, 0x0

    :goto_2
    move/from16 v0, v19

    if-ge v15, v0, :cond_5

    aget-object v25, v14, v15

    const/16 v20, 0x0

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v18, v2, -0x1

    :goto_3
    if-ltz v18, :cond_4

    shl-int/lit8 v20, v20, 0x4

    move-object/from16 v0, v25

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v2, 0x30

    if-lt v8, v2, :cond_2

    const/16 v2, 0x39

    if-gt v8, v2, :cond_2

    add-int/lit8 v2, v8, -0x30

    add-int v20, v20, v2

    :goto_4
    add-int/lit8 v18, v18, -0x1

    goto :goto_3

    :catch_0
    move-exception v12

    const-string v2, "[DMPMusicPlaybackService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reloadQueue, From Preference, RemoteException, e: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v12}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    const/16 v23, 0x0

    goto :goto_1

    :cond_2
    const/16 v2, 0x61

    if-lt v8, v2, :cond_3

    const/16 v2, 0x66

    if-gt v8, v2, :cond_3

    add-int/lit8 v2, v8, 0xa

    add-int/lit8 v2, v2, -0x61

    add-int v20, v20, v2

    goto :goto_4

    :cond_3
    const/16 v19, 0x0

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayList:[I

    aput v20, v2, v15

    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    :cond_5
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/music/DMPMusicPlaybackService;->mPlayListLen:I

    const-string v2, "[DMPMusicPlaybackService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DMP reload queue, len: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/DMPMusicPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "queuebak"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_9

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_9

    const-string v2, ";"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    array-length v0, v14

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/htc/music/DMPMusicPlaybackService;->ensurePlayListBakCapacity(I)V

    const/4 v15, 0x0

    :goto_5
    move/from16 v0, v19

    if-ge v15, v0, :cond_9

    aget-object v25, v14, v15

    const/16 v20, 0x0

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v18, v2, -0x1

    :goto_6
    if-ltz v18, :cond_8

    shl-int/lit8 v20, v20, 0x4

    move-object/from16 v0, v25

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v2, 0x30

    if-lt v8, v2, :cond_6

    const/16 v2, 0x39

    if-gt v8, v2, :cond_6

    add-int/lit8 v2, v8, -0x30

    add-int v20, v20, v2

    :goto_7
    add-int/lit8 v18, v18, -0x1

    goto :goto_6

    :cond_6
    const/16 v2, 0x61

    if-lt v8, v2, :cond_7

    const/16 v2, 0x66

    if-gt v8, v2, :cond_7

    add-int/lit8 v2, v8, 0xa

    add-int/lit8 v2, v2, -0x61

    add-int v20, v20, v2

    goto :goto_7

    :cond_7
    const/16 v19, 0x0

    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayListBak:[I

    aput v20, v2, v15

    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/DMPMusicPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "curpos"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v21

    if-ltz v21, :cond_a

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayListLen:I

    move/from16 v0, v21

    if-lt v0, v2, :cond_c

    :cond_a
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayListLen:I

    :cond_b
    :goto_8
    return-void

    :cond_c
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/music/DMPMusicPlaybackService;->mPlayPos:I

    const-string v2, "[DMPMusicPlaybackService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DMP reload queue, mPlayPos: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayPos:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "serve_id= \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/DMPMusicPlaybackService;->mServerID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "container"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "= \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/DMPMusicPlaybackService;->mContainerID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "file_type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " AND _id IN ("

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v15, 0x0

    :goto_9
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayListLen:I

    if-ge v15, v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayList:[I

    aget v2, v2, v15

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayListLen:I

    add-int/lit8 v2, v2, -0x1

    if-ge v15, v2, :cond_d

    const-string v2, ","

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    add-int/lit8 v15, v15, 0x1

    goto :goto_9

    :cond_e
    const-string v2, ")"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/htc/music/util/MusicDLNAStore;->getServerContentUri()Landroid/net/Uri;

    move-result-object v3

    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "_id"

    aput-object v5, v4, v2

    const/4 v2, 0x1

    const-string v5, "content_id"

    aput-object v5, v4, v2

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "index_id COLLATE NOCASE ASC"

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v29

    if-eqz v29, :cond_f

    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_10

    :cond_f
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayListLen:I

    if-eqz v29, :cond_b

    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->close()V

    const/16 v29, 0x0

    goto/16 :goto_8

    :cond_10
    if-eqz v29, :cond_12

    const-string v2, "[DMPMusicPlaybackService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "## ReloadQueue from preference...tmpCursor.getCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mPlayListLen = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayListLen:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "_id"

    move-object/from16 v0, v29

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    const-string v2, "content_id"

    move-object/from16 v0, v29

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/DMPMusicPlaybackService;->mIdToContentIdTable:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->clear()V

    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v15, 0x0

    :goto_a
    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-ge v15, v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/DMPMusicPlaybackService;->mIdToContentIdTable:Ljava/util/Hashtable;

    move-object/from16 v0, v29

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v15, v15, 0x1

    goto :goto_a

    :cond_11
    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->close()V

    const/16 v29, 0x0

    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/DMPMusicPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "repeatmode"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v24

    const/4 v2, 0x2

    move/from16 v0, v24

    if-eq v0, v2, :cond_13

    const/4 v2, 0x1

    move/from16 v0, v24

    if-eq v0, v2, :cond_13

    const/16 v24, 0x0

    :cond_13
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/music/DMPMusicPlaybackService;->mRepeatMode:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/DMPMusicPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "shufflemode"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v26

    const/4 v2, 0x1

    move/from16 v0, v26

    if-eq v0, v2, :cond_14

    const/16 v26, 0x0

    :cond_14
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/music/DMPMusicPlaybackService;->mShuffleMode:I

    :goto_b
    const-string v2, "[DMPMusicPlaybackService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#### reloadQueue...End, mPlayListLen: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayListLen:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_15
    const-string v2, "[DMPMusicPlaybackService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "q: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", qlen => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :cond_16
    const-string v2, "[DMPMusicPlaybackService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startIdx => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/htc/music/DMPMusicPlaybackService;->mStartIdx:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", endIdx => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/htc/music/DMPMusicPlaybackService;->mEndIdx:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "[DMPMusicPlaybackService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mServerID => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/DMPMusicPlaybackService;->mServerID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "[DMPMusicPlaybackService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mContainerID => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/DMPMusicPlaybackService;->mContainerID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "[DMPMusicPlaybackService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mContentID => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/DMPMusicPlaybackService;->mContentID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/DMPMusicPlaybackService;->mDLNAService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v2, :cond_17

    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/DMPMusicPlaybackService;->mDLNAService:Lcom/htc/dlnainterface/IDLNAPluginService;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/DMPMusicPlaybackService;->mServerID:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/music/DMPMusicPlaybackService;->mContentID:Ljava/lang/String;

    invoke-interface {v2, v3, v4, v5}, Lcom/htc/dlnainterface/IDLNAPluginService;->isBrowsingCmdDone(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v11

    const-string v2, "[DMPMusicPlaybackService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reloadQueue, From DMS, query done? => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_17
    :goto_c
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "serve_id= \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/DMPMusicPlaybackService;->mServerID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "container"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "= \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/DMPMusicPlaybackService;->mContainerID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "file_type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/DMPMusicPlaybackService;->mDirection:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " AND index_id <= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/htc/music/DMPMusicPlaybackService;->mStartIdx:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/htc/music/DMPMusicPlaybackService;->mEndIdx:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_18

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/htc/music/DMPMusicPlaybackService;->mEndIdx:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/htc/music/DMPMusicPlaybackService;->mStartIdx:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_18

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " AND index_id >= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/htc/music/DMPMusicPlaybackService;->mEndIdx:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_18
    :goto_d
    const-string v2, "[DMPMusicPlaybackService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "where => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/htc/music/util/MusicDLNAStore;->getServerContentUri()Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/DMPMusicPlaybackService;->mCursorCols:[Ljava/lang/String;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "index_id COLLATE NOCASE ASC"

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v29

    if-eqz v29, :cond_21

    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayList:[I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayListBak:[I

    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/16 v3, 0xc7

    if-le v2, v3, :cond_1b

    const/16 v2, 0xc7

    :goto_e
    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayListLen:I

    const-string v2, "[DMPMusicPlaybackService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reloadQueue... mPlayListLen => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayListLen:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", tmpCursor.getCount() => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayListLen:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/htc/music/DMPMusicPlaybackService;->ensurePlayListCapacity(I)V

    const-string v2, "_id"

    move-object/from16 v0, v29

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    const-string v2, "content_id"

    move-object/from16 v0, v29

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    const/16 v27, 0x0

    const/16 v28, -0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/DMPMusicPlaybackService;->mIdToContentIdTable:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->clear()V

    const/4 v15, 0x0

    :goto_f
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayListLen:I

    if-ge v15, v2, :cond_1c

    move-object/from16 v0, v29

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    move-object/from16 v0, v29

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayList:[I

    aput v28, v2, v15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/DMPMusicPlaybackService;->mIdToContentIdTable:Ljava/util/Hashtable;

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v2, v3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/DMPMusicPlaybackService;->mContentID:Ljava/lang/String;

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayPos:I

    :cond_19
    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v15, v15, 0x1

    goto :goto_f

    :catch_1
    move-exception v12

    const-string v2, "[DMPMusicPlaybackService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reloadQueue, From DMS, RemoteException, e: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v12}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    :cond_1a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " AND index_id >= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/htc/music/DMPMusicPlaybackService;->mStartIdx:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/htc/music/DMPMusicPlaybackService;->mEndIdx:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_18

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/htc/music/DMPMusicPlaybackService;->mEndIdx:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/htc/music/DMPMusicPlaybackService;->mStartIdx:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_18

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " AND index_id <= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/htc/music/DMPMusicPlaybackService;->mEndIdx:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_d

    :cond_1b
    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->getCount()I

    move-result v2

    goto/16 :goto_e

    :cond_1c
    const-string v2, "[DMPMusicPlaybackService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Initialization...mPlayPos="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayPos:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->close()V

    const/16 v29, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/DMPMusicPlaybackService;->mShuffleMode:I

    if-nez v2, :cond_1e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/DMPMusicPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "shufflemode"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v26

    const/4 v2, 0x1

    move/from16 v0, v26

    if-eq v0, v2, :cond_1d

    const/16 v26, 0x0

    :cond_1d
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/music/DMPMusicPlaybackService;->mShuffleMode:I

    :cond_1e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/DMPMusicPlaybackService;->mShuffleMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_20

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayListLen:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/htc/music/DMPMusicPlaybackService;->ensurePlayListBakCapacity(I)V

    const/4 v15, 0x0

    :goto_10
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayListLen:I

    if-ge v15, v2, :cond_1f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayListBak:[I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayList:[I

    aget v3, v3, v15

    aput v3, v2, v15

    add-int/lit8 v15, v15, 0x1

    goto :goto_10

    :cond_1f
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayListLen:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayPos:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/htc/music/DMPMusicPlaybackService;->setShuffleSeq(II)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayList:[I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/htc/music/DMPMusicPlaybackService;->applyShuffleSeq([I)[I

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/DMPMusicPlaybackService;->setPlaylist([I)V

    :cond_20
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/htc/music/DMPMusicPlaybackService;->saveQueue(Z)V

    :goto_11
    const-string v2, "com.htc.music.plugin.queuechanged"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/htc/music/DMPMusicPlaybackService;->pluginNotifyChange(Ljava/lang/String;)V

    goto/16 :goto_b

    :cond_21
    const-string v2, "[DMPMusicPlaybackService]"

    const-string v3, "cursor is null..."

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11
.end method

.method private resizeThumb(Landroid/content/res/AssetFileDescriptor;)Landroid/graphics/Bitmap;
    .locals 12

    const/4 v11, 0x0

    const/high16 v10, 0x4000

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_1

    :cond_0
    move-object v1, v5

    :goto_0
    return-object v1

    :cond_1
    iget-object v6, p0, Lcom/htc/music/DMPMusicPlaybackService;->mMatrix:Landroid/graphics/Matrix;

    if-nez v6, :cond_2

    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    iput-object v6, p0, Lcom/htc/music/DMPMusicPlaybackService;->mMatrix:Landroid/graphics/Matrix;

    :cond_2
    iget-object v6, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPaintDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

    if-nez v6, :cond_3

    new-instance v6, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v7, 0x2

    invoke-direct {v6, v11, v7}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object v6, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPaintDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

    :cond_3
    :try_start_0
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v6, 0x1

    iput-boolean v6, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v6, 0x1

    iput v6, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7, v3}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    :goto_1
    iget v6, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v6, v6

    iget v7, p0, Lcom/htc/music/DMPMusicPlaybackService;->mAlbumSize:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    cmpl-float v6, v6, v10

    if-gez v6, :cond_4

    iget v6, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v6, v6

    iget v7, p0, Lcom/htc/music/DMPMusicPlaybackService;->mAlbumSize:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    cmpl-float v6, v6, v10

    if-ltz v6, :cond_5

    :cond_4
    iget v6, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/lit8 v6, v6, 0x2

    iput v6, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v6, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/lit8 v6, v6, 0x2

    iput v6, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v6, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    mul-int/lit8 v6, v6, 0x2

    iput v6, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v6, "[DMPMusicPlaybackService]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "resizeThumb(), thumbnail resize failed "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v5

    goto :goto_0

    :cond_5
    :try_start_1
    const-string v6, "[DMPMusicPlaybackService]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "resizeThumb(), thumbnail 1st resize width "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", height "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    iput-boolean v6, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    sget-object v6, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v6, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7, v3}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget v6, p0, Lcom/htc/music/DMPMusicPlaybackService;->mAlbumSize:I

    int-to-float v7, v6

    iget v6, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v8, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-le v6, v8, :cond_6

    iget v6, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    :goto_2
    int-to-float v6, v6

    div-float v4, v7, v6

    iget-object v6, p0, Lcom/htc/music/DMPMusicPlaybackService;->mTransCanvas:Landroid/graphics/Canvas;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/graphics/Canvas;->drawColor(I)V

    iget-object v6, p0, Lcom/htc/music/DMPMusicPlaybackService;->mSquareAlbum:Landroid/graphics/Bitmap;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/graphics/Bitmap;->eraseColor(I)V

    iget-object v6, p0, Lcom/htc/music/DMPMusicPlaybackService;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v6}, Landroid/graphics/Matrix;->reset()V

    iget-object v6, p0, Lcom/htc/music/DMPMusicPlaybackService;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v6, v4, v4}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object v6, p0, Lcom/htc/music/DMPMusicPlaybackService;->mMatrix:Landroid/graphics/Matrix;

    iget v7, p0, Lcom/htc/music/DMPMusicPlaybackService;->mAlbumSize:I

    int-to-float v7, v7

    iget v8, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v8, v8

    mul-float/2addr v8, v4

    sub-float/2addr v7, v8

    div-float/2addr v7, v10

    iget v8, p0, Lcom/htc/music/DMPMusicPlaybackService;->mAlbumSize:I

    int-to-float v8, v8

    iget v9, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v9, v9

    mul-float/2addr v9, v4

    sub-float/2addr v8, v9

    div-float/2addr v8, v10

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v6, p0, Lcom/htc/music/DMPMusicPlaybackService;->mTransCanvas:Landroid/graphics/Canvas;

    iget-object v7, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPaintDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

    invoke-virtual {v6, v7}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    iget-object v6, p0, Lcom/htc/music/DMPMusicPlaybackService;->mTransCanvas:Landroid/graphics/Canvas;

    iget-object v7, p0, Lcom/htc/music/DMPMusicPlaybackService;->mMatrix:Landroid/graphics/Matrix;

    const/4 v8, 0x0

    invoke-virtual {v6, v0, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    iget-object v6, p0, Lcom/htc/music/DMPMusicPlaybackService;->mTransCanvas:Landroid/graphics/Canvas;

    iget-object v7, p0, Lcom/htc/music/DMPMusicPlaybackService;->mSquareAlbum:Landroid/graphics/Bitmap;

    invoke-virtual {v6, v7}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    iget-object v6, p0, Lcom/htc/music/DMPMusicPlaybackService;->mSquareAlbum:Landroid/graphics/Bitmap;

    invoke-static {v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_6
    iget v6, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private saveAlbumArtToSDCard(Landroid/content/res/AssetFileDescriptor;Ljava/lang/String;)Z
    .locals 8

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    :cond_0
    const/4 v4, 0x0

    :goto_0
    return v4

    :cond_1
    invoke-direct {p0, p1}, Lcom/htc/music/DMPMusicPlaybackService;->resizeThumb(Landroid/content/res/AssetFileDescriptor;)Landroid/graphics/Bitmap;

    move-result-object v2

    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    if-eqz v2, :cond_3

    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {v2, v4, v5, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    :goto_1
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v3, 0x1

    :goto_2
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    move v4, v3

    goto :goto_0

    :cond_3
    :try_start_1
    const-string v4, "[DMPMusicPlaybackService]"

    const-string v5, "saveAlbumArtToSDCard(), newAlbumArt is null..."

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_2

    :cond_4
    :try_start_2
    const-string v4, "[DMPMusicPlaybackService]"

    const-string v5, "saveAlbumArtToSDCard()..fos is null..."

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method private saveQueue(Z)V
    .locals 12

    const-wide/16 v10, 0x0

    const-string v7, "[DMPMusicPlaybackService]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "saveQueue, full = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    if-eqz p1, :cond_7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    iget-object v7, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayList:[I

    if-eqz v7, :cond_3

    iget v3, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayListLen:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_2

    iget-object v7, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayList:[I

    aget v7, v7, v2

    int-to-long v4, v7

    cmp-long v7, v4, v10

    if-nez v7, :cond_0

    const-string v7, "0;"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    :goto_2
    cmp-long v7, v4, v10

    if-eqz v7, :cond_1

    const-wide/16 v7, 0xf

    and-long/2addr v7, v4

    long-to-int v0, v7

    const/4 v7, 0x4

    shr-long/2addr v4, v7

    iget-object v7, p0, Lcom/htc/music/DMPMusicPlaybackService;->hexdigits:[C

    aget-char v7, v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_1
    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string v7, "queue"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_3
    iget-object v7, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayListBak:[I

    if-eqz v7, :cond_8

    const/4 v7, 0x0

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayListBak:[I

    array-length v3, v7

    const-string v7, "[DMPMusicPlaybackService]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "saveQueue mPlayListBak.length : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v3, :cond_6

    iget-object v7, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayListBak:[I

    aget v4, v7, v2

    if-nez v4, :cond_4

    const-string v7, "0;"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_3
    const-string v7, "queue"

    const-string v8, ""

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_3

    :cond_4
    :goto_6
    if-eqz v4, :cond_5

    and-int/lit8 v0, v4, 0xf

    shr-int/lit8 v4, v4, 0x4

    iget-object v7, p0, Lcom/htc/music/DMPMusicPlaybackService;->hexdigits:[C

    aget-char v7, v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_5
    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_6
    const-string v7, "queuebak"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_7
    :goto_7
    const-string v7, "curpos"

    iget v8, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayPos:I

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v7, "server"

    iget-object v8, p0, Lcom/htc/music/DMPMusicPlaybackService;->mServerID:Ljava/lang/String;

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v7, "container"

    iget-object v8, p0, Lcom/htc/music/DMPMusicPlaybackService;->mContainerID:Ljava/lang/String;

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v7, "curContentId"

    iget-object v8, p0, Lcom/htc/music/DMPMusicPlaybackService;->mContentID:Ljava/lang/String;

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v7, "content"

    const-string v8, ""

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v7, "repeatmode"

    iget v8, p0, Lcom/htc/music/DMPMusicPlaybackService;->mRepeatMode:I

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v7, "shufflemode"

    iget v8, p0, Lcom/htc/music/DMPMusicPlaybackService;->mShuffleMode:I

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v7, "startIdx"

    iget-wide v8, p0, Lcom/htc/music/DMPMusicPlaybackService;->mStartIdx:J

    invoke-interface {v1, v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string v7, "endIdx"

    iget-wide v8, p0, Lcom/htc/music/DMPMusicPlaybackService;->mEndIdx:J

    invoke-interface {v1, v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string v7, "direction"

    iget v8, p0, Lcom/htc/music/DMPMusicPlaybackService;->mDirection:I

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v7, "filepath"

    iget-object v8, p0, Lcom/htc/music/DMPMusicPlaybackService;->mDmsFilePath:Ljava/lang/String;

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    :cond_8
    const-string v7, "queuebak"

    const-string v8, ""

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_7
.end method

.method private setDlnaPlaylist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJIILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayer:Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->cleanUp()V

    iput-object p3, p0, Lcom/htc/music/DMPMusicPlaybackService;->mContentID:Ljava/lang/String;

    iput-object p1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mServerID:Ljava/lang/String;

    iput-object p2, p0, Lcom/htc/music/DMPMusicPlaybackService;->mContainerID:Ljava/lang/String;

    iput-wide p4, p0, Lcom/htc/music/DMPMusicPlaybackService;->mStartIdx:J

    iput-wide p6, p0, Lcom/htc/music/DMPMusicPlaybackService;->mEndIdx:J

    iput p8, p0, Lcom/htc/music/DMPMusicPlaybackService;->mDirection:I

    iput p9, p0, Lcom/htc/music/DMPMusicPlaybackService;->mShuffleMode:I

    iput-object p10, p0, Lcom/htc/music/DMPMusicPlaybackService;->mDmsFilePath:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/music/DMPMusicPlaybackService;->reloadQueue(Z)V

    invoke-direct {p0}, Lcom/htc/music/DMPMusicPlaybackService;->openCurrent()V

    return-void
.end method

.method private setShuffleSeq(II)V
    .locals 7

    const-string v4, "[DMPMusicPlaybackService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setShuffleSeq()... len = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", nFirst = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_1

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/htc/music/DMPMusicPlaybackService;->mShuffleSeq:[I

    :cond_0
    return-void

    :cond_1
    new-array v4, p1, [I

    iput-object v4, p0, Lcom/htc/music/DMPMusicPlaybackService;->mShuffleSeq:[I

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    move v1, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_2

    iget-object v4, p0, Lcom/htc/music/DMPMusicPlaybackService;->mShuffleSeq:[I

    aput v0, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_1
    add-int/lit8 v4, p1, -0x1

    if-ge v0, v4, :cond_0

    iget-object v4, p0, Lcom/htc/music/DMPMusicPlaybackService;->mShuffleSeq:[I

    aget v3, v4, v0

    iget-object v4, p0, Lcom/htc/music/DMPMusicPlaybackService;->mShuffleSeq:[I

    iget-object v5, p0, Lcom/htc/music/DMPMusicPlaybackService;->mShuffleSeq:[I

    aget v5, v5, v1

    aput v5, v4, v0

    iget-object v4, p0, Lcom/htc/music/DMPMusicPlaybackService;->mShuffleSeq:[I

    aput v3, v4, v1

    add-int/lit8 v4, v0, 0x1

    add-int/lit8 v5, v0, 0x1

    sub-int v5, p1, v5

    invoke-virtual {v2, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    add-int v1, v4, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private stop(Z)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayer:Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "[DMPMusicPlaybackService]"

    const-string v1, "stop()...call mPlayer.stop();..."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayer:Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->stop()V

    :cond_0
    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/htc/music/DMPMusicPlaybackService;->gotoIdleState()V

    :cond_1
    if-eqz p1, :cond_2

    iput-boolean v2, p0, Lcom/htc/music/DMPMusicPlaybackService;->mIsSupposedToBePlaying:Z

    iput-boolean v2, p0, Lcom/htc/music/DMPMusicPlaybackService;->mIsPlayPressed:Z

    const-string v0, "com.htc.music.plugin.statechanged"

    invoke-direct {p0, v0}, Lcom/htc/music/DMPMusicPlaybackService;->pluginNotifyChange(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private unBindDLNAService()V
    .locals 4

    const-string v1, "[DMPMusicPlaybackService]"

    const-string v2, "unBindDLNAService() ...."

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mDLNAService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mDLNAService:Lcom/htc/dlnainterface/IDLNAPluginService;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/htc/music/DMPMusicPlaybackService;->mDLNAPluginNotify:Lcom/htc/dlnainterface/IDLNAPluginNotify;

    invoke-interface {v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->unregisterCallback(ILcom/htc/dlnainterface/IDLNAPluginNotify;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mDLNAConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v1}, Lcom/htc/music/DMPMusicPlaybackService;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mDLNAService:Lcom/htc/dlnainterface/IDLNAPluginService;

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public clearAlbumArtRequests()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "[DMPMusicPlaybackService]"

    const-string v1, "clearAlbumArtRequests()..."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mNonUIHandler:Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;

    const/16 v1, 0x2afe

    invoke-virtual {v0, v1}, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public clearNowplayingQueueRequests()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "[DMPMusicPlaybackService]"

    const-string v1, "clearNowplayingQueueRequests()...do nothing..."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public duration()J
    .locals 4

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mDLNAContentItemDetails:Lcom/htc/music/DMPContentItemDetails;

    iget-wide v0, v0, Lcom/htc/music/DMPContentItemDetails;->contentDuration:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mDLNAContentItemDetails:Lcom/htc/music/DMPContentItemDetails;

    iget-wide v0, v0, Lcom/htc/music/DMPContentItemDetails;->contentDuration:J

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getAlbumArtByIndex(I)Landroid/graphics/Bitmap;
    .locals 3

    const-string v0, "[DMPMusicPlaybackService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAlbumArtByIndex()...index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAlbumArtPath()V
    .locals 0

    return-void
.end method

.method public getAlbumArtPathByPosition(I)Ljava/lang/String;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v13, "[DMPMusicPlaybackService]"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getAlbumArtPathByPosition()... position => "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x0

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/music/DMPMusicPlaybackService;->mShuffleMode:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayListBak:[I

    if-nez v13, :cond_0

    const-string v13, "[DMPMusicPlaybackService]"

    const-string v14, "getAlbumArtPathByPosition()...mPlayListBak is null!!!"

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v13, 0x0

    :goto_0
    return-object v13

    :cond_0
    if-ltz p1, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayListBak:[I

    array-length v13, v13

    move/from16 v0, p1

    if-ge v0, v13, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayListBak:[I

    aget v13, v13, p1

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/htc/music/DMPMusicPlaybackService;->getContentIDFromID(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    if-nez v1, :cond_5

    const-string v13, "[DMPMusicPlaybackService]"

    const-string v14, "getAlbumArtPathByPosition()...contentID is null!!!"

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v13, 0x0

    goto :goto_0

    :cond_1
    const-string v13, "[DMPMusicPlaybackService]"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getAlbumArtPathByPosition()...index out of boundary => position = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", mPlayListBak.length = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayListBak:[I

    array-length v15, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v13, 0x0

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayList:[I

    if-nez v13, :cond_3

    const-string v13, "[DMPMusicPlaybackService]"

    const-string v14, "getAlbumArtPathByPosition()...mPlayList is null!!!"

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v13, 0x0

    goto :goto_0

    :cond_3
    if-ltz p1, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayList:[I

    array-length v13, v13

    move/from16 v0, p1

    if-ge v0, v13, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayList:[I

    aget v13, v13, p1

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/htc/music/DMPMusicPlaybackService;->getContentIDFromID(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_4
    const-string v13, "[DMPMusicPlaybackService]"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getAlbumArtPathByPosition()...index out of boundary => position = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", mPlayList.length = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayList:[I

    array-length v15, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v13, 0x0

    goto/16 :goto_0

    :cond_5
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v12

    const-string v13, "mounted"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_6

    const-string v13, "[DMPMusicPlaybackService]"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getAlbumArtPathByPosition()...SD card is not ready...status = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v13, 0x0

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/DMPMusicPlaybackService;->mAlbumArtNameTable:Ljava/util/Hashtable;

    if-eqz v13, :cond_9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/DMPMusicPlaybackService;->mAlbumArtNameTable:Ljava/util/Hashtable;

    invoke-virtual {v13, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct/range {p0 .. p0}, Lcom/htc/music/DMPMusicPlaybackService;->getDmpAlbumArtDirPath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/DMPMusicPlaybackService;->mAlbumArtNameTable:Ljava/util/Hashtable;

    invoke-virtual {v13, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    :cond_7
    :goto_2
    if-eqz v11, :cond_9

    move-object v13, v11

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct/range {p0 .. p0}, Lcom/htc/music/DMPMusicPlaybackService;->getDmpAlbumArtDirPath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/htc/music/DMPMusicPlaybackService;->checkFileExist(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/DMPMusicPlaybackService;->mAlbumArtNameTable:Ljava/util/Hashtable;

    invoke-virtual {v13, v1, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v11, v8

    goto :goto_2

    :cond_9
    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v9, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/DMPMusicPlaybackService;->mQueueToGetAlbumArtPath:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v9, v13, :cond_a

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/DMPMusicPlaybackService;->mQueueToGetAlbumArtPath:Ljava/util/ArrayList;

    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    if-nez v2, :cond_b

    const-string v13, "[DMPMusicPlaybackService]"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getAlbumArtPathByPosition()...curCV is null when i = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    :goto_4
    const/4 v13, 0x1

    if-ne v6, v13, :cond_11

    const-string v13, "[DMPMusicPlaybackService]"

    const-string v14, "getAlbumArtPathByPosition()..Duplated Album art request. Ignore this request and break it."

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v13, 0x0

    goto/16 :goto_0

    :cond_b
    const-string v13, "content"

    invoke-virtual {v2, v13}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_c

    const-string v13, "shuffle"

    invoke-virtual {v2, v13}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_d

    :cond_c
    const-string v13, "[DMPMusicPlaybackService]"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getAlbumArtPathByPosition()...There is no content id or shuffle information in curCV when i = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_d
    const-string v13, "content"

    invoke-virtual {v2, v13}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v13, "shuffle"

    invoke-virtual {v2, v13}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v3, :cond_e

    if-nez v4, :cond_f

    :cond_e
    const-string v13, "[DMPMusicPlaybackService]"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getAlbumArtPathByPosition()...curCV_contentId or curCV_shuffleMode is null when i = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_f
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_10

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-nez v13, :cond_10

    const/4 v6, 0x1

    goto :goto_4

    :cond_10
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_3

    :cond_11
    if-nez v11, :cond_12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/DMPMusicPlaybackService;->mNonUIHandler:Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;

    const/16 v14, 0x2afc

    invoke-virtual {v13, v14}, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v13, "shuffle"

    const/4 v14, 0x0

    invoke-virtual {v5, v13, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v13, "position"

    move/from16 v0, p1

    invoke-virtual {v5, v13, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v13, "server"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/DMPMusicPlaybackService;->mServerID:Ljava/lang/String;

    invoke-virtual {v5, v13, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v13, "content"

    invoke-virtual {v5, v13, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v5}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/DMPMusicPlaybackService;->mNonUIHandler:Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;

    invoke-virtual {v13, v10}, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_12
    move-object v13, v11

    goto/16 :goto_0
.end method

.method public getAlbumArtPathByShufflePosition(I)Ljava/lang/String;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v13, "[DMPMusicPlaybackService]"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getAlbumArtPathByShufflePosition()... position => "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x0

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayList:[I

    if-nez v13, :cond_0

    const-string v13, "[DMPMusicPlaybackService]"

    const-string v14, "getAlbumArtPathByShufflePosition()...mPlayList is null!!!"

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v13, 0x0

    :goto_0
    return-object v13

    :cond_0
    if-ltz p1, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayList:[I

    array-length v13, v13

    move/from16 v0, p1

    if-ge v0, v13, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayList:[I

    aget v13, v13, p1

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/htc/music/DMPMusicPlaybackService;->getContentIDFromID(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v13, "[DMPMusicPlaybackService]"

    const-string v14, "getAlbumArtPathByShufflePosition()...contentID is null!!!"

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v13, 0x0

    goto :goto_0

    :cond_1
    const-string v13, "[DMPMusicPlaybackService]"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getAlbumArtPathByShufflePosition()...index out of boundary => position = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", mPlayList.length"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayList:[I

    array-length v15, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v13, 0x0

    goto :goto_0

    :cond_2
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v12

    const-string v13, "mounted"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3

    const-string v13, "[DMPMusicPlaybackService]"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getAlbumArtPathByPosition()...SD card is not ready...status = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v13, 0x0

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/DMPMusicPlaybackService;->mAlbumArtNameTable:Ljava/util/Hashtable;

    if-eqz v13, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/DMPMusicPlaybackService;->mAlbumArtNameTable:Ljava/util/Hashtable;

    invoke-virtual {v13, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct/range {p0 .. p0}, Lcom/htc/music/DMPMusicPlaybackService;->getDmpAlbumArtDirPath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/DMPMusicPlaybackService;->mAlbumArtNameTable:Ljava/util/Hashtable;

    invoke-virtual {v13, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    :cond_4
    :goto_1
    if-eqz v11, :cond_6

    move-object v13, v11

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct/range {p0 .. p0}, Lcom/htc/music/DMPMusicPlaybackService;->getDmpAlbumArtDirPath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/htc/music/DMPMusicPlaybackService;->checkFileExist(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/DMPMusicPlaybackService;->mAlbumArtNameTable:Ljava/util/Hashtable;

    invoke-virtual {v13, v1, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v11, v8

    goto :goto_1

    :cond_6
    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v9, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/DMPMusicPlaybackService;->mQueueToGetAlbumArtPath:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v9, v13, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/DMPMusicPlaybackService;->mQueueToGetAlbumArtPath:Ljava/util/ArrayList;

    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    if-nez v2, :cond_8

    const-string v13, "[DMPMusicPlaybackService]"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getAlbumArtPathByPosition()...curCV is null when i = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_3
    const/4 v13, 0x1

    if-ne v6, v13, :cond_e

    const-string v13, "[DMPMusicPlaybackService]"

    const-string v14, "getAlbumArtPathByShufflePosition()..Duplated Album art request. Ignore this request and break it."

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v13, 0x0

    goto/16 :goto_0

    :cond_8
    const-string v13, "content"

    invoke-virtual {v2, v13}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_9

    const-string v13, "shuffle"

    invoke-virtual {v2, v13}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_a

    :cond_9
    const-string v13, "[DMPMusicPlaybackService]"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getAlbumArtPathByPosition()...There is no content id or shuffle information in curCV when i = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_a
    const-string v13, "content"

    invoke-virtual {v2, v13}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v13, "shuffle"

    invoke-virtual {v2, v13}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v3, :cond_b

    if-nez v4, :cond_c

    :cond_b
    const-string v13, "[DMPMusicPlaybackService]"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getAlbumArtPathByPosition()...curCV_contentId or curCV_shuffleMode is null when i = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_c
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_d

    const/4 v6, 0x1

    goto :goto_3

    :cond_d
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2

    :cond_e
    if-nez v11, :cond_f

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/DMPMusicPlaybackService;->mNonUIHandler:Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;

    const/16 v14, 0x2afc

    invoke-virtual {v13, v14}, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v13, "shuffle"

    const/4 v14, 0x1

    invoke-virtual {v5, v13, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v13, "position"

    move/from16 v0, p1

    invoke-virtual {v5, v13, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v13, "server"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/DMPMusicPlaybackService;->mServerID:Ljava/lang/String;

    invoke-virtual {v5, v13, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v13, "content"

    invoke-virtual {v5, v13, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v5}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/DMPMusicPlaybackService;->mNonUIHandler:Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;

    invoke-virtual {v13, v10}, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_f
    move-object v13, v11

    goto/16 :goto_0
.end method

.method public getAlbumName()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mDLNAContentItemDetails:Lcom/htc/music/DMPContentItemDetails;

    iget-object v1, v1, Lcom/htc/music/DMPContentItemDetails;->contentAlbum:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mDLNAContentItemDetails:Lcom/htc/music/DMPContentItemDetails;

    iget-object v1, v1, Lcom/htc/music/DMPContentItemDetails;->contentAlbum:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v0, "<unknown>"

    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mDLNAContentItemDetails:Lcom/htc/music/DMPContentItemDetails;

    iget-object v0, v1, Lcom/htc/music/DMPContentItemDetails;->contentAlbum:Ljava/lang/String;

    goto :goto_0
.end method

.method public getArtistName()Ljava/lang/String;
    .locals 10

    monitor-enter p0

    const/4 v9, 0x0

    const/4 v8, 0x1

    :try_start_0
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mCursor:Landroid/database/Cursor;

    const-string v1, "artist_name"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    if-ltz v7, :cond_4

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v8, 0x0

    :cond_0
    :goto_0
    if-eqz v8, :cond_1

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayList:[I

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayPos:I

    if-ltz v0, :cond_5

    iget v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayPos:I

    iget-object v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayList:[I

    array-length v1, v1

    if-ge v0, v1, :cond_5

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayList:[I

    iget v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayPos:I

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/htc/music/util/MusicDLNAStore;->getServerContentUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/DMPMusicPlaybackService;->mCursorCols:[Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " AND "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "file_type"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "= "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "index_id COLLATE NOCASE ASC"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mCursor:Landroid/database/Cursor;

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mCursor:Landroid/database/Cursor;

    const-string v1, "artist_name"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    :cond_1
    :goto_1
    if-eqz v9, :cond_2

    const-string v0, ""

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const-string v9, "<unknown>"

    :cond_3
    monitor-exit p0

    return-object v9

    :cond_4
    const-string v0, "[DMPMusicPlaybackService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getArtistName()...index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_5
    :try_start_1
    const-string v0, "[DMPMusicPlaybackService]"

    const-string v1, "getArtistName()...Fail to get artist name...."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public getAudioId()I
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayPos:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayPos:I

    iget v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayListLen:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayer:Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayList:[I

    iget v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayPos:I

    aget v0, v0, v1

    monitor-exit p0

    :goto_0
    return v0

    :cond_0
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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayer:Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayer:Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayer:Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->getAudioSessionId()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBufferingPercent()I
    .locals 3

    iget-object v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayer:Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;

    invoke-virtual {v1}, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->getPercentage()F

    move-result v1

    const/high16 v2, 0x42c8

    mul-float/2addr v1, v2

    float-to-int v0, v1

    return v0
.end method

.method public getComposer()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mDLNAContentItemDetails:Lcom/htc/music/DMPContentItemDetails;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mDLNAContentItemDetails:Lcom/htc/music/DMPContentItemDetails;

    iget-object v0, v1, Lcom/htc/music/DMPContentItemDetails;->contentComposer:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mDLNAContentItemDetails:Lcom/htc/music/DMPContentItemDetails;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mDLNAContentItemDetails:Lcom/htc/music/DMPContentItemDetails;

    iget-object v0, v1, Lcom/htc/music/DMPContentItemDetails;->fileName:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public getGenre()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mDLNAContentItemDetails:Lcom/htc/music/DMPContentItemDetails;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mDLNAContentItemDetails:Lcom/htc/music/DMPContentItemDetails;

    iget-object v0, v1, Lcom/htc/music/DMPContentItemDetails;->contentGenre:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mDLNAContentItemDetails:Lcom/htc/music/DMPContentItemDetails;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "filepath"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getNotifyIcon()Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getNowplayingQueue(I)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v1, "[DMPMusicPlaybackService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNowplayingQueue()... interval => "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x0

    const/4 v14, 0x0

    const/4 v9, 0x0

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "serve_id= \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/DMPMusicPlaybackService;->mServerID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "container"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "= \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/DMPMusicPlaybackService;->mContainerID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "file_type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AND _id IN ("

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v8, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayListLen:I

    if-ge v8, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayList:[I

    aget v1, v1, v8

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayListLen:I

    add-int/lit8 v1, v1, -0x1

    if-ge v8, v1, :cond_0

    const-string v1, ","

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    const-string v1, ")"

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/htc/music/util/MusicDLNAStore;->getServerContentUri()Landroid/net/Uri;

    move-result-object v2

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "content_name"

    aput-object v4, v3, v1

    const/4 v1, 0x1

    const-string v4, "artist_name"

    aput-object v4, v3, v1

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "index_id COLLATE NOCASE ASC"

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v6}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    if-eqz v14, :cond_7

    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v11

    if-lez v11, :cond_7

    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v12, 0x0

    if-nez p1, :cond_2

    move/from16 p1, v11

    :cond_2
    move/from16 v0, p1

    if-le v11, v0, :cond_5

    move/from16 v0, p1

    new-array v9, v0, [Landroid/content/ContentValues;

    :goto_1
    const/4 v8, 0x0

    :goto_2
    if-ge v8, v11, :cond_6

    rem-int v10, v8, p1

    const-string v1, "content_name"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const-string v1, "artist_name"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    move/from16 v0, p1

    if-lt v8, v0, :cond_3

    if-nez v10, :cond_3

    add-int/lit8 v12, v12, 0x1

    if-eqz v9, :cond_3

    array-length v1, v9

    if-lez v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/DMPMusicPlaybackService;->mNotify:Lcom/htc/music/IPluginIPCNotify;

    add-int/lit8 v2, v12, -0x1

    mul-int v2, v2, p1

    mul-int v3, p1, v12

    add-int/lit8 v3, v3, -0x1

    const-string v4, "com.htc.music.DMPMusicPlaybackService"

    invoke-interface {v1, v9, v2, v3, v4}, Lcom/htc/music/IPluginIPCNotify;->onNowplayingQueueUpdated([Landroid/content/ContentValues;IILjava/lang/String;)V

    :cond_3
    aget-object v1, v9, v10

    if-nez v1, :cond_4

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    aput-object v1, v9, v10

    :cond_4
    aget-object v1, v9, v10

    const-string v2, "title"

    invoke-virtual {v1, v2, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    aget-object v1, v9, v10

    const-string v2, "artist"

    invoke-virtual {v1, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_5
    new-array v9, v11, [Landroid/content/ContentValues;

    goto :goto_1

    :cond_6
    if-eqz v9, :cond_7

    if-lez v11, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/DMPMusicPlaybackService;->mNotify:Lcom/htc/music/IPluginIPCNotify;

    mul-int v2, p1, v12

    add-int/lit8 v3, v11, -0x1

    const-string v4, "com.htc.music.DMPMusicPlaybackService"

    invoke-interface {v1, v9, v2, v3, v4}, Lcom/htc/music/IPluginIPCNotify;->onNowplayingQueueUpdated([Landroid/content/ContentValues;IILjava/lang/String;)V

    :cond_7
    if-eqz v14, :cond_8

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    const/4 v14, 0x0

    :cond_8
    return-void
.end method

.method public getPluginIcon()Landroid/graphics/Bitmap;
    .locals 5

    const/16 v4, 0x20

    invoke-virtual {p0}, Lcom/htc/music/DMPMusicPlaybackService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02003a

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v4, v4, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v1, 0x0

    return-object v0
.end method

.method public getPluginNotReadyMsg()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/htc/music/DMPMusicPlaybackService;->getDLNAErrorString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPositionByShufflePosition(I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    iget v2, p0, Lcom/htc/music/DMPMusicPlaybackService;->mShuffleMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayListLen:I

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayListBak:[I

    aget v2, v2, v0

    iget-object v3, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayList:[I

    aget v3, v3, p1

    if-ne v2, v3, :cond_1

    move v1, v0

    :cond_0
    :goto_1
    const-string v2, "[DMPMusicPlaybackService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<< getPositionByShufflePosition( "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " )...retval => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v1, p1

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getQueuePosition()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayPos:I

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getQueueSize()I
    .locals 1

    iget v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayListLen:I

    return v0
.end method

.method public getRepeatMode()I
    .locals 1

    iget v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mRepeatMode:I

    return v0
.end method

.method public getShuffleMode()I
    .locals 1

    iget v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mShuffleMode:I

    return v0
.end method

.method public getShufflePositionByPosition(I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    iget v2, p0, Lcom/htc/music/DMPMusicPlaybackService;->mShuffleMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayListLen:I

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayListBak:[I

    aget v2, v2, p1

    iget-object v3, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayList:[I

    aget v3, v3, v0

    if-ne v2, v3, :cond_1

    move v1, v0

    :cond_0
    :goto_1
    const-string v2, "[DMPMusicPlaybackService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">>> getShufflePositionByPosition( "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " )...retval => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v1, p1

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getTrackDetails(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v4, 0x1

    const-string v1, "[DMPMusicPlaybackService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTrackDetails()... position => "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-ltz p1, :cond_0

    iget v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayListLen:I

    if-lt p1, v1, :cond_2

    :cond_0
    const-string v1, "[DMPMusicPlaybackService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTrackDetails()...position is illegal, position => "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iput p1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mQueryPosition:I

    iget v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mShuffleMode:I

    if-ne v1, v4, :cond_3

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayListBak:[I

    :goto_1
    aget v1, v0, p1

    invoke-direct {p0, v1}, Lcom/htc/music/DMPMusicPlaybackService;->getContentIDFromID(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mQueryContentID:Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mServerID:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mQueryContentID:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mDLNAService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v1, :cond_1

    const-string v1, "[DMPMusicPlaybackService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "### getTrackDetails()... getContentItemDetails...mServerID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/DMPMusicPlaybackService;->mServerID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mQueryContentID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/DMPMusicPlaybackService;->mQueryContentID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mDLNAService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget-object v2, p0, Lcom/htc/music/DMPMusicPlaybackService;->mServerID:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/music/DMPMusicPlaybackService;->mQueryContentID:Ljava/lang/String;

    invoke-interface {v1, v4, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->getContentItemDetails(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayList:[I

    goto :goto_1
.end method

.method public getTrackName()Ljava/lang/String;
    .locals 10

    monitor-enter p0

    const/4 v9, 0x0

    const/4 v8, 0x1

    :try_start_0
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mCursor:Landroid/database/Cursor;

    const-string v1, "content_name"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    if-ltz v7, :cond_2

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v8, 0x0

    :cond_0
    :goto_0
    if-eqz v8, :cond_1

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayList:[I

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayPos:I

    if-ltz v0, :cond_3

    iget v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayPos:I

    iget-object v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayList:[I

    array-length v1, v1

    if-ge v0, v1, :cond_3

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayList:[I

    iget v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayPos:I

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/htc/music/util/MusicDLNAStore;->getServerContentUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/DMPMusicPlaybackService;->mCursorCols:[Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " AND "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "file_type"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "= "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "index_id COLLATE NOCASE ASC"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mCursor:Landroid/database/Cursor;

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mCursor:Landroid/database/Cursor;

    const-string v1, "content_name"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    :cond_1
    :goto_1
    monitor-exit p0

    return-object v9

    :cond_2
    const-string v0, "[DMPMusicPlaybackService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTrackName()...index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :try_start_1
    const-string v0, "[DMPMusicPlaybackService]"

    const-string v1, "getTrackName()...Fail to get track name...."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public isPlaying()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mIsSupposedToBePlaying:Z

    return v0
.end method

.method public isPluginReady()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mCurrentState:Lcom/htc/music/DMPMusicPlaybackService$DMPState;

    sget-object v2, Lcom/htc/music/DMPMusicPlaybackService$DMPState;->READY:Lcom/htc/music/DMPMusicPlaybackService$DMPState;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public next(Z)V
    .locals 3

    const-string v0, "[DMPMusicPlaybackService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "^^next()...force = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mTimePointToNextOrPre:J

    iget v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayListLen:I

    if-gtz v0, :cond_0

    const-string v0, "[DMPMusicPlaybackService]"

    const-string v1, "No play queue"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayPos:I

    iget v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayListLen:I

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_4

    iget v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mRepeatMode:I

    if-nez v0, :cond_2

    if-nez p1, :cond_2

    invoke-direct {p0}, Lcom/htc/music/DMPMusicPlaybackService;->gotoIdleState()V

    const-string v0, "com.htc.music.plugin.playbackcomplete"

    invoke-direct {p0, v0}, Lcom/htc/music/DMPMusicPlaybackService;->pluginNotifyChange(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mIsSupposedToBePlaying:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayPos:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mIsPlayPressed:Z

    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/htc/music/DMPMusicPlaybackService;->openCurrent()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "com.htc.music.plugin.metachanged"

    invoke-direct {p0, v0}, Lcom/htc/music/DMPMusicPlaybackService;->pluginNotifyChange(Ljava/lang/String;)V

    const-string v0, "[DMPMusicPlaybackService]"

    const-string v1, "^^next()...END "

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :try_start_1
    iget v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mRepeatMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    if-eqz p1, :cond_1

    :cond_3
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayPos:I

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_4
    :try_start_2
    iget v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayPos:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 4

    iget-object v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mServiceInUse:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mServiceInUse:I

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[DMPMusicPlaybackService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBind()...MediaPlayback is onBind: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ref count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/music/DMPMusicPlaybackService;->mServiceInUse:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/htc/music/DMPMusicPlaybackService;->reloadQueue(Z)V

    invoke-direct {p0}, Lcom/htc/music/DMPMusicPlaybackService;->openCurrent()V

    const-class v1, Lcom/htc/music/IDmpUiPlaybackService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "[DMPMusicPlaybackService]"

    const-string v2, ">> onBind IDmpUiPlaybackService!! <<"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mUiBinder:Landroid/os/IBinder;

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mBinder:Landroid/os/IBinder;

    goto :goto_0
.end method

.method public onCreate()V
    .locals 7

    const-string v4, "[DMPMusicPlaybackService]"

    const-string v5, "onCreate()..."

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v4, "audio"

    invoke-virtual {p0, v4}, Lcom/htc/music/DMPMusicPlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioManager;

    iput-object v4, p0, Lcom/htc/music/DMPMusicPlaybackService;->mAudioManager:Landroid/media/AudioManager;

    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    const/4 v4, 0x2

    invoke-virtual {p0, v4, v2}, Lcom/htc/music/DMPMusicPlaybackService;->startForeground(ILandroid/app/Notification;)V

    const-string v4, "DMP"

    const/4 v5, 0x3

    invoke-virtual {p0, v4, v5}, Lcom/htc/music/DMPMusicPlaybackService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    new-instance v4, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;

    invoke-direct {v4, p0}, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;-><init>(Lcom/htc/music/DMPMusicPlaybackService;)V

    iput-object v4, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayer:Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;

    iget-object v4, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayer:Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;

    iget-object v5, p0, Lcom/htc/music/DMPMusicPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5}, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->setHandler(Landroid/os/Handler;)V

    const-string v4, "power"

    invoke-virtual {p0, v4}, Lcom/htc/music/DMPMusicPlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    const/4 v4, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/music/DMPMusicPlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v4, p0, Lcom/htc/music/DMPMusicPlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    iget-object v4, p0, Lcom/htc/music/DMPMusicPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v4}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iget-object v4, p0, Lcom/htc/music/DMPMusicPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const-wide/32 v5, 0xea60

    invoke-virtual {v4, v0, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    invoke-direct {p0}, Lcom/htc/music/DMPMusicPlaybackService;->bindDLNAService()Z

    new-instance v3, Landroid/os/HandlerThread;

    const-string v4, "[DMPMusicPlaybackService]"

    const/16 v5, 0xa

    invoke-direct {v3, v4, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/music/DMPMusicPlaybackService;->mNonUILooper:Landroid/os/Looper;

    new-instance v4, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;

    iget-object v5, p0, Lcom/htc/music/DMPMusicPlaybackService;->mNonUILooper:Landroid/os/Looper;

    invoke-direct {v4, p0, v5}, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;-><init>(Lcom/htc/music/DMPMusicPlaybackService;Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/htc/music/DMPMusicPlaybackService;->mNonUIHandler:Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;

    invoke-static {p0}, Lcom/htc/music/util/DlnaUtils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/htc/music/DMPMusicPlaybackService$DMPState;->READY:Lcom/htc/music/DMPMusicPlaybackService$DMPState;

    iput-object v4, p0, Lcom/htc/music/DMPMusicPlaybackService;->mCurrentState:Lcom/htc/music/DMPMusicPlaybackService$DMPState;

    :goto_0
    return-void

    :cond_0
    sget-object v4, Lcom/htc/music/DMPMusicPlaybackService$DMPState;->WIFI_DISCONNECTED:Lcom/htc/music/DMPMusicPlaybackService$DMPState;

    iput-object v4, p0, Lcom/htc/music/DMPMusicPlaybackService;->mCurrentState:Lcom/htc/music/DMPMusicPlaybackService$DMPState;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "[DMPMusicPlaybackService]"

    const-string v1, "onDestroy()..."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/music/DMPMusicPlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "[DMPMusicPlaybackService]"

    const-string v1, "Service being destroyed while still playing."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mNonUIHandler:Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;

    const/16 v1, 0x2b01

    invoke-virtual {v0, v1}, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    iput-object v2, p0, Lcom/htc/music/DMPMusicPlaybackService;->mCursor:Landroid/database/Cursor;

    :cond_1
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/music/DMPMusicPlaybackService;->stopForeground(Z)V

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mDLNAContentItemDetails:Lcom/htc/music/DMPContentItemDetails;

    invoke-virtual {v0}, Lcom/htc/music/DMPContentItemDetails;->reset()V

    invoke-direct {p0}, Lcom/htc/music/DMPMusicPlaybackService;->unBindDLNAService()V

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mAlbumArtNameTable:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mIdToContentIdTable:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mQueueToGetAlbumArtPath:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const-string v0, "[DMPMusicPlaybackService]"

    const-string v1, "onDestroy finished."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 4

    const-string v1, "[DMPMusicPlaybackService]"

    const-string v2, "onRebind()..."

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mServiceInUse:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mServiceInUse:I

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[DMPMusicPlaybackService]"

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

    iget v3, p0, Lcom/htc/music/DMPMusicPlaybackService;->mServiceInUse:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/app/Service;->onRebind(Landroid/content/Intent;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 10

    const-wide/16 v8, -0x1

    const/4 v7, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const-string v3, "[DMPMusicPlaybackService]"

    const-string v4, "onStartCommand()..."

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput p3, p0, Lcom/htc/music/DMPMusicPlaybackService;->mServiceStartId:I

    iget-object v3, p0, Lcom/htc/music/DMPMusicPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    const-string v3, "command"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "forcePlay"

    invoke-virtual {p1, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    const-string v3, "com.htc.music.refreshplaylist"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "[DMPMusicPlaybackService]"

    const-string v4, "onStartCommand CMDREFRESH_PLAYLIST"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "content"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/DMPMusicPlaybackService;->mContentID:Ljava/lang/String;

    const-string v3, "server"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/DMPMusicPlaybackService;->mServerID:Ljava/lang/String;

    const-string v3, "container"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/DMPMusicPlaybackService;->mContainerID:Ljava/lang/String;

    const-string v3, "startIdx"

    invoke-virtual {p1, v3, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/htc/music/DMPMusicPlaybackService;->mStartIdx:J

    const-string v3, "endIdx"

    invoke-virtual {p1, v3, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/htc/music/DMPMusicPlaybackService;->mEndIdx:J

    const-string v3, "direction"

    invoke-virtual {p1, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/htc/music/DMPMusicPlaybackService;->mDirection:I

    iget-object v3, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v4, "shufflemode"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/htc/music/DMPMusicPlaybackService;->mShuffleMode:I

    const-string v3, "dmsFilePath"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/DMPMusicPlaybackService;->mDmsFilePath:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/htc/music/DMPMusicPlaybackService;->reloadQueue(Z)V

    invoke-direct {p0}, Lcom/htc/music/DMPMusicPlaybackService;->openCurrent()V

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/music/DMPMusicPlaybackService;->play()V

    :cond_0
    iget-object v3, p0, Lcom/htc/music/DMPMusicPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/htc/music/DMPMusicPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/DMPMusicPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const-wide/32 v4, 0xea60

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return v6
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 6

    const/4 v5, 0x1

    const-string v2, "[DMPMusicPlaybackService]"

    const-string v3, "onUnbind()..."

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lcom/htc/music/DMPMusicPlaybackService;->mServiceInUse:I

    if-gtz v2, :cond_1

    const-string v2, "[DMPMusicPlaybackService]"

    const-string v3, "incorrect service refer count, try to recover it"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v5

    :cond_1
    iget v2, p0, Lcom/htc/music/DMPMusicPlaybackService;->mServiceInUse:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/htc/music/DMPMusicPlaybackService;->mServiceInUse:I

    const-string v2, "[DMPMusicPlaybackService]"

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

    iget v4, p0, Lcom/htc/music/DMPMusicPlaybackService;->mServiceInUse:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v5}, Lcom/htc/music/DMPMusicPlaybackService;->saveQueue(Z)V

    invoke-virtual {p0}, Lcom/htc/music/DMPMusicPlaybackService;->isPlaying()Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPausedByTransientLossOfFocus:Z

    if-nez v2, :cond_0

    iget v2, p0, Lcom/htc/music/DMPMusicPlaybackService;->mServiceInUse:I

    if-gtz v2, :cond_0

    iget v2, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayListLen:I

    if-gtz v2, :cond_2

    iget-object v2, p0, Lcom/htc/music/DMPMusicPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/htc/music/DMPMusicPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/DMPMusicPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const-wide/32 v3, 0xea60

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v5}, Lcom/htc/music/DMPMusicPlaybackService;->stopForeground(Z)V

    iget v2, p0, Lcom/htc/music/DMPMusicPlaybackService;->mServiceStartId:I

    invoke-virtual {p0, v2}, Lcom/htc/music/DMPMusicPlaybackService;->stopSelf(I)V

    const-string v2, "[DMPMusicPlaybackService]"

    const-string v3, "onUnbind finished"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public pause()V
    .locals 4

    const/4 v3, 0x0

    const-string v1, "[DMPMusicPlaybackService]"

    const-string v2, "pause()..."

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayer:Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;

    invoke-virtual {v1}, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mUriPath:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mUriPath:Ljava/lang/String;

    const-string v2, "htc-dlna://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "[DMPMusicPlaybackService]"

    const-string v2, "pause()...This song could be allowed to be paused. Do nothing while pressing pasue button"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iput-boolean v3, p0, Lcom/htc/music/DMPMusicPlaybackService;->mIsPlayPressed:Z

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/htc/music/DMPMusicPlaybackService;->isPlaying()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_2

    :try_start_1
    iget-object v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayer:Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;

    invoke-virtual {v1}, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->pause()V

    invoke-direct {p0}, Lcom/htc/music/DMPMusicPlaybackService;->gotoIdleState()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mIsSupposedToBePlaying:Z

    const-string v1, "com.htc.music.plugin.statechanged"

    invoke-direct {p0, v1}, Lcom/htc/music/DMPMusicPlaybackService;->pluginNotifyChange(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    :goto_1
    :try_start_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public play()V
    .locals 4

    const/4 v3, 0x1

    const-string v1, "[DMPMusicPlaybackService]"

    const-string v2, "play()..."

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v3, p0, Lcom/htc/music/DMPMusicPlaybackService;->mIsPlayPressed:Z

    iget-object v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayer:Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;

    invoke-virtual {v1}, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "[DMPMusicPlaybackService]"

    const-string v2, "call play() and mediaplayer is initialized"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayer:Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;

    invoke-virtual {v1}, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->start()V

    iget-boolean v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mIsSupposedToBePlaying:Z

    if-nez v1, :cond_0

    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/htc/music/DMPMusicPlaybackService;->startForeground(ILandroid/app/Notification;)V

    iput-boolean v3, p0, Lcom/htc/music/DMPMusicPlaybackService;->mIsSupposedToBePlaying:Z

    const-string v1, "com.htc.music.plugin.statechanged"

    invoke-direct {p0, v1}, Lcom/htc/music/DMPMusicPlaybackService;->pluginNotifyChange(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "[DMPMusicPlaybackService]"

    const-string v2, "play()...mediaplayer is not initialized..."

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public position()J
    .locals 2

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayer:Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayer:Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayer:Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->position()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public prev()V
    .locals 4

    const-string v0, "[DMPMusicPlaybackService]"

    const-string v1, "%%prev()...Begin"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mTimePointToNextOrPre:J

    invoke-virtual {p0}, Lcom/htc/music/DMPMusicPlaybackService;->position()J

    move-result-wide v0

    const-wide/16 v2, 0xbb8

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/htc/music/DMPMusicPlaybackService;->seek(J)J

    monitor-exit p0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayPos:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayPos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayPos:I

    :goto_1
    invoke-direct {p0}, Lcom/htc/music/DMPMusicPlaybackService;->openCurrent()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "com.htc.music.plugin.metachanged"

    invoke-direct {p0, v0}, Lcom/htc/music/DMPMusicPlaybackService;->pluginNotifyChange(Ljava/lang/String;)V

    const-string v0, "[DMPMusicPlaybackService]"

    const-string v1, "%%prev()...End"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :try_start_1
    iget v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayListLen:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayPos:I

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public registerCallback(Lcom/htc/music/IPluginIPCNotify;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "[DMPMusicPlaybackService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerCallback()...cb = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mNotify:Lcom/htc/music/IPluginIPCNotify;

    :cond_0
    return-void
.end method

.method public seek(J)J
    .locals 8

    const-wide/16 v4, -0x1

    iget-object v6, p0, Lcom/htc/music/DMPMusicPlaybackService;->mUriPath:Ljava/lang/String;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/htc/music/DMPMusicPlaybackService;->mUriPath:Ljava/lang/String;

    const-string v7, "htc-dlna://"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "[DMPMusicPlaybackService]"

    const-string v7, "seek()...This song could be allowed to be seeked. Do nothing while seeking."

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-wide v4

    :cond_0
    iget-object v6, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayer:Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayer:Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;

    invoke-virtual {v6}, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {p0}, Lcom/htc/music/DMPMusicPlaybackService;->duration()J

    move-result-wide v0

    long-to-float v4, v0

    iget-object v5, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayer:Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;

    invoke-virtual {v5}, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->getPercentage()F

    move-result v5

    mul-float/2addr v4, v5

    float-to-long v2, v4

    const-string v4, "[DMPMusicPlaybackService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "seek()...before adjusting...pos = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", curMax = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-gez v4, :cond_1

    const-wide/16 p1, 0x0

    :cond_1
    cmp-long v4, p1, v2

    if-lez v4, :cond_2

    move-wide p1, v2

    :cond_2
    const-string v4, "[DMPMusicPlaybackService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "seek()...after adjusting...pos = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", curMax = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayer:Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;

    invoke-virtual {v4, p1, p2}, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->seek(J)J

    move-result-wide v4

    goto :goto_0

    :cond_3
    const-string v6, "[DMPMusicPlaybackService]"

    const-string v7, "seek()...mPlayer = null or mPlayer is not initialized... "

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setPlaylist([I)V
    .locals 7

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/htc/music/DMPMusicPlaybackService;->getAudioId()I

    move-result v3

    array-length v1, p1

    const/4 v2, 0x1

    iget v5, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayListLen:I

    if-ne v5, v1, :cond_0

    const/4 v2, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget v5, p1, v0

    iget-object v6, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayList:[I

    aget v6, v6, v0

    if-eq v5, v6, :cond_4

    const/4 v2, 0x1

    :cond_0
    if-eqz v2, :cond_1

    const/4 v5, -0x1

    invoke-direct {p0, p1, v5}, Lcom/htc/music/DMPMusicPlaybackService;->addToPlayList([II)V

    :cond_1
    const/4 v4, 0x0

    const/4 v0, 0x0

    :goto_1
    array-length v5, p1

    if-ge v0, v5, :cond_2

    aget v5, p1, v0

    if-ne v5, v3, :cond_5

    iput v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayPos:I

    const/4 v4, 0x1

    :cond_2
    if-nez v4, :cond_3

    const-string v5, "[DMPMusicPlaybackService]"

    const-string v6, "setPlaylist: cannot find the same audio id. Some thing must be wrong."

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    iput v5, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayPos:I

    invoke-direct {p0}, Lcom/htc/music/DMPMusicPlaybackService;->openCurrent()V

    :cond_3
    monitor-exit p0

    return-void

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public setQueuePosition(I)V
    .locals 3

    const-string v0, "[DMPMusicPlaybackService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setQueuePosition()...pos = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/DMPMusicPlaybackService;->initErrorRetryHandle()V

    iput p1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayPos:I

    invoke-direct {p0}, Lcom/htc/music/DMPMusicPlaybackService;->openCurrent()V

    const-string v0, "com.htc.music.plugin.metachanged"

    invoke-direct {p0, v0}, Lcom/htc/music/DMPMusicPlaybackService;->pluginNotifyChange(Ljava/lang/String;)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setRepeatMode(I)V
    .locals 3

    const-string v0, "[DMPMusicPlaybackService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRepeatMode()...repeatmode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mRepeatMode:I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/music/DMPMusicPlaybackService;->saveQueue(Z)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setShuffleMode(I)V
    .locals 5

    const/4 v4, 0x1

    const-string v1, "[DMPMusicPlaybackService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setShuffleMode()...shufflemode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mShuffleMode:I

    if-ne v1, p1, :cond_0

    iget v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayListLen:I

    if-lez v1, :cond_0

    monitor-exit p0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mShuffleMode:I

    iget v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mShuffleMode:I

    if-ne v1, v4, :cond_2

    iget v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayListLen:I

    invoke-direct {p0, v1}, Lcom/htc/music/DMPMusicPlaybackService;->ensurePlayListBakCapacity(I)V

    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayListLen:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayListBak:[I

    iget-object v2, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayList:[I

    aget v2, v2, v0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayListLen:I

    iget v2, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayPos:I

    invoke-direct {p0, v1, v2}, Lcom/htc/music/DMPMusicPlaybackService;->setShuffleSeq(II)V

    iget-object v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayList:[I

    invoke-direct {p0, v1}, Lcom/htc/music/DMPMusicPlaybackService;->applyShuffleSeq([I)[I

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/htc/music/DMPMusicPlaybackService;->setPlaylist([I)V

    :goto_2
    const-string v1, "com.htc.music.plugin.metachanged"

    invoke-direct {p0, v1}, Lcom/htc/music/DMPMusicPlaybackService;->pluginNotifyChange(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/htc/music/DMPMusicPlaybackService;->saveQueue(Z)V

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayListBak:[I

    if-eqz v1, :cond_4

    const/4 v0, 0x0

    :goto_3
    iget-object v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayListBak:[I

    array-length v1, v1

    if-ge v0, v1, :cond_3

    const-string v1, "[DMPMusicPlaybackService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setShuffleMode mPlayListBak:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayListBak:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    iget-object v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayListBak:[I

    invoke-virtual {p0, v1}, Lcom/htc/music/DMPMusicPlaybackService;->setPlaylist([I)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayListBak:[I

    goto :goto_2

    :cond_4
    const-string v1, "[DMPMusicPlaybackService]"

    const-string v2, "setShuffleMode()....mPlayListBak = null"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method public startPluginActivity()V
    .locals 0

    return-void
.end method

.method public stop()V
    .locals 2

    const-string v0, "[DMPMusicPlaybackService]"

    const-string v1, "stop()..."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/music/DMPMusicPlaybackService;->stop(Z)V

    return-void
.end method

.method public unregisterCallback()V
    .locals 2

    const-string v0, "[DMPMusicPlaybackService]"

    const-string v1, "unregisterCallback()..."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mNotify:Lcom/htc/music/IPluginIPCNotify;

    return-void
.end method

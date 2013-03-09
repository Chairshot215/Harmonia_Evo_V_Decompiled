.class public Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;
.super Lcom/htc/music/widget/MusicListActivity;
.source "DmsDetailBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$itemInfo;,
        Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;,
        Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;,
        Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaListAdapter;,
        Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaNotifyStub;,
        Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$workHandler;
    }
.end annotation


# static fields
.field private static final DETAIL_PAGE:I = 0x4

.field private static final DIALOG_ERROR:I = 0x1

.field private static final DIALOG_LOADING:I = 0x0

.field private static final DIRECTION_DOWN:I = 0x1

.field private static final DIRECTION_UP:I = -0x1

.field public static final DLNA_CALLER_ALBUM:I = 0x0

.field public static final DLNA_CALLER_MUSIC:I = 0x1

.field public static final DLNA_CALLER_MUSIC_BROWSER:I = 0x10

.field private static final GETCURSOR:I = 0x3

.field private static final GET_THUMBNAIL:I = 0x5

.field public static final INTENT_BROWSERLAYER:I = 0x0

.field public static final INTENT_UPPER:I = 0x1

.field public static final MENU_PLAYALL:I = 0xf

.field public static final MENU_PLAYING:I = 0xd

.field public static final MENU_REFRESH:I = 0xa

.field public static final MENU_ROOT:I = 0xb

.field public static final MENU_SHUFFLE:I = 0xe

.field public static final MENU_UP:I = 0xc

.field public static final PRESSMENU_DETAILS:I = 0x2

.field public static final PRESSMENU_PLAY:I = 0x1

.field private static final QUERY_COUNT:I = 0xa

.field private static final QUERY_TIMER:I = 0x3

.field private static final REFRESH:I = 0x0

.field private static final REMOVE_DIALOG:I = 0x1

.field private static final REMOVE_SPINNER:I = 0x2

.field public static final RESULT_FINISH:I = 0x0

.field public static final RESULT_ROOT:I = 0x1

.field public static final RESULT_SERVER:I = 0x3

.field public static final RESULT_UPPER:I = 0x2

.field private static final SET_TITLE:I = 0x6

.field private static final SHOW_ERRDIALOG:I = 0x7

.field private static final ServiceError_ServerNotFound:I = -0x1f5

.field private static final TAG:Ljava/lang/String; = "[DMS]"

.field private static final UPnPError_AuthorizationFail:I = 0x321

.field private static final kUPnPError_ConnectionFailed:I = -0x1

.field private static mServerIcon:Landroid/graphics/Bitmap;

.field private static mTime:J


# instance fields
.field private mAdapter:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaListAdapter;

.field private mBrowsingComplete:Z

.field private mClearImageCache:Z

.field private mConnection:Landroid/content/ServiceConnection;

.field private mContainerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContentList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentPage:I

.field mCursorCols:[Ljava/lang/String;

.field private mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

.field private mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

.field private mDefaultFolderIcon:Landroid/graphics/drawable/BitmapDrawable;

.field private mDestroy:Z

.field private mDetailIntent:Landroid/content/Intent;

.field private mDirection:I

.field private mDlnaMode:I

.field private mDmpListener:Landroid/content/BroadcastReceiver;

.field private mDmpService:Lcom/htc/music/IDmpUiPlaybackService;

.field private mFilePath:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mIconPath:Ljava/lang/String;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIniContainerID:Ljava/lang/String;

.field private mIniContainerName:Ljava/lang/String;

.field private mIniServerID:Ljava/lang/String;

.field private mIniServerName:Ljava/lang/String;

.field private mInitial:Z

.field private mIsMusicExist:Z

.field private mIsScrolling:Z

.field private mListView:Lcom/htc/widget/HtcListView;

.field private mLoadingNext:Z

.field private mLoadingPrev:Z

.field private mMediaService:Lcom/htc/music/IMediaPlaybackService;

.field private mMemoryCache:Lcom/htc/music/util/MemoryCacheBitmapByPosition;

.field private mNotifyCallback:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaNotifyStub;

.field private mPage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPreferences:Landroid/content/SharedPreferences;

.field private mSelectedItem:I

.field private mService:Lcom/htc/dlnainterface/IDLNAPluginService;

.field private mWorkHandler:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$workHandler;

.field private mWorkthread:Landroid/os/HandlerThread;

.field private mcurContent:Ljava/lang/String;

.field private mcurDMR:Ljava/lang/String;

.field private msc:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mServerIcon:Landroid/graphics/Bitmap;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/htc/music/widget/MusicListActivity;-><init>()V

    iput v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDirection:I

    iput-boolean v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mLoadingPrev:Z

    iput-boolean v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mLoadingNext:Z

    iput-boolean v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mBrowsingComplete:Z

    iput-boolean v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mClearImageCache:Z

    iput-object v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mMediaService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDlnaMode:I

    iput-object v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mcurContent:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mcurDMR:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaListAdapter;

    iput-boolean v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIsScrolling:Z

    iput-boolean v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDestroy:Z

    iput-object v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mWorkthread:Landroid/os/HandlerThread;

    iput-object v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mWorkHandler:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$workHandler;

    new-instance v0, Lcom/htc/music/util/MemoryCacheBitmapByPosition;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Lcom/htc/music/util/MemoryCacheBitmapByPosition;-><init>(I)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mMemoryCache:Lcom/htc/music/util/MemoryCacheBitmapByPosition;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mContainerList:Ljava/util/List;

    new-instance v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$1;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$1;-><init>(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDmpListener:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$9;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$9;-><init>(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaNotifyStub;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaNotifyStub;-><init>(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mNotifyCallback:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaNotifyStub;

    new-instance v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$10;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$10;-><init>(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mConnection:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$11;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$11;-><init>(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->msc:Landroid/content/ServiceConnection;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "content_id"

    aput-object v1, v0, v2

    const-string v1, "content_name"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "container"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mCursorCols:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->getDmpCurContent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mcurContent:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->setTitle()V

    return-void
.end method

.method static synthetic access$102(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mcurContent:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200()J
    .locals 2

    sget-wide v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mTime:J

    return-wide v0
.end method

.method static synthetic access$1202(J)J
    .locals 0

    sput-wide p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mTime:J

    return-wide p0
.end method

.method static synthetic access$1300(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)I
    .locals 1

    iget v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mCurrentPage:I

    return v0
.end method

.method static synthetic access$1400(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mPage:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mLoadingNext:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mLoadingNext:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mLoadingPrev:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mLoadingPrev:Z

    return p1
.end method

.method static synthetic access$1802(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mBrowsingComplete:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)I
    .locals 1

    iget v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDirection:I

    return v0
.end method

.method static synthetic access$200(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaListAdapter;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Lcom/htc/widget/HtcListView;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mListView:Lcom/htc/widget/HtcListView;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Lcom/htc/music/util/AsyncImageDecoder;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;Lcom/htc/music/util/AsyncImageDecoder;)Lcom/htc/music/util/AsyncImageDecoder;
    .locals 0

    iput-object p1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mFilePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIconPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIconPath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)I
    .locals 1

    iget v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDlnaMode:I

    return v0
.end method

.method static synthetic access$2500(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mcurDMR:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaNotifyStub;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mNotifyCallback:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaNotifyStub;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;Lcom/htc/music/IDmpUiPlaybackService;)Lcom/htc/music/IDmpUiPlaybackService;
    .locals 0

    iput-object p1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDmpService:Lcom/htc/music/IDmpUiPlaybackService;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 0

    iput-object p1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDefaultFolderIcon:Landroid/graphics/drawable/BitmapDrawable;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 0

    iput-object p1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDefaultFolderIcon:Landroid/graphics/drawable/BitmapDrawable;

    return-object p1
.end method

.method static synthetic access$300(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mContentList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Landroid/view/LayoutInflater;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Lcom/htc/music/util/MemoryCacheBitmapByPosition;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mMemoryCache:Lcom/htc/music/util/MemoryCacheBitmapByPosition;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIsScrolling:Z

    return v0
.end method

.method static synthetic access$3300(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$workHandler;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mWorkHandler:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$workHandler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Lcom/htc/dlnainterface/IDLNAPluginService;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    return-object v0
.end method

.method static synthetic access$402(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;Lcom/htc/dlnainterface/IDLNAPluginService;)Lcom/htc/dlnainterface/IDLNAPluginService;
    .locals 0

    iput-object p1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    return-object p1
.end method

.method static synthetic access$500(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIniServerID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIniContainerID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mInitial:Z

    return v0
.end method

.method static synthetic access$702(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mInitial:Z

    return p1
.end method

.method static synthetic access$800(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDestroy:Z

    return v0
.end method

.method static synthetic access$900(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDetailIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$902(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0

    iput-object p1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDetailIntent:Landroid/content/Intent;

    return-object p1
.end method

.method public static getApplyMaskBitmap(Landroid/content/res/Resources;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 10

    const/4 v9, 0x0

    invoke-static {p0, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-direct {v5, v9, v9, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-direct {v6, v9, v9, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v7, 0x0

    invoke-virtual {v3, p1, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    new-instance v5, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-direct {v5, v9, v9, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-direct {v6, v9, v9, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, v0, v5, v6, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v1, 0x0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    :cond_1
    return-object v2
.end method

.method private getDmpCurContent()Ljava/lang/String;
    .locals 3

    const-string v1, "[DMS]"

    const-string v2, "getDmpCurContent"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "DMP"

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "curContentId"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getFirstContent()Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mContentList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mContentList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    iget-object v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mContentList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;

    invoke-virtual {v1}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;->GetId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mContentList:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;

    invoke-virtual {v1}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;->GetId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getRandomContent()Ljava/lang/String;
    .locals 6

    iget-object v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mContentList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mContentList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_1
    iget-object v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mContentList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    int-to-double v4, v1

    mul-double/2addr v2, v4

    double-to-int v0, v2

    iget-object v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mContentList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;

    invoke-virtual {v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;->GetId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mContentList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;

    invoke-virtual {v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;->GetId()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->getRandomContent()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private setTitle()V
    .locals 4

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, v1

    check-cast v0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;

    iget-object v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIniContainerID:Ljava/lang/String;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIniServerName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setSecondaryTitle(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIniContainerName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setSecondaryTitle(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public GetCursor(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "serve_id = \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "container"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "file_type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " OR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "file_type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "index_id COLLATE NOCASE ASC"

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/htc/music/util/MusicDLNAStore;->getServerContentUri()Landroid/net/Uri;

    move-result-object v1

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-nez v7, :cond_1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-lez v6, :cond_0

    move-object v2, v7

    goto :goto_0
.end method

.method public GetCursorIdx(Landroid/database/Cursor;)Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;
    .locals 12

    const/4 v11, 0x1

    const/4 v10, -0x1

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz p1, :cond_0

    if-gtz v0, :cond_2

    :cond_0
    const/4 v4, 0x0

    :cond_1
    :goto_0
    return-object v4

    :cond_2
    new-instance v4, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;

    invoke-direct {v4, p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;-><init>(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)V

    iget-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mPage:Ljava/util/List;

    iget v8, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mCurrentPage:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;

    invoke-virtual {v7}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;->getStartIdx()J

    move-result-wide v7

    long-to-int v6, v7

    iget-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mPage:Ljava/util/List;

    iget v8, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mCurrentPage:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;

    invoke-virtual {v7}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;->getEndIdx()J

    move-result-wide v7

    long-to-int v1, v7

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v7, "[DMS]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "currentstartIdx = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "[DMS]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "currentendIdx = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-le v1, v10, :cond_1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "index_id"

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iget v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDirection:I

    if-ne v7, v11, :cond_3

    if-lt v3, v6, :cond_6

    :cond_3
    iget v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDirection:I

    if-ne v7, v11, :cond_4

    if-gt v3, v1, :cond_6

    :cond_4
    iget v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDirection:I

    if-ne v7, v10, :cond_5

    if-gt v3, v6, :cond_6

    :cond_5
    iget v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDirection:I

    if-ne v7, v10, :cond_7

    if-ge v3, v1, :cond_7

    :cond_6
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    iget v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDirection:I

    if-ne v7, v11, :cond_8

    add-int/lit8 v5, v6, 0x63

    :goto_3
    if-ne v3, v5, :cond_9

    int-to-long v7, v3

    invoke-virtual {v4, v7, v8}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;->setMiddleIdx(J)V

    const-string v7, "[DMS]"

    const-string v8, "DlnaUtils.MAX_QUERY_CONTENTS = 199"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "[DMS]"

    const-string v8, "middle point is 99"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "[DMS]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setMiddleIdx = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    add-int/lit8 v5, v6, -0x63

    goto :goto_3

    :cond_9
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_2
.end method

.method public GetCursorInfo(Landroid/database/Cursor;)V
    .locals 23

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v8, -0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mContentList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mCurrentPage:I

    if-gtz v2, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mCurrentPage:I

    if-nez v2, :cond_3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDirection:I

    const/4 v5, -0x1

    if-ne v2, v5, :cond_3

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mBrowsingComplete:Z

    if-nez v2, :cond_3

    :cond_2
    new-instance v1, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;-><init>(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mContentList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    const-string v2, "[DMS]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "GetCursorInfo: Cursor length = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v13, 0x0

    :goto_1
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-ge v13, v2, :cond_4

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mBrowsingComplete:Z

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDirection:I

    const/4 v5, -0x1

    if-ne v2, v5, :cond_8

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mCurrentPage:I

    if-nez v2, :cond_8

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mPage:Ljava/util/List;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mCurrentPage:I

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;

    invoke-virtual {v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;->getEndIdx()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mPage:Ljava/util/List;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mCurrentPage:I

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;

    invoke-virtual {v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;->getStartIdx()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    const-wide/16 v21, -0x1

    cmp-long v2, v19, v21

    if-lez v2, :cond_8

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDirection:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_6

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mBrowsingComplete:Z

    if-eqz v2, :cond_7

    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDirection:I

    const/4 v5, -0x1

    if-ne v2, v5, :cond_8

    :cond_7
    new-instance v1, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;-><init>(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mContentList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mClearImageCache:Z

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mMemoryCache:Lcom/htc/music/util/MemoryCacheBitmapByPosition;

    invoke-virtual {v2}, Lcom/htc/music/util/MemoryCacheBitmapByPosition;->clear()V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mClearImageCache:Z

    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaListAdapter;

    invoke-virtual {v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaListAdapter;->notifyDataSetChanged()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v5, "NotRefresh"

    const/4 v7, 0x1

    invoke-virtual {v2, v5, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_a
    const-string v2, "content_id"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v2, "content_name"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v2, "index_id"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v14, v2

    const-string v2, "file_type"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mPage:Ljava/util/List;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mCurrentPage:I

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;

    invoke-virtual {v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;->getStartIdx()J

    move-result-wide v9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mPage:Ljava/util/List;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mCurrentPage:I

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;

    invoke-virtual {v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;->getEndIdx()J

    move-result-wide v11

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDirection:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_c

    cmp-long v2, v14, v9

    if-ltz v2, :cond_b

    cmp-long v2, v14, v11

    if-lez v2, :cond_e

    :cond_b
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    :cond_c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDirection:I

    const/4 v5, -0x1

    if-ne v2, v5, :cond_e

    cmp-long v2, v11, v14

    if-gtz v2, :cond_d

    cmp-long v2, v14, v9

    if-lez v2, :cond_e

    :cond_d
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_2

    :cond_e
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIsMusicExist:Z

    if-nez v2, :cond_f

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    const/4 v2, 0x1

    move/from16 v0, v18

    if-ne v0, v2, :cond_f

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIsMusicExist:Z

    :cond_f
    new-instance v1, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;

    const/4 v5, 0x0

    long-to-int v7, v14

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;-><init>(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mContentList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_2
.end method

.method public browse(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 10

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "[DMS]"

    const-string v1, "Browse"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "[DMS]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "[DMS]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "boundary = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iput-boolean v4, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mBrowsingComplete:Z

    :cond_1
    :try_start_0
    const-string v0, "[DMS]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "browse container = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIniServerID:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/16 v6, 0x1e

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    move-object v3, p1

    invoke-interface/range {v0 .. v8}, Lcom/htc/dlnainterface/IDLNAPluginService;->browse(ILjava/lang/String;Ljava/lang/String;JIJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v9

    invoke-virtual {v9}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public cancelBrowse(Ljava/lang/Long;)V
    .locals 8

    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "[DMS]"

    const-string v1, "cancelBrowse"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIniServerID:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIniContainerID:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->isBrowsingCmdDone(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIniServerID:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIniContainerID:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface/range {v0 .. v5}, Lcom/htc/dlnainterface/IDLNAPluginService;->browseCancel(ILjava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v7

    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public categoryRightAction()Z
    .locals 18

    const/16 v16, 0x0

    const-string v2, "[DMS]"

    const-string v3, "Playing All, save current info to DLNA.xml"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "DMR"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "server"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIniServerID:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "container"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIniContainerID:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "content"

    invoke-direct/range {p0 .. p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->getFirstContent()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "filepath"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mFilePath:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "startIdx"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mPage:Ljava/util/List;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mCurrentPage:I

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;

    invoke-virtual {v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;->getStartIdx()J

    move-result-wide v5

    invoke-interface {v3, v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "endIdx"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mPage:Ljava/util/List;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mCurrentPage:I

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;

    invoke-virtual {v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;->getEndIdx()J

    move-result-wide v5

    invoke-interface {v3, v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "direction"

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDirection:I

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v2, "[DMS]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "server = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIniServerID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "[DMS]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "container = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIniContainerID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "[DMS]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "contnet = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct/range {p0 .. p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->getFirstContent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "[DMS]"

    const-string v3, "check DLNA mode"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3, v4}, Lcom/htc/music/util/MusicUtils;->CheckDLNAMode(Landroid/content/Context;[IIZ)I

    move-result v14

    const-string v2, "[DMS]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dlnaMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    if-ne v14, v2, :cond_1

    const-string v2, "[DMS]"

    const-string v3, "DLNA_DMP mode, modify DMP.xml"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "[DMS]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "server = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIniServerID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "[DMS]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "container = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIniContainerID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "[DMS]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "contnet = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct/range {p0 .. p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->getFirstContent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "[DMS]"

    const-string v3, "dmpPlayAll"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDmpService:Lcom/htc/music/IDmpUiPlaybackService;

    if-eqz v2, :cond_0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDmpService:Lcom/htc/music/IDmpUiPlaybackService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIniServerID:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIniContainerID:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->getFirstContent()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mPage:Ljava/util/List;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mCurrentPage:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;

    invoke-virtual {v6}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;->getStartIdx()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mPage:Ljava/util/List;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mCurrentPage:I

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;

    invoke-virtual {v8}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;->getEndIdx()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget v10, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDirection:I

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mFilePath:Ljava/lang/String;

    invoke-interface/range {v2 .. v12}, Lcom/htc/music/IDmpUiPlaybackService;->setDlnaPlaylist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJIILjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDmpService:Lcom/htc/music/IDmpUiPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IDmpUiPlaybackService;->play()V

    new-instance v17, Landroid/content/Intent;

    const-class v2, Lcom/htc/music/MediaPlaybackService;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "command"

    const-string v3, "bindplugin"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "classname"

    const-string v3, "com.htc.music.DMPMusicPlaybackService"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    new-instance v16, Landroid/content/Intent;

    const-string v2, "com.htc.music.PLAYBACK_VIEWER"

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x400

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v2, -0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_1
    const/4 v2, 0x1

    return v2

    :catch_0
    move-exception v15

    invoke-virtual {v15}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicListActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0, v7}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->setVolumeControlStream(I)V

    const v3, 0x7f03001f

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "ServerName"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIniServerName:Ljava/lang/String;

    const-string v3, "ContainerID"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIniContainerID:Ljava/lang/String;

    const-string v3, "ServerID"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIniServerID:Ljava/lang/String;

    const-string v3, "IconPath"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIconPath:Ljava/lang/String;

    const-string v3, "FilePath"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mFilePath:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mFilePath:Ljava/lang/String;

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIniServerName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mFilePath:Ljava/lang/String;

    :cond_0
    new-instance v1, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;

    iget-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIniContainerID:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIniServerName:Ljava/lang/String;

    invoke-direct {v1, p0, v3, v4}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;-><init>(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mContainerList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "layout_inflater"

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    iput-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mInflater:Landroid/view/LayoutInflater;

    new-instance v3, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaListAdapter;

    invoke-direct {v3, p0, p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaListAdapter;-><init>(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaListAdapter;

    iget-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaListAdapter;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaListAdapter;

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mContentList:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v3}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mPage:Ljava/util/List;

    const-string v3, "DLNA"

    invoke-virtual {p0, v3, v7}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mPreferences:Landroid/content/SharedPreferences;

    iput-boolean v6, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mInitial:Z

    iput-boolean v5, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIsMusicExist:Z

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mListView:Lcom/htc/widget/HtcListView;

    iget-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v3, v5}, Lcom/htc/widget/HtcListView;->setTextFilterEnabled(Z)V

    iget-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v3, v6}, Lcom/htc/widget/HtcListView;->setFastScrollEnabled(Z)V

    iget-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v3, p0}, Lcom/htc/widget/HtcListView;->setOnScrollListener(Lcom/htc/widget/HtcAbsListView$OnScrollListener;)V

    new-instance v3, Landroid/os/HandlerThread;

    const-string v4, "workThread"

    invoke-direct {v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mWorkthread:Landroid/os/HandlerThread;

    iget-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mWorkthread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    new-instance v3, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$workHandler;

    iget-object v4, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mWorkthread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$workHandler;-><init>(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mWorkHandler:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$workHandler;

    iput v5, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mCurrentPage:I

    new-instance v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;-><init>(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)V

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;->setStartIdx(J)V

    iget-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mPage:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 5

    const v2, 0x20c0162

    const v4, 0x20c013c

    const v3, 0x1080027

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, p0

    :cond_0
    sparse-switch p1, :sswitch_data_0

    :cond_1
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicListActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    :goto_0
    return-object v1

    :sswitch_0
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0700c3

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0700c4

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$3;

    invoke-direct {v2, p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$3;-><init>(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$2;

    invoke-direct {v2, p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$2;-><init>(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)V

    invoke-virtual {v1, v4, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    goto :goto_0

    :sswitch_1
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0700c6

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$5;

    invoke-direct {v2, p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$5;-><init>(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$4;

    invoke-direct {v2, p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$4;-><init>(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)V

    invoke-virtual {v1, v4, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/music/util/DlnaUtils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0700c5

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$8;

    invoke-direct {v2, p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$8;-><init>(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x20c0163

    new-instance v3, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$7;

    invoke-direct {v3, p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$7;-><init>(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x20c013d

    new-instance v3, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$6;

    invoke-direct {v3, p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$6;-><init>(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x1f5 -> :sswitch_1
        -0x1 -> :sswitch_2
        0x321 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    const/16 v0, 0xd

    const v1, 0x7f07001b

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080a3f

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/16 v0, 0xe

    const v1, 0x7f070008

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080a7e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/16 v0, 0xf

    const v1, 0x7f070009

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x20809f9

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/16 v0, 0xa

    const v1, 0x20c0202

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x208033b

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/16 v0, 0xb

    const v1, 0x7f0700bb

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080aa0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/htc/music/widget/MusicListActivity;->onDestroy()V

    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mMemoryCache:Lcom/htc/music/util/MemoryCacheBitmapByPosition;

    invoke-virtual {v0}, Lcom/htc/music/util/MemoryCacheBitmapByPosition;->clear()V

    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    invoke-virtual {v0}, Lcom/htc/music/util/AsyncImageDecoder;->quit()V

    iput-object v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDestroy:Z

    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    sput-object v2, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mServerIcon:Landroid/graphics/Bitmap;

    return-void
.end method

.method public onHtcContextItemSelected(I)Z
    .locals 15

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mContentList:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mContentList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mContentList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mSelectedItem:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;->GetId()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "server"

    iget-object v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIniServerID:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "container"

    iget-object v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIniContainerID:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "content"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "filepath"

    iget-object v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mFilePath:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "startIdx"

    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mPage:Ljava/util/List;

    iget v4, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mCurrentPage:I

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;->getStartIdx()J

    move-result-wide v4

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "endIdx"

    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mPage:Ljava/util/List;

    iget v4, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mCurrentPage:I

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;->getEndIdx()J

    move-result-wide v4

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "direction"

    iget v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDirection:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/htc/music/util/MusicUtils;->CheckDLNAMode(Landroid/content/Context;[IIZ)I

    move-result v12

    const/4 v0, 0x1

    if-ne v12, v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDmpService:Lcom/htc/music/IDmpUiPlaybackService;

    if-eqz v0, :cond_2

    const-string v0, "[DMS]"

    const-string v1, "enter click"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDmpService:Lcom/htc/music/IDmpUiPlaybackService;

    iget-object v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIniServerID:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIniContainerID:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mPage:Ljava/util/List;

    iget v5, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mCurrentPage:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;

    invoke-virtual {v4}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;->getStartIdx()J

    move-result-wide v4

    iget-object v6, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mPage:Ljava/util/List;

    iget v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mCurrentPage:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;

    invoke-virtual {v6}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;->getEndIdx()J

    move-result-wide v6

    iget v8, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDirection:I

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mFilePath:Ljava/lang/String;

    invoke-interface/range {v0 .. v10}, Lcom/htc/music/IDmpUiPlaybackService;->setDlnaPlaylist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJIILjava/lang/String;)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDmpService:Lcom/htc/music/IDmpUiPlaybackService;

    invoke-interface {v0}, Lcom/htc/music/IDmpUiPlaybackService;->play()V

    new-instance v14, Landroid/content/Intent;

    const-class v0, Lcom/htc/music/MediaPlaybackService;

    invoke-direct {v14, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "command"

    const-string v1, "bindplugin"

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "classname"

    const-string v1, "com.htc.music.DMPMusicPlaybackService"

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v14}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_2
    new-instance v14, Landroid/content/Intent;

    const-string v0, "com.htc.music.PLAYBACK_VIEWER"

    invoke-direct {v14, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x400

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v0, -0x2

    invoke-virtual {p0, v14, v0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :catch_0
    move-exception v13

    invoke-virtual {v13}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    :pswitch_1
    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    const-string v0, "duration"

    const/4 v1, 0x0

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "filename"

    const-string v1, ""

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "trackname"

    const-string v1, ""

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "artistname"

    const-string v1, ""

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "albumname"

    const-string v1, ""

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "genre"

    const-string v1, ""

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "composer"

    const-string v1, ""

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "location"

    const-string v1, ""

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDetailIntent:Landroid/content/Intent;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDetailIntent:Landroid/content/Intent;

    const-string v1, "contentID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mContentList:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mContentList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mSelectedItem:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;->GetId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v14, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDetailIntent:Landroid/content/Intent;

    :cond_3
    const-class v0, Lcom/htc/music/PluginPropertyListActivity;

    invoke-virtual {v14, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/4 v0, -0x2

    invoke-virtual {p0, v14, v0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    const-string v0, "DLNA"

    const-string v1, "PRESSMENU_DETAILS"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onListItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 24

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mContentList:Ljava/util/ArrayList;

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;

    invoke-virtual {v3}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;->GetId()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mContentList:Ljava/util/ArrayList;

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;

    invoke-virtual {v3}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;->GetName()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mContentList:Ljava/util/ArrayList;

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mCurrentPage:I

    if-lez v3, :cond_0

    const/16 v22, 0x1

    :cond_0
    if-nez v6, :cond_7

    if-nez v14, :cond_7

    const/16 v23, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mLoadingPrev:Z

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mLoadingNext:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    :cond_1
    const-string v3, "[DMS]"

    const-string v4, "user press next/prev page when it still loading, ignore..."

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    if-nez p3, :cond_5

    const-string v3, "[DMS]"

    const-string v4, "Press Prev Page"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->showContentLoading(IZ)V

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->showSpinner(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mPage:Ljava/util/List;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mCurrentPage:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;

    invoke-virtual {v3}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;->getStartIdx()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->cancelBrowse(Ljava/lang/Long;)V

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mLoadingPrev:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mPage:Ljava/util/List;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mCurrentPage:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;

    invoke-virtual {v3}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;->getMiddleIdx()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDirection:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mPage:Ljava/util/List;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mCurrentPage:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;

    invoke-virtual {v3}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;->getEndIdx()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    :goto_1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mCurrentPage:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mCurrentPage:I

    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDirection:I

    const-string v3, "[DMS]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "start idx = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "[DMS]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "boundary idx = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIniContainerID:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v17

    invoke-virtual {v0, v3, v1, v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->browse(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V

    :goto_2
    const-string v3, "[DMS]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "start idx = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "[DMS]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "boundary idx = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mPage:Ljava/util/List;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mCurrentPage:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;

    invoke-virtual {v3}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;->getStartIdx()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    goto/16 :goto_1

    :cond_5
    const-string v3, "[DMS]"

    const-string v4, "Press Next Page"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->showContentLoading(IZ)V

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->showSpinner(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mPage:Ljava/util/List;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mCurrentPage:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;

    invoke-virtual {v3}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;->getMiddleIdx()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDirection:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mPage:Ljava/util/List;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mCurrentPage:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;

    invoke-virtual {v3}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;->getStartIdx()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    :goto_3
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mCurrentPage:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mCurrentPage:I

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDirection:I

    const-string v3, "[DMS]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "start idx = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "[DMS]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "boundary idx = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mLoadingNext:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIniContainerID:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v17

    invoke-virtual {v0, v3, v1, v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->browse(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V

    goto/16 :goto_2

    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mPage:Ljava/util/List;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mCurrentPage:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;

    invoke-virtual {v3}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;->getEndIdx()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    goto :goto_3

    :cond_7
    invoke-virtual/range {v20 .. v20}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;->IsContainer()Z

    move-result v3

    if-eqz v3, :cond_9

    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIniServerID:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIniContainerID:Ljava/lang/String;

    invoke-interface {v3, v4, v5, v7}, Lcom/htc/dlnainterface/IDLNAPluginService;->isBrowsingCmdDone(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIniServerID:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIniContainerID:Ljava/lang/String;

    const-wide/16 v7, 0x0

    invoke-interface/range {v3 .. v8}, Lcom/htc/dlnainterface/IDLNAPluginService;->browseCancel(ILjava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_8
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mContainerList:Ljava/util/List;

    new-instance v4, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;

    invoke-virtual/range {v20 .. v20}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;->GetId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v20 .. v20}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;->GetName()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5, v7}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;-><init>(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {v20 .. v20}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;->GetId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v20 .. v20}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;->GetName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->switchFolder(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_0
    move-exception v19

    invoke-virtual/range {v19 .. v19}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_4

    :cond_9
    const-string v3, "[DMS]"

    const-string v4, "itemclick"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "[DMS]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "current DMR = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mPreferences:Landroid/content/SharedPreferences;

    const-string v7, "DMR"

    const/4 v8, 0x0

    invoke-interface {v5, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "[DMS]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "server = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIniServerID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "[DMS]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "container = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIniContainerID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "[DMS]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mPreferences:Landroid/content/SharedPreferences;

    const-string v4, "DMR"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "server"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIniServerID:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "container"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIniContainerID:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "content"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "filepath"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mFilePath:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "startIdx"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mPage:Ljava/util/List;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mCurrentPage:I

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;

    invoke-virtual {v3}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;->getStartIdx()J

    move-result-wide v7

    invoke-interface {v4, v5, v7, v8}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "endIdx"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mPage:Ljava/util/List;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mCurrentPage:I

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;

    invoke-virtual {v3}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;->getEndIdx()J

    move-result-wide v7

    invoke-interface {v4, v5, v7, v8}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "direction"

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDirection:I

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v3, "[DMS]"

    const-string v4, "check DLNA mode first"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4, v5}, Lcom/htc/music/util/MusicUtils;->CheckDLNAMode(Landroid/content/Context;[IIZ)I

    move-result v18

    const-string v3, "[DMS]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DLNA mode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    move/from16 v0, v18

    if-ne v0, v3, :cond_2

    const-string v3, "[DMS]"

    const-string v4, "DLNA_DMP mode, modify DMP.xml info"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "[DMS]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "server = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIniServerID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "[DMS]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "container = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIniContainerID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "[DMS]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "[DMS]"

    const-string v4, "shufflemode = 0"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "[DMS]"

    const-string v4, "dmsplayall"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDmpService:Lcom/htc/music/IDmpUiPlaybackService;

    if-eqz v3, :cond_a

    const-string v3, "[DMS]"

    const-string v4, "enter click"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDmpService:Lcom/htc/music/IDmpUiPlaybackService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIniServerID:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIniContainerID:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mPage:Ljava/util/List;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mCurrentPage:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;

    invoke-virtual {v7}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;->getStartIdx()J

    move-result-wide v7

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mPage:Ljava/util/List;

    move-object/from16 v0, p0

    iget v10, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mCurrentPage:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;

    invoke-virtual {v9}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;->getEndIdx()J

    move-result-wide v9

    move-object/from16 v0, p0

    iget v11, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDirection:I

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mFilePath:Ljava/lang/String;

    invoke-interface/range {v3 .. v13}, Lcom/htc/music/IDmpUiPlaybackService;->setDlnaPlaylist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJIILjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDmpService:Lcom/htc/music/IDmpUiPlaybackService;

    invoke-interface {v3}, Lcom/htc/music/IDmpUiPlaybackService;->play()V

    new-instance v21, Landroid/content/Intent;

    const-class v3, Lcom/htc/music/MediaPlaybackService;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "command"

    const-string v4, "bindplugin"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "classname"

    const-string v4, "com.htc.music.DMPMusicPlaybackService"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_a
    :goto_5
    new-instance v21, Landroid/content/Intent;

    const-string v3, "com.htc.music.PLAYBACK_VIEWER"

    move-object/from16 v0, v21

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x400

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :catch_1
    move-exception v19

    invoke-virtual/range {v19 .. v19}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5
.end method

.method protected onListItemLongClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)Z
    .locals 9

    const/4 v7, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v6, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mContentList:Ljava/util/ArrayList;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mContentList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v6, p3, :cond_1

    :cond_0
    move v4, v5

    :goto_0
    return v4

    :cond_1
    iput p3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mSelectedItem:I

    iget-object v6, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mContentList:Ljava/util/ArrayList;

    invoke-virtual {v6, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;

    invoke-virtual {v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;->IsContainer()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;->GetId()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    new-array v3, v7, [Ljava/lang/CharSequence;

    const v6, 0x7f07004e

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    const v5, 0x20c01fe

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    new-array v1, v7, [I

    fill-array-data v1, :array_0

    iget-object v5, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v5, :cond_2

    :try_start_0
    iget-object v5, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIniServerID:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;->GetId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v6, v7, v8}, Lcom/htc/dlnainterface/IDLNAPluginService;->getContentItemDetails(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    invoke-virtual {v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;->GetName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5, v3, v1}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->showHtcContextMenu(Ljava/lang/String;[Ljava/lang/CharSequence;[I)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    :cond_3
    invoke-super/range {p0 .. p5}, Lcom/htc/music/widget/MusicListActivity;->onListItemLongClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)Z

    move-result v4

    goto :goto_0

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public onMaBackPressed()Z
    .locals 7

    const/4 v4, 0x1

    iget-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mPage:Ljava/util/List;

    iget v5, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mCurrentPage:I

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;

    invoke-virtual {v3}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;->getStartIdx()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->cancelBrowse(Ljava/lang/Long;)V

    iget-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mContainerList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v4, :cond_1

    const-string v3, "[DMS]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onBackPressed size = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mContainerList:Ljava/util/List;

    add-int/lit8 v5, v2, -0x1

    invoke-interface {v3, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mContainerList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mContainerList:Ljava/util/List;

    add-int/lit8 v5, v2, -0x1

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;

    invoke-virtual {v1}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;->GetId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v3, "[DMS]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onBackPressed id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;->GetName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->switchFolder(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    move v3, v4

    :goto_1
    return v3

    :cond_0
    const-string v3, "[DMS]"

    const-string v5, "onBackPressed id == null"

    invoke-static {v3, v5}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->setResult(I)V

    const/4 v3, 0x0

    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 24

    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    invoke-super/range {p0 .. p1}, Lcom/htc/music/widget/MusicListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    :goto_0
    return v2

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v2, :cond_0

    const-wide/16 v13, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDirection:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mCurrentPage:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mPage:Ljava/util/List;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mCurrentPage:I

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;

    invoke-virtual {v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;->getStartIdx()J

    move-result-wide v13

    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIniContainerID:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mPage:Ljava/util/List;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mCurrentPage:I

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;

    invoke-virtual {v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;->getStartIdx()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2, v4}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->browse(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->showSpinner(Z)V

    const v2, 0x7f0700be

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->showEmptyView(I)V

    new-instance v2, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaListAdapter;

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v2, v0, v1}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaListAdapter;-><init>(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaListAdapter;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaListAdapter;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mContentList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mInitial:Z

    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const-wide/16 v13, 0x0

    goto :goto_1

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mPage:Ljava/util/List;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mCurrentPage:I

    add-int/lit8 v3, v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;

    invoke-virtual {v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;->getEndIdx()J

    move-result-wide v17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mPage:Ljava/util/List;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mCurrentPage:I

    add-int/lit8 v3, v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;

    invoke-virtual {v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;->getStartIdx()J

    move-result-wide v22

    cmp-long v2, v22, v17

    if-lez v2, :cond_3

    move-wide/from16 v13, v22

    :goto_2
    goto/16 :goto_1

    :cond_3
    move-wide/from16 v13, v17

    goto :goto_2

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mContainerList:Ljava/util/List;

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mContainerList:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;

    if-eqz v19, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mContainerList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mContainerList:Ljava/util/List;

    move-object/from16 v0, v19

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {v19 .. v19}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;->GetId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {v19 .. v19}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;->GetName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->switchFolder(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const/4 v2, 0x1

    goto/16 :goto_0

    :pswitch_3
    const-string v2, "[DMS]"

    const-string v3, "now Playing, check DLNA mode first"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3, v4}, Lcom/htc/music/util/MusicUtils;->CheckDLNAMode(Landroid/content/Context;[IIZ)I

    move-result v15

    const-string v2, "[DMS]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DLNA mode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    packed-switch v15, :pswitch_data_1

    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mPage:Ljava/util/List;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mCurrentPage:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;

    invoke-virtual {v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;->getStartIdx()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->cancelBrowse(Ljava/lang/Long;)V

    const/4 v2, 0x1

    goto/16 :goto_0

    :pswitch_4
    new-instance v20, Landroid/content/Intent;

    const-string v2, "com.htc.music.PLAYBACK_VIEWER"

    move-object/from16 v0, v20

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x400

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v2, -0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_3

    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->categoryRightAction()Z

    const/4 v2, 0x1

    goto/16 :goto_0

    :pswitch_6
    const-string v2, "[DMS]"

    const-string v3, "Shuffle All, save current info to DLNA.xml"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->getRandomContent()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "server"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIniServerID:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "container"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIniContainerID:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "content"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "filepath"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mFilePath:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "startIdx"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mPage:Ljava/util/List;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mCurrentPage:I

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;

    invoke-virtual {v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;->getStartIdx()J

    move-result-wide v6

    invoke-interface {v3, v4, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "endIdx"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mPage:Ljava/util/List;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mCurrentPage:I

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;

    invoke-virtual {v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;->getEndIdx()J

    move-result-wide v6

    invoke-interface {v3, v4, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "direction"

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDirection:I

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "shuffle"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v2, "[DMS]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "server = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIniServerID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "[DMS]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "container = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIniContainerID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "[DMS]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "contnet = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "[DMS]"

    const-string v3, "check DLNA mode"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3, v4}, Lcom/htc/music/util/MusicUtils;->CheckDLNAMode(Landroid/content/Context;[IIZ)I

    move-result v15

    const-string v2, "[DMS]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DLNA mode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    if-ne v15, v2, :cond_6

    const-string v2, "[DMS]"

    const-string v3, "DLNA_DMP mode, modify DMP.xml"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "[DMS]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "server = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIniServerID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "[DMS]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "container = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIniContainerID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "[DMS]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "contnet = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "[DMS]"

    const-string v3, "shufflemode = 1"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "[DMS]"

    const-string v3, "dmpPlayAll"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDmpService:Lcom/htc/music/IDmpUiPlaybackService;

    if-eqz v2, :cond_5

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDmpService:Lcom/htc/music/IDmpUiPlaybackService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIniServerID:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIniContainerID:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mPage:Ljava/util/List;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mCurrentPage:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;

    invoke-virtual {v6}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;->getStartIdx()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mPage:Ljava/util/List;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mCurrentPage:I

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;

    invoke-virtual {v8}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;->getEndIdx()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget v10, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDirection:I

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mFilePath:Ljava/lang/String;

    invoke-interface/range {v2 .. v12}, Lcom/htc/music/IDmpUiPlaybackService;->setDlnaPlaylist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJIILjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDmpService:Lcom/htc/music/IDmpUiPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IDmpUiPlaybackService;->play()V

    new-instance v21, Landroid/content/Intent;

    const-class v2, Lcom/htc/music/MediaPlaybackService;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "command"

    const-string v3, "bindplugin"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "classname"

    const-string v3, "com.htc.music.DMPMusicPlaybackService"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_4
    new-instance v20, Landroid/content/Intent;

    const-string v2, "com.htc.music.PLAYBACK_VIEWER"

    move-object/from16 v0, v20

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x400

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v2, -0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_6
    const/4 v2, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v16

    invoke-virtual/range {v16 .. v16}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_4

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    const/4 v2, 0x1

    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    const/16 v1, 0xe

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIsMusicExist:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    const/16 v1, 0xf

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIsMusicExist:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_1
    const/16 v1, 0xb

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIniContainerID:Ljava/lang/String;

    const-string v3, "0"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    move v1, v2

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_2
    return v2

    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onScroll(Lcom/htc/widget/HtcAbsListView;III)V
    .locals 4

    iget-object v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mContentList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mContentList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mMemoryCache:Lcom/htc/music/util/MemoryCacheBitmapByPosition;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mContentList:Ljava/util/ArrayList;

    div-int/lit8 v3, p3, 0x2

    add-int/2addr v3, p2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mContentList:Ljava/util/ArrayList;

    div-int/lit8 v3, p3, 0x2

    add-int/2addr v3, p2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;

    #calls: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;->GetPosition()I
    invoke-static {v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;->access$1100(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;)I

    move-result v1

    iget-object v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mMemoryCache:Lcom/htc/music/util/MemoryCacheBitmapByPosition;

    invoke-virtual {v2, v1}, Lcom/htc/music/util/MemoryCacheBitmapByPosition;->setPosition(I)V

    goto :goto_0
.end method

.method public onScrollStateChanged(Lcom/htc/widget/HtcAbsListView;I)V
    .locals 4

    const/4 v1, 0x1

    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIsScrolling:Z

    iget-object v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaListAdapter;

    invoke-virtual {v1}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :pswitch_1
    iput-boolean v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIsScrolling:Z

    goto :goto_0

    :pswitch_2
    iput-boolean v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIsScrolling:Z

    iget-object v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    const/4 v2, 0x1

    const/16 v3, 0x10

    invoke-interface {v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->cancelContentThumbnail(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onStart()V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0}, Lcom/htc/music/widget/MusicListActivity;->onStart()V

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.htc.music.IDmpUiPlaybackService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.htc.music.IDmpUiPlaybackService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->msc:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    iget-object v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mContentList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mContentList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const v1, 0x7f0700be

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->showEmptyView(I)V

    :cond_1
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->CheckDLNAStatus(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDlnaMode:I

    iget v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDlnaMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->getCurDMR(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mcurDMR:Ljava/lang/String;

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDlnaMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    invoke-direct {p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->getDmpCurContent()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mcurContent:Ljava/lang/String;

    const-string v1, "[DMS]"

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "[DMS]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current content = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mcurContent:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.htc.music.metachanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDmpListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public onStop()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-super {p0}, Lcom/htc/music/widget/MusicListActivity;->onStop()V

    iget-object v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    const/4 v2, 0x1

    const/16 v3, 0x10

    invoke-interface {v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->cancelContentThumbnail(II)V

    iget-object v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIniServerID:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->serverUnsubscribed(ILjava/lang/String;)V

    iget-object v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mNotifyCallback:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaNotifyStub;

    invoke-interface {v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->unregisterCallback(ILcom/htc/dlnainterface/IDLNAPluginNotify;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iput-object v5, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    :cond_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDmpService:Lcom/htc/music/IDmpUiPlaybackService;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->msc:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iput-object v5, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDmpService:Lcom/htc/music/IDmpUiPlaybackService;

    :cond_1
    iget v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDlnaMode:I

    if-ne v1, v4, :cond_2

    iget-object v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDmpListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_2
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method protected setCategoryRightBtn(Z)V
    .locals 7

    const v6, 0x7f070009

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    iput v2, p0, Lcom/htc/music/widget/MusicMaActivity;->mEnableRightBtn:I

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->isResumed()Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "[DMS]"

    const-string v4, "activity is paused, do not set category right button status"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v1

    instance-of v3, v1, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;

    if-eqz v3, :cond_1

    move-object v0, v1

    check-cast v0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;

    iget-boolean v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIsMusicExist:Z

    if-eqz v3, :cond_4

    invoke-virtual {v0, v5}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setCategoryRightBtnVisible(Z)V

    if-eqz p1, :cond_3

    invoke-virtual {v0, v5}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setCategoryRightBtnEnable(Z)V

    const v3, 0x20807e8

    invoke-virtual {v0, v3, v6}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setCategoryRightBtnImage(II)V

    iget-object v3, v0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mCategoryRightClickAction:Lcom/htc/music/browserlayer/MusicBrowserTabActivity$CategoryRightOnClickListener;

    invoke-virtual {v0, v3}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setCategoryRightBtnOnClick(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0, v4}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setCategoryRightBtnEnable(Z)V

    const v3, 0x20807e6

    invoke-virtual {v0, v3, v6}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setCategoryRightBtnImage(II)V

    goto :goto_0

    :cond_4
    invoke-virtual {v0, v4}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setCategoryRightBtnVisible(Z)V

    goto :goto_0
.end method

.method public showContentLoading(IZ)V
    .locals 5

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x0

    if-nez p1, :cond_2

    iget-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v3, p1}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    :goto_0
    if-eqz v0, :cond_0

    const v3, 0x7f080052

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    const v3, 0x7f080053

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    :cond_0
    if-eqz v1, :cond_1

    if-nez v2, :cond_3

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mListView:Lcom/htc/widget/HtcListView;

    iget-object v4, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v4}, Lcom/htc/widget/HtcListView;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_4

    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    if-nez p1, :cond_6

    if-eqz p2, :cond_5

    const v3, 0x7f0700c2

    :goto_3
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_4
    const/16 v3, 0x8

    goto :goto_2

    :cond_5
    const v3, 0x7f0700c1

    goto :goto_3

    :cond_6
    if-eqz p2, :cond_7

    const v3, 0x7f0700c0

    :goto_4
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_7
    const v3, 0x7f0700bf

    goto :goto_4
.end method

.method public switchFolder(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIniContainerID:Ljava/lang/String;

    iput-object p2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIniContainerName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->updateFilePath()V

    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, v4, v5}, Ljava/lang/Long;-><init>(J)V

    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, v4, v5}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->browse(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V

    invoke-direct {p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->setTitle()V

    const v0, 0x7f0700be

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->showEmptyView(I)V

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->showSpinner(Z)V

    iput-boolean v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIsMusicExist:Z

    new-instance v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaListAdapter;

    invoke-direct {v0, p0, p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaListAdapter;-><init>(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaListAdapter;

    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaListAdapter;

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mContentList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mMemoryCache:Lcom/htc/music/util/MemoryCacheBitmapByPosition;

    invoke-virtual {v0}, Lcom/htc/music/util/MemoryCacheBitmapByPosition;->clear()V

    iput v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mCurrentPage:I

    iput v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDirection:I

    return-void
.end method

.method public updateFilePath()V
    .locals 4

    iget-object v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mContainerList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    const-string v2, ""

    iput-object v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mFilePath:Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mFilePath:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mContainerList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;

    invoke-virtual {v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;->GetName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mFilePath:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

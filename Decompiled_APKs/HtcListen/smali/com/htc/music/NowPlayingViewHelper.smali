.class public Lcom/htc/music/NowPlayingViewHelper;
.super Ljava/lang/Object;
.source "NowPlayingViewHelper.java"

# interfaces
.implements Lcom/htc/music/util/MusicUtils$Defs;
.implements Landroid/content/ServiceConnection;
.implements Lcom/htc/widget/HtcAbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;,
        Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;,
        Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;,
        Lcom/htc/music/NowPlayingViewHelper$NonUIHandler;,
        Lcom/htc/music/NowPlayingViewHelper$NowPlayingRingtoneHelper;
    }
.end annotation


# static fields
.field protected static final ADD_NOW_PLAYING_TO_LIST:I = 0x29

.field protected static final CHANGE_NOW_PLAYING_ORDER:I = 0x2a

.field protected static final CREATE:I = 0x1

.field protected static final DESTROY:I = 0x0

.field public static final DIALOG_DRM_CONFIRM:I = 0x3

.field public static final DIALOG_DRM_ERROR:I = 0x2

.field public static final DIALOG_SET_AS_RINGTONE:I = 0x8

.field public static final DIALOG_SET_AS_RINGTONE_NO_NOTIFICATION:I = 0x9

.field public static final DIALOG_SHARETEXT:I = 0x5

.field public static final DIALOG_SHARETYPE:I = 0x4

.field public static final DIALOG_SHARE_DRM_FILE:I = 0x7

.field public static final DIALOG_SHARE_NORMAL_FILE:I = 0x6

.field private static final GET_ALBUM_ART:I = 0x1

.field protected static final PAUSE:I = 0x4

.field private static final QUEUE_UPDATE_COUNT:I = 0x12c

.field protected static final RESUME:I = 0x3

.field protected static final SETTING:I = 0x2b

.field private static final SHOW_SET_CONTACT_RINGTONE_TOAST:I = 0x66

.field protected static final START:I = 0x2

.field protected static final STOP:I = 0x5

.field private static final TAG:Ljava/lang/String; = "[NowPlayingViewHelper]"

.field private static final TITLE_DEFAULT_SORT_ORDER:Ljava/lang/String; = "title COLLATE NOCASE ASC"


# instance fields
.field protected mActivityStatus:I

.field private mAdapterSent:Z

.field private mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

.field protected mContext:Landroid/app/Activity;

.field private mCurrentAlbumName:Ljava/lang/String;

.field private mCurrentArtistName:Ljava/lang/String;

.field private mCurrentDetails:Landroid/content/ContentValues;

.field private mCurrentPosition:I

.field private mCurrentTrackName:Ljava/lang/String;

.field private mCursorCols:[Ljava/lang/String;

.field private mDelaySearchHandler:Landroid/os/Handler;

.field private mDeletedOneRow:Z

.field private mDialog:Landroid/app/Dialog;

.field protected mDlnaMode:I

.field protected mDlnaService:Lcom/htc/dlnainterface/IDLNAPluginService;

.field private mFilter:Ljava/lang/String;

.field private mFilterPosToOldPosTable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mHtcContextMenuIds:[I

.field private mHtcContextMenuItems:[Ljava/lang/CharSequence;

.field private mHtcContextMenuTitle:Ljava/lang/String;

.field private mIsEnhancerExist:Z

.field private mIsNeedToUpdateProperty:Z

.field protected mIsPluginModeNowPlaying:Z

.field private mIsQueueChanged:Z

.field private mIsScrolling:Z

.field protected mListView:Lcom/htc/widget/HtcListView;

.field private mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

.field mLowerSearchFilter:Ljava/lang/String;

.field private mMemoryCache:Lcom/htc/music/util/MemoryCacheBitmapByPosition;

.field private mMsg:Ljava/lang/String;

.field private mNoMusicViewStub:Landroid/view/ViewStub;

.field private mNoSDCardErrorViewStub:Landroid/view/ViewStub;

.field private mNonUIHandler:Lcom/htc/music/NowPlayingViewHelper$NonUIHandler;

.field private mNonUILooper:Landroid/os/Looper;

.field private mNowPlayingItemsArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field

.field private mNowPlayingItemsUpdatingList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field

.field private mNowPlayingListener:Landroid/content/BroadcastReceiver;

.field private mOnClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

.field private mOnLongClickListener:Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;

.field private mPlaylistContent:[I

.field private mPluginAdapter:Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;

.field private mPluginListener:Landroid/content/BroadcastReceiver;

.field private mReScanHandler:Landroid/os/Handler;

.field private mRefreshListHandler:Landroid/os/Handler;

.field private mRefreshListRunnable:Ljava/lang/Runnable;

.field private mRingtoneHelper:Lcom/htc/music/NowPlayingViewHelper$NowPlayingRingtoneHelper;

.field private mScanListener:Landroid/content/BroadcastReceiver;

.field private mSelectedId:J

.field private mSelectedPosition:I

.field private mShareText:Ljava/lang/String;

.field private mShuffleMode:I

.field private mSortOrder:Ljava/lang/String;

.field private mStatusListener:Landroid/content/BroadcastReceiver;

.field private mStopped:Z

.field private mTrackCursor:Landroid/database/Cursor;

.field private mUnknownAlbumName:Ljava/lang/String;

.field private mUnknownArtistName:Ljava/lang/String;

.field protected mViewGroup:Landroid/view/ViewGroup;

.field protected mcurDMR:Ljava/lang/String;

.field private preSearchTime:J


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 7

    const-wide/16 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mStopped:Z

    iput-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    iput-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mViewGroup:Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mListView:Lcom/htc/widget/HtcListView;

    iput-boolean v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mIsPluginModeNowPlaying:Z

    iput-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    iput-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mPluginAdapter:Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;

    iput v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mDlnaMode:I

    iput-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mcurDMR:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mDlnaService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iput-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    iput-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mCursorCols:[Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mSortOrder:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mAdapterSent:Z

    iput-boolean v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mIsNeedToUpdateProperty:Z

    iput-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mPlaylistContent:[I

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mFilterPosToOldPosTable:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mNowPlayingItemsArrayList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mNowPlayingItemsUpdatingList:Ljava/util/ArrayList;

    new-instance v0, Lcom/htc/music/util/MemoryCacheBitmapByPosition;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Lcom/htc/music/util/MemoryCacheBitmapByPosition;-><init>(I)V

    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mMemoryCache:Lcom/htc/music/util/MemoryCacheBitmapByPosition;

    iput-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    iput v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mShuffleMode:I

    iput-boolean v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mDeletedOneRow:Z

    iput v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentPosition:I

    iput-boolean v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mIsQueueChanged:Z

    iput v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mSelectedPosition:I

    iput-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentDetails:Landroid/content/ContentValues;

    iput v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mActivityStatus:I

    iput-boolean v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mIsEnhancerExist:Z

    iput-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentTrackName:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentArtistName:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentAlbumName:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mShareText:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mUnknownArtistName:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mUnknownAlbumName:Ljava/lang/String;

    new-instance v0, Lcom/htc/music/NowPlayingViewHelper$2;

    invoke-direct {v0, p0}, Lcom/htc/music/NowPlayingViewHelper$2;-><init>(Lcom/htc/music/NowPlayingViewHelper;)V

    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mOnClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    new-instance v0, Lcom/htc/music/NowPlayingViewHelper$3;

    invoke-direct {v0, p0}, Lcom/htc/music/NowPlayingViewHelper$3;-><init>(Lcom/htc/music/NowPlayingViewHelper;)V

    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mOnLongClickListener:Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mMsg:Ljava/lang/String;

    iput-wide v5, p0, Lcom/htc/music/NowPlayingViewHelper;->mSelectedId:J

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mHtcContextMenuTitle:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mHtcContextMenuItems:[Ljava/lang/CharSequence;

    iput-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mHtcContextMenuIds:[I

    iput-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mDialog:Landroid/app/Dialog;

    iput-boolean v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mIsScrolling:Z

    iput-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mRingtoneHelper:Lcom/htc/music/NowPlayingViewHelper$NowPlayingRingtoneHelper;

    new-instance v0, Lcom/htc/music/NowPlayingViewHelper$9;

    invoke-direct {v0, p0}, Lcom/htc/music/NowPlayingViewHelper$9;-><init>(Lcom/htc/music/NowPlayingViewHelper;)V

    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mHandler:Landroid/os/Handler;

    iput-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mNoMusicViewStub:Landroid/view/ViewStub;

    iput-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mNoSDCardErrorViewStub:Landroid/view/ViewStub;

    new-instance v0, Lcom/htc/music/NowPlayingViewHelper$10;

    invoke-direct {v0, p0}, Lcom/htc/music/NowPlayingViewHelper$10;-><init>(Lcom/htc/music/NowPlayingViewHelper;)V

    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mReScanHandler:Landroid/os/Handler;

    new-instance v0, Lcom/htc/music/NowPlayingViewHelper$11;

    invoke-direct {v0, p0}, Lcom/htc/music/NowPlayingViewHelper$11;-><init>(Lcom/htc/music/NowPlayingViewHelper;)V

    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mNowPlayingListener:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/htc/music/NowPlayingViewHelper$12;

    invoke-direct {v0, p0}, Lcom/htc/music/NowPlayingViewHelper$12;-><init>(Lcom/htc/music/NowPlayingViewHelper;)V

    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mScanListener:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/htc/music/NowPlayingViewHelper$13;

    invoke-direct {v0, p0}, Lcom/htc/music/NowPlayingViewHelper$13;-><init>(Lcom/htc/music/NowPlayingViewHelper;)V

    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mPluginListener:Landroid/content/BroadcastReceiver;

    iput-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mNonUILooper:Landroid/os/Looper;

    iput-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mNonUIHandler:Lcom/htc/music/NowPlayingViewHelper$NonUIHandler;

    iput-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mLowerSearchFilter:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mFilter:Ljava/lang/String;

    iput-wide v5, p0, Lcom/htc/music/NowPlayingViewHelper;->preSearchTime:J

    new-instance v0, Lcom/htc/music/NowPlayingViewHelper$14;

    invoke-direct {v0, p0}, Lcom/htc/music/NowPlayingViewHelper$14;-><init>(Lcom/htc/music/NowPlayingViewHelper;)V

    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mDelaySearchHandler:Landroid/os/Handler;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mRefreshListHandler:Landroid/os/Handler;

    new-instance v0, Lcom/htc/music/NowPlayingViewHelper$15;

    invoke-direct {v0, p0}, Lcom/htc/music/NowPlayingViewHelper$15;-><init>(Lcom/htc/music/NowPlayingViewHelper;)V

    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mRefreshListRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/htc/music/NowPlayingViewHelper$16;

    invoke-direct {v0, p0}, Lcom/htc/music/NowPlayingViewHelper$16;-><init>(Lcom/htc/music/NowPlayingViewHelper;)V

    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mStatusListener:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "context is null!!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/htc/music/NowPlayingViewHelper;)Lcom/htc/music/NowPlayingViewHelper$NowPlayingRingtoneHelper;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mRingtoneHelper:Lcom/htc/music/NowPlayingViewHelper$NowPlayingRingtoneHelper;

    return-object v0
.end method

.method static synthetic access$002(Lcom/htc/music/NowPlayingViewHelper;Lcom/htc/music/NowPlayingViewHelper$NowPlayingRingtoneHelper;)Lcom/htc/music/NowPlayingViewHelper$NowPlayingRingtoneHelper;
    .locals 0

    iput-object p1, p0, Lcom/htc/music/NowPlayingViewHelper;->mRingtoneHelper:Lcom/htc/music/NowPlayingViewHelper$NowPlayingRingtoneHelper;

    return-object p1
.end method

.method static synthetic access$100(Lcom/htc/music/NowPlayingViewHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/music/NowPlayingViewHelper;->showSetContactRingtoneToast()V

    return-void
.end method

.method static synthetic access$1000(Lcom/htc/music/NowPlayingViewHelper;)I
    .locals 1

    iget v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mSelectedPosition:I

    return v0
.end method

.method static synthetic access$1100(Lcom/htc/music/NowPlayingViewHelper;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentTrackName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/music/NowPlayingViewHelper;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentAlbumName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/htc/music/NowPlayingViewHelper;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentAlbumName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/htc/music/NowPlayingViewHelper;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentArtistName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/music/NowPlayingViewHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/htc/music/NowPlayingViewHelper;->shareMusicText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/htc/music/NowPlayingViewHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/music/NowPlayingViewHelper;->shareMusicFile()V

    return-void
.end method

.method static synthetic access$1600(Lcom/htc/music/NowPlayingViewHelper;)Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/htc/music/NowPlayingViewHelper;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1

    invoke-direct {p0, p1}, Lcom/htc/music/NowPlayingViewHelper;->getTrackCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/htc/music/NowPlayingViewHelper;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mDeletedOneRow:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/htc/music/NowPlayingViewHelper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/music/NowPlayingViewHelper;->mDeletedOneRow:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/htc/music/NowPlayingViewHelper;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mCursorCols:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/htc/music/NowPlayingViewHelper;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mReScanHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/htc/music/NowPlayingViewHelper;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mNowPlayingItemsArrayList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/htc/music/NowPlayingViewHelper;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mRefreshListRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/htc/music/NowPlayingViewHelper;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mRefreshListHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/htc/music/NowPlayingViewHelper;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mIsQueueChanged:Z

    return v0
.end method

.method static synthetic access$2402(Lcom/htc/music/NowPlayingViewHelper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/music/NowPlayingViewHelper;->mIsQueueChanged:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/htc/music/NowPlayingViewHelper;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mNowPlayingItemsUpdatingList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/htc/music/NowPlayingViewHelper;)Landroid/content/ContentValues;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentDetails:Landroid/content/ContentValues;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/htc/music/NowPlayingViewHelper;Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .locals 0

    iput-object p1, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentDetails:Landroid/content/ContentValues;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/htc/music/NowPlayingViewHelper;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mIsNeedToUpdateProperty:Z

    return v0
.end method

.method static synthetic access$2702(Lcom/htc/music/NowPlayingViewHelper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/music/NowPlayingViewHelper;->mIsNeedToUpdateProperty:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/htc/music/NowPlayingViewHelper;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/music/NowPlayingViewHelper;->notifyProperty(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/htc/music/NowPlayingViewHelper;)I
    .locals 1

    iget v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mShuffleMode:I

    return v0
.end method

.method static synthetic access$3000(Lcom/htc/music/NowPlayingViewHelper;)I
    .locals 1

    iget v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentPosition:I

    return v0
.end method

.method static synthetic access$3002(Lcom/htc/music/NowPlayingViewHelper;I)I
    .locals 0

    iput p1, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentPosition:I

    return p1
.end method

.method static synthetic access$3100(Lcom/htc/music/NowPlayingViewHelper;)J
    .locals 2

    iget-wide v0, p0, Lcom/htc/music/NowPlayingViewHelper;->preSearchTime:J

    return-wide v0
.end method

.method static synthetic access$3200(Lcom/htc/music/NowPlayingViewHelper;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mFilter:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/htc/music/NowPlayingViewHelper;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 1

    invoke-direct {p0, p1}, Lcom/htc/music/NowPlayingViewHelper;->joinAlbumArt(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3400(Lcom/htc/music/NowPlayingViewHelper;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mIsScrolling:Z

    return v0
.end method

.method static synthetic access$3402(Lcom/htc/music/NowPlayingViewHelper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/music/NowPlayingViewHelper;->mIsScrolling:Z

    return p1
.end method

.method static synthetic access$3500(Lcom/htc/music/NowPlayingViewHelper;)Ljava/util/Hashtable;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mFilterPosToOldPosTable:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/htc/music/NowPlayingViewHelper;)Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mPluginAdapter:Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/htc/music/NowPlayingViewHelper;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mIsEnhancerExist:Z

    return v0
.end method

.method static synthetic access$3800(Lcom/htc/music/NowPlayingViewHelper;)Lcom/htc/music/util/AsyncImageDecoder;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    return-object v0
.end method

.method static synthetic access$3802(Lcom/htc/music/NowPlayingViewHelper;Lcom/htc/music/util/AsyncImageDecoder;)Lcom/htc/music/util/AsyncImageDecoder;
    .locals 0

    iput-object p1, p0, Lcom/htc/music/NowPlayingViewHelper;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    return-object p1
.end method

.method static synthetic access$3900(Lcom/htc/music/NowPlayingViewHelper;)Lcom/htc/music/util/MemoryCacheBitmapByPosition;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mMemoryCache:Lcom/htc/music/util/MemoryCacheBitmapByPosition;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/music/NowPlayingViewHelper;Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/htc/music/NowPlayingViewHelper;->onListItemClick_Plugin(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method static synthetic access$4000(Lcom/htc/music/NowPlayingViewHelper;)Lcom/htc/music/NowPlayingViewHelper$NonUIHandler;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mNonUIHandler:Lcom/htc/music/NowPlayingViewHelper$NonUIHandler;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/htc/music/NowPlayingViewHelper;IJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/htc/music/NowPlayingViewHelper;->showTrackOptions_plugin(IJ)V

    return-void
.end method

.method static synthetic access$4400(Lcom/htc/music/NowPlayingViewHelper;IJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/htc/music/NowPlayingViewHelper;->showTrackOptions(IJ)V

    return-void
.end method

.method static synthetic access$4500(Lcom/htc/music/NowPlayingViewHelper;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mSortOrder:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/music/NowPlayingViewHelper;Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/htc/music/NowPlayingViewHelper;->onListItemClick_Local(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/music/NowPlayingViewHelper;Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)Z
    .locals 1

    invoke-direct/range {p0 .. p5}, Lcom/htc/music/NowPlayingViewHelper;->onListItemLongClick_Plugin(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/htc/music/NowPlayingViewHelper;Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)Z
    .locals 1

    invoke-direct/range {p0 .. p5}, Lcom/htc/music/NowPlayingViewHelper;->onListItemLongClick_Local(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/htc/music/NowPlayingViewHelper;)[I
    .locals 1

    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mHtcContextMenuIds:[I

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/music/NowPlayingViewHelper;)Landroid/database/Cursor;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$902(Lcom/htc/music/NowPlayingViewHelper;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0

    iput-object p1, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method private checkDrmFile(Landroid/net/Uri;IJ)V
    .locals 11

    iget-object v7, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v7, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-static {v7, p1}, Lcom/htc/music/util/MusicUtils;->getDrmStatus(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v5

    const/4 v7, -0x1

    if-ne v5, v7, :cond_0

    const/4 v7, 0x2

    invoke-virtual {p0, v7}, Lcom/htc/music/NowPlayingViewHelper;->showDialog(I)V

    :goto_0
    return-void

    :cond_0
    if-nez v5, :cond_3

    const/4 v7, 0x1

    invoke-static {v4, p1, v7}, Landroid/provider/DrmStore;->getDrmConstraint(Landroid/content/ContentResolver;Landroid/net/Uri;I)Landroid/provider/DrmStore$DrmConstraint;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v7, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    iget-object v8, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    const/4 v9, 0x0

    const/4 v10, 0x0

    new-array v10, v10, [I

    invoke-static {v7, v8, p2, v9, v10}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;ILcom/htc/music/NpCategory;[I)V

    goto :goto_0

    :cond_1
    iget-object v7, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-static {v7, v0}, Lcom/htc/music/util/MusicUtils;->getConstraintMessage(Landroid/content/Context;Landroid/provider/DrmStore$DrmConstraint;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/music/NowPlayingViewHelper;->mMsg:Ljava/lang/String;

    iget-object v7, p0, Lcom/htc/music/NowPlayingViewHelper;->mMsg:Ljava/lang/String;

    if-eqz v7, :cond_2

    const/4 v7, 0x3

    invoke-virtual {p0, v7}, Lcom/htc/music/NowPlayingViewHelper;->showDialog(I)V

    goto :goto_0

    :cond_2
    iget-object v7, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    iget-object v8, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    const/4 v9, 0x0

    const/4 v10, 0x0

    new-array v10, v10, [I

    invoke-static {v7, v8, p2, v9, v10}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;ILcom/htc/music/NpCategory;[I)V

    goto :goto_0

    :cond_3
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    iget-object v7, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    const-class v8, Lcom/htc/music/DRMActionActivity;

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v7, "drmtargettomain"

    const/4 v8, 0x1

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :try_start_0
    iget-object v7, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    const-string v8, "_id"

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iget-object v7, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "track"

    invoke-virtual {v3, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v7, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-virtual {v7, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v7, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    iget-object v8, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    const-string v9, "_id"

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "track"

    invoke-virtual {v3, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method

.method private chooseShareType()V
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/htc/music/NowPlayingViewHelper;->showDialog(I)V

    return-void
.end method

.method private getTrackCursor(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11

    const/4 v8, 0x0

    const-string v0, "title COLLATE NOCASE ASC"

    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mSortOrder:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "title != \'\'"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const-string v0, " AND "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "title LIKE ?"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_5

    const/4 v7, 0x0

    :try_start_0
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/htc/music/IMediaPlaybackService;->getQueue()[I

    move-result-object v7

    const-string v0, " AND _id IN ("

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    :goto_0
    array-length v0, v7

    if-ge v6, v0, :cond_2

    aget v0, v7, v6

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    array-length v0, v7

    add-int/lit8 v0, v0, -0x1

    if-ge v6, v0, :cond_1

    const-string v0, ","

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    const-string v0, ")"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mCursorCols:[Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/htc/music/NowPlayingViewHelper;->mSortOrder:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    :cond_3
    :goto_1
    if-eqz v8, :cond_4

    invoke-virtual {p0, v8}, Lcom/htc/music/NowPlayingViewHelper;->init(Landroid/database/Cursor;)V

    :cond_4
    return-object v8

    :cond_5
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v9

    const-string v0, "mounted"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v8, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;

    sget-object v0, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mCursorCols:[Ljava/lang/String;

    invoke-direct {v8, p0, v0, v1}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;-><init>(Lcom/htc/music/NowPlayingViewHelper;Lcom/htc/music/IMediaPlaybackService;[Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    const/4 v8, 0x0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private joinAlbumArt(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 14

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    instance-of v0, p1, Lcom/htc/music/widget/AlbumArtCursorWrapper;

    if-eqz v0, :cond_1

    move-object v0, p1

    goto :goto_0

    :cond_1
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "album != \'\'"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "album_art"

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    sget-object v1, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "album_key"

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    if-eqz v10, :cond_2

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    const/4 p1, 0x0

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_2
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v12, Ljava/util/ArrayList;

    const/4 v0, 0x2

    invoke-direct {v12, v0}, Ljava/util/ArrayList;-><init>(I)V

    const-string v0, "album_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_2

    :cond_4
    new-instance v7, Lcom/htc/music/util/ArrayListCursor;

    invoke-direct {v7, v2, v6}, Lcom/htc/music/util/ArrayListCursor;-><init>([Ljava/lang/String;Ljava/util/ArrayList;)V

    new-instance v0, Lcom/htc/music/widget/AlbumArtCursorWrapper;

    invoke-direct {v0, p1, v7, v10}, Lcom/htc/music/widget/AlbumArtCursorWrapper;-><init>(Landroid/database/Cursor;Landroid/database/Cursor;Landroid/database/Cursor;)V

    goto/16 :goto_0
.end method

.method private notifyProperty(Ljava/lang/String;)V
    .locals 4

    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentDetails:Landroid/content/ContentValues;

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "duration"

    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentDetails:Landroid/content/ContentValues;

    const-string v3, "length"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "trackname"

    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentDetails:Landroid/content/ContentValues;

    const-string v3, "title"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "artistname"

    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentDetails:Landroid/content/ContentValues;

    const-string v3, "artist"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "albumname"

    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentDetails:Landroid/content/ContentValues;

    const-string v3, "album"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "genre"

    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentDetails:Landroid/content/ContentValues;

    const-string v3, "genre"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "composer"

    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentDetails:Landroid/content/ContentValues;

    const-string v3, "composer"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "location"

    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentDetails:Landroid/content/ContentValues;

    const-string v3, "location"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private onCreate_Local(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 11

    const/4 v5, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v7

    const-string v1, "title"

    aput-object v1, v0, v3

    const-string v1, "title_key"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "album"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "album_id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "artist"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "artist_id"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "album_key"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mCursorCols:[Ljava/lang/String;

    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-static {v0}, Lcom/htc/music/util/MusicUtils;->isMusicEnhancerEnabled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mIsEnhancerExist:Z

    invoke-virtual {p0}, Lcom/htc/music/NowPlayingViewHelper;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mListView:Lcom/htc/widget/HtcListView;

    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v7}, Lcom/htc/widget/HtcListView;->setTextFilterEnabled(Z)V

    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcListView;->setFastScrollEnabled(Z)V

    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, p0}, Lcom/htc/widget/HtcListView;->setOnScrollListener(Lcom/htc/widget/HtcAbsListView$OnScrollListener;)V

    :try_start_0
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    invoke-virtual {v0, p0}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->setActivity(Lcom/htc/music/NowPlayingViewHelper;)V

    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mListView:Lcom/htc/widget/HtcListView;

    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-direct {p0, v4}, Lcom/htc/music/NowPlayingViewHelper;->getTrackCursor(Ljava/lang/String;)Landroid/database/Cursor;

    :goto_1
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lcom/htc/music/util/MusicUtils;->bindToService(Landroid/content/Context;Ljava/lang/String;Landroid/content/ServiceConnection;)Z

    new-instance v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingRingtoneHelper;

    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingRingtoneHelper;-><init>(Lcom/htc/music/NowPlayingViewHelper;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mRingtoneHelper:Lcom/htc/music/NowPlayingViewHelper$NowPlayingRingtoneHelper;

    new-instance v9, Landroid/content/IntentFilter;

    invoke-direct {v9}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "file"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v9}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    sget-object v0, Lcom/htc/music/util/MusicUtils;->sLibraryMemCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/music/util/MusicUtils;->sLibraryMemCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    invoke-virtual {v0}, Lcom/htc/music/util/MemoryCacheMBitmapByTime;->onCreate()V

    :cond_0
    return-void

    :catch_0
    move-exception v8

    iput-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    goto :goto_0

    :cond_1
    const/4 v10, 0x0

    iget v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mDlnaMode:I

    if-eq v0, v3, :cond_2

    iget v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mDlnaMode:I

    if-ne v0, v5, :cond_3

    :cond_2
    const/4 v10, 0x1

    :cond_3
    new-instance v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f03000e

    new-array v5, v7, [Ljava/lang/String;

    new-array v6, v7, [I

    move-object v2, p0

    invoke-direct/range {v0 .. v7}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;-><init>(Landroid/content/Context;Lcom/htc/music/NowPlayingViewHelper;ILandroid/database/Cursor;[Ljava/lang/String;[IZ)V

    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    iget v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mDlnaMode:I

    #setter for: Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDlnaMode:I
    invoke-static {v0, v1}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->access$202(Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;I)I

    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mListView:Lcom/htc/widget/HtcListView;

    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-direct {p0, v4}, Lcom/htc/music/NowPlayingViewHelper;->getTrackCursor(Ljava/lang/String;)Landroid/database/Cursor;

    goto :goto_1
.end method

.method private onCreate_Plugin(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 5

    const-string v2, "[NowPlayingViewHelper]"

    const-string v3, "== onCreatePlugin() =="

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/music/NowPlayingViewHelper;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mListView:Lcom/htc/widget/HtcListView;

    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mListView:Lcom/htc/widget/HtcListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListView;->setTextFilterEnabled(Z)V

    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mListView:Lcom/htc/widget/HtcListView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListView;->setFastScrollEnabled(Z)V

    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v2, p0}, Lcom/htc/widget/HtcListView;->setOnScrollListener(Lcom/htc/widget/HtcAbsListView$OnScrollListener;)V

    :try_start_0
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;

    iput-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mPluginAdapter:Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mPluginAdapter:Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mPluginAdapter:Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;

    invoke-virtual {v2, p0}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;->setActivity(Lcom/htc/music/NowPlayingViewHelper;)V

    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mListView:Lcom/htc/widget/HtcListView;

    iget-object v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mPluginAdapter:Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :goto_1
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p0}, Lcom/htc/music/util/MusicUtils;->bindToService(Landroid/content/Context;Ljava/lang/String;Landroid/content/ServiceConnection;)Z

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "[NowPlayingViewHelper]"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mNonUILooper:Landroid/os/Looper;

    new-instance v2, Lcom/htc/music/NowPlayingViewHelper$NonUIHandler;

    iget-object v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mNonUILooper:Landroid/os/Looper;

    invoke-direct {v2, p0, v3}, Lcom/htc/music/NowPlayingViewHelper$NonUIHandler;-><init>(Lcom/htc/music/NowPlayingViewHelper;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mNonUIHandler:Lcom/htc/music/NowPlayingViewHelper$NonUIHandler;

    return-void

    :catch_0
    move-exception v0

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mPluginAdapter:Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;

    iget-object v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f03000e

    invoke-direct {v2, p0, v3, p0, v4}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;-><init>(Lcom/htc/music/NowPlayingViewHelper;Landroid/content/Context;Lcom/htc/music/NowPlayingViewHelper;I)V

    iput-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mPluginAdapter:Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;

    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mListView:Lcom/htc/widget/HtcListView;

    iget-object v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mPluginAdapter:Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_1
.end method

.method private onDestroy_Local()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mReScanHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v1}, Lcom/htc/music/NowPlayingViewHelper;->unregisterReceiverSafe(Landroid/content/BroadcastReceiver;)V

    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/MusicUtils;->unbindFromService(Landroid/content/Context;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mAdapterSent:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    invoke-virtual {v1}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    iput-object v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    :cond_0
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    #getter for: Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v1}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->access$300(Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    #getter for: Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v1}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->access$300(Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/music/util/AsyncImageDecoder;->quit()V

    :cond_1
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iput-object v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    sget-object v1, Lcom/htc/music/util/MusicUtils;->sLibraryMemCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/htc/music/util/MusicUtils;->sLibraryMemCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    invoke-virtual {v1}, Lcom/htc/music/util/MemoryCacheMBitmapByTime;->onDestroy()V

    :cond_2
    return-void
.end method

.method private onDestroy_Plugin()V
    .locals 4

    const/4 v3, 0x0

    const-string v1, "[NowPlayingViewHelper]"

    const-string v2, "== onDestroy() =="

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mIsNeedToUpdateProperty:Z

    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mDelaySearchHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mRefreshListHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mPluginListener:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v1}, Lcom/htc/music/NowPlayingViewHelper;->unregisterReceiverSafe(Landroid/content/BroadcastReceiver;)V

    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/MusicUtils;->unbindFromService(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iput-object v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mPluginAdapter:Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;

    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mNowPlayingItemsArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :try_start_0
    sget-object v1, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->clearAlbumArtRequests()V

    sget-object v1, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->clearNowplayingQueueRequests()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mNonUIHandler:Lcom/htc/music/NowPlayingViewHelper$NonUIHandler;

    invoke-virtual {v1, v3}, Lcom/htc/music/NowPlayingViewHelper$NonUIHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mNonUILooper:Landroid/os/Looper;

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mMemoryCache:Lcom/htc/music/util/MemoryCacheBitmapByPosition;

    invoke-virtual {v1}, Lcom/htc/music/util/MemoryCacheBitmapByPosition;->clear()V

    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    invoke-virtual {v1}, Lcom/htc/music/util/AsyncImageDecoder;->quit()V

    iput-object v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private onHtcContextItemSelected_Local(I)Z
    .locals 13

    const/4 v8, 0x0

    const/4 v7, 0x1

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    move v7, v8

    :goto_1
    return v7

    :sswitch_0
    iget v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mSelectedPosition:I

    iget-object v9, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    iget-object v10, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    const-string v11, "_data"

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    const-string v9, "content://drm/"

    invoke-virtual {v5, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    iget v9, p0, Lcom/htc/music/NowPlayingViewHelper;->mSelectedPosition:I

    iget-wide v10, p0, Lcom/htc/music/NowPlayingViewHelper;->mSelectedId:J

    invoke-direct {p0, v8, v9, v10, v11}, Lcom/htc/music/NowPlayingViewHelper;->checkDrmFile(Landroid/net/Uri;IJ)V

    :goto_2
    invoke-virtual {p0}, Lcom/htc/music/NowPlayingViewHelper;->resetNowIndicator()V

    iget-object v8, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    invoke-virtual {v8}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->notifyDataSetChanged()V

    goto :goto_1

    :cond_1
    iget-object v9, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    iget-object v10, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    iget v11, p0, Lcom/htc/music/NowPlayingViewHelper;->mSelectedPosition:I

    const/4 v12, 0x0

    new-array v8, v8, [I

    invoke-static {v9, v10, v11, v12, v8}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;ILcom/htc/music/NpCategory;[I)V

    goto :goto_2

    :cond_2
    const-string v8, "[NowPlayingViewHelper]"

    const-string v9, "onHtcContextItemSelected_Local(), listAdapter is null."

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :sswitch_1
    invoke-virtual {p0}, Lcom/htc/music/NowPlayingViewHelper;->enableNowPlayingWithGlance()V

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    iget-object v9, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    const-class v10, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v9, "pickermode"

    invoke-virtual {v3, v9, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-array v0, v7, [I

    iget-wide v9, p0, Lcom/htc/music/NowPlayingViewHelper;->mSelectedId:J

    long-to-int v9, v9

    aput v9, v0, v8

    const-string v8, "AddToPlaylistData"

    invoke-virtual {v3, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    iget-object v8, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-virtual {v8, v3, v7}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    :sswitch_2
    invoke-virtual {p0}, Lcom/htc/music/NowPlayingViewHelper;->enableNowPlayingWithGlance()V

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    iget-object v8, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    const-class v9, Lcom/htc/music/PropertyListActivity;

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v8, "track"

    iget-wide v9, p0, Lcom/htc/music/NowPlayingViewHelper;->mSelectedId:J

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v8, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-virtual {v8, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    :sswitch_3
    invoke-virtual {p0}, Lcom/htc/music/NowPlayingViewHelper;->enableNowPlayingWithGlance()V

    iget-object v8, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    iget-object v9, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentTrackName:Ljava/lang/String;

    iget-object v10, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentArtistName:Ljava/lang/String;

    invoke-static {v8, v9, v10}, Lcom/htc/music/util/MusicUtils;->searchViaTrackName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_4
    invoke-virtual {p0}, Lcom/htc/music/NowPlayingViewHelper;->enableNowPlayingWithGlance()V

    invoke-direct {p0}, Lcom/htc/music/NowPlayingViewHelper;->setRingtone()V

    goto/16 :goto_1

    :sswitch_5
    invoke-virtual {p0}, Lcom/htc/music/NowPlayingViewHelper;->enableNowPlayingWithGlance()V

    iget-object v8, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    iget-object v9, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    const-string v10, "_data"

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v8, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    iget-wide v9, p0, Lcom/htc/music/NowPlayingViewHelper;->mSelectedId:J

    long-to-int v9, v9

    invoke-static {v8, v5, v9}, Lcom/htc/music/util/MusicUtils;->canBeShareTrack(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v7, :cond_3

    iget-object v8, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentTrackName:Ljava/lang/String;

    iget-object v9, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentAlbumName:Ljava/lang/String;

    iget-object v10, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentArtistName:Ljava/lang/String;

    invoke-direct {p0, v8, v9, v10}, Lcom/htc/music/NowPlayingViewHelper;->shareMusicText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/htc/music/NowPlayingViewHelper;->chooseShareType()V

    goto/16 :goto_1

    :sswitch_6
    new-array v6, v7, [I

    iget v7, p0, Lcom/htc/music/NowPlayingViewHelper;->mSelectedPosition:I

    aput v7, v6, v8

    :try_start_0
    sget-object v7, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v7, v6}, Lcom/htc/music/IMediaPlaybackService;->removeQueueTracks([I)I

    sget-object v7, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v7}, Lcom/htc/music/IMediaPlaybackService;->getNowplaying()[I

    move-result-object v4

    if-eqz v4, :cond_4

    array-length v7, v4

    if-nez v7, :cond_0

    :cond_4
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    iget-object v7, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    const-class v9, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;

    invoke-virtual {v3, v7, v9}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v7, 0x2400

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v7, "KeepHistory"

    const/4 v9, 0x1

    invoke-virtual {v3, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v7, "RemoveStoreHistory"

    const/4 v9, 0x1

    invoke-virtual {v3, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v7, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-virtual {v7, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_4
        0x5 -> :sswitch_0
        0xa -> :sswitch_6
        0x10 -> :sswitch_2
        0x11 -> :sswitch_3
        0x12 -> :sswitch_5
    .end sparse-switch
.end method

.method private onHtcContextItemSelected_Plugin(I)Z
    .locals 5

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :sswitch_0
    iget v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mSelectedPosition:I

    invoke-virtual {p0, v2}, Lcom/htc/music/NowPlayingViewHelper;->playPlug(I)V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Lcom/htc/music/NowPlayingViewHelper;->enableNowPlayingWithGlance()V

    iget v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mSelectedPosition:I

    invoke-virtual {p0, v2}, Lcom/htc/music/NowPlayingViewHelper;->showProperty(I)V

    goto :goto_0

    :sswitch_2
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.htc.music.settings.Listen_Online_Setting"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    const/4 v3, -0x1

    invoke-virtual {v2, v0, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :sswitch_3
    invoke-virtual {p0}, Lcom/htc/music/NowPlayingViewHelper;->enableNowPlayingWithGlance()V

    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentTrackName:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentAlbumName:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentArtistName:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v4}, Lcom/htc/music/NowPlayingViewHelper;->shareMusicText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0x10 -> :sswitch_1
        0x12 -> :sswitch_3
        0x2b -> :sswitch_2
    .end sparse-switch
.end method

.method private onListItemClick_Local(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 5

    const-string v1, "TrackBrowserActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onListItemClick, position="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput p3, p0, Lcom/htc/music/NowPlayingViewHelper;->mSelectedPosition:I

    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    const-string v3, "_data"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "content://drm/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1, p3, p4, p5}, Lcom/htc/music/NowPlayingViewHelper;->checkDrmFile(Landroid/net/Uri;IJ)V

    :goto_1
    invoke-virtual {p0}, Lcom/htc/music/NowPlayingViewHelper;->resetNowIndicator()V

    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    invoke-virtual {v1}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [I

    invoke-static {v1, v2, p3, v3, v4}, Lcom/htc/music/util/MusicUtils;->playAllNotReShuffle(Landroid/content/Context;Landroid/database/Cursor;ILcom/htc/music/NpCategory;[I)V

    goto :goto_1

    :cond_3
    const-string v1, "[NowPlayingViewHelper]"

    const-string v2, "onListItemClick_Local(), listAdapter is null."

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onListItemClick_Plugin(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 5

    const-string v2, "PluginNowPlayingListActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onListItemClick, position="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mLowerSearchFilter:Ljava/lang/String;

    if-nez v2, :cond_1

    iput p3, p0, Lcom/htc/music/NowPlayingViewHelper;->mSelectedPosition:I

    :goto_0
    iget v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mSelectedPosition:I

    invoke-virtual {p0, v2}, Lcom/htc/music/NowPlayingViewHelper;->playPlug(I)V

    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mSelectedPosition:I

    iput v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentPosition:I

    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mRefreshListHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mRefreshListRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mFilterPosToOldPosTable:Ljava/util/Hashtable;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mSelectedPosition:I

    goto :goto_0

    :cond_2
    const-string v2, "[NowPlayingViewHelper]"

    const-string v3, "pos is null in onListItemClick_Plugin"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private onListItemLongClick_Local(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)Z
    .locals 3

    const-string v0, "[NowPlayingViewHelper]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onListItemLongClick, position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p3, p4, p5}, Lcom/htc/music/NowPlayingViewHelper;->showTrackOptions(IJ)V

    const/4 v0, 0x1

    return v0
.end method

.method private onListItemLongClick_Plugin(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)Z
    .locals 3

    const-string v0, "PluginNowPlayingListActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onListItemLongClick, position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p3, p4, p5}, Lcom/htc/music/NowPlayingViewHelper;->showTrackOptions_plugin(IJ)V

    const/4 v0, 0x1

    return v0
.end method

.method private onPause_Local()V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mListView:Lcom/htc/widget/HtcListView;

    instance-of v0, v0, Lcom/htc/widget/HtcReorderListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mListView:Lcom/htc/widget/HtcListView;

    check-cast v0, Lcom/htc/widget/HtcReorderListView;

    invoke-virtual {v0}, Lcom/htc/widget/HtcReorderListView;->OnMyPause()V

    :cond_0
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mReScanHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mDelaySearchHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->setAutoRequery(ZZ)V

    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    #getter for: Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->access$300(Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    #getter for: Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->access$300(Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/util/AsyncImageDecoder;->clear()V

    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    #getter for: Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->access$300(Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/util/AsyncImageDecoder;->pauseDecode()V

    :cond_1
    return-void
.end method

.method private onPause_Plugin()V
    .locals 2

    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mListView:Lcom/htc/widget/HtcListView;

    instance-of v0, v0, Lcom/htc/widget/HtcReorderListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mListView:Lcom/htc/widget/HtcListView;

    check-cast v0, Lcom/htc/widget/HtcReorderListView;

    invoke-virtual {v0}, Lcom/htc/widget/HtcReorderListView;->OnMyPause()V

    :cond_0
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mDelaySearchHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method private onResume_Local()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->setAutoRequery(ZZ)V

    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    #getter for: Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->access$300(Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    #getter for: Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->access$300(Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/util/AsyncImageDecoder;->resumeDecode()V

    :cond_0
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/htc/music/NowPlayingViewHelper;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcListView;->invalidateViews()V

    :cond_1
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-static {v0}, Lcom/htc/music/util/MusicUtils;->isMediaScannerScanning(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v2}, Lcom/htc/music/NowPlayingViewHelper;->showSpinner(Z)V

    :cond_2
    return-void
.end method

.method private onResume_Plugin()V
    .locals 0

    return-void
.end method

.method private onScrollStateChanged_Local(Lcom/htc/widget/HtcAbsListView;I)V
    .locals 2

    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    invoke-virtual {v0}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->setAutoRequeryOffAndAutoOn()V

    :cond_1
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    #getter for: Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->access$300(Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    #getter for: Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->access$300(Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/util/AsyncImageDecoder;->resumeDecode()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->setAutoRequery(Z)V

    :cond_2
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    #getter for: Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->access$300(Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    #getter for: Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->access$300(Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/util/AsyncImageDecoder;->resumeDecode()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    invoke-virtual {v0}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->setAutoRequeryOffAndAutoOn()V

    :cond_3
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    #getter for: Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->access$300(Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    #getter for: Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->access$300(Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/util/AsyncImageDecoder;->pauseDecode()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private onScrollStateChanged_Plugin(Lcom/htc/widget/HtcAbsListView;I)V
    .locals 3

    const/4 v2, 0x1

    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mIsScrolling:Z

    :try_start_0
    sget-object v2, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->clearAlbumArtRequests()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mPluginAdapter:Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mPluginAdapter:Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;

    invoke-virtual {v2}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    :pswitch_1
    iput-boolean v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mIsScrolling:Z

    goto :goto_0

    :pswitch_2
    iput-boolean v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mIsScrolling:Z

    :try_start_1
    sget-object v2, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->clearAlbumArtRequests()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private onServiceConnected_Local(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 8

    const/4 v4, 0x0

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    if-nez v0, :cond_0

    const-string v0, "[NowPlayingViewHelper]"

    const-string v1, "onServiceConnected_Local, mContext is null!!"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    if-nez v0, :cond_1

    new-instance v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f03000e

    new-array v5, v7, [Ljava/lang/String;

    new-array v6, v7, [I

    move-object v2, p0

    invoke-direct/range {v0 .. v7}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;-><init>(Landroid/content/Context;Lcom/htc/music/NowPlayingViewHelper;ILandroid/database/Cursor;[Ljava/lang/String;[IZ)V

    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mListView:Lcom/htc/widget/HtcListView;

    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-direct {p0, v4}, Lcom/htc/music/NowPlayingViewHelper;->getTrackCursor(Ljava/lang/String;)Landroid/database/Cursor;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    invoke-virtual {v0}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    instance-of v0, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    check-cast v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;

    invoke-virtual {v0}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->getMediaPlaybackService()Lcom/htc/music/IMediaPlaybackService;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    check-cast v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;

    sget-object v1, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-virtual {v0, v1}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->setMediaPlaybackService(Lcom/htc/music/IMediaPlaybackService;)V

    :cond_2
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/htc/music/NowPlayingViewHelper;->init(Landroid/database/Cursor;)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, v4}, Lcom/htc/music/NowPlayingViewHelper;->getTrackCursor(Ljava/lang/String;)Landroid/database/Cursor;

    goto :goto_0
.end method

.method private onServiceConnected_Plugin(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6

    const/4 v5, 0x1

    iget-object v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    if-nez v3, :cond_0

    const-string v3, "[NowPlayingViewHelper]"

    const-string v4, "onServiceConnected_Plugin, mContext is null!!"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    sget-object v3, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    const/16 v4, 0x12c

    invoke-interface {v3, v4}, Lcom/htc/music/IMediaPlaybackService;->getNowplayingQueue(I)V

    sget-object v3, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->getShuffleMode()I

    move-result v3

    iput v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mShuffleMode:I

    sget-object v3, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->getQueuePosition()I

    move-result v0

    iget v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mShuffleMode:I

    if-ne v3, v5, :cond_1

    sget-object v3, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3, v0}, Lcom/htc/music/IMediaPlaybackService;->getPositionByShufflePosition(I)I

    move-result v0

    :cond_1
    iput v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentPosition:I

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/htc/music/NowPlayingViewHelper;->showSpinner(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "com.htc.music.artpathupdated"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "com.htc.music.nowplayingqueueupdated"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "com.htc.music.trackdetailsupdated"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "com.htc.music.queuechanged"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "com.htc.music.metachanged"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mPluginListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method private onStart_Local()V
    .locals 5

    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mNowPlayingListener:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.htc.music.queuechanged"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mNowPlayingListener:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.htc.music.metachanged"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.htc.music.metachanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.htc.music.queuechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mNowPlayingListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private setRingtone()V
    .locals 5

    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    const-string v4, "_data"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-static {v2, v1}, Lcom/htc/music/util/MusicUtils;->getAudioType(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mRingtoneHelper:Lcom/htc/music/NowPlayingViewHelper$NowPlayingRingtoneHelper;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mRingtoneHelper:Lcom/htc/music/NowPlayingViewHelper$NowPlayingRingtoneHelper;

    iget-wide v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mSelectedId:J

    long-to-int v3, v3

    invoke-virtual {v2, v3}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingRingtoneHelper;->setAudioId(I)V

    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mRingtoneHelper:Lcom/htc/music/NowPlayingViewHelper$NowPlayingRingtoneHelper;

    invoke-virtual {v2, v1}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingRingtoneHelper;->setAudioPath(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mRingtoneHelper:Lcom/htc/music/NowPlayingViewHelper$NowPlayingRingtoneHelper;

    invoke-virtual {v2, v0}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingRingtoneHelper;->setAudioType(I)V

    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mRingtoneHelper:Lcom/htc/music/NowPlayingViewHelper$NowPlayingRingtoneHelper;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingRingtoneHelper;->useAsRingtone(Z)V

    goto :goto_0
.end method

.method private shareMusicFile()V
    .locals 7

    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    iget-object v5, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    const-string v6, "_data"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-wide v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mSelectedId:J

    long-to-int v0, v4

    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-static {v4, v3, v0}, Lcom/htc/music/util/MusicUtils;->canBeShareTrack(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07008c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :pswitch_0
    const-string v4, "[NowPlayingViewHelper]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "normal file case, Audio Path: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x6

    invoke-virtual {p0, v4}, Lcom/htc/music/NowPlayingViewHelper;->showDialog(I)V

    goto :goto_0

    :pswitch_1
    const-string v4, "[NowPlayingViewHelper]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SD DRM case, Audio Path: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x7

    invoke-virtual {p0, v4}, Lcom/htc/music/NowPlayingViewHelper;->showDialog(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private shareMusicText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, ""

    if-eqz p1, :cond_0

    move-object v0, p1

    :cond_0
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-static {v1, v0, p2, p3}, Lcom/htc/music/util/MusicUtils;->getShareMusicText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mShareText:Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mShareText:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v1, ""

    iput-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mShareText:Ljava/lang/String;

    :cond_1
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/htc/music/NowPlayingViewHelper;->showDialog(I)V

    return-void
.end method

.method private showSetContactRingtoneToast()V
    .locals 2

    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method private showTrackOptions(IJ)V
    .locals 8

    const/4 v7, 0x5

    iput p1, p0, Lcom/htc/music/NowPlayingViewHelper;->mSelectedPosition:I

    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v4, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    :try_start_0
    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    const-string v5, "_id"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v4, v4

    iput-wide v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mSelectedId:J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    iget-object v5, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    const-string v6, "title"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentTrackName:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    iget-object v5, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    const-string v6, "artist"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentArtistName:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    iget-object v5, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    const-string v6, "album"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentAlbumName:Ljava/lang/String;

    const-string v4, "[NowPlayingViewHelper]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mCurrentAlbumName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentAlbumName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-array v3, v7, [Ljava/lang/CharSequence;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    const v6, 0x7f07004f

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    const v6, 0x20c01f7

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    const v6, 0x7f07004c

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    const v6, 0x7f070060

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    iget-object v5, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    const v6, 0x20c01fe

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    new-array v2, v7, [I

    fill-array-data v2, :array_0

    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentTrackName:Ljava/lang/String;

    invoke-virtual {p0, v4, v3, v2}, Lcom/htc/music/NowPlayingViewHelper;->showHtcContextMenu(Ljava/lang/String;[Ljava/lang/CharSequence;[I)V

    return-void

    :catch_0
    move-exception v0

    iput-wide p2, p0, Lcom/htc/music/NowPlayingViewHelper;->mSelectedId:J

    goto/16 :goto_0

    nop

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private showTrackOptions_plugin(IJ)V
    .locals 10

    const/4 v9, 0x2

    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mLowerSearchFilter:Ljava/lang/String;

    if-nez v6, :cond_0

    iput p1, p0, Lcom/htc/music/NowPlayingViewHelper;->mSelectedPosition:I

    :goto_0
    const/4 v6, 0x0

    :try_start_0
    iput-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentDetails:Landroid/content/ContentValues;

    sget-object v6, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    iget v7, p0, Lcom/htc/music/NowPlayingViewHelper;->mSelectedPosition:I

    invoke-interface {v6, v7}, Lcom/htc/music/IMediaPlaybackService;->getTrackDetails(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mNowPlayingItemsArrayList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "[NowPlayingViewHelper]"

    const-string v7, "onListItemLongClick()...mNowPlayingItemsArrayList is empty..."

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void

    :cond_0
    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mFilterPosToOldPosTable:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mSelectedPosition:I

    goto :goto_0

    :cond_1
    const-string v6, "[NowPlayingViewHelper]"

    const-string v7, "pos is null in onListItemLongClick_Plugin."

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    :cond_2
    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mNowPlayingItemsArrayList:Ljava/util/ArrayList;

    iget v7, p0, Lcom/htc/music/NowPlayingViewHelper;->mSelectedPosition:I

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ContentValues;

    const-string v7, "artist"

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    iput-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentArtistName:Ljava/lang/String;

    :goto_3
    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mNowPlayingItemsArrayList:Ljava/util/ArrayList;

    iget v7, p0, Lcom/htc/music/NowPlayingViewHelper;->mSelectedPosition:I

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ContentValues;

    const-string v7, "title"

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_6

    iput-object v5, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentTrackName:Ljava/lang/String;

    :goto_4
    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mUnknownAlbumName:Ljava/lang/String;

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070044

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mUnknownAlbumName:Ljava/lang/String;

    :cond_3
    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mUnknownAlbumName:Ljava/lang/String;

    iput-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentAlbumName:Ljava/lang/String;

    new-array v2, v9, [Ljava/lang/CharSequence;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    const v8, 0x20c01f7

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    const v8, 0x20c01fe

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v6

    new-array v1, v9, [I

    fill-array-data v1, :array_0

    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentTrackName:Ljava/lang/String;

    invoke-virtual {p0, v6, v2, v1}, Lcom/htc/music/NowPlayingViewHelper;->showHtcContextMenu(Ljava/lang/String;[Ljava/lang/CharSequence;[I)V

    goto/16 :goto_2

    :cond_4
    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mUnknownArtistName:Ljava/lang/String;

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070043

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mUnknownArtistName:Ljava/lang/String;

    :cond_5
    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mUnknownArtistName:Ljava/lang/String;

    iput-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentArtistName:Ljava/lang/String;

    goto :goto_3

    :cond_6
    const-string v6, ""

    iput-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentTrackName:Ljava/lang/String;

    goto :goto_4

    nop

    :array_0
    .array-data 0x4
        0x12t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private unregisterReceiverSafe(Landroid/content/BroadcastReceiver;)V
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-virtual {v1, p1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public closeDialog()V
    .locals 1

    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mDialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mDialog:Landroid/app/Dialog;

    goto :goto_0
.end method

.method public destroyNowPlayingView()V
    .locals 0

    invoke-virtual {p0}, Lcom/htc/music/NowPlayingViewHelper;->onPause()V

    invoke-virtual {p0}, Lcom/htc/music/NowPlayingViewHelper;->onStop()V

    invoke-virtual {p0}, Lcom/htc/music/NowPlayingViewHelper;->onDestroy()V

    return-void
.end method

.method public enableNowPlayingWithGlance()V
    .locals 4

    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    const-string v2, "Music"

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "NOW_PLAYING_SWITCH"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public finish()V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/htc/music/NowPlayingViewHelper;->onPause()V

    invoke-virtual {p0}, Lcom/htc/music/NowPlayingViewHelper;->onStop()V

    invoke-virtual {p0}, Lcom/htc/music/NowPlayingViewHelper;->onDestroy()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mStopped:Z

    iput-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mListView:Lcom/htc/widget/HtcListView;

    iput-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mViewGroup:Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    return-void
.end method

.method public generateNowPlayingView()Landroid/view/ViewGroup;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/music/NowPlayingViewHelper;->getView()Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public getListView()Lcom/htc/widget/HtcListView;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mListView:Lcom/htc/widget/HtcListView;

    return-object v0
.end method

.method public getView()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mViewGroup:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public hideEmptyErrorView()V
    .locals 3

    const/16 v2, 0x8

    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mNoMusicViewStub:Landroid/view/ViewStub;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mNoMusicViewStub:Landroid/view/ViewStub;

    invoke-virtual {v1, v2}, Landroid/view/ViewStub;->setVisibility(I)V

    :cond_0
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mNoSDCardErrorViewStub:Landroid/view/ViewStub;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mNoSDCardErrorViewStub:Landroid/view/ViewStub;

    invoke-virtual {v1, v2}, Landroid/view/ViewStub;->setVisibility(I)V

    :cond_1
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mViewGroup:Landroid/view/ViewGroup;

    const v2, 0x102000a

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method protected hideHtcContextMenu()V
    .locals 2

    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/app/Activity;->removeDialog(I)V

    return-void
.end method

.method protected init(Landroid/database/Cursor;)V
    .locals 10

    const/4 v7, 0x1

    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mListView:Lcom/htc/widget/HtcListView;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v6}, Lcom/htc/widget/HtcListView;->clearChoices()V

    :cond_2
    instance-of v6, p1, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    invoke-virtual {v6, p1}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->changeCursor(Landroid/database/Cursor;)V

    :goto_1
    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    if-nez v6, :cond_4

    invoke-virtual {p0}, Lcom/htc/music/NowPlayingViewHelper;->showDatabaseError()V

    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->closeContextMenu()V

    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mReScanHandler:Landroid/os/Handler;

    const/4 v7, 0x0

    const-wide/16 v8, 0x3e8

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1}, Lcom/htc/music/NowPlayingViewHelper;->joinAlbumArt(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    invoke-virtual {v6, v0}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_1

    :cond_4
    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-nez v6, :cond_5

    const v6, 0x7f070030

    invoke-virtual {p0, v6}, Lcom/htc/music/NowPlayingViewHelper;->showEmptyView(I)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/htc/music/NowPlayingViewHelper;->hideEmptyErrorView()V

    invoke-virtual {p0}, Lcom/htc/music/NowPlayingViewHelper;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mListView:Lcom/htc/widget/HtcListView;

    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcListView;->setTextFilterEnabled(Z)V

    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcListView;->setFastScrollEnabled(Z)V

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->getCurrentShuffleMode()I

    move-result v6

    if-ne v6, v7, :cond_6

    sget-object v6, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v6}, Lcom/htc/music/IMediaPlaybackService;->getQueuePosition()I

    move-result v5

    sget-object v6, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v6, v5}, Lcom/htc/music/IMediaPlaybackService;->getPositionByShufflePosition(I)I

    move-result v1

    :goto_2
    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v6, v1}, Lcom/htc/widget/HtcListView;->setSelection(I)V

    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mNowPlayingListener:Landroid/content/BroadcastReceiver;

    iget-object v7, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    new-instance v8, Landroid/content/Intent;

    const-string v9, "com.htc.music.metachanged"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7, v8}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v6

    new-array v6, v6, [I

    iput-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mPlaylistContent:[I

    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    const-string v7, "_id"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v2, 0x0

    :goto_4
    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mPlaylistContent:[I

    aput v3, v6, v2

    add-int/lit8 v2, v2, 0x1

    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_4

    :cond_6
    :try_start_1
    sget-object v6, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v6}, Lcom/htc/music/IMediaPlaybackService;->getQueuePosition()I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    goto :goto_2

    :catch_0
    move-exception v6

    goto :goto_3
.end method

.method public initListPos()V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    sget-object v2, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getQueuePosition()I

    move-result v0

    iget v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mShuffleMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    sget-object v2, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2, v0}, Lcom/htc/music/IMediaPlaybackService;->getPositionByShufflePosition(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lcom/htc/music/NowPlayingViewHelper;->setSelection(I)V

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public isPlugNowPlayingMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mIsPluginModeNowPlaying:Z

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 9

    const/4 v7, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x1

    sparse-switch p1, :sswitch_data_0

    move v5, v6

    :cond_0
    :goto_0
    :sswitch_0
    return v5

    :sswitch_1
    if-ne p2, v7, :cond_0

    iget-object v7, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    invoke-static {v7}, Lcom/htc/music/util/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[I

    move-result-object v0

    const-string v7, "playlist"

    invoke-virtual {p3, v7, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    int-to-long v7, v1

    invoke-static {v6, v0, v7, v8}, Lcom/htc/music/util/MusicUtils;->addToPlaylist(Landroid/content/Context;[IJ)V

    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mLowerSearchFilter:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/htc/music/NowPlayingViewHelper;->getTrackCursor(Ljava/lang/String;)Landroid/database/Cursor;

    goto :goto_0

    :sswitch_2
    if-ne p2, v7, :cond_0

    new-array v0, v5, [I

    iget-wide v7, p0, Lcom/htc/music/NowPlayingViewHelper;->mSelectedId:J

    long-to-int v7, v7

    aput v7, v0, v6

    const-string v7, "playlist"

    invoke-virtual {p3, v7, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    int-to-long v7, v1

    invoke-static {v6, v0, v7, v8}, Lcom/htc/music/util/MusicUtils;->addToPlaylist(Landroid/content/Context;[IJ)V

    goto :goto_0

    :sswitch_3
    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    if-ne p2, v7, :cond_0

    move-object v2, p3

    new-instance v3, Lcom/htc/music/NowPlayingViewHelper$1;

    invoke-direct {v3, p0, v2}, Lcom/htc/music/NowPlayingViewHelper$1;-><init>(Lcom/htc/music/NowPlayingViewHelper;Landroid/content/Intent;)V

    new-instance v4, Ljava/lang/Thread;

    invoke-direct {v4, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x13 -> :sswitch_3
        0x29 -> :sswitch_1
        0x2a -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x1

    iget v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mActivityStatus:I

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iput v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mActivityStatus:I

    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isPluginMode()Z

    move-result v2

    iput-boolean v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mIsPluginModeNowPlaying:Z

    iget-boolean v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mIsPluginModeNowPlaying:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-static {v2}, Lcom/htc/music/util/MusicUtils;->CheckDLNAStatus(Landroid/content/Context;)I

    move-result v1

    if-ne v3, v1, :cond_1

    iput-boolean v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mIsPluginModeNowPlaying:Z

    :cond_1
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-static {v2}, Lcom/htc/music/util/MusicUtils;->CheckDLNAStatus(Landroid/content/Context;)I

    move-result v2

    iput v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mDlnaMode:I

    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mViewGroup:Landroid/view/ViewGroup;

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v2, 0x7f03003a

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mViewGroup:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mViewGroup:Landroid/view/ViewGroup;

    const v3, 0x102000a

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListView;

    iput-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mListView:Lcom/htc/widget/HtcListView;

    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mListView:Lcom/htc/widget/HtcListView;

    iget-object v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mOnClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mListView:Lcom/htc/widget/HtcListView;

    iget-object v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mOnLongClickListener:Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListView;->setOnItemLongClickListener(Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;)V

    :cond_2
    iget-boolean v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mIsPluginModeNowPlaying:Z

    if-eqz v2, :cond_3

    invoke-direct {p0, p1, p2}, Lcom/htc/music/NowPlayingViewHelper;->onCreate_Plugin(Landroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/htc/music/NowPlayingViewHelper;->onCreate_Local(Landroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 14

    const v13, 0x1080027

    const v12, 0x1040013

    const/4 v9, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    sparse-switch p1, :sswitch_data_0

    const/4 v5, 0x0

    :goto_0
    return-object v5

    :sswitch_0
    new-instance v7, Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-direct {v7, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v8, p0, Lcom/htc/music/NowPlayingViewHelper;->mHtcContextMenuTitle:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/music/NowPlayingViewHelper;->mHtcContextMenuItems:[Ljava/lang/CharSequence;

    new-instance v9, Lcom/htc/music/NowPlayingViewHelper$4;

    invoke-direct {v9, p0}, Lcom/htc/music/NowPlayingViewHelper$4;-><init>(Lcom/htc/music/NowPlayingViewHelper;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    goto :goto_0

    :sswitch_1
    new-instance v7, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v8, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-direct {v7, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v8, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-static {v8}, Lcom/htc/music/util/MusicUtils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v13}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f07005d

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    new-instance v8, Lcom/htc/music/NowPlayingViewHelper$5;

    invoke-direct {v8, p0}, Lcom/htc/music/NowPlayingViewHelper$5;-><init>(Lcom/htc/music/NowPlayingViewHelper;)V

    invoke-virtual {v7, v12, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v5

    goto :goto_0

    :sswitch_2
    new-instance v7, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v8, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-direct {v7, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v8, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-static {v8}, Lcom/htc/music/util/MusicUtils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v13}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/music/NowPlayingViewHelper;->mMsg:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    new-instance v8, Lcom/htc/music/NowPlayingViewHelper$7;

    invoke-direct {v8, p0}, Lcom/htc/music/NowPlayingViewHelper$7;-><init>(Lcom/htc/music/NowPlayingViewHelper;)V

    invoke-virtual {v7, v12, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    const v8, 0x1040009

    new-instance v9, Lcom/htc/music/NowPlayingViewHelper$6;

    invoke-direct {v9, p0}, Lcom/htc/music/NowPlayingViewHelper$6;-><init>(Lcom/htc/music/NowPlayingViewHelper;)V

    invoke-virtual {v7, v8, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v5

    goto :goto_0

    :sswitch_3
    new-array v0, v9, [Ljava/lang/CharSequence;

    iget-object v7, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f07010d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v10

    iget-object v7, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f07010e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v11

    new-instance v7, Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-direct {v7, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v8, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentTrackName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    new-instance v8, Lcom/htc/music/NowPlayingViewHelper$8;

    invoke-direct {v8, p0}, Lcom/htc/music/NowPlayingViewHelper$8;-><init>(Lcom/htc/music/NowPlayingViewHelper;)V

    invoke-virtual {v7, v0, v8}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    goto/16 :goto_0

    :sswitch_4
    iget-object v7, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    iget-object v8, p0, Lcom/htc/music/NowPlayingViewHelper;->mShareText:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/htc/music/widget/SharedAdapter;->shareIntentChooser(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v6

    move-object v5, v6

    goto/16 :goto_0

    :sswitch_5
    iget-object v7, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    iget-object v8, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    const-string v9, "_data"

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v7, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    iget-wide v8, p0, Lcom/htc/music/NowPlayingViewHelper;->mSelectedId:J

    long-to-int v8, v8

    invoke-static {v7, v8, v1, v10}, Lcom/htc/music/widget/SharedAdapter;->shareIntentChooser(Landroid/app/Activity;ILjava/lang/String;I)Landroid/app/Dialog;

    move-result-object v4

    move-object v5, v4

    goto/16 :goto_0

    :sswitch_6
    iget-object v7, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    iget-object v8, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    const-string v9, "_data"

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v7, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    iget-wide v8, p0, Lcom/htc/music/NowPlayingViewHelper;->mSelectedId:J

    long-to-int v8, v8

    invoke-static {v7, v8, v1, v11}, Lcom/htc/music/widget/SharedAdapter;->shareIntentChooser(Landroid/app/Activity;ILjava/lang/String;I)Landroid/app/Dialog;

    move-result-object v3

    move-object v5, v3

    goto/16 :goto_0

    :sswitch_7
    const/16 v7, 0x8

    if-ne p1, v7, :cond_2

    const/4 v7, 0x3

    new-array v0, v7, [Ljava/lang/CharSequence;

    iget-object v7, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0700a9

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v10

    iget-object v7, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0700aa

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v11

    iget-object v7, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0700ab

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v9

    :goto_1
    const/4 v2, 0x0

    iget-object v7, p0, Lcom/htc/music/NowPlayingViewHelper;->mRingtoneHelper:Lcom/htc/music/NowPlayingViewHelper$NowPlayingRingtoneHelper;

    if-nez v7, :cond_0

    new-instance v7, Lcom/htc/music/NowPlayingViewHelper$NowPlayingRingtoneHelper;

    iget-object v8, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-direct {v7, p0, v8}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingRingtoneHelper;-><init>(Lcom/htc/music/NowPlayingViewHelper;Landroid/content/Context;)V

    iput-object v7, p0, Lcom/htc/music/NowPlayingViewHelper;->mRingtoneHelper:Lcom/htc/music/NowPlayingViewHelper$NowPlayingRingtoneHelper;

    const-string v7, "[NowPlayingViewHelper]"

    const-string v8, "Ringtonehelper is null!! this should never happen!!"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v7, p0, Lcom/htc/music/NowPlayingViewHelper;->mRingtoneHelper:Lcom/htc/music/NowPlayingViewHelper$NowPlayingRingtoneHelper;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/htc/music/NowPlayingViewHelper;->mRingtoneHelper:Lcom/htc/music/NowPlayingViewHelper$NowPlayingRingtoneHelper;

    const/16 v8, 0x13

    invoke-virtual {v7, v0, v8}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingRingtoneHelper;->createSetAsRingtoneDialog([Ljava/lang/CharSequence;I)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    :cond_1
    move-object v5, v2

    goto/16 :goto_0

    :cond_2
    new-array v0, v9, [Ljava/lang/CharSequence;

    iget-object v7, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0700a9

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v10

    iget-object v7, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0700aa

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v11

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_6
        0x8 -> :sswitch_7
        0x9 -> :sswitch_7
        0x3e8 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    const/4 v2, 0x0

    const/16 v0, 0x2a

    const v1, 0x7f07000b

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080a5e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/16 v0, 0x29

    const v1, 0x7f07004f

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080a69

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/16 v0, 0x2b

    const v1, 0x20c0200

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080336

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 2

    iget v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mActivityStatus:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mActivityStatus:I

    iget-boolean v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mIsPluginModeNowPlaying:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/htc/music/NowPlayingViewHelper;->onDestroy_Plugin()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/htc/music/NowPlayingViewHelper;->onDestroy_Local()V

    goto :goto_0
.end method

.method public onHtcContextItemSelected(I)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mIsPluginModeNowPlaying:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/htc/music/NowPlayingViewHelper;->onHtcContextItemSelected_Local(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/music/NowPlayingViewHelper;->onHtcContextItemSelected_Plugin(I)Z

    move-result v0

    goto :goto_0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 3

    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isPluginMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-static {v2}, Lcom/htc/music/util/MusicUtils;->CheckDLNAStatus(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v2, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iget-boolean v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mIsPluginModeNowPlaying:Z

    if-eq v2, v0, :cond_1

    invoke-virtual {p0}, Lcom/htc/music/NowPlayingViewHelper;->onPause()V

    invoke-virtual {p0}, Lcom/htc/music/NowPlayingViewHelper;->onStop()V

    invoke-virtual {p0}, Lcom/htc/music/NowPlayingViewHelper;->onDestroy()V

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lcom/htc/music/NowPlayingViewHelper;->onCreate(Landroid/content/Intent;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/htc/music/NowPlayingViewHelper;->onStart()V

    invoke-virtual {p0}, Lcom/htc/music/NowPlayingViewHelper;->onResume()V

    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    const/4 v1, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/music/NowPlayingViewHelper;->enableNowPlayingWithGlance()V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    const-class v3, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v2, "pickermode"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "AddToPlaylistData"

    iget-object v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mPlaylistContent:[I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    const/16 v3, 0x29

    invoke-virtual {v2, v0, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/music/NowPlayingViewHelper;->enableNowPlayingWithGlance()V

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.EDIT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v3, "com.htc.media/track"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "isnowplayinglist"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    const/16 v3, 0x2a

    invoke-virtual {v2, v0, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.htc.music.settings.Listen_Online_Setting"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    const/4 v3, -0x1

    invoke-virtual {v2, v0, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x29
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    iget v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mActivityStatus:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x4

    iput v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mActivityStatus:I

    iget-boolean v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mIsPluginModeNowPlaying:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/htc/music/NowPlayingViewHelper;->onPause_Plugin()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/htc/music/NowPlayingViewHelper;->onPause_Local()V

    goto :goto_0
.end method

.method public onPrepareDialog(ILandroid/app/Dialog;)Z
    .locals 5

    const/4 v3, 0x1

    sparse-switch p1, :sswitch_data_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :sswitch_0
    check-cast p2, Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mHtcContextMenuTitle:Ljava/lang/String;

    invoke-virtual {p2, v2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    move v2, v3

    goto :goto_0

    :sswitch_1
    check-cast p2, Lcom/htc/widget/HtcAlertDialog;

    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mMsg:Ljava/lang/String;

    invoke-virtual {p2, v2}, Lcom/htc/widget/HtcAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    move v2, v3

    goto :goto_0

    :sswitch_2
    check-cast p2, Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentTrackName:Ljava/lang/String;

    invoke-virtual {p2, v2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    move v2, v3

    goto :goto_0

    :sswitch_3
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mShareText:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/htc/music/widget/SharedAdapter;->getShareDialogAdapter(Landroid/app/Activity;Ljava/lang/String;)Lcom/htc/music/widget/SharedAdapter;

    move-result-object v0

    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mShareText:Ljava/lang/String;

    invoke-static {v2, v4, v0, p2}, Lcom/htc/music/widget/SharedAdapter;->getShareDialogClickListener(Landroid/app/Activity;Ljava/lang/String;Lcom/htc/music/widget/SharedAdapter;Landroid/app/Dialog;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v1

    move-object v2, p2

    check-cast v2, Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    check-cast p2, Landroid/app/AlertDialog;

    invoke-virtual {p2}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    move v2, v3

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x4 -> :sswitch_2
        0x5 -> :sswitch_3
        0x3e8 -> :sswitch_0
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/16 v1, 0x2a

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mDlnaMode:I

    if-nez v1, :cond_4

    move v1, v2

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    const/16 v1, 0x29

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_2

    iget v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mDlnaMode:I

    if-nez v1, :cond_1

    move v3, v2

    :cond_1
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_2
    const/16 v1, 0x2b

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/htc/music/util/CustomizeSetting;->isSupportListenStore()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_3
    return v2

    :cond_4
    move v1, v3

    goto :goto_0
.end method

.method public onRestart()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mActivityStatus:I

    return-void
.end method

.method public onResume()V
    .locals 2

    const/4 v0, 0x2

    iget v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mActivityStatus:I

    if-eq v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mActivityStatus:I

    iget-boolean v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mIsPluginModeNowPlaying:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/htc/music/NowPlayingViewHelper;->onResume_Plugin()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/htc/music/NowPlayingViewHelper;->onResume_Local()V

    goto :goto_0
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mAdapterSent:Z

    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "isnowplayinglist"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "pluginmode"

    iget-boolean v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mIsPluginModeNowPlaying:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onScroll(Lcom/htc/widget/HtcAbsListView;III)V
    .locals 1

    iget-boolean v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mIsPluginModeNowPlaying:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/htc/music/NowPlayingViewHelper;->onScroll_Local(Lcom/htc/widget/HtcAbsListView;III)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/htc/music/NowPlayingViewHelper;->onScroll_Plugin(Lcom/htc/widget/HtcAbsListView;III)V

    goto :goto_0
.end method

.method public onScrollStateChanged(Lcom/htc/widget/HtcAbsListView;I)V
    .locals 1

    iget-boolean v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mIsPluginModeNowPlaying:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/htc/music/NowPlayingViewHelper;->onScrollStateChanged_Local(Lcom/htc/widget/HtcAbsListView;I)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/htc/music/NowPlayingViewHelper;->onScrollStateChanged_Plugin(Lcom/htc/widget/HtcAbsListView;I)V

    goto :goto_0
.end method

.method public onScroll_Local(Lcom/htc/widget/HtcAbsListView;III)V
    .locals 3

    move v1, p2

    add-int v0, p2, p3

    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    #getter for: Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v2}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->access$300(Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    #getter for: Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v2}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->access$300(Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/htc/music/util/AsyncImageDecoder;->setVisibleRange(II)V

    :cond_0
    return-void
.end method

.method public onScroll_Plugin(Lcom/htc/widget/HtcAbsListView;III)V
    .locals 4

    move v1, p2

    add-int v0, p2, p3

    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    invoke-virtual {v2, v1, v0}, Lcom/htc/music/util/AsyncImageDecoder;->setVisibleRange(II)V

    :cond_0
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mMemoryCache:Lcom/htc/music/util/MemoryCacheBitmapByPosition;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mMemoryCache:Lcom/htc/music/util/MemoryCacheBitmapByPosition;

    add-int v3, v1, v0

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v3}, Lcom/htc/music/util/MemoryCacheBitmapByPosition;->setPosition(I)V

    :cond_1
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    :try_start_0
    iget-boolean v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mIsPluginModeNowPlaying:Z

    if-eqz v1, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/htc/music/NowPlayingViewHelper;->onServiceConnected_Plugin(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/htc/music/NowPlayingViewHelper;->onServiceConnected_Local(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "[NowPlayingViewHelper]"

    const-string v2, "NowPlayingView onServiceConnected error:"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "[NowPlayingViewHelper]"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const-string v0, "[NowPlayingViewHelper]"

    const-string v1, "nowplayingViewHelper call finish at service disconnected!!"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 3

    iget v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mActivityStatus:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mActivityStatus:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x2

    iput v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mActivityStatus:I

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.htc.music.playstatechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.htc.music.playbackcomplete"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mIsPluginModeNowPlaying:Z

    if-eqz v1, :cond_2

    const-string v1, "com.htc.music.onerror"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_2
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mStatusListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-boolean v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mIsPluginModeNowPlaying:Z

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/htc/music/NowPlayingViewHelper;->onStart_Local()V

    goto :goto_0
.end method

.method public onStop()V
    .locals 3

    iget v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mActivityStatus:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x5

    iput v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mActivityStatus:I

    invoke-virtual {p0}, Lcom/htc/music/NowPlayingViewHelper;->closeDialog()V

    :try_start_0
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mStatusListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mNowPlayingListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method public playPlug(I)V
    .locals 3

    if-gez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v1, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v1, :cond_0

    move v0, p1

    :try_start_0
    iget v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mShuffleMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    sget-object v1, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1, p1}, Lcom/htc/music/IMediaPlaybackService;->getShufflePositionByPosition(I)I

    move-result v0

    :cond_2
    sget-object v1, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1, v0}, Lcom/htc/music/IMediaPlaybackService;->setQueuePosition(I)V

    sget-object v1, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->play()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected resetNowIndicator()V
    .locals 4

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-static {v2}, Lcom/htc/music/util/MusicUtils;->CheckDLNAStatus(Landroid/content/Context;)I

    move-result v2

    iput v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mDlnaMode:I

    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    iget v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mDlnaMode:I

    #setter for: Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDlnaMode:I
    invoke-static {v2, v3}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->access$202(Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;I)I

    iget v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mDlnaMode:I

    if-eq v2, v1, :cond_1

    iget v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mDlnaMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    :cond_1
    move v0, v1

    :goto_1
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    iput-boolean v0, v1, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDisableNowPlayingIndicator:Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setSelection(I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mListView:Lcom/htc/widget/HtcListView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcListView;->setSelection(I)V

    goto :goto_0
.end method

.method public showDatabaseError()V
    .locals 9

    const/16 v8, 0x8

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/htc/music/NowPlayingViewHelper;->mViewGroup:Landroid/view/ViewGroup;

    const v6, 0x102000a

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_0

    :cond_0
    iget-object v5, p0, Lcom/htc/music/NowPlayingViewHelper;->mNoMusicViewStub:Landroid/view/ViewStub;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/htc/music/NowPlayingViewHelper;->mNoMusicViewStub:Landroid/view/ViewStub;

    invoke-virtual {v5, v8}, Landroid/view/ViewStub;->setVisibility(I)V

    :cond_1
    iget-object v5, p0, Lcom/htc/music/NowPlayingViewHelper;->mViewGroup:Landroid/view/ViewGroup;

    const v6, 0x20201ba

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object v5, p0, Lcom/htc/music/NowPlayingViewHelper;->mViewGroup:Landroid/view/ViewGroup;

    const v6, 0x20201c0

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_3

    iget-object v5, p0, Lcom/htc/music/NowPlayingViewHelper;->mViewGroup:Landroid/view/ViewGroup;

    const v6, 0x7f0800a6

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    :cond_3
    if-eqz v4, :cond_4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    iget-object v5, p0, Lcom/htc/music/NowPlayingViewHelper;->mNoSDCardErrorViewStub:Landroid/view/ViewStub;

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/htc/music/NowPlayingViewHelper;->mViewGroup:Landroid/view/ViewGroup;

    const v6, 0x7f08006f

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewStub;

    iput-object v5, p0, Lcom/htc/music/NowPlayingViewHelper;->mNoSDCardErrorViewStub:Landroid/view/ViewStub;

    :cond_5
    iget-object v5, p0, Lcom/htc/music/NowPlayingViewHelper;->mNoSDCardErrorViewStub:Landroid/view/ViewStub;

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/htc/music/NowPlayingViewHelper;->mNoSDCardErrorViewStub:Landroid/view/ViewStub;

    invoke-virtual {v5, v7}, Landroid/view/ViewStub;->setVisibility(I)V

    iget-object v5, p0, Lcom/htc/music/NowPlayingViewHelper;->mViewGroup:Landroid/view/ViewGroup;

    const v6, 0x7f0800e3

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_6

    iget-object v5, p0, Lcom/htc/music/NowPlayingViewHelper;->mViewGroup:Landroid/view/ViewGroup;

    const v6, 0x7f080070

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    :cond_6
    if-eqz v4, :cond_7

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const v1, 0x20c00a1

    iget-object v5, p0, Lcom/htc/music/NowPlayingViewHelper;->mViewGroup:Landroid/view/ViewGroup;

    const v6, 0x7f0800a2

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const-string v5, "shared"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-static {}, Lcom/htc/music/util/MusicUtils;->IsOnlyInternalStorage()Z

    move-result v5

    if-eqz v5, :cond_b

    const v1, 0x7f07003f

    :goto_0
    if-eqz v0, :cond_8

    const v5, 0x20802c6

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :cond_8
    :goto_1
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    :cond_9
    iget-object v5, p0, Lcom/htc/music/NowPlayingViewHelper;->mViewGroup:Landroid/view/ViewGroup;

    const v6, 0x7f0800a3

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_a

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_a
    return-void

    :cond_b
    const v1, 0x7f07003e

    goto :goto_0

    :cond_c
    const-string v5, "removed"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    const v1, 0x20c00a1

    goto :goto_1

    :cond_d
    const-string v5, "unmounted"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    const v1, 0x20c01e2

    goto :goto_1
.end method

.method protected showDialog(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/music/NowPlayingViewHelper;->showDialog(ILandroid/os/Bundle;)V

    return-void
.end method

.method protected showDialog(ILandroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/music/NowPlayingViewHelper;->closeDialog()V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/music/NowPlayingViewHelper;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mDialog:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mDialog:Landroid/app/Dialog;

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p0, p1, v0}, Lcom/htc/music/NowPlayingViewHelper;->onPrepareDialog(ILandroid/app/Dialog;)Z

    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method

.method public showEmptyView(I)V
    .locals 4

    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mViewGroup:Landroid/view/ViewGroup;

    const v3, 0x102000a

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    :cond_0
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mNoSDCardErrorViewStub:Landroid/view/ViewStub;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mNoSDCardErrorViewStub:Landroid/view/ViewStub;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/ViewStub;->setVisibility(I)V

    :cond_1
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mNoMusicViewStub:Landroid/view/ViewStub;

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mViewGroup:Landroid/view/ViewGroup;

    const v3, 0x7f08006d

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    iput-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mNoMusicViewStub:Landroid/view/ViewStub;

    :cond_2
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mNoMusicViewStub:Landroid/view/ViewStub;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewStub;->setVisibility(I)V

    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mViewGroup:Landroid/view/ViewGroup;

    const v3, 0x7f0800ab

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    :cond_3
    return-void
.end method

.method protected showHtcContextMenu(Ljava/lang/String;[Ljava/lang/CharSequence;[I)V
    .locals 1

    iput-object p1, p0, Lcom/htc/music/NowPlayingViewHelper;->mHtcContextMenuTitle:Ljava/lang/String;

    iput-object p2, p0, Lcom/htc/music/NowPlayingViewHelper;->mHtcContextMenuItems:[Ljava/lang/CharSequence;

    iput-object p3, p0, Lcom/htc/music/NowPlayingViewHelper;->mHtcContextMenuIds:[I

    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Lcom/htc/music/NowPlayingViewHelper;->showDialog(I)V

    return-void
.end method

.method public showProperty(I)V
    .locals 6

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    const-class v4, Lcom/htc/music/PluginPropertyListActivity;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mNowPlayingItemsArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    const-string v4, "title"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mNowPlayingItemsArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    const-string v4, "artist"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mIsNeedToUpdateProperty:Z

    iget-object v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentDetails:Landroid/content/ContentValues;

    if-eqz v3, :cond_0

    const-string v3, "duration"

    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentDetails:Landroid/content/ContentValues;

    const-string v5, "length"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v3, "trackname"

    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentDetails:Landroid/content/ContentValues;

    const-string v5, "title"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "artistname"

    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentDetails:Landroid/content/ContentValues;

    const-string v5, "artist"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "albumname"

    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentDetails:Landroid/content/ContentValues;

    const-string v5, "album"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "genre"

    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentDetails:Landroid/content/ContentValues;

    const-string v5, "genre"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "composer"

    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentDetails:Landroid/content/ContentValues;

    const-string v5, "composer"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "location"

    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentDetails:Landroid/content/ContentValues;

    const-string v5, "location"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    iget-object v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-virtual {v3, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_0
    const-string v3, "duration"

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v3, "trackname"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "artistname"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "albumname"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "genre"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "composer"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "location"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mIsNeedToUpdateProperty:Z

    goto :goto_0
.end method

.method protected showSpinner(Z)V
    .locals 0

    return-void
.end method

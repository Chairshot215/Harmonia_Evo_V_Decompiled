.class public Lcom/htc/music/browserlayer/TrackBrowserActivity;
.super Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;
.source "TrackBrowserActivity.java"

# interfaces
.implements Lcom/htc/music/util/MusicUtils$Defs;
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/browserlayer/TrackBrowserActivity$UIHandler;,
        Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackBrowserRingtoneHelper;,
        Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;,
        Lcom/htc/music/browserlayer/TrackBrowserActivity$NonUIHandler;,
        Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;,
        Lcom/htc/music/browserlayer/TrackBrowserActivity$RecentPlayedPlaylistCursor;,
        Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;,
        Lcom/htc/music/browserlayer/TrackBrowserActivity$DlnaNotifyStub;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0x258

.field private static final ANIMATION_START_OFFSET:I = 0xc8

.field public static final DIALOG_DRM_CONFIRM:I = 0x3

.field public static final DIALOG_DRM_ERROR:I = 0x2

.field public static final DIALOG_FOR_DELETE:I = 0x1

.field private static final DIALOG_SHARETEXT:I = 0x5

.field private static final DIALOG_SHARETYPE:I = 0x4

.field private static final DIALOG_SHARE_DRM_FILE:I = 0x7

.field private static final DIALOG_SHARE_NORMAL_FILE:I = 0x6

.field public static final DLNA_CALLER_MUSIC:I = 0x1

.field private static final INVALIDATE_LISTVIEW:I = 0x1

.field private static final LOGTAG:Ljava/lang/String; = "[TrackBrowser]"

.field private static final SHOW_SET_CONTACT_RINGTONE_TOAST:I = 0x2

.field private static final TAG:Ljava/lang/String; = "[PluginNowPlayingListActivity]"

.field private static final TITLE_DEFAULT_SORT_ORDER:Ljava/lang/String; = "title COLLATE NOCASE ASC"


# instance fields
.field private final ADD_SONGS:I

.field private final CHANGE_ORDER:I

.field private final CLEAR_PLAYLIST:I

.field private final DELETE_SONGS:I

.field private final DIALOG_SET_AS_RINGTONE:I

.field private final DIALOG_SET_AS_RINGTONE_NO_NOTIFICATION:I

.field private final EDIT_PLAYLIST:I

.field private final GET_ALBUM_ART:I

.field private NPoptionButtonClick:Landroid/view/View$OnClickListener;

.field private final PLAY_ALL:I

.field private final QUEUE_UPDATE_COUNT:I

.field private final Q_ALL:I

.field private final Q_SELECTED:I

.field private final REMOVE:I

.field private final RENAME_PLAYLIST:I

.field private final SAVE_AS_PLAYLIST:I

.field private final SEARCH:I

.field private final SELECT_ALL:I

.field private final SETTING:I

.field private final SET_RINGTONE:I

.field private final SHARE:I

.field private final SHARE_PLUGIN:I

.field private final UNSELECT_ALL:I

.field private final UPLOAD:I

.field mActivityTitle:Ljava/lang/String;

.field private mActivity_height:I

.field private mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

.field private mAdapterSent:Z

.field private mAlbumId:Ljava/lang/String;

.field private mArtistId:Ljava/lang/String;

.field private mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

.field mAsyncQuerying:Z

.field private mButtonPanel:Landroid/view/ViewStub;

.field private mCategory:S

.field private mComposer:Ljava/lang/String;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mCountTemplate:Ljava/lang/String;

.field private mCurrentAlbumName:Ljava/lang/String;

.field private mCurrentArtistNameForAlbum:Ljava/lang/String;

.field private mCurrentDetails:Landroid/content/ContentValues;

.field private mCurrentPosition:I

.field private mCurrentTrackName:Ljava/lang/String;

.field private mCursorCols:[Ljava/lang/String;

.field private mDelaySearchHandler:Landroid/os/Handler;

.field private mDeletedOneRow:Z

.field private mDescription:Ljava/lang/String;

.field mDestroyed:Z

.field private mDlnaMode:I

.field private mDlnaService:Lcom/htc/dlnainterface/IDLNAPluginService;

.field private mDlnaServiceConn:Z

.field private mDragListener:Lcom/htc/widget/HtcReorderListView$DragListener;

.field private mDropListener:Lcom/htc/widget/HtcReorderListView$DropListener;

.field private mEditMode:Z

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

.field private mGenre:Ljava/lang/String;

.field private mIsDrmList:Z

.field private mIsNeedToUpdateProperty:Ljava/lang/Boolean;

.field public mIsNowPlayinglist:Z

.field private mIsPluginModeNowPlaying:Z

.field private mIsQueueChanged:Z

.field private mIsScrolling:Z

.field private mItemClicked:Z

.field private mLibraryButton:Landroid/widget/ImageButton;

.field private mLibraryListener:Landroid/view/View$OnClickListener;

.field mLowerSearchFilter:Ljava/lang/String;

.field private mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mMemoryCache:Lcom/htc/music/util/MemoryCacheBitmapByPosition;

.field private mMsg:Ljava/lang/String;

.field private mMusicStoreBtnClickListener:Landroid/view/View$OnClickListener;

.field private mNextButton:Landroid/widget/ImageButton;

.field private mNextListener:Landroid/view/View$OnClickListener;

.field private volatile mNonUIHandler:Lcom/htc/music/browserlayer/TrackBrowserActivity$NonUIHandler;

.field private volatile mNonUILooper:Landroid/os/Looper;

.field private mNotifyCallback:Lcom/htc/music/browserlayer/TrackBrowserActivity$DlnaNotifyStub;

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

.field private mPauseButton:Landroid/widget/ImageButton;

.field private mPauseListener:Landroid/view/View$OnClickListener;

.field private mPickerMode:I

.field mPlaybackServiceConnected:Z

.field private mPlayerPanel:Landroid/view/ViewStub;

.field private mPlaylistAudioId:[I

.field private mPlaylistContent:[I

.field private mPlaylistMemberCols:[Ljava/lang/String;

.field private mPlaylistUri:Ljava/lang/String;

.field private mPluginAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;

.field private mPluginListener:Landroid/content/BroadcastReceiver;

.field private mPrevButton:Landroid/widget/ImageButton;

.field private mPrevListener:Landroid/view/View$OnClickListener;

.field private mQueueTitle:Lcom/htc/widget/HeaderBarText;

.field private mQueueTitle_height:I

.field private mReScanHandler:Landroid/os/Handler;

.field private mRecentPlayedListener:Landroid/content/BroadcastReceiver;

.field private mRecentPlayedPlaylist:Z

.field private mRecommendButton:Landroid/widget/ImageButton;

.field private mRecommendListener:Landroid/view/View$OnClickListener;

.field private mRefreshListHandler:Landroid/os/Handler;

.field private mRefreshListRunnable:Ljava/lang/Runnable;

.field private mRemoveListener:Lcom/htc/widget/HtcReorderListView$RemoveListener;

.field private mRingToneHelper:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackBrowserRingtoneHelper;

.field private mScanListener:Landroid/content/BroadcastReceiver;

.field private mSelectedId:J

.field private mSelectedPlaylistId:Ljava/lang/String;

.field private mSelectedPlaylistName:Ljava/lang/String;

.field private mSelectedPosition:I

.field private mShareText:Ljava/lang/String;

.field private mShowPlayerPanel:Z

.field private mShuffleMode:I

.field private mSortOrder:Ljava/lang/String;

.field private mStatusListener:Landroid/content/BroadcastReceiver;

.field private mTrackCursor:Landroid/database/Cursor;

.field private mTrackList:Lcom/htc/widget/HtcListView;

.field private mTrackListListener:Landroid/content/BroadcastReceiver;

.field private mUiHandler:Lcom/htc/music/browserlayer/TrackBrowserActivity$UIHandler;

.field private mcurDMR:Ljava/lang/String;

.field private preSearchTime:J


# direct methods
.method public constructor <init>()V
    .locals 5

    const/16 v4, 0x1e

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;-><init>()V

    const/16 v0, 0x17

    iput v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->Q_SELECTED:I

    const/16 v0, 0x18

    iput v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->Q_ALL:I

    const/16 v0, 0x19

    iput v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->SAVE_AS_PLAYLIST:I

    const/16 v0, 0x1a

    iput v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->PLAY_ALL:I

    const/16 v0, 0x1b

    iput v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->CLEAR_PLAYLIST:I

    const/16 v0, 0x1c

    iput v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->REMOVE:I

    const/16 v0, 0x1d

    iput v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->SEARCH:I

    iput v4, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->ADD_SONGS:I

    const/16 v0, 0x1f

    iput v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->DELETE_SONGS:I

    const/16 v0, 0x20

    iput v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->CHANGE_ORDER:I

    const/16 v0, 0x21

    iput v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->RENAME_PLAYLIST:I

    const/16 v0, 0x22

    iput v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->SELECT_ALL:I

    const/16 v0, 0x23

    iput v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->UNSELECT_ALL:I

    const/16 v0, 0x24

    iput v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->DIALOG_SET_AS_RINGTONE:I

    const/16 v0, 0x25

    iput v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->DIALOG_SET_AS_RINGTONE_NO_NOTIFICATION:I

    const/16 v0, 0x26

    iput v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->EDIT_PLAYLIST:I

    const/16 v0, 0x27

    iput v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->SHARE_PLUGIN:I

    const/16 v0, 0x28

    iput v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->UPLOAD:I

    const/16 v0, 0x29

    iput v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->SETTING:I

    const/16 v0, 0x2a

    iput v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->SHARE:I

    const/16 v0, 0x2b

    iput v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->SET_RINGTONE:I

    iput-boolean v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDeletedOneRow:Z

    iput-boolean v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mEditMode:Z

    iput-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    iput-boolean v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapterSent:Z

    iput-short v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCategory:S

    iput v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDlnaMode:I

    iput-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mcurDMR:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDlnaServiceConn:Z

    iput-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDlnaService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iput-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRingToneHelper:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackBrowserRingtoneHelper;

    iput-boolean v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPlaybackServiceConnected:Z

    new-instance v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$1;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$1;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mConnection:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$DlnaNotifyStub;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$DlnaNotifyStub;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mNotifyCallback:Lcom/htc/music/browserlayer/TrackBrowserActivity$DlnaNotifyStub;

    iput-boolean v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDestroyed:Z

    new-instance v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$2;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$2;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$3;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$3;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    new-instance v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$4;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$4;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mStatusListener:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$5;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$5;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRecentPlayedListener:Landroid/content/BroadcastReceiver;

    const/16 v0, 0x4ce

    iput v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mActivity_height:I

    const/16 v0, 0x40

    iput v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mQueueTitle_height:I

    new-instance v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$8;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$8;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDragListener:Lcom/htc/widget/HtcReorderListView$DragListener;

    new-instance v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$9;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$9;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDropListener:Lcom/htc/widget/HtcReorderListView$DropListener;

    new-instance v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$10;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$10;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRemoveListener:Lcom/htc/widget/HtcReorderListView$RemoveListener;

    new-instance v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$11;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$11;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$12;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$12;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mNowPlayingListener:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$13;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$13;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->NPoptionButtonClick:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$21;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$21;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPrevListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$22;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$22;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mNextListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$23;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$23;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPauseListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$24;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$24;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mLibraryListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$25;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$25;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRecommendListener:Landroid/view/View$OnClickListener;

    iput-boolean v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mShowPlayerPanel:Z

    iput-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPrevButton:Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mNextButton:Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPauseButton:Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mLibraryButton:Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRecommendButton:Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPlaylistContent:[I

    iput-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPlaylistAudioId:[I

    iput-boolean v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mItemClicked:Z

    iput-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mActivityTitle:Ljava/lang/String;

    iput-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mLowerSearchFilter:Ljava/lang/String;

    iput-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mFilter:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->preSearchTime:J

    new-instance v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$28;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$28;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDelaySearchHandler:Landroid/os/Handler;

    iput-boolean v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAsyncQuerying:Z

    const/16 v0, 0x12c

    iput v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->QUEUE_UPDATE_COUNT:I

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNeedToUpdateProperty:Ljava/lang/Boolean;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mNowPlayingItemsArrayList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mNowPlayingItemsUpdatingList:Ljava/util/ArrayList;

    iput-boolean v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsQueueChanged:Z

    iput-boolean v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsScrolling:Z

    iput-boolean v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsPluginModeNowPlaying:Z

    new-instance v0, Lcom/htc/music/util/MemoryCacheBitmapByPosition;

    invoke-direct {v0, v4}, Lcom/htc/music/util/MemoryCacheBitmapByPosition;-><init>(I)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mMemoryCache:Lcom/htc/music/util/MemoryCacheBitmapByPosition;

    iput-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPluginAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;

    iput v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mShuffleMode:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCurrentPosition:I

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mFilterPosToOldPosTable:Ljava/util/Hashtable;

    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->GET_ALBUM_ART:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRefreshListHandler:Landroid/os/Handler;

    new-instance v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$29;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$29;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRefreshListRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$30;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$30;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPluginListener:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$UIHandler;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$UIHandler;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mUiHandler:Lcom/htc/music/browserlayer/TrackBrowserActivity$UIHandler;

    iput-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mShareText:Ljava/lang/String;

    new-instance v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$31;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$31;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mMusicStoreBtnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$100(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Lcom/htc/dlnainterface/IDLNAPluginService;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDlnaService:Lcom/htc/dlnainterface/IDLNAPluginService;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mEditMode:Z

    return v0
.end method

.method static synthetic access$102(Lcom/htc/music/browserlayer/TrackBrowserActivity;Lcom/htc/dlnainterface/IDLNAPluginService;)Lcom/htc/dlnainterface/IDLNAPluginService;
    .locals 0

    iput-object p1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDlnaService:Lcom/htc/dlnainterface/IDLNAPluginService;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/music/browserlayer/TrackBrowserActivity;Lcom/htc/music/util/DlArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getTrackCursor(Lcom/htc/music/util/DlArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setPauseButtonImage()V

    return-void
.end method

.method static synthetic access$1400(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Landroid/database/Cursor;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/htc/music/browserlayer/TrackBrowserActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0

    iput-object p1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/htc/music/browserlayer/TrackBrowserActivity;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0

    iput-object p1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mMap:Ljava/util/HashMap;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDeletedOneRow:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/htc/music/browserlayer/TrackBrowserActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDeletedOneRow:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/htc/music/browserlayer/TrackBrowserActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->removePlaylistItem(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Lcom/htc/music/browserlayer/TrackBrowserActivity$UIHandler;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mUiHandler:Lcom/htc/music/browserlayer/TrackBrowserActivity$UIHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Lcom/htc/music/browserlayer/TrackBrowserActivity$DlnaNotifyStub;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mNotifyCallback:Lcom/htc/music/browserlayer/TrackBrowserActivity$DlnaNotifyStub;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->updateQueueTitle()V

    return-void
.end method

.method static synthetic access$2100(Lcom/htc/music/browserlayer/TrackBrowserActivity;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCursorCols:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/htc/music/browserlayer/TrackBrowserActivity;)J
    .locals 2

    iget-wide v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedId:J

    return-wide v0
.end method

.method static synthetic access$2300(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mFilter:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/htc/music/browserlayer/TrackBrowserActivity;)S
    .locals 1

    iget-short v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCategory:S

    return v0
.end method

.method static synthetic access$2500(Lcom/htc/music/browserlayer/TrackBrowserActivity;)I
    .locals 1

    iget v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPosition:I

    return v0
.end method

.method static synthetic access$2600(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCurrentTrackName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCurrentArtistNameForAlbum:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/htc/music/browserlayer/TrackBrowserActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->shareMusicText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->shareMusicFile()V

    return-void
.end method

.method static synthetic access$3100(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackBrowserRingtoneHelper;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRingToneHelper:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackBrowserRingtoneHelper;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->showSetContactRingtoneToast()V

    return-void
.end method

.method static synthetic access$3400(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->doPauseResume()V

    return-void
.end method

.method static synthetic access$3500(Lcom/htc/music/browserlayer/TrackBrowserActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 1

    invoke-direct {p0, p1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->joinAlbumArt(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3600(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/music/widget/MusicListActivity;->mIsEnhancerExist:Z

    return v0
.end method

.method static synthetic access$3800(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/music/widget/MusicListActivity;->mIsEnhancerExist:Z

    return v0
.end method

.method static synthetic access$3900(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRecentPlayedPlaylist:Z

    return v0
.end method

.method static synthetic access$4000(Lcom/htc/music/browserlayer/TrackBrowserActivity;IJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->showTrackOptions(IJ)V

    return-void
.end method

.method static synthetic access$4100(Lcom/htc/music/browserlayer/TrackBrowserActivity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getMarkedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4200(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSortOrder:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Lcom/htc/widget/HtcListView;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/htc/music/browserlayer/TrackBrowserActivity;)J
    .locals 2

    iget-wide v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->preSearchTime:J

    return-wide v0
.end method

.method static synthetic access$4600(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsPluginModeNowPlaying:Z

    return v0
.end method

.method static synthetic access$4700(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsScrolling:Z

    return v0
.end method

.method static synthetic access$4702(Lcom/htc/music/browserlayer/TrackBrowserActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsScrolling:Z

    return p1
.end method

.method static synthetic access$4800(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Ljava/util/Hashtable;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mFilterPosToOldPosTable:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mNowPlayingItemsArrayList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mcurDMR:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRefreshListRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRefreshListHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPluginAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Lcom/htc/music/util/AsyncImageDecoder;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    return-object v0
.end method

.method static synthetic access$5302(Lcom/htc/music/browserlayer/TrackBrowserActivity;Lcom/htc/music/util/AsyncImageDecoder;)Lcom/htc/music/util/AsyncImageDecoder;
    .locals 0

    iput-object p1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    return-object p1
.end method

.method static synthetic access$5400(Lcom/htc/music/browserlayer/TrackBrowserActivity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getMarkedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5500(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Lcom/htc/music/util/MemoryCacheBitmapByPosition;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mMemoryCache:Lcom/htc/music/util/MemoryCacheBitmapByPosition;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Lcom/htc/music/browserlayer/TrackBrowserActivity$NonUIHandler;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mNonUIHandler:Lcom/htc/music/browserlayer/TrackBrowserActivity$NonUIHandler;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/htc/music/browserlayer/TrackBrowserActivity;)I
    .locals 1

    iget v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCurrentPosition:I

    return v0
.end method

.method static synthetic access$5702(Lcom/htc/music/browserlayer/TrackBrowserActivity;I)I
    .locals 0

    iput p1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCurrentPosition:I

    return p1
.end method

.method static synthetic access$5900(Lcom/htc/music/browserlayer/TrackBrowserActivity;IJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->showTrackOptions_plugin(IJ)V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/music/browserlayer/TrackBrowserActivity;)I
    .locals 1

    iget v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDlnaMode:I

    return v0
.end method

.method static synthetic access$6000(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsQueueChanged:Z

    return v0
.end method

.method static synthetic access$6002(Lcom/htc/music/browserlayer/TrackBrowserActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsQueueChanged:Z

    return p1
.end method

.method static synthetic access$6100(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mNowPlayingItemsUpdatingList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$6202(Lcom/htc/music/browserlayer/TrackBrowserActivity;Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .locals 0

    iput-object p1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCurrentDetails:Landroid/content/ContentValues;

    return-object p1
.end method

.method static synthetic access$6300(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNeedToUpdateProperty:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$6302(Lcom/htc/music/browserlayer/TrackBrowserActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    iput-object p1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNeedToUpdateProperty:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$6400(Lcom/htc/music/browserlayer/TrackBrowserActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->notifyProperty(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6500(Lcom/htc/music/browserlayer/TrackBrowserActivity;)I
    .locals 1

    iget v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mShuffleMode:I

    return v0
.end method

.method static synthetic access$6600(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->onClickMusicStore()V

    return-void
.end method

.method static synthetic access$700(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Landroid/content/BroadcastReceiver;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V
    .locals 0

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->hideHtcContextMenu()V

    return-void
.end method

.method private canShare()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private checkDrmFile(Landroid/net/Uri;IJ)V
    .locals 13

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-static {p0, p1}, Lcom/htc/music/util/MusicUtils;->getDrmStatus(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v8

    const/4 v10, -0x1

    if-ne v8, v10, :cond_0

    const/4 v10, 0x2

    invoke-virtual {p0, v10}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->showDialog(I)V

    :goto_0
    return-void

    :cond_0
    if-nez v8, :cond_5

    const/4 v5, 0x0

    const/4 v10, 0x1

    invoke-static {v7, p1, v10}, Landroid/provider/DrmStore;->getDrmConstraint(Landroid/content/ContentResolver;Landroid/net/Uri;I)Landroid/provider/DrmStore$DrmConstraint;

    move-result-object v1

    if-nez v1, :cond_2

    const/4 v0, 0x0

    iget-object v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mFilter:Ljava/lang/String;

    if-nez v10, :cond_1

    iget-boolean v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    if-nez v10, :cond_1

    new-instance v10, Lcom/htc/music/NpCategory;

    iget-short v11, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCategory:S

    invoke-direct {v10, v11}, Lcom/htc/music/NpCategory;-><init>(S)V

    iget-object v11, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAlbumId:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/htc/music/NpCategory;->setAlbumId(Ljava/lang/String;)Lcom/htc/music/NpCategory;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mArtistId:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/htc/music/NpCategory;->setArtistId(Ljava/lang/String;)Lcom/htc/music/NpCategory;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mComposer:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/htc/music/NpCategory;->setComposer(Ljava/lang/String;)Lcom/htc/music/NpCategory;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mGenre:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/htc/music/NpCategory;->setGenreId(Ljava/lang/String;)Lcom/htc/music/NpCategory;

    move-result-object v0

    :cond_1
    iget-object v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const/4 v11, 0x0

    new-array v11, v11, [I

    invoke-static {p0, v10, p2, v0, v11}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;ILcom/htc/music/NpCategory;[I)V

    goto :goto_0

    :cond_2
    invoke-static {p0, v1}, Lcom/htc/music/util/MusicUtils;->getConstraintMessage(Landroid/content/Context;Landroid/provider/DrmStore$DrmConstraint;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mMsg:Ljava/lang/String;

    iget-object v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mMsg:Ljava/lang/String;

    if-eqz v10, :cond_3

    move v6, p2

    const/4 v10, 0x3

    invoke-virtual {p0, v10}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->showDialog(I)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    iget-object v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mFilter:Ljava/lang/String;

    if-nez v10, :cond_4

    iget-boolean v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    if-nez v10, :cond_4

    new-instance v10, Lcom/htc/music/NpCategory;

    iget-short v11, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCategory:S

    invoke-direct {v10, v11}, Lcom/htc/music/NpCategory;-><init>(S)V

    iget-object v11, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAlbumId:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/htc/music/NpCategory;->setAlbumId(Ljava/lang/String;)Lcom/htc/music/NpCategory;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mArtistId:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/htc/music/NpCategory;->setArtistId(Ljava/lang/String;)Lcom/htc/music/NpCategory;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mComposer:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/htc/music/NpCategory;->setComposer(Ljava/lang/String;)Lcom/htc/music/NpCategory;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mGenre:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/htc/music/NpCategory;->setGenreId(Ljava/lang/String;)Lcom/htc/music/NpCategory;

    move-result-object v0

    :cond_4
    iget-object v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const/4 v11, 0x0

    new-array v11, v11, [I

    invoke-static {p0, v10, p2, v0, v11}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;ILcom/htc/music/NpCategory;[I)V

    goto :goto_0

    :cond_5
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-class v10, Lcom/htc/music/DRMActionActivity;

    invoke-virtual {v4, p0, v10}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v10, "drmtargettomain"

    const/4 v11, 0x1

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v3, 0x0

    :try_start_0
    iget-object v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;

    if-eqz v10, :cond_6

    iget-boolean v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRecentPlayedPlaylist:Z

    if-nez v10, :cond_6

    iget-object v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v11, "audio_id"

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    :goto_1
    iget-object v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "track"

    invoke-virtual {v4, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    const/4 v10, -0x2

    invoke-virtual {p0, v4, v10}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :cond_6
    :try_start_1
    iget-object v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v11, "_id"

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    goto :goto_1

    :catch_0
    move-exception v2

    iget-object v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    iget-object v11, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v12, "_id"

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "track"

    invoke-virtual {v4, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2
.end method

.method private chooseShareType()V
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->showDialog(I)V

    return-void
.end method

.method private doPauseResume()V
    .locals 1

    :try_start_0
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/htc/music/IMediaPlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/htc/music/IMediaPlaybackService;->pause()V

    :goto_0
    invoke-direct {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setPauseButtonImage()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/htc/music/IMediaPlaybackService;->play()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private getActivityTitle()Ljava/lang/String;
    .locals 14

    const/4 v11, 0x0

    iget-boolean v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mEditMode:Z

    if-eqz v0, :cond_2

    const v0, 0x7f07000b

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    :cond_0
    :goto_0
    if-nez v11, :cond_1

    const v0, 0x7f07001f

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    :cond_1
    return-object v11

    :cond_2
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getPickerMode()J

    move-result-wide v0

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    if-eqz v0, :cond_3

    const v0, 0x7f070065

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDescription:Ljava/lang/String;

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f07001f

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsDrmList:Z

    if-ne v0, v1, :cond_5

    const v0, 0x7f070025

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAlbumId:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAlbumId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v0, -0x1

    cmp-long v0, v6, v0

    if-nez v0, :cond_6

    const v0, 0x7f070044

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_0

    :cond_6
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "album"

    aput-object v1, v2, v0

    sget-object v0, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAlbumId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v0, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    if-eqz v10, :cond_0

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v0, "<unknown>"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const v0, 0x7f070044

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    :cond_7
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mArtistId:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mArtistId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/16 v0, -0x1

    cmp-long v0, v8, v0

    if-nez v0, :cond_9

    const v0, 0x7f070043

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_0

    :cond_9
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "artist"

    aput-object v1, v2, v0

    sget-object v0, Landroid/provider/MediaStore$Audio$Artists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mArtistId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v0, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    if-eqz v10, :cond_0

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v0, "<unknown>"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const v0, 0x7f070043

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    :cond_a
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :cond_b
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    if-ne v0, v1, :cond_d

    invoke-static {}, Lcom/htc/music/util/MusicUtils;->getCurrentShuffleMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_c

    const v0, 0x7f07001c

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_0

    :cond_c
    const v0, 0x7f07001b

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_0

    :cond_d
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRecentPlayedPlaylist:Z

    if-nez v0, :cond_f

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "name"

    aput-object v1, v2, v0

    sget-object v0, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v0, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    if-eqz v10, :cond_0

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    :cond_e
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :cond_f
    const v0, 0x7f070102

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_0

    :cond_10
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mGenre:Ljava/lang/String;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mGenre:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    const-wide/16 v0, -0x1

    cmp-long v0, v12, v0

    if-nez v0, :cond_11

    const v0, 0x7f070046

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_0

    :cond_11
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "name"

    aput-object v1, v2, v0

    sget-object v0, Landroid/provider/MediaStore$Audio$Genres;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mGenre:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v0, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    if-eqz v10, :cond_0

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    :cond_12
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :cond_13
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mComposer:Ljava/lang/String;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mComposer:Ljava/lang/String;

    invoke-static {v0}, Lcom/htc/music/util/MusicUtils;->isUnknownComposer(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    const v0, 0x7f070045

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    :goto_1
    goto/16 :goto_0

    :cond_14
    iget-object v11, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mComposer:Ljava/lang/String;

    goto :goto_1

    :cond_15
    const v0, 0x7f070020

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_0
.end method

.method private getTrackCursor(Lcom/htc/music/util/DlArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 23

    const/16 v17, 0x0

    if-eqz p1, :cond_5

    const/4 v2, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAsyncQuerying:Z

    const-string v2, "title COLLATE NOCASE ASC"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSortOrder:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "title != \'\'"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v8, 0x0

    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    new-array v8, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v8, v2

    const-string v2, " AND "

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "title LIKE ?"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mGenre:Ljava/lang/String;

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAlbumId:Ljava/lang/String;

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " AND album_id=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAlbumId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "track"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSortOrder:Ljava/lang/String;

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mArtistId:Ljava/lang/String;

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " AND artist_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mArtistId:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mGenre:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v12, v2

    const-wide/16 v2, -0x1

    cmp-long v2, v12, v2

    if-nez v2, :cond_7

    const-string v2, " AND is_music>=1"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " AND _id NOT IN (SELECT audio_id FROM audio_genres_map)"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_6

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v5, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCursorCols:[Ljava/lang/String;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSortOrder:Ljava/lang/String;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v9}, Lcom/htc/music/util/DlArtAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    const/16 v17, 0x0

    :cond_3
    :goto_1
    if-eqz v17, :cond_4

    if-eqz p1, :cond_4

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->init(Landroid/database/Cursor;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mActivityTitle:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setTitle(Ljava/lang/String;)V

    :cond_4
    return-object v17

    :cond_5
    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_6
    sget-object v5, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCursorCols:[Ljava/lang/String;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSortOrder:Ljava/lang/String;

    move-object/from16 v4, p0

    invoke-static/range {v4 .. v9}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    goto :goto_1

    :cond_7
    const-string v2, " AND is_music>=1"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_8

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v2, "external"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mGenre:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-long v5, v5

    invoke-static {v2, v5, v6}, Landroid/provider/MediaStore$Audio$Genres$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCursorCols:[Ljava/lang/String;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSortOrder:Ljava/lang/String;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v9}, Lcom/htc/music/util/DlArtAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    const-string v2, "external"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mGenre:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v2, v3, v4}, Landroid/provider/MediaStore$Audio$Genres$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCursorCols:[Ljava/lang/String;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSortOrder:Ljava/lang/String;

    move-object/from16 v4, p0

    invoke-static/range {v4 .. v9}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    goto/16 :goto_1

    :cond_9
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    if-ne v2, v3, :cond_e

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAsyncQuerying:Z

    sget-object v2, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v2, :cond_3

    if-eqz p2, :cond_c

    const/4 v15, 0x0

    :try_start_0
    sget-object v2, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getQueue()[I

    move-result-object v15

    const-string v2, " AND _id IN ("

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v14, 0x0

    :goto_2
    array-length v2, v15

    if-ge v14, v2, :cond_b

    aget v2, v15, v14

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    array-length v2, v15

    add-int/lit8 v2, v2, -0x1

    if-ge v14, v2, :cond_a

    const-string v2, ","

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    :cond_b
    const-string v2, ")"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCursorCols:[Ljava/lang/String;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSortOrder:Ljava/lang/String;

    move-object/from16 v4, p0

    invoke-static/range {v4 .. v9}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v17

    goto/16 :goto_1

    :cond_c
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v19

    const-string v2, "mounted"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    new-instance v17, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;

    sget-object v2, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCursorCols:[Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;Lcom/htc/music/IMediaPlaybackService;[Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_d
    const/16 v17, 0x0

    goto/16 :goto_1

    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;

    if-eqz v2, :cond_15

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRecentPlayedPlaylist:Z

    if-nez v2, :cond_10

    const-string v2, "play_order"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSortOrder:Ljava/lang/String;

    if-eqz p1, :cond_f

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v2, "external"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v2, v5, v6}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPlaylistMemberCols:[Ljava/lang/String;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSortOrder:Ljava/lang/String;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v9}, Lcom/htc/music/util/DlArtAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    const/16 v17, 0x0

    :goto_3
    const/16 v2, 0x14

    move-object/from16 v0, p0

    iput-short v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCategory:S

    goto/16 :goto_1

    :cond_f
    const-string v2, "external"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPlaylistMemberCols:[Ljava/lang/String;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSortOrder:Ljava/lang/String;

    move-object/from16 v4, p0

    invoke-static/range {v4 .. v9}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    goto :goto_3

    :cond_10
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAsyncQuerying:Z

    sget-object v2, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v2, :cond_3

    const/16 v16, 0x0

    :try_start_1
    sget-object v2, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getRecentPlayedPlaylist()[I

    move-result-object v16

    const-string v2, " AND _id IN ("

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v14, 0x0

    :goto_4
    move-object/from16 v0, v16

    array-length v2, v0

    if-ge v14, v2, :cond_12

    aget v2, v16, v14

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v0, v16

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v14, v2, :cond_11

    const-string v2, ","

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_11
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    :cond_12
    const-string v2, ")"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " AND is_music>=1"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCursorCols:[Ljava/lang/String;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    move-object/from16 v4, p0

    invoke-static/range {v4 .. v9}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    if-eqz v20, :cond_14

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->joinAlbumArt(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v20

    if-eqz v20, :cond_13

    new-instance v18, Lcom/htc/music/browserlayer/TrackBrowserActivity$RecentPlayedPlaylistCursor;

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-static {v2, v0}, Lcom/htc/music/util/MusicUtils;->mergeDlAlbumArt(Landroid/content/Context;Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-direct {v0, v2, v1, v3}, Lcom/htc/music/browserlayer/TrackBrowserActivity$RecentPlayedPlaylistCursor;-><init>(Landroid/database/Cursor;[ILcom/htc/music/browserlayer/TrackBrowserActivity$1;)V

    move-object/from16 v17, v18

    goto/16 :goto_1

    :cond_13
    const-string v2, "[PluginNowPlayingListActivity]"

    const-string v3, "Recently played cursor became null after joinAlbumArt."

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v11

    const-string v2, "[PluginNowPlayingListActivity]"

    const-string v3, "getTrackCursor - (null != mSelectedPlaylistId && !mRecentPlayedPlaylist)."

    invoke-static {v2, v3, v11}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :cond_14
    :try_start_2
    const-string v2, "[PluginNowPlayingListActivity]"

    const-string v3, "Recently played cursor is null."

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAlbumId:Ljava/lang/String;

    if-eqz v2, :cond_16

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " AND album_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAlbumId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "track"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSortOrder:Ljava/lang/String;

    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mArtistId:Ljava/lang/String;

    if-eqz v2, :cond_17

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " AND artist_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mArtistId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mComposer:Ljava/lang/String;

    if-eqz v2, :cond_18

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mComposer:Ljava/lang/String;

    invoke-static {v10}, Lcom/htc/music/util/MusicUtils;->isUnknownComposer(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_19

    const-string v2, " AND "

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v22 .. v22}, Lcom/htc/music/util/MusicUtils;->appendUnknownComposerFilter(Ljava/lang/StringBuilder;)V

    :cond_18
    :goto_5
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsDrmList:Z

    if-ne v2, v3, :cond_1b

    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isWMDRMSupported()Z

    move-result v2

    if-eqz v2, :cond_1a

    const-string v2, " AND (is_music>1 OR mime_type = \'audio/x-wma-drm\' )"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_6
    if-eqz p1, :cond_1c

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v5, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCursorCols:[Ljava/lang/String;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSortOrder:Ljava/lang/String;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v9}, Lcom/htc/music/util/DlArtAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    const/16 v17, 0x0

    goto/16 :goto_1

    :cond_19
    const-string v2, "\'"

    const-string v3, "\'\'"

    invoke-virtual {v10, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " AND composer = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_1a
    const-string v2, " AND is_music>1"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_1b
    const-string v2, " AND is_music>=1"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_1c
    sget-object v5, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCursorCols:[Ljava/lang/String;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSortOrder:Ljava/lang/String;

    move-object/from16 v4, p0

    invoke-static/range {v4 .. v9}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    goto/16 :goto_1

    :catch_1
    move-exception v2

    goto/16 :goto_1
.end method

.method private joinAlbumArt(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 14

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    instance-of v0, p1, Lcom/htc/music/widget/AlbumArtCursorWrapper;

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/htc/music/util/AlbumArtMergeCursor;

    if-eqz v0, :cond_2

    :cond_1
    move-object v0, p1

    goto :goto_0

    :cond_2
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

    sget-object v1, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "album_key"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    if-eqz v10, :cond_3

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_4

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

    :cond_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    const/4 p1, 0x0

    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_2
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_5

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

    :cond_5
    new-instance v7, Lcom/htc/music/util/ArrayListCursor;

    invoke-direct {v7, v2, v6}, Lcom/htc/music/util/ArrayListCursor;-><init>([Ljava/lang/String;Ljava/util/ArrayList;)V

    new-instance v0, Lcom/htc/music/widget/AlbumArtCursorWrapper;

    invoke-direct {v0, p1, v7, v10}, Lcom/htc/music/widget/AlbumArtCursorWrapper;-><init>(Landroid/database/Cursor;Landroid/database/Cursor;Landroid/database/Cursor;)V

    goto/16 :goto_0
.end method

.method private moveItem(Z)V
    .locals 13

    iget-object v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v3

    iget-object v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v10}, Lcom/htc/widget/HtcListView;->getSelectedItemPosition()I

    move-result v4

    if-eqz p1, :cond_0

    const/4 v10, 0x1

    if-lt v4, v10, :cond_1

    :cond_0
    if-nez p1, :cond_2

    add-int/lit8 v10, v3, -0x1

    if-lt v4, v10, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    instance-of v10, v10, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;

    if-eqz v10, :cond_5

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    check-cast v1, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;

    if-eqz p1, :cond_3

    add-int/lit8 v10, v4, -0x1

    :goto_1
    invoke-virtual {v1, v4, v10}, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;->moveItem(II)V

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v10

    check-cast v10, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    invoke-virtual {v10}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->notifyDataSetChanged()V

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v10

    invoke-virtual {v10}, Lcom/htc/widget/HtcListView;->invalidateViews()V

    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDeletedOneRow:Z

    if-eqz p1, :cond_4

    iget-object v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    add-int/lit8 v11, v4, -0x1

    invoke-virtual {v10, v11}, Lcom/htc/widget/HtcListView;->setSelection(I)V

    goto :goto_0

    :cond_3
    add-int/lit8 v10, v4, 0x1

    goto :goto_1

    :cond_4
    iget-object v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    add-int/lit8 v11, v4, 0x1

    invoke-virtual {v10, v11}, Lcom/htc/widget/HtcListView;->setSelection(I)V

    goto :goto_0

    :cond_5
    iget-object v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v11, "play_order"

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iget-object v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v10, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    iget-object v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const-string v10, "external"

    iget-object v11, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-static {v10, v11, v12}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v0

    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    const-string v8, "_id=?"

    const/4 v10, 0x1

    new-array v9, v10, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    if-eqz p1, :cond_6

    const-string v10, "play_order"

    add-int/lit8 v11, v5, -0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v6, v0, v7, v8, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v10}, Landroid/database/Cursor;->moveToPrevious()Z

    :goto_2
    const-string v10, "play_order"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v6, v0, v7, v8, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    const-string v10, "play_order"

    add-int/lit8 v11, v5, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v6, v0, v7, v8, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_2
.end method

.method private notifyProperty(Ljava/lang/String;)V
    .locals 4

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCurrentDetails:Landroid/content/ContentValues;

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "duration"

    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCurrentDetails:Landroid/content/ContentValues;

    const-string v3, "length"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "trackname"

    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCurrentDetails:Landroid/content/ContentValues;

    const-string v3, "title"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "artistname"

    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCurrentDetails:Landroid/content/ContentValues;

    const-string v3, "artist"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "albumname"

    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCurrentDetails:Landroid/content/ContentValues;

    const-string v3, "album"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "genre"

    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCurrentDetails:Landroid/content/ContentValues;

    const-string v3, "genre"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "composer"

    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCurrentDetails:Landroid/content/ContentValues;

    const-string v3, "composer"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "location"

    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCurrentDetails:Landroid/content/ContentValues;

    const-string v3, "location"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private onClickMusicStore()V
    .locals 8

    invoke-static {}, Lcom/htc/music/util/CustomizeSetting;->isSupportMMC()Z

    move-result v5

    if-eqz v5, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v7, "vfmusic://"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v6

    const/high16 v7, 0x1000

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v5, "[PluginNowPlayingListActivity]"

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/htc/music/util/CustomizeSetting;->isOrangeStoreCase()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/16 v6, 0xb

    if-eq v5, v6, :cond_1

    sget-object v5, Ljava/util/Locale;->FRANCE:Ljava/util/Locale;

    invoke-virtual {v2, v5}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    sget-object v5, Ljava/util/Locale;->FRENCH:Ljava/util/Locale;

    invoke-virtual {v2, v5}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    const-string v3, "http://m.musicstore.orange.fr"

    :goto_1
    :try_start_1
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v6

    const/high16 v7, 0x1000

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v5, "[PluginNowPlayingListActivity]"

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/16 v6, 0x9

    if-ne v5, v6, :cond_3

    const-string v3, "http://mobile.orange.ch/MusicStore"

    goto :goto_1

    :cond_3
    const-string v3, "http://m.musicstore.orange.co.uk"

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/htc/music/util/CustomizeSetting;->isTelstraStoreCase()Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v4, "http://waprd.telstra.com/redirect?target=music-g"

    :try_start_2
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v6

    const/high16 v7, 0x1000

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    const-string v5, "[PluginNowPlayingListActivity]"

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/music/util/CustomizeSetting;->isAmazonStoreCase(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-static {}, Lcom/htc/music/util/MusicUtils;->getLaunchAmazonIntent()Landroid/content/Intent;

    move-result-object v1

    :try_start_3
    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v0

    const-string v5, "[PluginNowPlayingListActivity]"

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/htc/music/util/CustomizeSetting;->forceReloadAmazonSetting()V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/music/util/CustomizeSetting;->isVerizonStoreCase(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-static {}, Lcom/htc/music/util/MusicUtils;->getLaunchVerizonMODIntent()Landroid/content/Intent;

    move-result-object v1

    :try_start_4
    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_0

    :catch_4
    move-exception v0

    const-string v5, "[PluginNowPlayingListActivity]"

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    const-string v5, "[PluginNowPlayingListActivity]"

    const-string v6, "there is no music store available, but image button is visible."

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private onCreate_Local(Landroid/os/Bundle;)V
    .locals 13

    const/4 v5, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v8, 0x0

    const/4 v12, 0x1

    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f070054

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCountTemplate:Ljava/lang/String;

    invoke-virtual {p0, v12}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setVolumeControlStream(I)V

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v8

    const-string v1, "title"

    aput-object v1, v0, v12

    const-string v1, "title_key"

    aput-object v1, v0, v4

    const-string v1, "_data"

    aput-object v1, v0, v3

    const-string v1, "album"

    aput-object v1, v0, v5

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

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCursorCols:[Ljava/lang/String;

    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v8

    const-string v1, "title"

    aput-object v1, v0, v12

    const-string v1, "title_key"

    aput-object v1, v0, v4

    const-string v1, "_data"

    aput-object v1, v0, v3

    const-string v1, "album"

    aput-object v1, v0, v5

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

    const-string v2, "play_order"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "audio_id"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "album_key"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPlaylistMemberCols:[Ljava/lang/String;

    iget-boolean v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mEditMode:Z

    if-eqz v0, :cond_a

    const v0, 0x7f030057

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setContentView(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v8}, Lcom/htc/widget/HtcListView;->setTextFilterEnabled(Z)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v12}, Lcom/htc/widget/HtcListView;->setFastScrollEnabled(Z)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, p0}, Lcom/htc/widget/HtcListView;->setOnScrollListener(Lcom/htc/widget/HtcAbsListView$OnScrollListener;)V

    iget-boolean v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mEditMode:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    instance-of v0, v0, Lcom/htc/widget/HtcReorderListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    check-cast v0, Lcom/htc/widget/HtcReorderListView;

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDragListener:Lcom/htc/widget/HtcReorderListView$DragListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcReorderListView;->setDragListener(Lcom/htc/widget/HtcReorderListView$DragListener;)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    check-cast v0, Lcom/htc/widget/HtcReorderListView;

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDropListener:Lcom/htc/widget/HtcReorderListView$DropListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcReorderListView;->setDropListener(Lcom/htc/widget/HtcReorderListView$DropListener;)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    check-cast v0, Lcom/htc/widget/HtcReorderListView;

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRemoveListener:Lcom/htc/widget/HtcReorderListView$RemoveListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcReorderListView;->setRemoveListener(Lcom/htc/widget/HtcReorderListView$RemoveListener;)V

    :cond_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v8}, Lcom/htc/widget/HtcListView;->setCacheColorHint(I)V

    :cond_1
    :goto_1
    const/4 v11, 0x0

    iget v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDlnaMode:I

    if-eq v0, v12, :cond_2

    iget v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDlnaMode:I

    if-ne v0, v4, :cond_3

    :cond_2
    const/4 v11, 0x1

    :cond_3
    new-instance v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mEditMode:Z

    if-eqz v2, :cond_f

    const v3, 0x7f030024

    :goto_2
    const/4 v4, 0x0

    new-array v5, v8, [Ljava/lang/String;

    new-array v6, v8, [I

    iget-boolean v7, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;

    if-nez v2, :cond_4

    if-eqz v11, :cond_5

    :cond_4
    move v8, v12

    :cond_5
    move-object v2, p0

    invoke-direct/range {v0 .. v8}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;-><init>(Landroid/content/Context;Lcom/htc/music/browserlayer/TrackBrowserActivity;ILandroid/database/Cursor;[Ljava/lang/String;[IZZ)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    iget v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDlnaMode:I

    #setter for: Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDlnaMode:I
    invoke-static {v0, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->access$002(Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;I)I

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    invoke-direct {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setTitle()V

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->getQueryHandler()Lcom/htc/music/util/DlArtAsyncQueryHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getTrackCursor(Lcom/htc/music/util/DlArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lcom/htc/music/util/MusicUtils;->bindToService(Landroid/content/Context;Ljava/lang/String;Landroid/content/ServiceConnection;)Z

    iget-boolean v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    if-eqz v0, :cond_6

    const v0, 0x7f08003f

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/htc/widget/HeaderBar;

    if-eqz v10, :cond_6

    invoke-virtual {v10, v12}, Lcom/htc/widget/HeaderBar;->enableSecondBackground(Z)V

    :cond_6
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->initPlayerPanel()V

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->initButtonsPanel()V

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

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, v9}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-boolean v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRecentPlayedPlaylist:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRecentPlayedListener:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.htc.music.recentplayedchanged"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_7
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsDrmList:Z

    if-ne v12, v0, :cond_10

    const v0, 0x7f0700a1

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setSearchHint(I)V

    iput-short v12, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCategory:S

    :goto_3
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mEditMode:Z

    if-nez v0, :cond_8

    iget v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPickerMode:I

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->enableSearch()V

    :cond_8
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sLibraryMemCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    if-eqz v0, :cond_9

    sget-object v0, Lcom/htc/music/util/MusicUtils;->sLibraryMemCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    invoke-virtual {v0}, Lcom/htc/music/util/MemoryCacheMBitmapByTime;->onCreate()V

    :cond_9
    return-void

    :cond_a
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    if-eqz v0, :cond_b

    const v0, 0x7f030056

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setContentView(I)V

    goto/16 :goto_0

    :cond_b
    iget v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPickerMode:I

    if-nez v0, :cond_c

    const v0, 0x7f030042

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setContentView(I)V

    goto/16 :goto_0

    :cond_c
    const v0, 0x7f03002b

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setContentView(I)V

    goto/16 :goto_0

    :cond_d
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getPickerMode()J

    move-result-wide v0

    const-wide/16 v2, 0x2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getPickerMode()J

    move-result-wide v0

    const-wide/16 v2, 0x3

    cmp-long v0, v0, v2

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getPickerMode()J

    move-result-wide v0

    const-wide/16 v2, 0x4

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    :cond_e
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcListView;->setChoiceMode(I)V

    goto/16 :goto_1

    :cond_f
    const v3, 0x7f03000e

    goto/16 :goto_2

    :cond_10
    const v0, 0x7f0700a0

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setSearchHint(I)V

    goto :goto_3
.end method

.method private onCreate_Plugin(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x1

    const-string v1, "[PluginNowPlayingListActivity]"

    const-string v2, "== onCreatePlugin() =="

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->requestWindowFeature(I)Z

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setVolumeControlStream(I)V

    iget-boolean v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mEditMode:Z

    if-eqz v1, :cond_1

    const v1, 0x7f030057

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setContentView(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListView;->setTextFilterEnabled(Z)V

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcListView;->setFastScrollEnabled(Z)V

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v1, p0}, Lcom/htc/widget/HtcListView;->setOnScrollListener(Lcom/htc/widget/HtcAbsListView$OnScrollListener;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    new-instance v1, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    const v3, 0x7f03000e

    invoke-direct {v1, p0, v2, p0, v3}, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;Landroid/content/Context;Lcom/htc/music/browserlayer/TrackBrowserActivity;I)V

    iput-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPluginAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPluginAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p0}, Lcom/htc/music/util/MusicUtils;->bindToService(Landroid/content/Context;Ljava/lang/String;Landroid/content/ServiceConnection;)Z

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->initPlayerPanel()V

    const v1, 0x7f07001b

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setTitle(Ljava/lang/String;)V

    const v1, 0x7f0700a0

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setSearchHint(I)V

    iget v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPickerMode:I

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->enableSearch()V

    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "[PluginNowPlayingListActivity]"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mNonUILooper:Landroid/os/Looper;

    new-instance v1, Lcom/htc/music/browserlayer/TrackBrowserActivity$NonUIHandler;

    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mNonUILooper:Landroid/os/Looper;

    invoke-direct {v1, p0, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity$NonUIHandler;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mNonUIHandler:Lcom/htc/music/browserlayer/TrackBrowserActivity$NonUIHandler;

    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsPluginModeNowPlaying:Z

    if-eqz v1, :cond_2

    const v1, 0x7f030056

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setContentView(I)V

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPickerMode:I

    if-nez v1, :cond_3

    const v1, 0x7f030042

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setContentView(I)V

    goto/16 :goto_0

    :cond_3
    const v1, 0x7f03002b

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setContentView(I)V

    goto/16 :goto_0
.end method

.method private onDestroy_Local()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDelaySearchHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRecentPlayedListener:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->unregisterReceiverSafe(Landroid/content/BroadcastReceiver;)V

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->unregisterReceiverSafe(Landroid/content/BroadcastReceiver;)V

    iget-boolean v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPlaybackServiceConnected:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/MusicUtils;->unbindFromService(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPlaybackServiceConnected:Z

    :cond_0
    const/4 v1, 0x1

    :try_start_0
    iget-boolean v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mNowPlayingListener:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->unregisterReceiverSafe(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-boolean v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapterSent:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    invoke-virtual {v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->access$800(Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->access$800(Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/music/util/AsyncImageDecoder;->quit()V

    :cond_2
    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    iput-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    sget-object v1, Lcom/htc/music/util/MusicUtils;->sLibraryMemCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/htc/music/util/MusicUtils;->sLibraryMemCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    invoke-virtual {v1}, Lcom/htc/music/util/MemoryCacheMBitmapByTime;->onDestroy()V

    :cond_3
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onDestroy()V

    return-void

    :cond_4
    :try_start_1
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->unregisterReceiverSafe(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private onDestroy_Plugin()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    const-string v1, "[PluginNowPlayingListActivity]"

    const-string v2, "== onDestroy() =="

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNeedToUpdateProperty:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDelaySearchHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRefreshListHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPluginListener:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->unregisterReceiverSafe(Landroid/content/BroadcastReceiver;)V

    iget-boolean v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPlaybackServiceConnected:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/MusicUtils;->unbindFromService(Landroid/content/Context;Ljava/lang/String;)V

    iput-boolean v4, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPlaybackServiceConnected:Z

    :cond_0
    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    iput-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPluginAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mNowPlayingItemsArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :try_start_0
    sget-object v1, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->clearAlbumArtRequests()V

    sget-object v1, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->clearNowplayingQueueRequests()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mNonUIHandler:Lcom/htc/music/browserlayer/TrackBrowserActivity$NonUIHandler;

    invoke-virtual {v1, v3}, Lcom/htc/music/browserlayer/TrackBrowserActivity$NonUIHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mNonUILooper:Landroid/os/Looper;

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mMemoryCache:Lcom/htc/music/util/MemoryCacheBitmapByPosition;

    invoke-virtual {v1}, Lcom/htc/music/util/MemoryCacheBitmapByPosition;->clear()V

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    invoke-virtual {v1}, Lcom/htc/music/util/AsyncImageDecoder;->quit()V

    iput-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    :cond_1
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onDestroy()V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private onHtcContextItemSelected_Local(I)Z
    .locals 20

    sparse-switch p1, :sswitch_data_0

    :sswitch_0
    invoke-super/range {p0 .. p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onHtcContextItemSelected(I)Z

    move-result v3

    :goto_0
    return v3

    :sswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPosition:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v5, "_data"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_0

    const-string v3, "content://drm/"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static/range {v17 .. v17}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPosition:I

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedId:J

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v5, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->checkDrmFile(Landroid/net/Uri;IJ)V

    :goto_1
    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mFilter:Ljava/lang/String;

    if-nez v3, :cond_1

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    if-nez v3, :cond_1

    new-instance v2, Lcom/htc/music/NpCategory;

    move-object/from16 v0, p0

    iget-short v3, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCategory:S

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mArtistId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAlbumId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mGenre:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mComposer:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;

    invoke-direct/range {v2 .. v8}, Lcom/htc/music/NpCategory;-><init>(SLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPosition:I

    const/4 v5, 0x0

    new-array v5, v5, [I

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4, v2, v5}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;ILcom/htc/music/NpCategory;[I)V

    goto :goto_1

    :sswitch_2
    new-instance v16, Landroid/content/Intent;

    invoke-direct/range {v16 .. v16}, Landroid/content/Intent;-><init>()V

    const-class v3, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v3, "pickermode"

    const/4 v4, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v3, 0x1

    new-array v9, v3, [I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedId:J

    long-to-int v4, v4

    aput v4, v9, v3

    const-string v3, "AddToPlaylistData"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v3}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 v3, 0x1

    goto/16 :goto_0

    :sswitch_3
    const-string v3, "[PluginNowPlayingListActivity]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ADD_TO_QUEUE, mSelectedId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    sget-object v3, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v4, 0x4

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedId:J

    long-to-int v5, v5

    invoke-interface {v3, v4, v5}, Lcom/htc/music/IMediaPlaybackService;->addToQueue(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    const/4 v3, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v13

    const-string v3, "[PluginNowPlayingListActivity]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ADD_TO_QUEUE, RemoteException e: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v13}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :sswitch_4
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->showDialog(I)V

    const/4 v3, 0x1

    goto/16 :goto_0

    :sswitch_5
    new-instance v16, Landroid/content/Intent;

    invoke-direct/range {v16 .. v16}, Landroid/content/Intent;-><init>()V

    const-class v3, Lcom/htc/music/PropertyListActivity;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v3, "track"

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedId:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v3, -0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v3}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 v3, 0x1

    goto/16 :goto_0

    :sswitch_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v5, "_data"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_2

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/htc/music/util/MusicUtils;->getAudioType(Landroid/content/Context;Ljava/lang/String;)I

    move-result v10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRingToneHelper:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackBrowserRingtoneHelper;

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRingToneHelper:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackBrowserRingtoneHelper;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedId:J

    long-to-int v4, v4

    invoke-virtual {v3, v4}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackBrowserRingtoneHelper;->setAudioId(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRingToneHelper:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackBrowserRingtoneHelper;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackBrowserRingtoneHelper;->setAudioPath(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRingToneHelper:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackBrowserRingtoneHelper;

    invoke-virtual {v3, v10}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackBrowserRingtoneHelper;->setAudioType(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRingToneHelper:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackBrowserRingtoneHelper;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackBrowserRingtoneHelper;->useAsRingtone(Z)V

    :cond_4
    const/4 v3, 0x1

    goto/16 :goto_0

    :sswitch_7
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->doSearch()V

    const/4 v3, 0x1

    goto/16 :goto_0

    :sswitch_8
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->chooseShareType()V

    const/4 v3, 0x1

    goto/16 :goto_0

    :sswitch_9
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->intValue()I

    move-result v15

    const/4 v3, 0x1

    new-array v12, v3, [Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-static {v0, v15}, Lcom/htc/music/util/MusicUtils;->getTrack(Landroid/content/Context;I)Landroid/database/Cursor;

    move-result-object v11

    if-eqz v11, :cond_5

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v3, 0x0

    const-string v4, "_data"

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v12, v3

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    const/4 v11, 0x0

    :cond_5
    new-instance v19, Ljava/lang/String;

    const-string v3, "com.htc.vmm.service.VMMEngineService"

    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :try_start_1
    new-instance v3, Landroid/content/Intent;

    move-object/from16 v0, v19

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "upload"

    invoke-virtual {v3, v4, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    const/4 v3, 0x1

    goto/16 :goto_0

    :catch_1
    move-exception v14

    const-string v3, "[PluginNowPlayingListActivity]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "We do not have permission to start the service :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_6
        0x5 -> :sswitch_1
        0xa -> :sswitch_4
        0xd -> :sswitch_3
        0x10 -> :sswitch_5
        0x15 -> :sswitch_9
        0x1d -> :sswitch_7
        0x27 -> :sswitch_0
        0x2a -> :sswitch_8
    .end sparse-switch
.end method

.method private onHtcContextItemSelected_Plugin(I)Z
    .locals 2

    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onHtcContextItemSelected(I)Z

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    iget v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPosition:I

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->play(I)V

    goto :goto_0

    :sswitch_1
    iget v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPosition:I

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->showProperty(I)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0x10 -> :sswitch_1
    .end sparse-switch
.end method

.method private onListItemClick_Local(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 9

    const/4 v8, 0x0

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

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput p3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPosition:I

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getPickerMode()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mItemClicked:Z

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->updateButtonCounter()V

    goto :goto_0

    :cond_2
    iget-boolean v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mEditMode:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v3, "_data"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    const-string v1, "content://drm/"

    invoke-virtual {v7, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1, p3, p4, p5}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->checkDrmFile(Landroid/net/Uri;IJ)V

    :goto_1
    iget-boolean v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/widget/MusicListActivity;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v1}, Lcom/htc/widget/HtcListView;->invalidate()V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mFilter:Ljava/lang/String;

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    if-nez v1, :cond_4

    new-instance v0, Lcom/htc/music/NpCategory;

    iget-short v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCategory:S

    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mArtistId:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAlbumId:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mGenre:Ljava/lang/String;

    iget-object v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mComposer:Ljava/lang/String;

    iget-object v6, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/htc/music/NpCategory;-><init>(SLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    new-array v2, v8, [I

    invoke-static {p0, v1, p3, v0, v2}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;ILcom/htc/music/NpCategory;[I)V

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const/4 v2, 0x0

    new-array v3, v8, [I

    invoke-static {p0, v1, p3, v2, v3}, Lcom/htc/music/util/MusicUtils;->playAllNotReShuffle(Landroid/content/Context;Landroid/database/Cursor;ILcom/htc/music/NpCategory;[I)V

    goto :goto_1
.end method

.method private onListItemClick_Plugin(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 4

    const-string v1, "PluginNowPlayingListActivity"

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

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mLowerSearchFilter:Ljava/lang/String;

    if-nez v1, :cond_0

    iput p3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPosition:I

    :goto_0
    iget v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPosition:I

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->play(I)V

    :goto_1
    return-void

    :cond_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mFilterPosToOldPosTable:Ljava/util/Hashtable;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPosition:I

    goto :goto_0

    :cond_1
    const-string v1, "[PluginNowPlayingListActivity]"

    const-string v2, "pos is null in onListItemClick_Plugin"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private onListItemLongClick_Local(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)Z
    .locals 5

    const/4 v0, 0x0

    const-string v1, "TrackBrowserActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onListItemLongClick, position="

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

    iget-boolean v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mEditMode:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getPickerMode()J

    move-result-wide v1

    const-wide/16 v3, 0x2

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getPickerMode()J

    move-result-wide v1

    const-wide/16 v3, 0x3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getPickerMode()J

    move-result-wide v1

    const-wide/16 v3, 0x4

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    invoke-direct {p0, p3, p4, p5}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->showTrackOptions(IJ)V

    const/4 v0, 0x1

    :cond_0
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

    invoke-direct {p0, p3, p4, p5}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->showTrackOptions_plugin(IJ)V

    const/4 v0, 0x1

    return v0
.end method

.method private onPause_Local()V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    instance-of v0, v0, Lcom/htc/widget/HtcReorderListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    check-cast v0, Lcom/htc/widget/HtcReorderListView;

    invoke-virtual {v0}, Lcom/htc/widget/HtcReorderListView;->OnMyPause()V

    :cond_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDelaySearchHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->setAutoRequery(ZZ)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->access$800(Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->access$800(Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/util/AsyncImageDecoder;->clear()V

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->access$800(Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/util/AsyncImageDecoder;->pauseDecode()V

    :cond_1
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onPause()V

    return-void
.end method

.method private onPause_Plugin()V
    .locals 2

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    instance-of v0, v0, Lcom/htc/widget/HtcReorderListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    check-cast v0, Lcom/htc/widget/HtcReorderListView;

    invoke-virtual {v0}, Lcom/htc/widget/HtcReorderListView;->OnMyPause()V

    :cond_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDelaySearchHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onPause()V

    return-void
.end method

.method private onResume_Local()V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onResume()V

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->setAutoRequery(ZZ)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->access$800(Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->access$800(Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/util/AsyncImageDecoder;->resumeDecode()V

    :cond_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcListView;->invalidateViews()V

    :cond_1
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAsyncQuerying:Z

    if-nez v0, :cond_2

    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->isMediaScannerScanning(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->showSpinner(Z)V

    :cond_3
    invoke-direct {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setPauseButtonImage()V

    return-void
.end method

.method private onResume_Plugin()V
    .locals 0

    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onResume()V

    invoke-direct {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setPauseButtonImage()V

    return-void
.end method

.method private onScrollStateChanged_Local(Lcom/htc/widget/HtcAbsListView;I)V
    .locals 2

    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->setAutoRequeryOffAndAutoOn()V

    :cond_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->access$800(Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/music/widget/MusicListActivity;->mActivityPaused:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->access$800(Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/util/AsyncImageDecoder;->resumeDecode()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->setAutoRequery(Z)V

    :cond_2
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->access$800(Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/music/widget/MusicListActivity;->mActivityPaused:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->access$800(Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/util/AsyncImageDecoder;->resumeDecode()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->setAutoRequeryOffAndAutoOn()V

    :cond_3
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->access$800(Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->access$800(Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

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

    iput-boolean v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsScrolling:Z

    :try_start_0
    sget-object v2, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->clearAlbumArtRequests()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPluginAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPluginAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;

    invoke-virtual {v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    :pswitch_1
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsScrolling:Z

    goto :goto_0

    :pswitch_2
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsScrolling:Z

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
    .locals 10

    const/4 v8, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDestroyed:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/MusicUtils;->unbindFromService(Landroid/content/Context;Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPlaybackServiceConnected:Z

    :goto_0
    return-void

    :cond_0
    iput-boolean v8, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPlaybackServiceConnected:Z

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    if-nez v0, :cond_3

    new-instance v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    iget-boolean v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mEditMode:Z

    if-eqz v3, :cond_1

    const v3, 0x7f030024

    :goto_1
    new-array v5, v2, [Ljava/lang/String;

    new-array v6, v2, [I

    iget-boolean v7, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    iget-object v9, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;

    if-eqz v9, :cond_2

    :goto_2
    move-object v2, p0

    invoke-direct/range {v0 .. v8}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;-><init>(Landroid/content/Context;Lcom/htc/music/browserlayer/TrackBrowserActivity;ILandroid/database/Cursor;[Ljava/lang/String;[IZZ)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    invoke-direct {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setTitle()V

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->getQueryHandler()Lcom/htc/music/util/DlArtAsyncQueryHandler;

    move-result-object v0

    invoke-direct {p0, v0, v4}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getTrackCursor(Lcom/htc/music/util/DlArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    goto :goto_0

    :cond_1
    const v3, 0x7f03000e

    goto :goto_1

    :cond_2
    move v8, v2

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->init(Landroid/database/Cursor;)V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setTitle()V

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->getQueryHandler()Lcom/htc/music/util/DlArtAsyncQueryHandler;

    move-result-object v0

    invoke-direct {p0, v0, v4}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getTrackCursor(Lcom/htc/music/util/DlArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    goto :goto_0
.end method

.method private onServiceConnected_Plugin(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 7

    const/4 v6, 0x1

    iget-boolean v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDestroyed:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/MusicUtils;->unbindFromService(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPlaybackServiceConnected:Z

    :goto_0
    return-void

    :cond_0
    iput-boolean v6, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPlaybackServiceConnected:Z

    iget-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPluginAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;

    if-nez v3, :cond_1

    new-instance v3, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getApplication()Landroid/app/Application;

    move-result-object v4

    const v5, 0x7f03000e

    invoke-direct {v3, p0, v4, p0, v5}, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;Landroid/content/Context;Lcom/htc/music/browserlayer/TrackBrowserActivity;I)V

    iput-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPluginAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;

    iget-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPluginAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    :cond_1
    :try_start_0
    sget-object v3, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    const/16 v4, 0x12c

    invoke-interface {v3, v4}, Lcom/htc/music/IMediaPlaybackService;->getNowplayingQueue(I)V

    sget-object v3, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->getShuffleMode()I

    move-result v3

    iput v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mShuffleMode:I

    sget-object v3, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->getQueuePosition()I

    move-result v0

    iget v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mShuffleMode:I

    if-ne v3, v6, :cond_2

    sget-object v3, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3, v0}, Lcom/htc/music/IMediaPlaybackService;->getPositionByShufflePosition(I)I

    move-result v0

    :cond_2
    iput v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCurrentPosition:I

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->showSpinner(Z)V
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

    iget-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPluginListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method private removeItem()V
    .locals 11

    const/4 v10, 0x0

    const/4 v8, 0x1

    iget-object v7, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    iget-object v7, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v7}, Lcom/htc/widget/HtcListView;->getSelectedItemPosition()I

    move-result v2

    if-eqz v1, :cond_0

    if-gez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v7, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    if-ne v8, v7, :cond_3

    :try_start_0
    sget-object v7, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v7}, Lcom/htc/music/IMediaPlaybackService;->getQueuePosition()I

    move-result v7

    if-eq v2, v7, :cond_2

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDeletedOneRow:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    iget-object v7, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v7}, Lcom/htc/widget/HtcListView;->getSelectedView()Landroid/view/View;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v7, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v7}, Lcom/htc/widget/HtcListView;->invalidateViews()V

    iget-object v7, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    check-cast v7, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;

    invoke-virtual {v7, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;->removeItem(I)Z

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v7, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v7}, Lcom/htc/widget/HtcListView;->invalidateViews()V

    goto :goto_0

    :cond_3
    iget-object v7, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v8, "_id"

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iget-object v7, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v7, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    iget-object v7, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const-string v7, "external"

    iget-object v8, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v7, v8, v9}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-static {v5, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v7, v8, v10, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    add-int/lit8 v1, v1, -0x1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->finish()V

    goto :goto_0

    :cond_4
    iget-object v7, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    if-ge v2, v1, :cond_5

    :goto_2
    invoke-virtual {v7, v2}, Lcom/htc/widget/HtcListView;->setSelection(I)V

    goto :goto_0

    :cond_5
    move v2, v1

    goto :goto_2

    :catch_0
    move-exception v7

    goto :goto_1
.end method

.method private removePlaylistItem(I)V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x1

    iget-object v6, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    iget-object v7, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v7}, Lcom/htc/widget/HtcListView;->getFirstVisiblePosition()I

    move-result v7

    sub-int v7, p1, v7

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    :try_start_0
    sget-object v6, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v6, :cond_0

    sget-object v6, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v6}, Lcom/htc/music/IMediaPlaybackService;->getQueuePosition()I

    move-result v6

    if-eq p1, v6, :cond_0

    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDeletedOneRow:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v6, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v6}, Lcom/htc/widget/HtcListView;->invalidateViews()V

    iget-object v6, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    instance-of v6, v6, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    check-cast v6, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;

    invoke-virtual {v6, p1}, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;->removeItem(I)Z

    :goto_1
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v6, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v6}, Lcom/htc/widget/HtcListView;->invalidateViews()V

    return-void

    :catch_0
    move-exception v1

    iput-boolean v8, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDeletedOneRow:Z

    goto :goto_0

    :cond_1
    iget-object v6, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v7, "_id"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iget-object v6, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v6, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    iget-object v6, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-string v6, "external"

    iget-object v7, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v6, v7, v8}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v4, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7, v9, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1
.end method

.method private removePlaylistItem([I)V
    .locals 1

    sget-object v0, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    instance-of v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;

    if-eqz v0, :cond_0

    :cond_0
    return-void
.end method

.method private setNPtitle()V
    .locals 9

    const/16 v8, 0x8

    const/4 v7, 0x0

    const/4 v6, 0x1

    const v4, 0x7f0800cf

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HeaderBarText;

    iput-object v4, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mQueueTitle:Lcom/htc/widget/HeaderBarText;

    const v4, 0x7f0800d0

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HeaderBarImage;

    const v4, 0x7f0800d1

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HeaderBarImage;

    const v4, 0x7f0800d3

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HeaderBarImage;

    const v4, 0x7f0800d2

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HeaderBarImage;

    iget-object v4, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mQueueTitle:Lcom/htc/widget/HeaderBarText;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mQueueTitle:Lcom/htc/widget/HeaderBarText;

    const v5, 0x7f07001b

    invoke-virtual {v4, v5}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(I)V

    iget-object v4, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mQueueTitle:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v4, v7}, Lcom/htc/widget/HeaderBarText;->setPrimaryVisibility(I)V

    iget-object v4, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mQueueTitle:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v4, v7}, Lcom/htc/widget/HeaderBarText;->setSecondaryLeftVisibility(I)V

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1, v6}, Lcom/htc/widget/HeaderBarImage;->setImageMode(I)V

    const v4, 0x7f070105

    invoke-virtual {v1, v4}, Lcom/htc/widget/HeaderBarImage;->setLabelText(I)V

    const v4, 0x2080910

    invoke-virtual {v1, v4}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    new-instance v4, Lcom/htc/music/browserlayer/TrackBrowserActivity$6;

    invoke-direct {v4, p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$6;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V

    invoke-virtual {v1, v4}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0, v6}, Lcom/htc/widget/HeaderBarImage;->setImageMode(I)V

    const-string v4, "Library"

    invoke-virtual {v0, v4}, Lcom/htc/widget/HeaderBarImage;->setLabelText(Ljava/lang/String;)V

    const v4, 0x20808ea

    invoke-virtual {v0, v4}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    iget-object v4, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mLibraryListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    if-eqz v2, :cond_3

    invoke-static {p0}, Lcom/htc/music/util/CustomizeSetting;->isMusicStoreEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v2, v6}, Lcom/htc/widget/HeaderBarImage;->setImageMode(I)V

    invoke-static {p0}, Lcom/htc/music/util/CustomizeSetting;->getGlanceMusicStoreStringResId(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/htc/widget/HeaderBarImage;->setLabelText(I)V

    invoke-static {p0}, Lcom/htc/music/util/CustomizeSetting;->getGlanceMusicStoreImageResId(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    iget-object v4, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mMusicStoreBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v4}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v3, :cond_3

    invoke-virtual {v3, v8}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    const/4 v3, 0x0

    :cond_3
    :goto_0
    if-eqz v3, :cond_4

    invoke-virtual {v3, v6}, Lcom/htc/widget/HeaderBarImage;->setImageMode(I)V

    const v4, 0x7f0700e0

    invoke-virtual {v3, v4}, Lcom/htc/widget/HeaderBarImage;->setLabelText(I)V

    const v4, 0x2080971

    invoke-virtual {v3, v4}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    new-instance v4, Lcom/htc/music/browserlayer/TrackBrowserActivity$7;

    invoke-direct {v4, p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$7;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V

    invoke-virtual {v3, v4}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    invoke-direct {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->updateQueueTitle()V

    return-void

    :cond_5
    invoke-virtual {v2, v8}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    goto :goto_0
.end method

.method private setPauseButtonImage()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPauseButton:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/htc/music/IMediaPlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPauseButton:Landroid/widget/ImageButton;

    const-string v1, "common_icon_pause_slideshow"

    const v2, 0x208003a

    invoke-static {p0, v1, v2}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPauseButton:Landroid/widget/ImageButton;

    const-string v1, "common_icon_play"

    const v2, 0x208003b

    invoke-static {p0, v1, v2}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method private setTitle()V
    .locals 22

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAlbumId:Ljava/lang/String;

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v19

    :goto_0
    if-lez v19, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v3, "album"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    move/from16 v0, v18

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "album_id=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAlbumId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "artist_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v6, "artist_id"

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v6, "album"

    aput-object v6, v4, v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    if-eqz v14, :cond_1

    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v2

    move/from16 v0, v19

    if-eq v2, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    move/from16 v0, v18

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    :cond_0
    invoke-interface {v14}, Landroid/database/Cursor;->deactivate()V

    :cond_1
    if-eqz v16, :cond_2

    const-string v2, "<unknown>"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    const v2, 0x7f070044

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v16

    :cond_3
    :goto_1
    if-eqz v16, :cond_16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setTitle(Ljava/lang/CharSequence;)V

    :goto_2
    return-void

    :cond_4
    const/16 v19, 0x0

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mArtistId:Ljava/lang/String;

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mArtistId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    const-wide/16 v2, -0x1

    cmp-long v2, v12, v2

    if-nez v2, :cond_6

    const v2, 0x7f070043

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v16

    goto :goto_1

    :cond_6
    const/4 v2, 0x1

    new-array v8, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "artist"

    aput-object v3, v8, v2

    sget-object v2, Landroid/provider/MediaStore$Audio$Artists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mArtistId:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v6, p0

    invoke-static/range {v6 .. v11}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    if-eqz v14, :cond_3

    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v2, 0x0

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    const-string v2, "<unknown>"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const v2, 0x7f070043

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v16

    :cond_7
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :cond_8
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    if-ne v2, v3, :cond_b

    invoke-static {}, Lcom/htc/music/util/MusicUtils;->getCurrentShuffleMode()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_9

    const v2, 0x7f07001c

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v16

    goto/16 :goto_1

    :cond_9
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mEditMode:Z

    if-eqz v2, :cond_a

    const v2, 0x7f07000b

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v16

    goto/16 :goto_1

    :cond_a
    const v2, 0x7f07001b

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v16

    invoke-direct/range {p0 .. p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setNPtitle()V

    goto/16 :goto_1

    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRecentPlayedPlaylist:Z

    if-nez v2, :cond_10

    const/4 v2, 0x1

    new-array v8, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "name"

    aput-object v3, v8, v2

    const-wide/16 v20, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v17

    if-eqz v17, :cond_c

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v20

    :cond_c
    :goto_3
    sget-object v2, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v20

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v6, p0

    invoke-static/range {v6 .. v11}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    if-eqz v14, :cond_e

    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v2, 0x0

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    :cond_d
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    const/4 v14, 0x0

    :cond_e
    if-eqz v16, :cond_f

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistName:Ljava/lang/String;

    goto/16 :goto_1

    :catch_0
    move-exception v15

    const-string v2, "[TrackBrowser]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(null != mSelectedPlaylistId), ex: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v15}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_f
    const-string v2, "[PluginNowPlayingListActivity]"

    const-string v3, "setTitle(), fancyName is null"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_10
    const v2, 0x7f070102

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_1

    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mGenre:Ljava/lang/String;

    if-eqz v2, :cond_13

    const/4 v2, 0x1

    new-array v8, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "name"

    aput-object v3, v8, v2

    sget-object v2, Landroid/provider/MediaStore$Audio$Genres;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mGenre:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v6, p0

    invoke-static/range {v6 .. v11}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    if-eqz v14, :cond_3

    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v2, 0x0

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    :cond_12
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    :cond_13
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsDrmList:Z

    if-ne v2, v3, :cond_14

    const v2, 0x7f070025

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_1

    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getPickerMode()J

    move-result-wide v2

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-eqz v2, :cond_15

    const v2, 0x7f070065

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_1

    :cond_15
    const v2, 0x7f070020

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_1

    :cond_16
    const v2, 0x7f07001f

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setTitle(I)V

    goto/16 :goto_2
.end method

.method private shareMusicFile()V
    .locals 7

    iget-object v4, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    iget-object v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v6, "_data"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-wide v4, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedId:J

    long-to-int v0, v4

    invoke-static {p0, v3, v0}, Lcom/htc/music/util/MusicUtils;->canBeShareTrack(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07008c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :pswitch_0
    const-string v4, "[PluginNowPlayingListActivity]"

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

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->showDialog(I)V

    goto :goto_0

    :pswitch_1
    const-string v4, "[PluginNowPlayingListActivity]"

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

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->showDialog(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private shareMusicText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p0, p1, p2, p3}, Lcom/htc/music/util/MusicUtils;->getShareMusicText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mShareText:Ljava/lang/String;

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mShareText:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mShareText:Ljava/lang/String;

    :cond_0
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->showDialog(I)V

    return-void
.end method

.method private showSetContactRingtoneToast()V
    .locals 2

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mUiHandler:Lcom/htc/music/browserlayer/TrackBrowserActivity$UIHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mUiHandler:Lcom/htc/music/browserlayer/TrackBrowserActivity$UIHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity$UIHandler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method private showTrackOptions(IJ)V
    .locals 8

    iput p1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPosition:I

    iget-object v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v5, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    const/4 v2, 0x0

    :try_start_0
    iget-object v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRecentPlayedPlaylist:Z

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v6, "audio_id"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    :goto_0
    iget-object v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    int-to-long v5, v5

    iput-wide v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedId:J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    iget-object v6, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v7, "album"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    iget-object v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    iget-object v6, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v7, "artist"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCurrentArtistNameForAlbum:Ljava/lang/String;

    iget-object v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    iget-object v6, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v7, "title"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCurrentTrackName:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    if-eqz v5, :cond_1

    const/4 v5, 0x5

    new-array v4, v5, [Ljava/lang/CharSequence;

    const/4 v5, 0x0

    const v6, 0x7f07004f

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const v6, 0x20c01f7

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const v6, 0x7f07004c

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const v6, 0x7f070060

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const v6, 0x20c01fe

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    new-array v3, v5, [I

    fill-array-data v3, :array_0

    :goto_2
    iget-object v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCurrentTrackName:Ljava/lang/String;

    invoke-virtual {p0, v5, v4, v3}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->showHtcContextMenu(Ljava/lang/String;[Ljava/lang/CharSequence;[I)V

    return-void

    :cond_0
    :try_start_1
    iget-object v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v6, "_id"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    goto/16 :goto_0

    :catch_0
    move-exception v1

    iput-wide p2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedId:J

    goto/16 :goto_1

    :cond_1
    iget-boolean v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRecentPlayedPlaylist:Z

    if-eqz v5, :cond_2

    const/4 v5, 0x4

    new-array v4, v5, [Ljava/lang/CharSequence;

    const/4 v5, 0x0

    const v6, 0x7f07004f

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const v6, 0x20c01f7

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const v6, 0x7f07004c

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const v6, 0x20c01fe

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    new-array v3, v5, [I

    fill-array-data v3, :array_1

    goto :goto_2

    :cond_2
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->CheckDLNAStatus(Landroid/content/Context;)I

    move-result v0

    invoke-static {p0}, Lcom/htc/music/util/CustomizeSetting;->isSupportVmmStore(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_4

    if-nez v0, :cond_3

    const/16 v5, 0x9

    new-array v4, v5, [Ljava/lang/CharSequence;

    const/4 v5, 0x0

    const v6, 0x7f07004e

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const v6, 0x7f07004f

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const v6, 0x7f070050

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const v6, 0x7f07000a

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const v6, 0x20c01f7

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const v6, 0x7f07004c

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const v6, 0x20c01fc

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x7

    const v6, 0x20c0138

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const v6, 0x20c01fe

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x9

    new-array v3, v5, [I

    fill-array-data v3, :array_2

    goto/16 :goto_2

    :cond_3
    const/16 v5, 0x8

    new-array v4, v5, [Ljava/lang/CharSequence;

    const/4 v5, 0x0

    const v6, 0x7f07004e

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const v6, 0x7f07004f

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const v6, 0x7f07000a

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const v6, 0x20c01f7

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const v6, 0x7f07004c

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const v6, 0x20c01fc

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const v6, 0x20c0138

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x7

    const v6, 0x20c01fe

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x8

    new-array v3, v5, [I

    fill-array-data v3, :array_3

    goto/16 :goto_2

    :cond_4
    if-nez v0, :cond_5

    const/16 v5, 0x8

    new-array v4, v5, [Ljava/lang/CharSequence;

    const/4 v5, 0x0

    const v6, 0x7f07004e

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const v6, 0x7f07004f

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const v6, 0x7f070050

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const v6, 0x20c01f7

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const v6, 0x7f07004c

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const v6, 0x20c01fc

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const v6, 0x20c0138

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x7

    const v6, 0x20c01fe

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x8

    new-array v3, v5, [I

    fill-array-data v3, :array_4

    goto/16 :goto_2

    :cond_5
    const/4 v5, 0x7

    new-array v4, v5, [Ljava/lang/CharSequence;

    const/4 v5, 0x0

    const v6, 0x7f07004e

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const v6, 0x7f07004f

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const v6, 0x20c01f7

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const v6, 0x7f07004c

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const v6, 0x20c01fc

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const v6, 0x20c0138

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const v6, 0x20c01fe

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x7

    new-array v3, v5, [I

    fill-array-data v3, :array_5

    goto/16 :goto_2

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2at 0x0t 0x0t 0x0t
        0x2bt 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2at 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
        0x2at 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x1dt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
    .end array-data

    :array_3
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
        0x2at 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x1dt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
    .end array-data

    :array_4
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0x2at 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x1dt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
    .end array-data

    :array_5
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2at 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x1dt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private showTrackOptions_plugin(IJ)V
    .locals 8

    const/4 v7, 0x2

    iget-object v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mLowerSearchFilter:Ljava/lang/String;

    if-nez v5, :cond_0

    iput p1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPosition:I

    :goto_0
    const/4 v5, 0x0

    :try_start_0
    iput-object v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCurrentDetails:Landroid/content/ContentValues;

    sget-object v5, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    iget v6, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPosition:I

    invoke-interface {v5, v6}, Lcom/htc/music/IMediaPlaybackService;->getTrackDetails(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mNowPlayingItemsArrayList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "[PluginNowPlayingListActivity]"

    const-string v6, "onListItemLongClick()...mNowPlayingItemsArrayList is empty..."

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void

    :cond_0
    iget-object v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mFilterPosToOldPosTable:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPosition:I

    goto :goto_0

    :cond_1
    const-string v5, "[PluginNowPlayingListActivity]"

    const-string v6, "pos is null in onListItemLongClick_Plugin."

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    :cond_2
    iget-object v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mNowPlayingItemsArrayList:Ljava/util/ArrayList;

    iget v6, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPosition:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentValues;

    const-string v6, "title"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-array v2, v7, [Ljava/lang/CharSequence;

    const/4 v5, 0x0

    const v6, 0x20c01f7

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    const/4 v5, 0x1

    const v6, 0x20c01fe

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    new-array v1, v7, [I

    fill-array-data v1, :array_0

    invoke-virtual {p0, v4, v2, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->showHtcContextMenu(Ljava/lang/String;[Ljava/lang/CharSequence;[I)V

    goto :goto_2

    :array_0
    .array-data 0x4
        0x27t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private unregisterReceiverSafe(Landroid/content/BroadcastReceiver;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private updateQueueTitle()V
    .locals 0

    return-void
.end method


# virtual methods
.method canRewind()Z
    .locals 1

    sget-object v0, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public categoryRightAction()Z
    .locals 7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mFilter:Ljava/lang/String;

    if-nez v1, :cond_0

    new-instance v0, Lcom/htc/music/NpCategory;

    iget-short v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCategory:S

    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mArtistId:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAlbumId:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mGenre:Ljava/lang/String;

    iget-object v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mComposer:Ljava/lang/String;

    iget-object v6, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/htc/music/NpCategory;-><init>(SLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-static {p0, v1, v0}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;Lcom/htc/music/NpCategory;)V

    const/4 v1, 0x1

    return v1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_1
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    invoke-direct {p0, v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->moveItem(Z)V

    goto :goto_0

    :sswitch_1
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->moveItem(Z)V

    goto :goto_0

    :sswitch_2
    invoke-direct {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->removeItem()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_1
        0x43 -> :sswitch_2
    .end sparse-switch
.end method

.method doSearch()V
    .locals 3

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCurrentTrackName:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCurrentArtistNameForAlbum:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/htc/music/util/MusicUtils;->searchViaTrackName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method getCheckedItemCount()I
    .locals 4

    const/4 v0, 0x0

    iget-boolean v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mEditMode:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v0

    :cond_0
    return v0

    :cond_1
    iget-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v3}, Lcom/htc/widget/HtcListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    if-eqz v3, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method getDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "date_format"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "MM-dd-yyyy"

    :cond_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " HH:mm:ss"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method getPickerMode()J
    .locals 2

    iget v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPickerMode:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public init(Landroid/database/Cursor;)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    if-nez v12, :cond_1

    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v12

    if-nez v12, :cond_0

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    if-eqz v12, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v12}, Lcom/htc/widget/HtcListView;->clearChoices()V

    :cond_2
    move-object/from16 v0, p1

    instance-of v12, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;

    if-nez v12, :cond_3

    move-object/from16 v0, p1

    instance-of v12, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$RecentPlayedPlaylistCursor;

    if-eqz v12, :cond_4

    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->changeCursor(Landroid/database/Cursor;)V

    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    if-nez v12, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->showDatabaseError()V

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->closeContextMenu()V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    const/4 v13, 0x0

    const-wide/16 v14, 0x3e8

    invoke-virtual {v12, v13, v14, v15}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_4
    invoke-direct/range {p0 .. p1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->joinAlbumArt(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    invoke-virtual {v12, v3}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_1

    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v12

    if-nez v12, :cond_7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mActivityTitle:Ljava/lang/String;

    if-nez v12, :cond_6

    invoke-direct/range {p0 .. p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getActivityTitle()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mActivityTitle:Ljava/lang/String;

    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mActivityTitle:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setTitle(Ljava/lang/String;)V

    const v12, 0x7f070029

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->showEmptyView(I)V

    goto :goto_0

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->hideEmptyErrorView()V

    const v12, 0x102000a

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v12

    if-eqz v12, :cond_f

    const v12, 0x7f03002b

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setContentView(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getPickerMode()J

    move-result-wide v12

    const-wide/16 v14, 0x2

    cmp-long v12, v12, v14

    if-eqz v12, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getPickerMode()J

    move-result-wide v12

    const-wide/16 v14, 0x3

    cmp-long v12, v12, v14

    if-eqz v12, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getPickerMode()J

    move-result-wide v12

    const-wide/16 v14, 0x4

    cmp-long v12, v12, v14

    if-nez v12, :cond_9

    :cond_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    const/4 v13, 0x2

    invoke-virtual {v12, v13}, Lcom/htc/widget/HtcListView;->setChoiceMode(I)V

    :cond_9
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mEditMode:Z

    if-eqz v12, :cond_e

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    instance-of v12, v12, Lcom/htc/widget/HtcReorderListView;

    if-eqz v12, :cond_a

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    check-cast v12, Lcom/htc/widget/HtcReorderListView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDragListener:Lcom/htc/widget/HtcReorderListView$DragListener;

    invoke-virtual {v12, v13}, Lcom/htc/widget/HtcReorderListView;->setDragListener(Lcom/htc/widget/HtcReorderListView$DragListener;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    check-cast v12, Lcom/htc/widget/HtcReorderListView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDropListener:Lcom/htc/widget/HtcReorderListView$DropListener;

    invoke-virtual {v12, v13}, Lcom/htc/widget/HtcReorderListView;->setDropListener(Lcom/htc/widget/HtcReorderListView$DropListener;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    check-cast v12, Lcom/htc/widget/HtcReorderListView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRemoveListener:Lcom/htc/widget/HtcReorderListView$RemoveListener;

    invoke-virtual {v12, v13}, Lcom/htc/widget/HtcReorderListView;->setRemoveListener(Lcom/htc/widget/HtcReorderListView$RemoveListener;)V

    :cond_a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/htc/widget/HtcListView;->setCacheColorHint(I)V

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->initPlayerPanel()V

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->initButtonsPanel()V

    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getActivityTitle()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mActivityTitle:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mActivityTitle:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setTitle(Ljava/lang/String;)V

    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    const-string v12, "com.htc.music.metachanged"

    invoke-virtual {v5, v12}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v12, "com.htc.music.queuechanged"

    invoke-virtual {v5, v12}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    if-ne v12, v13, :cond_11

    const/4 v4, 0x0

    :try_start_0
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->getCurrentShuffleMode()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_10

    sget-object v12, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v12}, Lcom/htc/music/IMediaPlaybackService;->getQueuePosition()I

    move-result v11

    sget-object v12, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v12, v11}, Lcom/htc/music/IMediaPlaybackService;->getPositionByShufflePosition(I)I

    move-result v4

    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setSelection(I)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mNowPlayingListener:Landroid/content/BroadcastReceiver;

    new-instance v13, Landroid/content/IntentFilter;

    invoke-direct {v13, v5}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mNowPlayingListener:Landroid/content/BroadcastReceiver;

    new-instance v13, Landroid/content/Intent;

    const-string v14, "com.htc.music.metachanged"

    invoke-direct {v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v12, v0, v13}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_5
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    if-eq v12, v13, :cond_b

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;

    if-eqz v12, :cond_0

    :cond_b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v12

    new-array v12, v12, [I

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPlaylistContent:[I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v13, "_id"

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    const/4 v9, -0x1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v13, "audio_id"

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    const/4 v12, -0x1

    if-le v9, v12, :cond_c

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v12

    new-array v12, v12, [I

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPlaylistAudioId:[I

    :cond_c
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v6, 0x0

    const/4 v2, -0x1

    :goto_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v12}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v12

    if-nez v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v12, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPlaylistContent:[I

    aput v7, v12, v6

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPlaylistAudioId:[I

    if-eqz v12, :cond_d

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v12, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPlaylistAudioId:[I

    aput v2, v12, v6

    :cond_d
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_6

    :cond_e
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/htc/widget/HtcListView;->setTextFilterEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/htc/widget/HtcListView;->setFastScrollEnabled(Z)V

    goto/16 :goto_2

    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->updateButtonCounter()V

    goto/16 :goto_3

    :cond_10
    :try_start_1
    sget-object v12, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v12}, Lcom/htc/music/IMediaPlaybackService;->getQueuePosition()I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v4

    goto/16 :goto_4

    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v12

    const-string v13, "artistid"

    invoke-virtual {v12, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_12

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v13, "artist_id"

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v12}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v12

    if-nez v12, :cond_12

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v12, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_13

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v12}, Landroid/database/Cursor;->getPosition()I

    move-result v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setSelection(I)V

    :cond_12
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    new-instance v13, Landroid/content/IntentFilter;

    invoke-direct {v13, v5}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    new-instance v13, Landroid/content/Intent;

    const-string v14, "com.htc.music.metachanged"

    invoke-direct {v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v12, v0, v13}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_5

    :cond_13
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_7

    :catch_0
    move-exception v12

    goto/16 :goto_5
.end method

.method initButtonsPanel()V
    .locals 4

    iget-boolean v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mEditMode:Z

    if-nez v2, :cond_0

    iget v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPickerMode:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPickerMode:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPickerMode:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    :cond_0
    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mButtonPanel:Landroid/view/ViewStub;

    if-nez v2, :cond_1

    const v2, 0x7f080093

    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    iput-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mButtonPanel:Landroid/view/ViewStub;

    :cond_1
    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mButtonPanel:Landroid/view/ViewStub;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewStub;->setVisibility(I)V

    const v2, 0x7f08003e

    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcFooterButton;

    const v2, 0x20c0130

    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcFooterButton;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Lcom/htc/music/browserlayer/TrackBrowserActivity$26;

    invoke-direct {v2, p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$26;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f08003d

    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcFooterButton;

    const v2, 0x20c013d

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    new-instance v2, Lcom/htc/music/browserlayer/TrackBrowserActivity$27;

    invoke-direct {v2, p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$27;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->updateButtonCounter()V

    return-void

    :cond_3
    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mButtonPanel:Landroid/view/ViewStub;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mButtonPanel:Landroid/view/ViewStub;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/ViewStub;->setVisibility(I)V

    goto :goto_0
.end method

.method public initListPos()V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    sget-object v2, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getQueuePosition()I

    move-result v0

    iget v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mShuffleMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    sget-object v2, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2, v0}, Lcom/htc/music/IMediaPlaybackService;->getPositionByShufflePosition(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setSelection(I)V

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method initPlayerPanel()V
    .locals 0

    return-void
.end method

.method isEditMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mEditMode:Z

    return v0
.end method

.method isPickerMode()Z
    .locals 4

    iget-boolean v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mEditMode:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getPickerMode()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 31

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    :sswitch_0
    return-void

    :sswitch_1
    if-nez p2, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->finish()V

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    move-object/from16 v25, v0

    if-eqz v25, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->getQueryHandler()Lcom/htc/music/util/DlArtAsyncQueryHandler;

    move-result-object v25

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getTrackCursor(Lcom/htc/music/util/DlArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    goto :goto_0

    :sswitch_2
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v23

    if-eqz v23, :cond_0

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v14, v0, [I

    const/16 v25, 0x0

    invoke-static {}, Lcom/htc/music/util/MusicUtils;->getCurrentAudioId()I

    move-result v26

    aput v26, v14, v25

    invoke-virtual/range {v23 .. v23}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v25, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v25

    invoke-static {v0, v14, v1, v2}, Lcom/htc/music/util/MusicUtils;->addToPlaylist(Landroid/content/Context;[IJ)V

    goto :goto_0

    :sswitch_3
    const/16 v25, -0x1

    move/from16 v0, p2

    move/from16 v1, v25

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/htc/music/util/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[I

    move-result-object v14

    const-string v25, "playlist"

    const/16 v26, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v25, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v25

    invoke-static {v0, v14, v1, v2}, Lcom/htc/music/util/MusicUtils;->addToPlaylist(Landroid/content/Context;[IJ)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    move-object/from16 v25, v0

    if-eqz v25, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->getQueryHandler()Lcom/htc/music/util/DlArtAsyncQueryHandler;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mLowerSearchFilter:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getTrackCursor(Lcom/htc/music/util/DlArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    goto/16 :goto_0

    :sswitch_4
    const/16 v25, -0x1

    move/from16 v0, p2

    move/from16 v1, v25

    if-ne v0, v1, :cond_0

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mActivityTitle:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_5
    const/16 v25, -0x1

    move/from16 v0, p2

    move/from16 v1, v25

    if-ne v0, v1, :cond_0

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mActivityTitle:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;

    move-object/from16 v25, v0

    if-eqz v25, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    move/from16 v25, v0

    if-nez v25, :cond_0

    const/16 v25, -0x1

    move/from16 v0, p2

    move/from16 v1, v25

    if-ne v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->requery()Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPlaylistContent:[I

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->getCount()I

    move-result v26

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->getCount()I

    move-result v25

    move/from16 v0, v25

    new-array v0, v0, [I

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPlaylistContent:[I

    const-string v25, "[TrackBrowser]"

    const-string v26, "Bad! I don\'t want to see this!"

    invoke-static/range {v25 .. v26}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    move-object/from16 v25, v0

    const-string v26, "_id"

    invoke-interface/range {v25 .. v26}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    const/4 v12, -0x1

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    move-object/from16 v25, v0

    const-string v26, "audio_id"

    invoke-interface/range {v25 .. v26}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v12

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v5, -0x1

    const/4 v9, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v25

    if-nez v25, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPlaylistContent:[I

    move-object/from16 v25, v0

    aput v11, v25, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPlaylistAudioId:[I

    move-object/from16 v25, v0

    if-eqz v25, :cond_3

    if-lez v12, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPlaylistAudioId:[I

    move-object/from16 v25, v0

    aput v5, v25, v9

    :cond_3
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_2

    :catch_0
    move-exception v8

    const/4 v12, -0x1

    goto :goto_1

    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPlaylistAudioId:[I

    move-object/from16 v25, v0

    if-eqz v25, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v25, "external"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    invoke-static/range {v25 .. v27}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v25

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "playlist_id="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPlaylistAudioId:[I

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v26

    const/16 v28, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-wide/from16 v2, v26

    move/from16 v4, v28

    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/music/util/MusicUtils;->addToPlaylist(Landroid/content/Context;[IJZ)V

    goto/16 :goto_0

    :catch_1
    move-exception v25

    goto/16 :goto_0

    :cond_5
    const-string v25, "[PluginNowPlayingListActivity]"

    const-string v26, "using old logic!! this could need a lot of time"

    invoke-static/range {v25 .. v26}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v24, Landroid/content/ContentValues;

    const/16 v25, 0x1

    invoke-direct/range {v24 .. v25}, Landroid/content/ContentValues;-><init>(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const/4 v9, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPlaylistContent:[I

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v9, v0, :cond_0

    const-string v25, "play_order"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v25, "external"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    invoke-static/range {v25 .. v27}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v25

    const-string v26, "_id=?"

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPlaylistContent:[I

    move-object/from16 v29, v0

    aget v29, v29, v9

    move/from16 v0, v29

    int-to-long v0, v0

    move-wide/from16 v29, v0

    invoke-static/range {v29 .. v30}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v29

    aput-object v29, v27, v28

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move-object/from16 v2, v24

    move-object/from16 v3, v26

    move-object/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :sswitch_7
    const/16 v25, -0x1

    move/from16 v0, p2

    move/from16 v1, v25

    if-ne v0, v1, :cond_0

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v14, v0, [I

    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedId:J

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    long-to-int v0, v0

    move/from16 v26, v0

    aput v26, v14, v25

    const-string v25, "playlist"

    const/16 v26, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v25, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v25

    invoke-static {v0, v14, v1, v2}, Lcom/htc/music/util/MusicUtils;->addToPlaylist(Landroid/content/Context;[IJ)V

    goto/16 :goto_0

    :sswitch_8
    const/16 v25, -0x1

    move/from16 v0, p2

    move/from16 v1, v25

    if-ne v0, v1, :cond_0

    const-string v25, "selectedlist"

    move-object/from16 v0, p3

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/htc/music/util/MusicUtils;->toIntList(Ljava/util/ArrayList;)[I

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    move-object/from16 v0, v25

    move-wide/from16 v1, v26

    invoke-static {v0, v1, v2, v14}, Lcom/htc/music/util/MusicUtils;->deletePlaylistTrack(Landroid/content/Context;J[I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    move-object/from16 v25, v0

    if-eqz v25, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->getQueryHandler()Lcom/htc/music/util/DlArtAsyncQueryHandler;

    move-result-object v25

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getTrackCursor(Lcom/htc/music/util/DlArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    goto/16 :goto_0

    :sswitch_9
    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-static {v0, v1}, Lcom/htc/music/util/MusicUtils;->getTabActivityResult(Landroid/content/Context;I)I

    move-result p2

    const/16 v25, -0x1

    move/from16 v0, p2

    move/from16 v1, v25

    if-ne v0, v1, :cond_0

    invoke-static/range {p0 .. p0}, Lcom/htc/music/util/MusicUtils;->getTabActivitySelectedId(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/htc/music/util/MusicUtils;->toIntList(Ljava/util/ArrayList;)[I

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Long;->longValue()J

    move-result-wide v25

    move-object/from16 v0, p0

    move-wide/from16 v1, v25

    invoke-static {v0, v14, v1, v2}, Lcom/htc/music/util/MusicUtils;->addToPlaylist(Landroid/content/Context;[IJ)V

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getTrackCursor(Lcom/htc/music/util/DlArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->init(Landroid/database/Cursor;)V

    goto/16 :goto_0

    :sswitch_a
    invoke-static/range {p2 .. p2}, Lcom/htc/music/util/DrmUtils;->DRMV2_VerifyStatus(I)Z

    move-result v25

    if-eqz v25, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPosition:I

    move/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move/from16 v0, v28

    new-array v0, v0, [I

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v26

    move-object/from16 v3, v27

    move-object/from16 v4, v28

    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;ILcom/htc/music/NpCategory;[I)V

    goto/16 :goto_0

    :sswitch_b
    const/16 v25, -0x1

    move/from16 v0, p2

    move/from16 v1, v25

    if-ne v0, v1, :cond_0

    const-string v25, "[PluginNowPlayingListActivity]"

    const-string v26, "receive set contact ringtone activity result"

    invoke-static/range {v25 .. v26}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v18, p3

    new-instance v20, Lcom/htc/music/browserlayer/TrackBrowserActivity$20;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity$20;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;Landroid/content/Intent;)V

    new-instance v22, Ljava/lang/Thread;

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    :sswitch_c
    const/16 v25, -0x1

    move/from16 v0, p2

    move/from16 v1, v25

    if-ne v0, v1, :cond_0

    const-string v25, "selectedlist"

    move-object/from16 v0, p3

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v19

    if-eqz v19, :cond_0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v25

    if-lez v25, :cond_0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v7, v10, [Ljava/lang/String;

    const/4 v9, 0x0

    :goto_4
    if-ge v9, v10, :cond_7

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Integer;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v25

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-static {v0, v1}, Lcom/htc/music/util/MusicUtils;->getTrack(Landroid/content/Context;I)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v25, "_data"

    move-object/from16 v0, v25

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v25

    move/from16 v0, v25

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    aput-object v25, v7, v9

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_7
    new-instance v21, Ljava/lang/String;

    const-string v25, "com.htc.vmm.service.VMMEngineService"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :try_start_2
    new-instance v25, Landroid/content/Intent;

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v26, "upload"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v8

    const-string v25, "[PluginNowPlayingListActivity]"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "We do not have permission to start the service :"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_a
        0x1 -> :sswitch_7
        0x4 -> :sswitch_2
        0xb -> :sswitch_1
        0x13 -> :sswitch_b
        0x19 -> :sswitch_3
        0x1e -> :sswitch_9
        0x1f -> :sswitch_8
        0x20 -> :sswitch_6
        0x21 -> :sswitch_5
        0x26 -> :sswitch_4
        0x28 -> :sswitch_c
        0x2a -> :sswitch_0
        0x2b -> :sswitch_0
    .end sparse-switch
.end method

.method onCancelClick()V
    .locals 6

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getPickerMode()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v2}, Lcom/htc/widget/HtcListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v2

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcListView;->setItemChecked(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->updateButtonCounter()V

    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v5, "albumid"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAlbumId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "artistid"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mArtistId:Ljava/lang/String;

    const-string v2, "isnowplayinglist"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    const-string v2, "playlist"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;

    const-string v2, "isrecentplayedplaylist"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRecentPlayedPlaylist:Z

    const-string v2, "genreid"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mGenre:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v5, "android.intent.action.EDIT"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mEditMode:Z

    :cond_0
    const-string v2, "isshowplayerpanel"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mShowPlayerPanel:Z

    const-string v2, "composer"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mComposer:Ljava/lang/String;

    const-string v2, "isdrmlist"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsDrmList:Z

    const-string v2, "description"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDescription:Ljava/lang/String;

    const-string v2, "pickermode"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPickerMode:I

    const-string v2, "playlisturi"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPlaylistUri:Ljava/lang/String;

    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isPluginMode()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    if-eqz v2, :cond_2

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsPluginModeNowPlaying:Z

    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->CheckDLNAStatus(Landroid/content/Context;)I

    move-result v2

    iput v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDlnaMode:I

    iget v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDlnaMode:I

    const/4 v5, 0x3

    if-ne v2, v5, :cond_1

    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->getCurDMR(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mcurDMR:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.htc.dlnainterface.IDLNAPluginService"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.htc.dlnainterface.IDLNAPluginService"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v5, v6, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    iput-boolean v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDlnaServiceConn:Z

    :cond_1
    iget-boolean v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsPluginModeNowPlaying:Z

    if-nez v2, :cond_3

    invoke-direct {p0, p1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->onCreate_Local(Landroid/os/Bundle;)V

    :goto_1
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackBrowserRingtoneHelper;

    invoke-direct {v2, p0, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackBrowserRingtoneHelper;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRingToneHelper:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackBrowserRingtoneHelper;

    return-void

    :cond_2
    move v2, v4

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->onCreate_Plugin(Landroid/os/Bundle;)V

    goto :goto_1
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 12

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getParent()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    move-object v1, p0

    :cond_0
    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v7

    :goto_0
    return-object v7

    :sswitch_0
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->IsOnlyInternalStorage()Z

    move-result v9

    if-eqz v9, :cond_1

    const v9, 0x7f070011

    invoke-virtual {p0, v9}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_1
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCurrentTrackName:Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-static {v3, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v9, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v9, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v10, 0x20c01fc

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v9

    const v10, 0x1080027

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v9

    const v10, 0x1040013

    new-instance v11, Lcom/htc/music/browserlayer/TrackBrowserActivity$15;

    invoke-direct {v11, p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$15;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V

    invoke-virtual {v9, v10, v11}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v9

    const v10, 0x1040009

    new-instance v11, Lcom/htc/music/browserlayer/TrackBrowserActivity$14;

    invoke-direct {v11, p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$14;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V

    invoke-virtual {v9, v10, v11}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v7

    goto :goto_0

    :cond_1
    const v9, 0x7f070010

    invoke-virtual {p0, v9}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :sswitch_1
    new-instance v9, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v9, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {v1}, Lcom/htc/music/util/MusicUtils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v9

    const v10, 0x1080027

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v9

    const v10, 0x7f07005d

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v9

    const v10, 0x1040013

    new-instance v11, Lcom/htc/music/browserlayer/TrackBrowserActivity$16;

    invoke-direct {v11, p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$16;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V

    invoke-virtual {v9, v10, v11}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v7

    goto/16 :goto_0

    :sswitch_2
    new-instance v9, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v9, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {v1}, Lcom/htc/music/util/MusicUtils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v9

    const v10, 0x1080027

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mMsg:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v9

    const v10, 0x1040013

    new-instance v11, Lcom/htc/music/browserlayer/TrackBrowserActivity$18;

    invoke-direct {v11, p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$18;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V

    invoke-virtual {v9, v10, v11}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v9

    const v10, 0x1040009

    new-instance v11, Lcom/htc/music/browserlayer/TrackBrowserActivity$17;

    invoke-direct {v11, p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$17;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V

    invoke-virtual {v9, v10, v11}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v7

    goto/16 :goto_0

    :sswitch_3
    const/4 v9, 0x3

    new-array v4, v9, [Ljava/lang/CharSequence;

    const/4 v9, 0x0

    const v10, 0x7f0700a9

    invoke-virtual {p0, v10}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v9

    const/4 v9, 0x1

    const v10, 0x7f0700aa

    invoke-virtual {p0, v10}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v9

    const/4 v9, 0x2

    const v10, 0x7f0700ab

    invoke-virtual {p0, v10}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v9

    iget-object v9, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRingToneHelper:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackBrowserRingtoneHelper;

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRingToneHelper:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackBrowserRingtoneHelper;

    const/16 v10, 0x13

    invoke-virtual {v9, v4, v10}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackBrowserRingtoneHelper;->createSetAsRingtoneDialog([Ljava/lang/CharSequence;I)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v7

    goto/16 :goto_0

    :cond_2
    const-string v9, "[PluginNowPlayingListActivity]"

    const-string v10, "mRingToneHelper is null!!"

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :sswitch_4
    const-string v9, "Soar"

    const-string v10, "DIALOG_SET_AS_RINGTONE_NO_NOTIFICATION"

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x2

    new-array v4, v9, [Ljava/lang/CharSequence;

    const/4 v9, 0x0

    const v10, 0x7f0700a9

    invoke-virtual {p0, v10}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v9

    const/4 v9, 0x1

    const v10, 0x7f0700aa

    invoke-virtual {p0, v10}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v9

    iget-object v9, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRingToneHelper:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackBrowserRingtoneHelper;

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRingToneHelper:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackBrowserRingtoneHelper;

    const/16 v10, 0x13

    invoke-virtual {v9, v4, v10}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackBrowserRingtoneHelper;->createSetAsRingtoneDialog([Ljava/lang/CharSequence;I)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v7

    goto/16 :goto_0

    :cond_3
    const-string v9, "[PluginNowPlayingListActivity]"

    const-string v10, "mRingToneHelper is null!!"

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :sswitch_5
    const/4 v9, 0x2

    new-array v4, v9, [Ljava/lang/CharSequence;

    const/4 v9, 0x0

    const v10, 0x7f07010d

    invoke-virtual {p0, v10}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v9

    const/4 v9, 0x1

    const v10, 0x7f07010e

    invoke-virtual {p0, v10}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v9

    new-instance v9, Landroid/app/AlertDialog$Builder;

    invoke-direct {v9, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCurrentTrackName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    new-instance v10, Lcom/htc/music/browserlayer/TrackBrowserActivity$19;

    invoke-direct {v10, p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$19;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V

    invoke-virtual {v9, v4, v10}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    goto/16 :goto_0

    :sswitch_6
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v0

    iget-object v9, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mShareText:Ljava/lang/String;

    invoke-static {v0, v9}, Lcom/htc/music/widget/SharedAdapter;->shareIntentChooser(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v8

    move-object v7, v8

    goto/16 :goto_0

    :sswitch_7
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v0

    const/4 v9, 0x0

    const-string v10, ""

    const/4 v11, 0x0

    invoke-static {v0, v9, v10, v11}, Lcom/htc/music/widget/SharedAdapter;->shareIntentChooser(Landroid/app/Activity;ILjava/lang/String;I)Landroid/app/Dialog;

    move-result-object v6

    move-object v7, v6

    goto/16 :goto_0

    :sswitch_8
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v0

    const/4 v9, 0x0

    const-string v10, ""

    const/4 v11, 0x1

    invoke-static {v0, v9, v10, v11}, Lcom/htc/music/widget/SharedAdapter;->shareIntentChooser(Landroid/app/Activity;ILjava/lang/String;I)Landroid/app/Dialog;

    move-result-object v5

    move-object v7, v5

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_5
        0x5 -> :sswitch_6
        0x6 -> :sswitch_7
        0x7 -> :sswitch_8
        0x24 -> :sswitch_3
        0x25 -> :sswitch_4
    .end sparse-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 9

    const/16 v8, 0x29

    const/16 v7, 0x1a

    const/16 v6, 0x9

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getPickerMode()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mEditMode:Z

    if-eqz v0, :cond_2

    :cond_0
    const/16 v0, 0x22

    const v1, 0x20c013a

    invoke-interface {p1, v4, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080334

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/16 v0, 0x23

    const v1, 0x20c013b

    invoke-interface {p1, v4, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x208033c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_1
    :goto_0
    return v5

    :cond_2
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;

    if-nez v0, :cond_4

    const v0, 0x7f070008

    invoke-interface {p1, v4, v6, v4, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080a7e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const v0, 0x7f070009

    invoke-interface {p1, v4, v7, v4, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x20809be

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    invoke-static {p0}, Lcom/htc/music/util/CustomizeSetting;->isSupportVmmStore(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x28

    const v1, 0x7f07000a

    invoke-interface {p1, v4, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080aa0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_3
    invoke-static {}, Lcom/htc/music/util/CustomizeSetting;->isSupportListenStore()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x20c0200

    invoke-interface {p1, v4, v8, v4, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080336

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    :cond_4
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    if-eq v5, v0, :cond_5

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;

    if-eqz v0, :cond_1

    :cond_5
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mEditMode:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    if-ne v5, v0, :cond_6

    const/16 v0, 0x20

    const v1, 0x7f07000b

    invoke-interface {p1, v4, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080a5e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/16 v0, 0x19

    const v1, 0x7f07004f

    invoke-interface {p1, v4, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080a69

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const v0, 0x20c0200

    invoke-interface {p1, v4, v8, v4, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080336

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_0

    :cond_6
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRecentPlayedPlaylist:Z

    if-nez v0, :cond_1

    const v0, 0x7f070008

    invoke-interface {p1, v4, v6, v4, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080a7e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const v0, 0x7f070009

    invoke-interface {p1, v4, v7, v4, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x20809be

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/16 v0, 0x26

    const v1, 0x7f070094

    invoke-interface {p1, v4, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080a5e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDestroyed:Z

    iget-boolean v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsPluginModeNowPlaying:Z

    if-nez v1, :cond_3

    invoke-direct {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->onDestroy_Local()V

    :goto_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDlnaService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDlnaService:Lcom/htc/dlnainterface/IDLNAPluginService;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mNotifyCallback:Lcom/htc/music/browserlayer/TrackBrowserActivity$DlnaNotifyStub;

    invoke-interface {v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->unregisterCallback(ILcom/htc/dlnainterface/IDLNAPluginNotify;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    iget-boolean v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDlnaServiceConn:Z

    if-ne v1, v4, :cond_1

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iput-object v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDlnaService:Lcom/htc/dlnainterface/IDLNAPluginService;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDlnaServiceConn:Z

    :cond_1
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPluginListener:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->unregisterReceiverSafe(Landroid/content/BroadcastReceiver;)V

    iput-object v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRingToneHelper:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackBrowserRingtoneHelper;

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mUiHandler:Lcom/htc/music/browserlayer/TrackBrowserActivity$UIHandler;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mUiHandler:Lcom/htc/music/browserlayer/TrackBrowserActivity$UIHandler;

    invoke-virtual {v1, v5}, Lcom/htc/music/browserlayer/TrackBrowserActivity$UIHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_2
    const-string v1, "[PluginNowPlayingListActivity]"

    const-string v2, "onDestroy"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    invoke-direct {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->onDestroy_Plugin()V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public onHtcContextItemSelected(I)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsPluginModeNowPlaying:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->onHtcContextItemSelected_Local(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->onHtcContextItemSelected_Plugin(I)Z

    move-result v0

    goto :goto_0
.end method

.method protected onListItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 1

    iget-boolean v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsPluginModeNowPlaying:Z

    if-nez v0, :cond_0

    invoke-direct/range {p0 .. p5}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->onListItemClick_Local(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V

    :goto_0
    return-void

    :cond_0
    invoke-direct/range {p0 .. p5}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->onListItemClick_Plugin(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V

    goto :goto_0
.end method

.method protected onListItemLongClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsPluginModeNowPlaying:Z

    if-nez v0, :cond_0

    invoke-direct/range {p0 .. p5}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->onListItemLongClick_Local(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-direct/range {p0 .. p5}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->onListItemLongClick_Plugin(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)Z

    move-result v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 13

    const/4 v3, 0x3

    const/4 v12, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    :sswitch_0
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->categoryRightAction()Z

    move v1, v12

    goto :goto_0

    :sswitch_1
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDlnaMode:I

    if-ne v1, v3, :cond_0

    const-string v1, "DLNA"

    invoke-virtual {p0, v1, v3}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "shuffle"

    invoke-interface {v1, v2, v12}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mFilter:Ljava/lang/String;

    if-nez v1, :cond_1

    new-instance v0, Lcom/htc/music/NpCategory;

    iget-short v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCategory:S

    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mArtistId:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAlbumId:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mGenre:Ljava/lang/String;

    iget-object v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mComposer:Ljava/lang/String;

    iget-object v6, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/htc/music/NpCategory;-><init>(SLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-static {p0, v1, v0}, Lcom/htc/music/util/MusicUtils;->shuffleAll(Landroid/content/Context;Landroid/database/Cursor;Lcom/htc/music/NpCategory;)V

    :cond_2
    move v1, v12

    goto :goto_0

    :sswitch_2
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;

    invoke-virtual {v8, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "pickermode"

    invoke-virtual {v8, v1, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v1, 0x19

    invoke-virtual {p0, v8, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    move v1, v12

    goto :goto_0

    :sswitch_3
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->clearQueue()V

    move v1, v12

    goto :goto_0

    :sswitch_4
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    const-string v1, "playlisturi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://media/external/audio/playlists/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-class v1, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;

    invoke-virtual {v8, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/16 v1, 0x1e

    invoke-virtual {p0, v8, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    move v1, v12

    goto/16 :goto_0

    :sswitch_5
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/htc/music/browserlayer/TrackBrowserActivity;

    invoke-virtual {v8, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "playlist"

    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;

    invoke-virtual {v8, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "pickermode"

    invoke-virtual {v8, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v1, 0x1f

    invoke-virtual {p0, v8, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    move v1, v12

    goto/16 :goto_0

    :sswitch_6
    new-instance v8, Landroid/content/Intent;

    const-string v1, "android.intent.action.EDIT"

    invoke-direct {v8, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v2, "com.htc.media/track"

    invoke-virtual {v8, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "playlist"

    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;

    invoke-virtual {v8, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "isnowplayinglist"

    iget-boolean v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    invoke-virtual {v8, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v1, 0x20

    invoke-virtual {p0, v8, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    move v1, v12

    goto/16 :goto_0

    :sswitch_7
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/htc/music/browserlayer/EditPlaylistActivity;

    invoke-virtual {v8, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistName:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v1, "playlistname"

    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistName:Ljava/lang/String;

    invoke-virtual {v8, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_3
    const-string v1, "playlist"

    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;

    invoke-virtual {v8, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x26

    invoke-virtual {p0, v8, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    move v1, v12

    goto/16 :goto_0

    :sswitch_8
    move v1, v12

    goto/16 :goto_0

    :sswitch_9
    iget-boolean v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mEditMode:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v11

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v11, :cond_4

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mMap:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mUiHandler:Lcom/htc/music/browserlayer/TrackBrowserActivity$UIHandler;

    invoke-virtual {v1, v12}, Lcom/htc/music/browserlayer/TrackBrowserActivity$UIHandler;->sendEmptyMessage(I)Z

    move v1, v12

    goto/16 :goto_0

    :cond_5
    const/4 v7, 0x0

    :goto_2
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ge v7, v1, :cond_6

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v1

    invoke-virtual {v1, v7, v12}, Lcom/htc/widget/HtcListView;->setItemChecked(IZ)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_6
    iput-boolean v12, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mItemClicked:Z

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->updateButtonCounter()V

    move v1, v12

    goto/16 :goto_0

    :sswitch_a
    iget-boolean v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    if-eqz v1, :cond_7

    iget-boolean v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mEditMode:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mUiHandler:Lcom/htc/music/browserlayer/TrackBrowserActivity$UIHandler;

    invoke-virtual {v1, v12}, Lcom/htc/music/browserlayer/TrackBrowserActivity$UIHandler;->sendEmptyMessage(I)Z

    move v1, v12

    goto/16 :goto_0

    :cond_7
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v1}, Lcom/htc/widget/HtcListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v9

    const/4 v7, 0x0

    :goto_3
    invoke-virtual {v9}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-ge v7, v1, :cond_8

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v1

    invoke-virtual {v9, v7}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcListView;->setItemChecked(IZ)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_8
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->updateButtonCounter()V

    move v1, v12

    goto/16 :goto_0

    :sswitch_b
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    const-string v1, "albumid"

    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAlbumId:Ljava/lang/String;

    invoke-virtual {v8, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "artistid"

    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mArtistId:Ljava/lang/String;

    invoke-virtual {v8, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "genreid"

    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mGenre:Ljava/lang/String;

    invoke-virtual {v8, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "pickermode"

    const/4 v2, 0x4

    invoke-virtual {v8, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-class v1, Lcom/htc/music/browserlayer/TrackBrowserActivity;

    invoke-virtual {v8, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/16 v1, 0x28

    invoke-virtual {p0, v8, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    move v1, v12

    goto/16 :goto_0

    :sswitch_c
    new-instance v8, Landroid/content/Intent;

    const-string v1, "com.htc.music.settings.Listen_Online_Setting"

    invoke-direct {v8, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, -0x2

    invoke-virtual {p0, v8, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    move v1, v12

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_1
        0x19 -> :sswitch_2
        0x1a -> :sswitch_0
        0x1b -> :sswitch_3
        0x1e -> :sswitch_4
        0x1f -> :sswitch_5
        0x20 -> :sswitch_6
        0x21 -> :sswitch_8
        0x22 -> :sswitch_9
        0x23 -> :sswitch_a
        0x26 -> :sswitch_7
        0x28 -> :sswitch_b
        0x29 -> :sswitch_c
    .end sparse-switch
.end method

.method public onPause()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/widget/MusicListActivity;->mActivityPaused:Z

    iget-boolean v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsPluginModeNowPlaying:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->onPause_Local()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->onPause_Plugin()V

    goto :goto_0
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 12

    const/4 v11, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1, p2}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->IsOnlyInternalStorage()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f070011

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    :goto_1
    new-array v1, v11, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCurrentTrackName:Ljava/lang/String;

    aput-object v5, v1, v3

    invoke-static {v7, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    check-cast p2, Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {p2, v6}, Lcom/htc/widget/HtcAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const v1, 0x7f070010

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :pswitch_2
    check-cast p2, Lcom/htc/widget/HtcAlertDialog;

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mMsg:Ljava/lang/String;

    invoke-virtual {p2, v1}, Lcom/htc/widget/HtcAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_3
    check-cast p2, Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCurrentTrackName:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mShareText:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/htc/music/widget/SharedAdapter;->getShareDialogAdapter(Landroid/app/Activity;Ljava/lang/String;)Lcom/htc/music/widget/SharedAdapter;

    move-result-object v4

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mShareText:Ljava/lang/String;

    invoke-static {v0, v1, v4, p2}, Lcom/htc/music/widget/SharedAdapter;->getShareDialogClickListener(Landroid/app/Activity;Ljava/lang/String;Lcom/htc/music/widget/SharedAdapter;Landroid/app/Dialog;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v8

    move-object v1, p2

    check-cast v1, Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    check-cast p2, Landroid/app/AlertDialog;

    invoke-virtual {p2}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    iget-object v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v9, "_data"

    invoke-interface {v5, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-wide v9, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedId:J

    long-to-int v1, v9

    invoke-static {v0, v1, v2, v3}, Lcom/htc/music/widget/SharedAdapter;->getShareDialogAdapter(Landroid/app/Activity;ILjava/lang/String;I)Lcom/htc/music/widget/SharedAdapter;

    move-result-object v4

    iget-wide v9, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedId:J

    long-to-int v1, v9

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/htc/music/widget/SharedAdapter;->getShareDialogClickListener(Landroid/app/Activity;ILjava/lang/String;ILcom/htc/music/widget/SharedAdapter;Landroid/app/Dialog;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v8

    move-object v1, p2

    check-cast v1, Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    check-cast p2, Landroid/app/AlertDialog;

    invoke-virtual {p2}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto/16 :goto_0

    :pswitch_6
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    iget-object v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v9, "_data"

    invoke-interface {v5, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-wide v9, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedId:J

    long-to-int v1, v9

    invoke-static {v0, v1, v2, v11}, Lcom/htc/music/widget/SharedAdapter;->getShareDialogAdapter(Landroid/app/Activity;ILjava/lang/String;I)Lcom/htc/music/widget/SharedAdapter;

    move-result-object v4

    iget-wide v9, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedId:J

    long-to-int v1, v9

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/htc/music/widget/SharedAdapter;->getShareDialogClickListener(Landroid/app/Activity;ILjava/lang/String;ILcom/htc/music/widget/SharedAdapter;Landroid/app/Dialog;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v8

    move-object v1, p2

    check-cast v1, Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    check-cast p2, Landroid/app/AlertDialog;

    invoke-virtual {p2}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 11

    iget-boolean v7, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    if-eqz v7, :cond_4

    iget-boolean v7, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mEditMode:Z

    if-nez v7, :cond_4

    const/16 v7, 0x20

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-boolean v7, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsPluginModeNowPlaying:Z

    if-nez v7, :cond_2

    const/4 v7, 0x1

    :goto_0
    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    const/16 v7, 0x19

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-boolean v7, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsPluginModeNowPlaying:Z

    if-nez v7, :cond_3

    const/4 v7, 0x1

    :goto_1
    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_1
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v7

    :goto_2
    return v7

    :cond_2
    const/4 v7, 0x0

    goto :goto_0

    :cond_3
    const/4 v7, 0x0

    goto :goto_1

    :cond_4
    iget-object v7, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    if-nez v7, :cond_5

    const/4 v7, 0x0

    goto :goto_2

    :cond_5
    iget-object v7, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_10

    const/4 v7, 0x1

    :goto_3
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget-object v7, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    if-eqz v7, :cond_11

    if-lez v6, :cond_11

    const/4 v7, 0x1

    :goto_4
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getPickerMode()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-nez v7, :cond_6

    iget-boolean v7, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    if-eqz v7, :cond_8

    iget-boolean v7, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mEditMode:Z

    if-eqz v7, :cond_8

    :cond_6
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getCheckedItemCount()I

    move-result v0

    iget-object v7, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    if-nez v7, :cond_12

    const/4 v1, 0x0

    :goto_5
    const/16 v7, 0x22

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_13

    if-eq v1, v0, :cond_13

    const/4 v7, 0x1

    :goto_6
    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_7
    const/16 v7, 0x23

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_14

    if-lez v0, :cond_14

    const/4 v7, 0x1

    :goto_7
    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_8
    const/16 v7, 0x9

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_9
    const/16 v7, 0x1a

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    if-eqz v3, :cond_a

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_a
    const/16 v7, 0x19

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    if-eqz v3, :cond_b

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_b
    const/16 v7, 0x20

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    if-eqz v3, :cond_c

    const/4 v7, 0x1

    iget-boolean v8, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    if-ne v7, v8, :cond_15

    iget-object v7, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    instance-of v7, v7, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;

    if-nez v7, :cond_15

    const/4 v7, 0x1

    :goto_8
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_16

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_16

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_16

    const/4 v7, 0x1

    :goto_9
    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_c
    const/16 v7, 0x1f

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    if-eqz v3, :cond_d

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_d
    invoke-static {p0}, Lcom/htc/music/util/CustomizeSetting;->isSupportVmmStore(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_e

    const/16 v7, 0x28

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    if-eqz v3, :cond_e

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_e
    const/16 v7, 0x29

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    if-eqz v3, :cond_f

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_f
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v7

    goto/16 :goto_2

    :cond_10
    const/4 v7, 0x0

    goto/16 :goto_3

    :cond_11
    const/4 v7, 0x0

    goto/16 :goto_4

    :cond_12
    iget-object v7, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    goto/16 :goto_5

    :cond_13
    const/4 v7, 0x0

    goto/16 :goto_6

    :cond_14
    const/4 v7, 0x0

    goto/16 :goto_7

    :cond_15
    const/4 v7, 0x0

    goto :goto_8

    :cond_16
    const/4 v7, 0x0

    goto :goto_9
.end method

.method public onResume()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/widget/MusicListActivity;->mActivityPaused:Z

    invoke-direct {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setTitle()V

    iget-boolean v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsPluginModeNowPlaying:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->onResume_Local()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->onResume_Plugin()V

    goto :goto_0
.end method

.method public onSaveClick()V
    .locals 18

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mEditMode:Z

    if-eqz v14, :cond_7

    const/4 v8, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    instance-of v14, v14, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;

    if-eqz v14, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    check-cast v1, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-static {v14}, Lcom/htc/music/util/MusicUtils;->prepareAlbumList(Landroid/database/Cursor;)Z

    :try_start_0
    sget-object v14, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-virtual {v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;->getNowPlayingQueue()[I

    move-result-object v15

    invoke-interface {v14, v15}, Lcom/htc/music/IMediaPlaybackService;->syncNowPlayingQueue([I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mMap:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->size()I

    move-result v14

    if-ne v13, v14, :cond_5

    sget-object v14, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v15, 0x0

    add-int/lit8 v16, v13, -0x1

    invoke-interface/range {v14 .. v16}, Lcom/htc/music/IMediaPlaybackService;->removeTracks(II)I

    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mMap:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->clear()V

    :cond_1
    sget-object v14, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v14}, Lcom/htc/music/IMediaPlaybackService;->getNowplaying()[I

    move-result-object v8

    if-eqz v8, :cond_2

    array-length v14, v8

    if-nez v14, :cond_3

    :cond_2
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    const-class v14, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;

    move-object/from16 v0, p0

    invoke-virtual {v6, v0, v14}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v14, 0x2400

    invoke-virtual {v6, v14}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v14, "KeepHistory"

    const/4 v15, 0x1

    invoke-virtual {v6, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v14, "RemoveStoreHistory"

    const/4 v15, 0x1

    invoke-virtual {v6, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    const-string v14, "NOW_PLAYING_LIST"

    invoke-virtual {v6, v14, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    const/4 v14, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setResult(ILandroid/content/Intent;)V

    :cond_4
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->finish()V

    return-void

    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mMap:Ljava/util/HashMap;

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mMap:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mMap:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v12

    array-length v14, v12

    new-array v2, v14, [I

    const/4 v3, 0x0

    :goto_3
    array-length v14, v12

    if-ge v3, v14, :cond_6

    aget-object v14, v12, v3

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    aput v14, v2, v3

    const-string v14, "[PluginNowPlayingListActivity]"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "delete position = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    aget v16, v2, v3

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_6
    sget-object v14, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v14, v2}, Lcom/htc/music/IMediaPlaybackService;->removeQueueTracks([I)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v14

    goto :goto_1

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getPickerMode()J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-eqz v14, :cond_4

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v14}, Lcom/htc/widget/HtcListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v15, "_id"

    invoke-interface {v14, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    const/4 v4, 0x0

    const/4 v3, 0x0

    :goto_4
    invoke-virtual {v7}, Landroid/util/SparseBooleanArray;->size()I

    move-result v14

    if-ge v3, v14, :cond_9

    invoke-virtual {v7, v3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v14

    if-eqz v14, :cond_8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-virtual {v7, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v15

    invoke-interface {v14, v15}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    long-to-int v4, v14

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v14, "playlisturi"

    invoke-virtual {v6, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_a

    const-string v14, "selectedlist"

    invoke-virtual {v6, v14, v10}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    :goto_5
    const/4 v14, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setResult(ILandroid/content/Intent;)V

    goto/16 :goto_2

    :cond_a
    const/4 v14, -0x1

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/htc/music/util/MusicUtils;->setTabActivityResult(Landroid/content/Context;I)V

    move-object/from16 v0, p0

    invoke-static {v0, v10}, Lcom/htc/music/util/MusicUtils;->setTabActivitySelectedId(Landroid/content/Context;Ljava/util/ArrayList;)V

    goto :goto_5
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "selectedtrack"

    iget-wide v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "artistid"

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mArtistId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "albumid"

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAlbumId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "isnowplayinglist"

    iget-boolean v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "playlist"

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "isrecentplayedplaylist"

    iget-boolean v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRecentPlayedPlaylist:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "genreid"

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mGenre:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "editmode"

    iget-boolean v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mEditMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "composer"

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mComposer:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "isdrmlist"

    iget-boolean v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsDrmList:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "description"

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "pickermode"

    iget v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPickerMode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "playlisturi"

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPlaylistUri:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "isshowplayerpanel"

    iget-boolean v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mShowPlayerPanel:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "pluginmode"

    iget-boolean v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsPluginModeNowPlaying:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onScroll(Lcom/htc/widget/HtcAbsListView;III)V
    .locals 1

    iget-boolean v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsPluginModeNowPlaying:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->onScroll_Local(Lcom/htc/widget/HtcAbsListView;III)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->onScroll_Plugin(Lcom/htc/widget/HtcAbsListView;III)V

    goto :goto_0
.end method

.method public onScrollStateChanged(Lcom/htc/widget/HtcAbsListView;I)V
    .locals 3

    const-string v0, "[TrackBrowser]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScrollStateChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsPluginModeNowPlaying:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->onScrollStateChanged_Local(Lcom/htc/widget/HtcAbsListView;I)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->onScrollStateChanged_Plugin(Lcom/htc/widget/HtcAbsListView;I)V

    goto :goto_0
.end method

.method public onScroll_Local(Lcom/htc/widget/HtcAbsListView;III)V
    .locals 3

    move v1, p2

    add-int v0, p2, p3

    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->access$800(Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->access$800(Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/htc/music/util/AsyncImageDecoder;->setVisibleRange(II)V

    :cond_0
    return-void
.end method

.method public onScroll_Plugin(Lcom/htc/widget/HtcAbsListView;III)V
    .locals 4

    move v1, p2

    add-int v0, p2, p3

    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    invoke-virtual {v2, v1, v0}, Lcom/htc/music/util/AsyncImageDecoder;->setVisibleRange(II)V

    :cond_0
    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mMemoryCache:Lcom/htc/music/util/MemoryCacheBitmapByPosition;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mMemoryCache:Lcom/htc/music/util/MemoryCacheBitmapByPosition;

    add-int v3, v1, v0

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v3}, Lcom/htc/music/util/MemoryCacheBitmapByPosition;->setPosition(I)V

    :cond_1
    return-void
.end method

.method public onSearch(Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->preSearchTime:J

    iput-object p1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mFilter:Ljava/lang/String;

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDelaySearchHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    iget-boolean v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsPluginModeNowPlaying:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->onServiceConnected_Local(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->onServiceConnected_Plugin(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->finish()V

    return-void
.end method

.method protected onStart()V
    .locals 3

    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onStart()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.htc.music.playstatechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.htc.music.playbackcomplete"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsPluginModeNowPlaying:Z

    if-eqz v1, :cond_0

    const-string v1, "com.htc.music.onerror"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mStatusListener:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2, v0}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    invoke-virtual {p0, v1, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onStop()V

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mStatusListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public play(I)V
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
    iget v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mShuffleMode:I

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

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPluginAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;

    invoke-virtual {v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected resetBackground()V
    .locals 2

    iget-boolean v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f020077

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->resetBackground()V

    goto :goto_0
.end method

.method public setCheckedView(Landroid/view/View;JZ)V
    .locals 7

    const-wide/16 v5, 0x4

    const-wide/16 v3, 0x2

    const v2, 0x202001a

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListItemImageButton;

    invoke-virtual {v0}, Lcom/htc/widget/HtcListItemImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x1

    if-ne p4, v2, :cond_2

    cmp-long v2, p2, v3

    if-eqz v2, :cond_0

    cmp-long v2, p2, v5

    if-nez v2, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "common_checkbox_on"

    const v4, 0x208019f

    invoke-static {v2, v3, v4}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    :goto_0
    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListItemImageButton;->setImageResource(I)V

    :goto_1
    invoke-virtual {v0}, Lcom/htc/widget/HtcListItemImageButton;->invalidate()V

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "common_delete_on"

    const v4, 0x20801aa

    invoke-static {v2, v3, v4}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    goto :goto_0

    :cond_2
    cmp-long v2, p2, v3

    if-eqz v2, :cond_3

    cmp-long v2, p2, v5

    if-nez v2, :cond_4

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "common_checkbox_off"

    const v4, 0x208019d

    invoke-static {v2, v3, v4}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    :goto_2
    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListItemImageButton;->setImageResource(I)V

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "common_delete_off"

    const v4, 0x20801a8

    invoke-static {v2, v3, v4}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    goto :goto_2
.end method

.method public showProperty(I)V
    .locals 6

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-class v3, Lcom/htc/music/PluginPropertyListActivity;

    invoke-virtual {v1, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mNowPlayingItemsArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    const-string v4, "title"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mNowPlayingItemsArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    const-string v4, "artist"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNeedToUpdateProperty:Ljava/lang/Boolean;

    iget-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCurrentDetails:Landroid/content/ContentValues;

    if-eqz v3, :cond_0

    const-string v3, "duration"

    iget-object v4, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCurrentDetails:Landroid/content/ContentValues;

    const-string v5, "length"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v3, "trackname"

    iget-object v4, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCurrentDetails:Landroid/content/ContentValues;

    const-string v5, "title"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "artistname"

    iget-object v4, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCurrentDetails:Landroid/content/ContentValues;

    const-string v5, "artist"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "albumname"

    iget-object v4, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCurrentDetails:Landroid/content/ContentValues;

    const-string v5, "album"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "genre"

    iget-object v4, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCurrentDetails:Landroid/content/ContentValues;

    const-string v5, "genre"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "composer"

    iget-object v4, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCurrentDetails:Landroid/content/ContentValues;

    const-string v5, "composer"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "location"

    iget-object v4, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCurrentDetails:Landroid/content/ContentValues;

    const-string v5, "location"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    const/4 v3, -0x2

    invoke-virtual {p0, v1, v3}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

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

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNeedToUpdateProperty:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method updateButtonCounter()V
    .locals 11

    const v10, 0x7f08003e

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getPickerMode()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getCheckedItemCount()I

    move-result v1

    iget-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCountTemplate:Ljava/lang/String;

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v5

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPickerMode:I

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, v10}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcFooterButton;

    if-lez v1, :cond_1

    move v3, v4

    :goto_1
    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    if-lez v1, :cond_2

    :goto_2
    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcFooterButton;->setFocusable(Z)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f07005f

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcFooterButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    move v3, v5

    goto :goto_1

    :cond_2
    move v4, v5

    goto :goto_2

    :pswitch_1
    invoke-virtual {p0, v10}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcFooterButton;

    if-lez v1, :cond_3

    move v3, v4

    :goto_3
    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    if-lez v1, :cond_4

    :goto_4
    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcFooterButton;->setFocusable(Z)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f07000a

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcFooterButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    move v3, v5

    goto :goto_3

    :cond_4
    move v4, v5

    goto :goto_4

    :pswitch_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v6, 0x7f070060

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v10}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcFooterButton;->setText(Ljava/lang/CharSequence;)V

    if-lez v1, :cond_5

    move v3, v4

    :goto_5
    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    if-lez v1, :cond_6

    :goto_6
    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcFooterButton;->setFocusable(Z)V

    goto/16 :goto_0

    :cond_5
    move v3, v5

    goto :goto_5

    :cond_6
    move v4, v5

    goto :goto_6

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

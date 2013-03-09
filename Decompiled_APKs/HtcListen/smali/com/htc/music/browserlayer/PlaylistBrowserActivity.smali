.class public Lcom/htc/music/browserlayer/PlaylistBrowserActivity;
.super Lcom/htc/music/widget/MusicListActivity;
.source "PlaylistBrowserActivity.java"

# interfaces
.implements Lcom/htc/music/util/MusicUtils$Defs;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;
    }
.end annotation


# static fields
.field public static final ACTION_SILDER_STATE:Ljava/lang/String; = "com.htc.launcher.ThemeChooser.action.silder_change"

.field private static final ADD_PLAYLIST:J = -0x4L

.field private static final ALL_SONGS_PLAYLIST:I = -0x2

.field private static final CHANGE_WEEKS:I = 0x1b

.field private static final DELETE_CURRENT_PLAYLIST:I = 0x18

.field private static final DELETE_PLAYLISTS:I = 0x1f

.field public static final DIALOG_FOR_LONG_PRESS:I = 0x0

.field private static final EDIT_PLAYLIST:I = 0x19

.field public static final EXTRA_SILDER_STATE:Ljava/lang/String; = "silder_state"

.field private static final FINISH_DELAY:I = 0x64

.field public static final LAUNCH_ADD_TO_PLAYLIST:Ljava/lang/String; = "com.htc.music.add_to_playlist"

.field private static final NEW_PLAYLIST:I = 0x1e

.field private static final PLAYLIST_DEFAULT_SORT_ORDER:Ljava/lang/String; = "name COLLATE NOCASE ASC"

.field private static final RECENT_PLAYLIST:I = -0x5

.field private static final RENAME_PLAYLIST:I = 0x1a

.field private static final SELECT_ALL:I = 0x1c

.field private static final TAG:Ljava/lang/String; = "[PlaylistBrowserActivity]"

.field private static final UNSELECT_ALL:I = 0x1d


# instance fields
.field handler:Landroid/os/Handler;

.field private list:[I

.field private mAdapter:Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;

.field mAdapterSent:Z

.field private mAddPlaylistBtnListener:Landroid/view/View$OnClickListener;

.field private mAddToPlaylistData:[I

.field mAsyncQuerying:Z

.field mCols:[Ljava/lang/String;

.field private mCreateShortcut:Z

.field private mDelayFinishHandler:Landroid/os/Handler;

.field private mDelaySearchHandler:Landroid/os/Handler;

.field private mExitByErrorIntent:Z

.field private mFilter:Ljava/lang/String;

.field private mHeaderCount:I

.field mLowerSearchFilter:Ljava/lang/String;

.field private mPickerMode:I

.field private mPlaylistCursor:Landroid/database/Cursor;

.field private mPlaylistList:Lcom/htc/widget/HtcListView;

.field private mReScanHandler:Landroid/os/Handler;

.field private mRecentPlayedPos:I

.field private mScanListener:Landroid/content/BroadcastReceiver;

.field private mSelectedId:J

.field menuOpened:Z

.field private preSearchTime:J


# direct methods
.method public constructor <init>()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/htc/music/widget/MusicListActivity;-><init>()V

    iput-boolean v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mCreateShortcut:Z

    iput-boolean v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mExitByErrorIntent:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mRecentPlayedPos:I

    new-instance v0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$2;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$2;-><init>(Lcom/htc/music/browserlayer/PlaylistBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$3;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$3;-><init>(Lcom/htc/music/browserlayer/PlaylistBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    iput-boolean v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->menuOpened:Z

    new-instance v0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$4;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$4;-><init>(Lcom/htc/music/browserlayer/PlaylistBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mDelayFinishHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "name"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mCols:[Ljava/lang/String;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->handler:Landroid/os/Handler;

    iput-object v4, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mAddToPlaylistData:[I

    iput v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mHeaderCount:I

    iput-object v4, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mLowerSearchFilter:Ljava/lang/String;

    iput-object v4, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mFilter:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->preSearchTime:J

    new-instance v0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$9;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$9;-><init>(Lcom/htc/music/browserlayer/PlaylistBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mDelaySearchHandler:Landroid/os/Handler;

    iput-boolean v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mAsyncQuerying:Z

    new-instance v0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$11;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$11;-><init>(Lcom/htc/music/browserlayer/PlaylistBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mAddPlaylistBtnListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/music/browserlayer/PlaylistBrowserActivity;)[I
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->list:[I

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/music/browserlayer/PlaylistBrowserActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mDelayFinishHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/music/browserlayer/PlaylistBrowserActivity;)I
    .locals 1

    iget v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mHeaderCount:I

    return v0
.end method

.method static synthetic access$1100(Lcom/htc/music/browserlayer/PlaylistBrowserActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mFilter:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/music/browserlayer/PlaylistBrowserActivity;)Landroid/database/Cursor;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/htc/music/browserlayer/PlaylistBrowserActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0

    iput-object p1, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/htc/music/browserlayer/PlaylistBrowserActivity;)J
    .locals 2

    iget-wide v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->preSearchTime:J

    return-wide v0
.end method

.method static synthetic access$1400(Lcom/htc/music/browserlayer/PlaylistBrowserActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->createNewPlaylist()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/music/browserlayer/PlaylistBrowserActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/music/browserlayer/PlaylistBrowserActivity;)Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/music/browserlayer/PlaylistBrowserActivity;Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->getPlaylistCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/music/browserlayer/PlaylistBrowserActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->dialog_OnClick_Local(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/music/browserlayer/PlaylistBrowserActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->dialog_OnClick_Dlna(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/htc/music/browserlayer/PlaylistBrowserActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 1

    invoke-direct {p0, p1}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mergedCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/music/browserlayer/PlaylistBrowserActivity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->getMarkedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private applyMenuStatus(Landroid/view/Menu;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/widget/HtcListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v3

    const/16 v5, 0x1d

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const/4 v0, 0x0

    if-eqz v3, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v5

    if-ge v1, v5, :cond_1

    invoke-virtual {v3, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    if-lez v0, :cond_4

    invoke-interface {v2, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/widget/HtcListView;->getCount()I

    move-result v4

    const/16 v5, 0x1c

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    if-eqz v2, :cond_3

    if-ne v0, v4, :cond_5

    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_3
    :goto_2
    return-void

    :cond_4
    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_5
    invoke-interface {v2, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_2
.end method

.method private checkPlaylistCount()I
    .locals 8

    const/4 v3, 0x0

    const/4 v6, 0x0

    sget-object v1, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "limit"

    const-string v4, "1"

    invoke-virtual {v0, v2, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mCols:[Ljava/lang/String;

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    :cond_0
    return v6
.end method

.method private createNewPlaylist()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v2, Lcom/htc/music/browserlayer/EditPlaylistActivity;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget v2, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mPickerMode:I

    if-nez v2, :cond_0

    const-string v2, "addtrack"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    iget-object v2, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    iget-boolean v2, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mCreateShortcut:Z

    if-eqz v2, :cond_1

    if-lez v1, :cond_1

    add-int/lit8 v1, v1, -0x1

    :cond_1
    iget v2, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mRecentPlayedPos:I

    if-ltz v2, :cond_2

    add-int/lit8 v1, v1, -0x1

    :cond_2
    const-string v2, "playlistcount"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_3
    iget-object v2, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mAddToPlaylistData:[I

    if-eqz v2, :cond_4

    const-string v2, "AddToPlaylistData"

    iget-object v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mAddToPlaylistData:[I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    :cond_4
    const/16 v2, 0x1e

    invoke-virtual {p0, v0, v2}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private dialog_OnClick_Dlna(I)V
    .locals 9

    const/4 v5, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-wide v4, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mSelectedId:J

    const-wide/16 v6, -0x4

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    iget-wide v4, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mSelectedId:J

    const-wide/16 v6, -0x5

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    :try_start_0
    sget-object v4, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/htc/music/IMediaPlaybackService;->getRecentPlayedPlaylist()[I

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {p0, v4, v5, v6}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;[IILcom/htc/music/NpCategory;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v4, "[PlaylistBrowserActivity]"

    const-string v5, "Exception when playing recent played list."

    invoke-static {v4, v5, v0}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    new-instance v4, Lcom/htc/music/NpCategory;

    const/16 v5, 0x14

    invoke-direct {v4, v5}, Lcom/htc/music/NpCategory;-><init>(S)V

    iget-wide v5, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mSelectedId:J

    long-to-int v5, v5

    invoke-virtual {v4, v5}, Lcom/htc/music/NpCategory;->setPlaylistId(I)Lcom/htc/music/NpCategory;

    move-result-object v2

    iget-wide v4, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mSelectedId:J

    invoke-static {p0, v4, v5, v2}, Lcom/htc/music/util/MusicUtils;->playPlaylist(Landroid/content/Context;JLcom/htc/music/NpCategory;)Z

    goto :goto_0

    :pswitch_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-class v4, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;

    invoke-virtual {v1, p0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v4, "pickermode"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v1, v5}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :pswitch_2
    sget-object v4, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-wide v5, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mSelectedId:J

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v3, v7, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    const v4, 0x7f070033

    invoke-static {p0, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    iget-object v4, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;

    invoke-virtual {v4}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v4

    invoke-direct {p0, v4, v7}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->getPlaylistCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    goto :goto_0

    :pswitch_3
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-class v4, Lcom/htc/music/browserlayer/EditPlaylistActivity;

    invoke-virtual {v1, p0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v4, "playlist"

    iget-wide v5, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mSelectedId:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v4, 0x19

    invoke-virtual {p0, v1, v4}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private dialog_OnClick_Local(I)V
    .locals 10

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-wide v5, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mSelectedId:J

    const-wide/16 v7, -0x4

    cmp-long v5, v5, v7

    if-eqz v5, :cond_0

    iget-wide v5, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mSelectedId:J

    const-wide/16 v7, -0x5

    cmp-long v5, v5, v7

    if-nez v5, :cond_1

    :try_start_0
    sget-object v5, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v5}, Lcom/htc/music/IMediaPlaybackService;->getRecentPlayedPlaylist()[I

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {p0, v5, v6, v7}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;[IILcom/htc/music/NpCategory;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v5, "[PlaylistBrowserActivity]"

    const-string v6, "Exception when playing recent played list."

    invoke-static {v5, v6, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    new-instance v5, Lcom/htc/music/NpCategory;

    const/16 v6, 0x14

    invoke-direct {v5, v6}, Lcom/htc/music/NpCategory;-><init>(S)V

    iget-wide v6, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mSelectedId:J

    long-to-int v6, v6

    invoke-virtual {v5, v6}, Lcom/htc/music/NpCategory;->setPlaylistId(I)Lcom/htc/music/NpCategory;

    move-result-object v3

    iget-wide v5, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mSelectedId:J

    invoke-static {p0, v5, v6, v3}, Lcom/htc/music/util/MusicUtils;->playPlaylist(Landroid/content/Context;JLcom/htc/music/NpCategory;)Z

    goto :goto_0

    :pswitch_1
    iget-wide v5, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mSelectedId:J

    invoke-static {p0, v5, v6}, Lcom/htc/music/util/MusicUtils;->getSongListForPlaylist(Landroid/content/Context;J)[I

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-class v5, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;

    invoke-virtual {v2, p0, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v5, "pickermode"

    invoke-virtual {v2, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v5, "AddToPlaylistData"

    invoke-virtual {v2, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    invoke-virtual {p0, v2, v7}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :pswitch_2
    :try_start_1
    sget-object v5, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v6, 0x3

    iget-wide v7, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mSelectedId:J

    long-to-int v7, v7

    invoke-interface {v5, v6, v7}, Lcom/htc/music/IMediaPlaybackService;->addToQueue(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v5, "[PlaylistBrowserActivity]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ADD_TO_QUEUE, long click playlist item, RemoteException e: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    sget-object v5, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-wide v6, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mSelectedId:J

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v4, v8, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    const v5, 0x7f070033

    invoke-static {p0, v5, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    iget-object v5, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;

    invoke-virtual {v5}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v5

    invoke-direct {p0, v5, v8}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->getPlaylistCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    goto/16 :goto_0

    :pswitch_4
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-class v5, Lcom/htc/music/browserlayer/EditPlaylistActivity;

    invoke-virtual {v2, p0, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v5, "playlist"

    iget-wide v6, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mSelectedId:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v5, 0x19

    invoke-virtual {p0, v2, v5}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private getPlaylistCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 13

    const/16 v3, 0x25

    const/4 v1, 0x0

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "name != \'\'"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    if-eqz p2, :cond_1

    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    array-length v0, v11

    new-array v6, v0, [Ljava/lang/String;

    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/text/Collator;->setStrength(I)V

    const/4 v10, 0x0

    :goto_0
    array-length v0, v11

    if-ge v10, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v2, v11, v10

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    :goto_1
    array-length v0, v11

    if-ge v10, v0, :cond_1

    const-string v0, " AND "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "name LIKE ?"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mAsyncQuerying:Z

    const/4 v2, 0x0

    sget-object v3, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mCols:[Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "name COLLATE NOCASE ASC"

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-object v9

    :cond_2
    iput-boolean v1, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mAsyncQuerying:Z

    sget-object v3, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mCols:[Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "name COLLATE NOCASE ASC"

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mergedCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v9

    goto :goto_2
.end method

.method private mergedCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    :goto_0
    return-object p1

    :cond_0
    instance-of v5, p1, Landroid/database/MergeCursor;

    if-eqz v5, :cond_1

    const-string v5, "PlaylistBrowserActivity"

    const-string v6, "Already wrapped"

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-boolean v5, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mCreateShortcut:Z

    if-eqz v5, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v5, -0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v5, 0x7f070009

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    iget v5, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mPickerMode:I

    if-nez v5, :cond_3

    iget-boolean v5, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mCreateShortcut:Z

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mAddToPlaylistData:[I

    if-nez v5, :cond_3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v5, -0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v5, 0x7f070102

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput v7, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mRecentPlayedPos:I

    :cond_3
    new-instance v3, Lcom/htc/music/util/ArrayListCursor;

    iget-object v5, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mCols:[Ljava/lang/String;

    invoke-direct {v3, v5, v2}, Lcom/htc/music/util/ArrayListCursor;-><init>([Ljava/lang/String;Ljava/util/ArrayList;)V

    new-instance v1, Landroid/database/MergeCursor;

    new-array v5, v6, [Landroid/database/Cursor;

    aput-object v3, v5, v7

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-direct {v1, v5}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    move-object p1, v1

    goto :goto_0
.end method

.method private playPodcasts()V
    .locals 10

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v1

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v3, "is_podcast=1"

    const-string v5, "title_key"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-nez v6, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v8

    new-array v9, v8, [I

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v8, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    aput v0, v9, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v9, v0, v1}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;[IILcom/htc/music/NpCategory;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method private playRecentlyAdded()V
    .locals 15

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v0, "numweeks"

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Lcom/htc/music/util/MusicUtils;->getIntPref(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const v1, 0x93a80

    mul-int v6, v0, v1

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "date_added>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    const-wide/16 v13, 0x3e8

    div-long/2addr v11, v13

    int-to-long v13, v6

    sub-long/2addr v11, v13

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v5, "title_key"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-nez v7, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v9

    new-array v10, v9, [I

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v9, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    aput v0, v10, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v10, v0, v1}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;[IILcom/htc/music/NpCategory;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    :catch_0
    move-exception v0

    goto :goto_2
.end method


# virtual methods
.method public categoryRightAction()Z
    .locals 2

    new-instance v0, Lcom/htc/music/NpCategory;

    const/16 v1, 0x16

    invoke-direct {v0, v1}, Lcom/htc/music/NpCategory;-><init>(S)V

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/htc/music/util/MusicUtils;->playAllPlaylist(Landroid/content/Context;ZLcom/htc/music/NpCategory;)V

    const/4 v1, 0x1

    return v1
.end method

.method public finish()V
    .locals 2

    const-string v0, "[PlaylistBrowserActivity]"

    const-string v1, "somebody called finish??"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/htc/music/widget/MusicListActivity;->finish()V

    return-void
.end method

.method public finishactivity()V
    .locals 4

    iget-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$8;

    invoke-direct {v1, p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$8;-><init>(Lcom/htc/music/browserlayer/PlaylistBrowserActivity;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method getPickerMode()J
    .locals 2

    iget v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mPickerMode:I

    int-to-long v0, v0

    return-wide v0
.end method

.method protected hideSearchBar()V
    .locals 4

    invoke-super {p0}, Lcom/htc/music/widget/MusicListActivity;->hideSearchBar()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->preSearchTime:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mFilter:Ljava/lang/String;

    iget-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mDelaySearchHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public init(Landroid/database/Cursor;)V
    .locals 4

    iget-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mPlaylistList:Lcom/htc/widget/HtcListView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mPlaylistList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0}, Lcom/htc/widget/HtcListView;->clearChoices()V

    :cond_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;

    invoke-virtual {v0, p1}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;->changeCursor(Landroid/database/Cursor;)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->setTitle()V

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->showDatabaseError()V

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->closeContextMenu()V

    iget-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_3

    iget v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mHeaderCount:I

    if-nez v0, :cond_3

    const v0, 0x7f07002c

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->showEmptyView(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->setCategoryRightBtn(Z)V

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->setTitle()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->updateButtonCounter()V

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->hideEmptyErrorView()V

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->setTitle()V

    goto :goto_0
.end method

.method initButtonsPanel()V
    .locals 6

    iget v4, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mPickerMode:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    iget v4, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mPickerMode:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    :cond_0
    const v4, 0x7f080093

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewStub;

    invoke-virtual {v3}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v2

    const v4, 0x7f08003e

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcFooterButton;

    const v4, 0x20c0130

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcFooterButton;->setText(Ljava/lang/CharSequence;)V

    new-instance v4, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$6;

    invoke-direct {v4, p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$6;-><init>(Lcom/htc/music/browserlayer/PlaylistBrowserActivity;)V

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v4, 0x7f08003d

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcFooterButton;

    const v4, 0x20c013d

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    new-instance v4, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$7;

    invoke-direct {v4, p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$7;-><init>(Lcom/htc/music/browserlayer/PlaylistBrowserActivity;)V

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->updateButtonCounter()V

    return-void
.end method

.method isAsyncQuerying()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mAsyncQuerying:Z

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, -0x1

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    if-nez p2, :cond_1

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->finish()V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;

    invoke-virtual {v3}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v3

    invoke-direct {p0, v3, v4}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->getPlaylistCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    goto :goto_0

    :sswitch_1
    if-ne p2, v3, :cond_0

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->setTitle()V

    goto :goto_0

    :sswitch_2
    if-ne p2, v3, :cond_0

    iget-wide v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mSelectedId:J

    invoke-static {p0, v3, v4}, Lcom/htc/music/util/MusicUtils;->getSongListForPlaylist(Landroid/content/Context;J)[I

    move-result-object v0

    const-string v3, "playlist"

    const/4 v4, 0x0

    invoke-virtual {p3, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    int-to-long v3, v1

    invoke-static {p0, v0, v3, v4}, Lcom/htc/music/util/MusicUtils;->addToPlaylist(Landroid/content/Context;[IJ)V

    goto :goto_0

    :sswitch_3
    if-ne p2, v3, :cond_0

    const-string v3, "selectedlist"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/music/util/MusicUtils;->toIntList(Ljava/util/ArrayList;)[I

    move-result-object v0

    invoke-static {p0, v0}, Lcom/htc/music/util/MusicUtils;->deletePlaylists(Landroid/content/Context;[I)V

    iget-object v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;

    invoke-virtual {v3}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v3

    invoke-direct {p0, v3, v4}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->getPlaylistCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    :cond_2
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->setTitle()V

    goto :goto_0

    :sswitch_4
    if-ne p2, v3, :cond_0

    goto :goto_0

    :sswitch_5
    if-ne p2, v3, :cond_0

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0xb -> :sswitch_0
        0x19 -> :sswitch_4
        0x1a -> :sswitch_5
        0x1e -> :sswitch_1
        0x1f -> :sswitch_3
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13

    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicListActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v0, "android.intent.action.CREATE_SHORTCUT"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mCreateShortcut:Z

    :cond_0
    if-eqz p1, :cond_6

    const-string v0, "pickermode"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mPickerMode:I

    const-string v0, "AddToPlaylistData"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mAddToPlaylistData:[I

    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->requestWindowFeature(I)Z

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->setVolumeControlStream(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mExitByErrorIntent:Z

    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v10, -0x1

    :try_start_0
    invoke-virtual {v11}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "playlist"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v10

    const/4 v0, -0x2

    if-ne v10, v0, :cond_1

    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->getAllSongsAndPrepare(Landroid/content/Context;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->list:[I

    iget-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->list:[I

    if-nez v0, :cond_1

    const v0, 0x7f070055

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->finish()V

    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$1;

    invoke-direct {v2, p0, v7, v11}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$1;-><init>(Lcom/htc/music/browserlayer/PlaylistBrowserActivity;Ljava/lang/String;Landroid/content/Intent;)V

    invoke-static {v0, v1, v2}, Lcom/htc/music/util/MusicUtils;->bindToService(Landroid/content/Context;Ljava/lang/String;Landroid/content/ServiceConnection;)Z

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

    iget-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, v9}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const v0, 0x7f03002b

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mPlaylistList:Lcom/htc/widget/HtcListView;

    iget-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mPlaylistList:Lcom/htc/widget/HtcListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setTextFilterEnabled(Z)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mPlaylistList:Lcom/htc/widget/HtcListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setFastScrollEnabled(Z)V

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->getPickerMode()J

    move-result-wide v0

    const-wide/16 v2, 0x2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->getPickerMode()J

    move-result-wide v0

    const-wide/16 v2, 0x3

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mPlaylistList:Lcom/htc/widget/HtcListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setChoiceMode(I)V

    :cond_3
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;

    iput-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;

    iget-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;

    if-nez v0, :cond_7

    new-instance v0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const v3, 0x7f030014

    iget-object v4, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v6, "name"

    aput-object v6, v5, v2

    const/4 v2, 0x1

    new-array v6, v2, [I

    const/4 v2, 0x0

    const v12, 0x1020014

    aput v12, v6, v2

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;-><init>(Landroid/content/Context;Lcom/htc/music/browserlayer/PlaylistBrowserActivity;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;

    iget-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->setTitle()V

    iget-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->getPlaylistCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    :goto_1
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->initButtonsPanel()V

    const v0, 0x7f07009f

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->setSearchHint(I)V

    iget v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mPickerMode:I

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mCreateShortcut:Z

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->enableSearch()V

    :cond_4
    iget v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mPickerMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    invoke-direct {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->checkPlaylistCount()I

    move-result v0

    if-nez v0, :cond_5

    invoke-direct {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->createNewPlaylist()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->finish()V

    :cond_5
    :goto_2
    return-void

    :cond_6
    const-string v0, "pickermode"

    const/4 v1, 0x0

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mPickerMode:I

    const-string v0, "AddToPlaylistData"

    invoke-virtual {v11, v0}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mAddToPlaylistData:[I

    goto/16 :goto_0

    :catch_0
    move-exception v8

    invoke-virtual {v8}, Ljava/lang/NullPointerException;->printStackTrace()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mExitByErrorIntent:Z

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->finish()V

    goto :goto_2

    :catch_1
    move-exception v8

    invoke-virtual {v8}, Ljava/lang/NumberFormatException;->printStackTrace()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mExitByErrorIntent:Z

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->finish()V

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;

    invoke-virtual {v0, p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;->setActivity(Lcom/htc/music/browserlayer/PlaylistBrowserActivity;)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    iget-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->init(Landroid/database/Cursor;)V

    goto :goto_1

    :cond_8
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->setTitle()V

    iget-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->getPlaylistCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    goto :goto_1
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 13

    const/4 v12, 0x3

    const/4 v11, 0x2

    const v10, 0x7f07004e

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, p0

    :cond_0
    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicListActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v4

    :goto_0
    return-object v4

    :pswitch_0
    iget-object v4, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    iget-object v5, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    const-string v6, "name"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-wide v4, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mSelectedId:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gez v4, :cond_1

    new-array v2, v9, [Ljava/lang/CharSequence;

    invoke-virtual {p0, v10}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v8

    :goto_1
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$5;

    invoke-direct {v5, p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$5;-><init>(Lcom/htc/music/browserlayer/PlaylistBrowserActivity;)V

    invoke-virtual {v4, v2, v5}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/htc/music/util/MusicUtils;->CheckDLNAStatus(Landroid/content/Context;)I

    move-result v1

    if-nez v1, :cond_2

    const/4 v4, 0x5

    new-array v2, v4, [Ljava/lang/CharSequence;

    invoke-virtual {p0, v10}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v8

    const v4, 0x7f07004f

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v9

    const v4, 0x7f070050

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v11

    const v4, 0x7f07008f

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v12

    const/4 v4, 0x4

    const v5, 0x7f070094

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    goto :goto_1

    :cond_2
    const/4 v4, 0x4

    new-array v2, v4, [Ljava/lang/CharSequence;

    invoke-virtual {p0, v10}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v8

    const v4, 0x7f07004f

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v9

    const v4, 0x7f07008f

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v11

    const v4, 0x7f070094

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v12

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->getPickerMode()J

    move-result-wide v0

    const-wide/16 v2, 0x2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->getPickerMode()J

    move-result-wide v0

    const-wide/16 v2, 0x3

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    :cond_0
    const/16 v0, 0x1c

    const v1, 0x20c013a

    invoke-interface {p1, v4, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080334

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/16 v0, 0x1d

    const v1, 0x20c013b

    invoke-interface {p1, v4, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x208033c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    :cond_2
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mCreateShortcut:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mPickerMode:I

    if-nez v0, :cond_1

    const/16 v0, 0x1e

    const v1, 0x7f07008d

    invoke-interface {p1, v4, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x20809c0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/16 v0, 0x1f

    const v1, 0x7f07008e

    invoke-interface {p1, v4, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080323

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/16 v0, 0x9

    const v1, 0x7f070008

    invoke-interface {p1, v4, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080a7e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/16 v0, 0xc

    const v1, 0x7f070009

    invoke-interface {p1, v4, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080a49

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    invoke-static {}, Lcom/htc/music/util/CustomizeSetting;->isSupportListenStore()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x16

    const v1, 0x20c0200

    invoke-interface {p1, v4, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080336

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mDelaySearchHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-boolean v1, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mExitByErrorIntent:Z

    if-eqz v1, :cond_0

    invoke-super {p0}, Lcom/htc/music/widget/MusicListActivity;->onDestroy()V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/MusicUtils;->unbindFromService(Landroid/content/Context;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mAdapterSent:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;

    invoke-virtual {v1}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    iput-object v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;

    invoke-super {p0}, Lcom/htc/music/widget/MusicListActivity;->onDestroy()V

    goto :goto_0
.end method

.method protected onListItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 8

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->getPickerMode()J

    move-result-wide v4

    const-wide/16 v6, 0x2

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->getPickerMode()J

    move-result-wide v4

    const-wide/16 v6, 0x3

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->updateButtonCounter()V

    :goto_0
    return-void

    :cond_1
    if-nez p3, :cond_2

    iget v4, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mHeaderCount:I

    if-lez v4, :cond_2

    invoke-direct {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->createNewPlaylist()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->getPickerMode()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v4, "playlist"

    long-to-int v5, p4

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v4, -0x1

    invoke-virtual {p0, v4, v0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->finish()V

    goto :goto_0

    :cond_3
    iget-boolean v4, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mCreateShortcut:Z

    if-eqz v4, :cond_4

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v4, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v5, "com.htc.media/playlist"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "playlist"

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v4, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v5, "android.intent.extra.shortcut.NAME"

    const v4, 0x7f080043

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v4}, Lcom/htc/widget/HtcListItem2LineText;->getPrimaryText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "android.intent.extra.shortcut.ICON_RESOURCE"

    const v5, 0x7f02003d

    invoke-static {p0, v5}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v4, -0x1

    invoke-virtual {p0, v4, v0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->setResult(ILandroid/content/Intent;)V

    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.htc.launcher.ThemeChooser.action.silder_change"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "silder_state"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->sendBroadcast(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->finishactivity()V

    goto/16 :goto_0

    :cond_4
    iget v4, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mPickerMode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_5

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    long-to-int v2, p4

    const-string v4, "playlist_id"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v4, -0x1

    invoke-virtual {p0, v4, v0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->finish()V

    goto/16 :goto_0

    :cond_5
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.PICK"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v4, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v5, "com.htc.media/track"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "playlist"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "isrecentplayedplaylist"

    iget v4, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mRecentPlayedPos:I

    if-ne p3, v4, :cond_6

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_6
    const/4 v4, 0x0

    goto :goto_1
.end method

.method protected onListItemLongClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)Z
    .locals 7

    const/4 v2, 0x1

    const-wide/16 v5, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-boolean v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mCreateShortcut:Z

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->getPickerMode()J

    move-result-wide v3

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mHeaderCount:I

    if-lez v3, :cond_0

    if-nez p3, :cond_0

    :goto_0
    return v1

    :cond_0
    iget-wide v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mSelectedId:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_3

    move v3, v2

    :goto_1
    cmp-long v4, p4, v5

    if-gez v4, :cond_4

    :goto_2
    if-eq v3, v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->removeDialog(I)V

    :cond_1
    iput-wide p4, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mSelectedId:J

    iget-object v2, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    iget v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mHeaderCount:I

    sub-int v3, p3, v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->showDialog(I)V

    const/4 v0, 0x1

    :cond_2
    move v1, v0

    goto :goto_0

    :cond_3
    move v3, v1

    goto :goto_1

    :cond_4
    move v2, v1

    goto :goto_2
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->menuOpened:Z

    invoke-direct {p0, p2}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->applyMenuStatus(Landroid/view/Menu;)V

    invoke-super {p0, p1, p2}, Lcom/htc/music/widget/MusicListActivity;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7

    const/4 v3, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    :goto_0
    return v3

    :sswitch_0
    invoke-direct {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->createNewPlaylist()V

    goto :goto_0

    :sswitch_1
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->SetDLNASuffleMode(Landroid/content/Context;)V

    new-instance v4, Lcom/htc/music/NpCategory;

    const/16 v5, 0x16

    invoke-direct {v4, v5}, Lcom/htc/music/NpCategory;-><init>(S)V

    invoke-static {p0, v3, v4}, Lcom/htc/music/util/MusicUtils;->playAllPlaylist(Landroid/content/Context;ZLcom/htc/music/NpCategory;)V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->categoryRightAction()Z

    goto :goto_0

    :sswitch_3
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-class v4, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;

    invoke-virtual {v1, p0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v4, "pickermode"

    const/4 v5, 0x3

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v4, 0x1f

    invoke-virtual {p0, v1, v4}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :sswitch_4
    const/4 v0, 0x0

    :goto_1
    iget-object v4, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-ge v0, v4, :cond_0

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v4

    invoke-virtual {v4, v0, v3}, Lcom/htc/widget/HtcListView;->setItemChecked(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->updateButtonCounter()V

    goto :goto_0

    :sswitch_5
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/widget/HtcListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v2

    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v4

    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/htc/widget/HtcListView;->setItemChecked(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->updateButtonCounter()V

    goto :goto_0

    :sswitch_6
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.htc.music.settings.Listen_Online_Setting"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v4, -0x2

    invoke-virtual {p0, v1, v4}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_1
        0xc -> :sswitch_2
        0x16 -> :sswitch_6
        0x1c -> :sswitch_4
        0x1d -> :sswitch_5
        0x1e -> :sswitch_0
        0x1f -> :sswitch_3
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mDelaySearchHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-super {p0}, Lcom/htc/music/widget/MusicListActivity;->onPause()V

    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 4

    invoke-super {p0, p1, p2}, Lcom/htc/music/widget/MusicListActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    const-string v3, "name"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast p2, Landroid/app/AlertDialog;

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 6

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x0

    iget-object v5, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v2

    iget v5, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mRecentPlayedPos:I

    if-ltz v5, :cond_0

    add-int/lit8 v2, v2, -0x1

    :cond_0
    if-lez v2, :cond_9

    move v0, v3

    :cond_1
    :goto_0
    const/16 v5, 0x1c

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_2
    const/16 v5, 0x1d

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_3
    const/16 v5, 0x1e

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v5, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    if-eqz v5, :cond_a

    :goto_1
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_4
    const/16 v3, 0x1f

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_5
    const/16 v3, 0x9

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_6
    const/16 v3, 0xc

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_7
    const/16 v3, 0x16

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_8
    invoke-direct {p0, p1}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->applyMenuStatus(Landroid/view/Menu;)V

    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v3

    return v3

    :cond_9
    move v0, v4

    goto :goto_0

    :cond_a
    move v3, v4

    goto :goto_1
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/htc/music/widget/MusicListActivity;->onResume()V

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->setTitle()V

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->isAsyncQuerying()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->isMediaScannerScanning(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->showSpinner(Z)V

    :cond_1
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mAdapterSent:Z

    return-object v0
.end method

.method public onSaveClick()V
    .locals 10

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->getPickerMode()J

    move-result-wide v6

    const-wide/16 v8, 0x2

    cmp-long v6, v6, v8

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->getPickerMode()J

    move-result-wide v6

    const-wide/16 v8, 0x3

    cmp-long v6, v6, v8

    if-nez v6, :cond_3

    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/widget/HtcListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v4

    iget-object v6, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    const-string v7, "_id"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->size()I

    move-result v6

    if-ge v0, v6, :cond_2

    invoke-virtual {v4, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    invoke-virtual {v4, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v7

    iget v8, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mHeaderCount:I

    sub-int/2addr v7, v8

    invoke-interface {v6, v7}, Landroid/database/Cursor;->moveToPosition(I)Z

    iget-object v6, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    long-to-int v1, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v6, "selectedlist"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const/4 v6, -0x1

    invoke-virtual {p0, v6, v3}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->setResult(ILandroid/content/Intent;)V

    :cond_3
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->finish()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "pickermode"

    iget v1, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mPickerMode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "AddToPlaylistData"

    iget-object v1, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mAddToPlaylistData:[I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSearch(Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->preSearchTime:J

    iput-object p1, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mFilter:Ljava/lang/String;

    iget-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mDelaySearchHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method protected setCategoryRightBtn(Z)V
    .locals 10

    const v9, 0x7f07005f

    const v8, 0x208087b

    const/4 v7, 0x1

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    const/4 v5, 0x1

    :cond_0
    iput v5, p0, Lcom/htc/music/widget/MusicMaActivity;->mEnableRightBtn:I

    iget-boolean v6, p0, Lcom/htc/music/widget/MusicListActivity;->mActivityPaused:Z

    if-eqz v6, :cond_2

    const-string v6, "[PlaylistBrowserActivity]"

    const-string v7, "activity is paused, do not set category right button status"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v4

    instance-of v6, v4, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;

    if-eqz v6, :cond_1

    move-object v3, v4

    check-cast v3, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;

    if-eqz p1, :cond_3

    invoke-virtual {v3, v7}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setCategoryRightBtnEnable(Z)V

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v6, 0xff

    invoke-virtual {v1, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setCategoryRightBtnImage(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    new-instance v6, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$10;

    invoke-direct {v6, p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$10;-><init>(Lcom/htc/music/browserlayer/PlaylistBrowserActivity;)V

    invoke-virtual {v3, v6}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setCategoryRightBtnOnClick(Landroid/view/View$OnClickListener;)V

    :goto_1
    invoke-virtual {v3, v7}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setCategoryRightBtnVisible(Z)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v6, 0x6e

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setCategoryRightBtnEnable(Z)V

    invoke-virtual {v3, v0, v2}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setCategoryRightBtnImage(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setCheckedView(Landroid/view/View;JZ)V
    .locals 4

    const-wide/16 v2, 0x2

    const v1, 0x7f080045

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListItemImageButton;

    const/4 v1, 0x1

    if-ne p4, v1, :cond_1

    cmp-long v1, p2, v2

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "common_checkbox_on"

    const v3, 0x208019f

    invoke-static {v1, v2, v3}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItemImageButton;->setImageResource(I)V

    :goto_1
    invoke-virtual {v0}, Lcom/htc/widget/HtcListItemImageButton;->invalidate()V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "common_delete_on"

    const v3, 0x20801aa

    invoke-static {v1, v2, v3}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    goto :goto_0

    :cond_1
    cmp-long v1, p2, v2

    if-nez v1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "common_checkbox_off"

    const v3, 0x208019d

    invoke-static {v1, v2, v3}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    :goto_2
    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItemImageButton;->setImageResource(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "common_delete_off"

    const v3, 0x20801a8

    invoke-static {v1, v2, v3}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    goto :goto_2
.end method

.method setTitle()V
    .locals 4

    iget v1, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mPickerMode:I

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mCreateShortcut:Z

    if-eqz v1, :cond_2

    :cond_0
    const v1, 0x7f070069

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget v1, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mPickerMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mCreateShortcut:Z

    if-eqz v1, :cond_3

    :cond_1
    const v1, 0x208087b

    const v2, 0x7f07005f

    iget-object v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mAddPlaylistBtnListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->setTitle(Ljava/lang/String;IILandroid/view/View$OnClickListener;)V

    :goto_1
    return-void

    :cond_2
    const v1, 0x7f070021

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->setTitle(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public showDatabaseError()V
    .locals 8

    const/4 v7, 0x0

    invoke-super {p0}, Lcom/htc/music/widget/MusicListActivity;->showDatabaseError()V

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v5, "ShowActivityTitle"

    const/4 v6, 0x1

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    const v5, 0x7f08003f

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_0

    const v5, 0x7f080040

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HeaderBarImage;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x208087b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v5, 0x6e

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-virtual {v1, v0}, Lcom/htc/widget/HeaderBarImage;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v7}, Lcom/htc/widget/HeaderBarImage;->setEnabled(Z)V

    invoke-virtual {v1, v7}, Lcom/htc/widget/HeaderBarImage;->setFocusable(Z)V

    invoke-virtual {v1, v7}, Lcom/htc/widget/HeaderBarImage;->setClickable(Z)V

    :cond_0
    return-void
.end method

.method updateButtonCounter()V
    .locals 11

    const/4 v10, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget v7, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mPickerMode:I

    if-eq v7, v10, :cond_0

    iget v7, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mPickerMode:I

    const/4 v8, 0x3

    if-eq v7, v8, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    iget-object v7, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    if-eqz v7, :cond_2

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/widget/HtcListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v3

    if-eqz v3, :cond_2

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    if-ge v2, v7, :cond_2

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v7

    if-eqz v7, :cond_1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    const v7, 0x7f070054

    invoke-virtual {p0, v7}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v6

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget v7, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mPickerMode:I

    if-ne v7, v10, :cond_3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const v8, 0x7f07005f

    invoke-virtual {p0, v8}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_2
    const v7, 0x7f08003e

    invoke-virtual {p0, v7}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcFooterButton;

    if-lez v1, :cond_4

    :goto_3
    invoke-virtual {v0, v5}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcFooterButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const v8, 0x20c01fc

    invoke-virtual {p0, v8}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_4
    move v5, v6

    goto :goto_3
.end method

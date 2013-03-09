.class public Lcom/htc/music/browserlayer/EditPlaylistActivity;
.super Lcom/htc/music/widget/MusicListActivity;
.source "EditPlaylistActivity.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Lcom/htc/music/util/MusicUtils$Defs;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/browserlayer/EditPlaylistActivity$QueryHandler;,
        Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistItemInfo;,
        Lcom/htc/music/browserlayer/EditPlaylistActivity$EditTextWatcher;,
        Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;,
        Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;
    }
.end annotation


# static fields
.field public static final PLAY_LIST_ID:Ljava/lang/String; = "playlistid"

.field public static final PLAY_LIST_NAME:Ljava/lang/String; = "playlistname"

.field private static TAG:Ljava/lang/String; = null

.field private static final TITLE_DEFAULT_SORT_ORDER:Ljava/lang/String; = "title COLLATE NOCASE ASC"


# instance fields
.field private final ADD_SONGS:I

.field private final SELECT_ALL:I

.field private final UNSELECT_ALL:I

.field private mAdapter:Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;

.field private mAdapterSent:Z

.field private mAddSongsBtnListener:Landroid/view/View$OnClickListener;

.field mAsyncQuerying:Z

.field private mCursorCols:[Ljava/lang/String;

.field private mDropListener:Lcom/htc/widget/HtcReorderListView$DropListener;

.field private mIsAddSongs:Z

.field private mIsDrop:Z

.field public mNewPlaylist:Z

.field private mOriginalPlaylistName:Ljava/lang/String;

.field private mPlayListName:Landroid/widget/AutoCompleteTextView;

.field mPlaylistItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field mPlaylistMemberCols:[Ljava/lang/String;

.field private mQueryHandler:Lcom/htc/music/util/DlArtAsyncQueryHandler;

.field private mScanListener:Landroid/content/BroadcastReceiver;

.field private mSelectedPlaylistId:Ljava/lang/String;

.field private mSortOrder:Ljava/lang/String;

.field private mTrackCursor:Landroid/database/Cursor;

.field private mTrackList:Lcom/htc/widget/HtcListView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "[EditPlaylistActivity]"

    sput-object v0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/htc/music/widget/MusicListActivity;-><init>()V

    const/16 v0, 0x1e

    iput v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->ADD_SONGS:I

    const/16 v0, 0x22

    iput v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->SELECT_ALL:I

    const/16 v0, 0x23

    iput v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->UNSELECT_ALL:I

    iput-boolean v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mAdapterSent:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mPlaylistItemList:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mAsyncQuerying:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mPlaylistMemberCols:[Ljava/lang/String;

    iput-boolean v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mNewPlaylist:Z

    iput-boolean v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mIsDrop:Z

    iput-boolean v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mIsAddSongs:Z

    new-instance v0, Lcom/htc/music/browserlayer/EditPlaylistActivity$1;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/EditPlaylistActivity$1;-><init>(Lcom/htc/music/browserlayer/EditPlaylistActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/htc/music/browserlayer/EditPlaylistActivity$5;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/EditPlaylistActivity$5;-><init>(Lcom/htc/music/browserlayer/EditPlaylistActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mAddSongsBtnListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/htc/music/browserlayer/EditPlaylistActivity$6;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/EditPlaylistActivity$6;-><init>(Lcom/htc/music/browserlayer/EditPlaylistActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mDropListener:Lcom/htc/widget/HtcReorderListView$DropListener;

    return-void
.end method

.method static synthetic access$100(Lcom/htc/music/browserlayer/EditPlaylistActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->setLandscapeIMEbutton()V

    return-void
.end method

.method static synthetic access$1000(Lcom/htc/music/browserlayer/EditPlaylistActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->goToPicker()V

    return-void
.end method

.method static synthetic access$1100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/htc/music/browserlayer/EditPlaylistActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mIsDrop:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/htc/music/browserlayer/EditPlaylistActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/music/widget/MusicListActivity;->mIsEnhancerExist:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/htc/music/browserlayer/EditPlaylistActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->addSong(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/music/browserlayer/EditPlaylistActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 1

    invoke-direct {p0, p1}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->joinAlbumArt(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/music/browserlayer/EditPlaylistActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/music/widget/MusicListActivity;->mIsEnhancerExist:Z

    return v0
.end method

.method static synthetic access$400(Lcom/htc/music/browserlayer/EditPlaylistActivity;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mCursorCols:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/music/browserlayer/EditPlaylistActivity;)Landroid/database/Cursor;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mTrackCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$602(Lcom/htc/music/browserlayer/EditPlaylistActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0

    iput-object p1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mTrackCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$700(Lcom/htc/music/browserlayer/EditPlaylistActivity;)Landroid/database/Cursor;
    .locals 1

    invoke-direct {p0}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->getTrackCursor()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/music/browserlayer/EditPlaylistActivity;Ljava/lang/String;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->getPlaylistId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/htc/music/browserlayer/EditPlaylistActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mSelectedPlaylistId:Ljava/lang/String;

    return-object v0
.end method

.method private addSong(I)V
    .locals 2

    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mPlaylistItemList:Ljava/util/ArrayList;

    new-instance v1, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistItemInfo;

    invoke-direct {v1, p0, p1}, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistItemInfo;-><init>(Lcom/htc/music/browserlayer/EditPlaylistActivity;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private createPlaylist(Ljava/lang/String;)I
    .locals 7

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    :cond_0
    const/4 v0, -0x1

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->getPlaylistId(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x0

    if-ltz v0, :cond_3

    sget-object v4, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    int-to-long v5, v0

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-static {p0, v0}, Lcom/htc/music/util/MusicUtils;->clearPlaylist(Landroid/content/Context;I)V

    goto :goto_0

    :cond_3
    new-instance v3, Landroid/content/ContentValues;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/content/ContentValues;-><init>(I)V

    const-string v4, "name"

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->getPlaylistId(Landroid/net/Uri;)I

    move-result v0

    if-lez v0, :cond_1

    invoke-static {p0}, Lcom/htc/music/util/ShowMeHelper;->notifyCreatePlaylist(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private getCheckedItemCount()I
    .locals 4

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mPlaylistItemList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistItemInfo;

    iget-boolean v3, v2, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistItemInfo;->mChecked:Z

    if-eqz v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private getListCursor()Landroid/database/Cursor;
    .locals 2

    new-instance v0, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;

    iget-object v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mCursorCols:[Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;-><init>(Lcom/htc/music/browserlayer/EditPlaylistActivity;[Ljava/lang/String;)V

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-gtz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method private getPlaylistCursor(Lcom/htc/music/util/DlArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v9, 0x0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mAsyncQuerying:Z

    const-string v0, "title COLLATE NOCASE ASC"

    iput-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mSortOrder:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "title != \'\'"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "play_order"

    iput-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mSortOrder:Ljava/lang/String;

    if-eqz p1, :cond_1

    const-string v0, "external"

    invoke-static {p2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v0, v3, v4}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mPlaylistMemberCols:[Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mSortOrder:Ljava/lang/String;

    move-object v0, p1

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/htc/music/util/DlArtAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x0

    :goto_1
    return-object v9

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    const-string v0, "external"

    invoke-static {p2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v0, v3, v4}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mPlaylistMemberCols:[Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v8, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mSortOrder:Ljava/lang/String;

    move-object v3, p0

    move-object v7, v2

    invoke-static/range {v3 .. v8}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    goto :goto_1
.end method

.method private getPlaylistId(Landroid/net/Uri;)I
    .locals 9

    const/4 v3, 0x0

    const/4 v8, 0x0

    if-nez p1, :cond_1

    const/4 v7, -0x1

    :cond_0
    :goto_0
    return v7

    :cond_1
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v8

    const-string v5, "name"

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    const/4 v7, -0x1

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private getPlaylistId(Ljava/lang/String;)I
    .locals 9

    const/4 v4, 0x1

    const/4 v8, 0x0

    sget-object v1, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v8

    const-string v3, "name=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v8

    const-string v5, "name"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    const/4 v7, -0x1

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const/4 v6, 0x0

    :cond_1
    return v7
.end method

.method private getTrackCursor()Landroid/database/Cursor;
    .locals 2

    const/4 v0, 0x0

    const-string v1, "title COLLATE NOCASE ASC"

    iput-object v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mSortOrder:Ljava/lang/String;

    invoke-direct {p0}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->getListCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->init(Landroid/database/Cursor;)V

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mPlaylistItemList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mAdapter:Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    :cond_1
    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->init(Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method private goToPicker()V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "playlisturi"

    const-string v2, " "

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "pickermode"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "isshowextratabs"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-class v1, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/16 v1, 0x1e

    invoke-virtual {p0, v0, v1}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private joinAlbumArt(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 14

    if-nez p1, :cond_1

    const/4 p1, 0x0

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    instance-of v0, p1, Lcom/htc/music/widget/AlbumArtCursorWrapper;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/htc/music/util/AlbumArtMergeCursor;

    if-nez v0, :cond_0

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
    const/4 p1, 0x0

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

    move-object p1, v0

    goto/16 :goto_0
.end method

.method private nameForId(J)Ljava/lang/String;
    .locals 9

    const/4 v4, 0x1

    const/4 v8, 0x0

    sget-object v1, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v0, "name"

    aput-object v0, v2, v8

    const-string v3, "_id=?"

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    const-string v5, "name"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    const/4 v7, 0x0

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v7
.end method

.method private renamePlaylist(Ljava/lang/String;)Z
    .locals 16

    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_1

    :cond_0
    const/4 v4, 0x0

    :goto_0
    return v4

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v13, Landroid/content/ContentValues;

    const/4 v4, 0x1

    invoke-direct {v13, v4}, Landroid/content/ContentValues;-><init>(I)V

    const-string v4, "name"

    move-object/from16 v0, p1

    invoke-virtual {v13, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v7, "_id=?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mSelectedPlaylistId:Ljava/lang/String;

    invoke-static {v15}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v9, v14

    invoke-virtual {v1, v4, v13, v7, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v4, "content://com.htc.launcher.settings/favorites"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v4, 0x3

    new-array v3, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v7, "_id"

    aput-object v7, v3, v4

    const/4 v4, 0x1

    const-string v7, "title"

    aput-object v7, v3, v4

    const/4 v4, 0x2

    const-string v7, "intent"

    aput-object v7, v3, v4

    const-string v4, "title =?"

    const/4 v7, 0x1

    new-array v5, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mOriginalPlaylistName:Ljava/lang/String;

    aput-object v9, v5, v7

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    if-eqz v10, :cond_4

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_4

    const-string v4, "intent"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    const-string v4, "_id"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    :cond_2
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_3

    :try_start_0
    invoke-interface {v10, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/content/Intent;->getIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v7, "android.intent.action.VIEW"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v8}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    const-string v7, "com.htc.media/playlist"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "playlist"

    invoke-virtual {v8, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    const/4 v7, 0x0

    move-object/from16 v4, p0

    move-object/from16 v9, p1

    invoke-static/range {v4 .. v9}, Lcom/htc/home/RosieItemUtility;->updateIcon(Landroid/content/Context;JLandroid/graphics/Bitmap;Landroid/content/Intent;Ljava/lang/String;)V

    sget-object v4, Lcom/htc/music/browserlayer/EditPlaylistActivity;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "home playlist id = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " is changed"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    goto :goto_1

    :cond_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :goto_2
    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_4
    sget-object v4, Lcom/htc/music/browserlayer/EditPlaylistActivity;->TAG:Ljava/lang/String;

    const-string v7, "borranx cursor is null or zero"

    invoke-static {v4, v7}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private setLandscapeIMEbutton()V
    .locals 5

    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v3, :cond_0

    const-string v2, "input_method"

    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mPlayListName:Landroid/widget/AutoCompleteTextView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mPlayListName:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v2}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    iget-object v2, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mPlayListName:Landroid/widget/AutoCompleteTextView;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z

    move-result v1

    sget-object v2, Lcom/htc/music/browserlayer/EditPlaylistActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set SIP on result:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public addSongList([I)V
    .locals 4

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mPlaylistItemList:Ljava/util/ArrayList;

    new-instance v2, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistItemInfo;

    aget v3, p1, v0

    invoke-direct {v2, p0, v3}, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistItemInfo;-><init>(Lcom/htc/music/browserlayer/EditPlaylistActivity;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public init(Landroid/database/Cursor;)V
    .locals 3

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mAdapter:Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v1, p1, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mAdapter:Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;

    invoke-virtual {v1, p1}, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->changeCursor(Landroid/database/Cursor;)V

    :goto_1
    const v1, 0x102000a

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f03002b

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    iget-object v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v1, p0}, Lcom/htc/widget/HtcListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    iget-object v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListView;->setTextFilterEnabled(Z)V

    iget-object v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListView;->setFastScrollEnabled(Z)V

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->initButtonsPanel()V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->joinAlbumArt(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mAdapter:Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;

    invoke-virtual {v1, v0}, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_1
.end method

.method initButtonsPanel()V
    .locals 10

    const/4 v8, 0x1

    const/4 v7, 0x0

    const v9, 0x7f08003c

    invoke-virtual {p0, v9}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const v9, 0x7f08003e

    invoke-virtual {p0, v9}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcFooterButton;

    const v9, 0x7f07005e

    invoke-virtual {v1, v9}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    const/4 v4, 0x0

    iget-object v9, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mPlayListName:Landroid/widget/AutoCompleteTextView;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mPlayListName:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v9}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_5

    const/4 v4, 0x0

    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    const-string v9, ""

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    :cond_1
    move v2, v8

    :goto_1
    invoke-direct {p0, v4}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->getPlaylistId(Ljava/lang/String;)I

    move-result v3

    iget-object v9, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mSelectedPlaylistId:Ljava/lang/String;

    if-eqz v9, :cond_8

    const/4 v5, 0x0

    iget-object v9, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mOriginalPlaylistName:Ljava/lang/String;

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mOriginalPlaylistName:Ljava/lang/String;

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    :cond_2
    if-nez v2, :cond_3

    if-ltz v3, :cond_4

    :cond_3
    if-eqz v5, :cond_7

    :cond_4
    :goto_2
    invoke-virtual {v1, v8}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    :goto_3
    new-instance v8, Lcom/htc/music/browserlayer/EditPlaylistActivity$3;

    invoke-direct {v8, p0}, Lcom/htc/music/browserlayer/EditPlaylistActivity$3;-><init>(Lcom/htc/music/browserlayer/EditPlaylistActivity;)V

    invoke-virtual {v1, v8}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v8, 0x7f08003d

    invoke-virtual {p0, v8}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcFooterButton;

    const v8, 0x20c013d

    invoke-virtual {v0, v8}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    new-instance v8, Lcom/htc/music/browserlayer/EditPlaylistActivity$4;

    invoke-direct {v8, p0}, Lcom/htc/music/browserlayer/EditPlaylistActivity$4;-><init>(Lcom/htc/music/browserlayer/EditPlaylistActivity;)V

    invoke-virtual {v0, v8}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_5
    iget-object v9, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mPlayListName:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v9}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_6
    move v2, v7

    goto :goto_1

    :cond_7
    move v8, v7

    goto :goto_2

    :cond_8
    if-nez v2, :cond_9

    if-gez v3, :cond_9

    :goto_4
    invoke-virtual {v1, v8}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    goto :goto_3

    :cond_9
    move v8, v7

    goto :goto_4
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/htc/music/util/MusicUtils;->getTabActivityResult(Landroid/content/Context;I)I

    move-result p2

    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->getTabActivitySelectedId(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    invoke-static {v1}, Lcom/htc/music/util/MusicUtils;->toIntList(Ljava/util/ArrayList;)[I

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mIsAddSongs:Z

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->addSongList([I)V

    invoke-direct {p0}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->getTrackCursor()Landroid/database/Cursor;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1e
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicListActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12

    sget-object v0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->TAG:Ljava/lang/String;

    const-string v1, "onCreate +"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicListActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->requestWindowFeature(I)Z

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->setVolumeControlStream(I)V

    const/4 v9, 0x0

    if-eqz p1, :cond_2

    const-string v0, "playlistname"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v0, "playlist"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mSelectedPlaylistId:Ljava/lang/String;

    :goto_0
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "title_key"

    aput-object v2, v0, v1

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

    const-string v2, "album_key"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mCursorCols:[Ljava/lang/String;

    const v0, 0x7f03004e

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    instance-of v0, v0, Lcom/htc/widget/HtcReorderListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    check-cast v0, Lcom/htc/widget/HtcReorderListView;

    iget-object v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mDropListener:Lcom/htc/widget/HtcReorderListView$DropListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcReorderListView;->setDropListener(Lcom/htc/widget/HtcReorderListView$DropListener;)V

    :cond_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setChoiceMode(I)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setTextFilterEnabled(Z)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setFastScrollEnabled(Z)V

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;

    iput-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mAdapter:Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;

    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mAdapter:Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mAdapter:Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;

    invoke-virtual {v0, p0}, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->setActivity(Lcom/htc/music/browserlayer/EditPlaylistActivity;)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mAdapter:Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    :goto_1
    invoke-virtual {p0, v9}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->setTitle(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->initButtonsPanel()V

    new-instance v10, Landroid/content/IntentFilter;

    invoke-direct {v10}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "file"

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, v10}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    sget-object v0, Lcom/htc/music/util/MusicUtils;->sLibraryMemCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/htc/music/util/MusicUtils;->sLibraryMemCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    invoke-virtual {v0}, Lcom/htc/music/util/MemoryCacheMBitmapByTime;->onCreate()V

    :cond_1
    sget-object v0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->TAG:Ljava/lang/String;

    const-string v1, "onCreate -"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "playlistname"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "playlist"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mSelectedPlaylistId:Ljava/lang/String;

    goto/16 :goto_0

    :cond_3
    new-instance v0, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const v3, 0x7f030024

    const/4 v4, 0x0

    const/4 v2, 0x0

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    new-array v6, v2, [I

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v2, p0

    invoke-direct/range {v0 .. v8}, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;-><init>(Landroid/content/Context;Lcom/htc/music/browserlayer/EditPlaylistActivity;ILandroid/database/Cursor;[Ljava/lang/String;[IZZ)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mAdapter:Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;

    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mAdapter:Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mSelectedPlaylistId:Ljava/lang/String;

    if-eqz v0, :cond_4

    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "title_key"

    aput-object v2, v0, v1

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

    const-string v2, "play_order"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "audio_id"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "album_key"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mPlaylistMemberCols:[Ljava/lang/String;

    new-instance v0, Lcom/htc/music/browserlayer/EditPlaylistActivity$QueryHandler;

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/music/browserlayer/EditPlaylistActivity$QueryHandler;-><init>(Lcom/htc/music/browserlayer/EditPlaylistActivity;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mQueryHandler:Lcom/htc/music/util/DlArtAsyncQueryHandler;

    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mQueryHandler:Lcom/htc/music/util/DlArtAsyncQueryHandler;

    iget-object v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mSelectedPlaylistId:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->getPlaylistCursor(Lcom/htc/music/util/DlArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    goto/16 :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "AddToPlaylistData"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v11

    if-eqz v11, :cond_5

    invoke-virtual {p0, v11}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->addSongList([I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mNewPlaylist:Z

    :cond_5
    invoke-direct {p0}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->getTrackCursor()Landroid/database/Cursor;

    goto/16 :goto_1
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    const/16 v0, 0x1e

    const v1, 0x7f070090

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x208031d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/16 v0, 0x22

    const v1, 0x20c013a

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080334

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/16 v0, 0x23

    const v1, 0x20c013b

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x208033c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 2

    iget-boolean v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mAdapterSent:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mAdapter:Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mAdapter:Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;

    invoke-virtual {v1}, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mAdapter:Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mAdapter:Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v1}, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->access$000(Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mAdapter:Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v1}, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->access$000(Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/music/util/AsyncImageDecoder;->quit()V

    :cond_1
    sget-object v1, Lcom/htc/music/util/MusicUtils;->sLibraryMemCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/htc/music/util/MusicUtils;->sLibraryMemCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    invoke-virtual {v1}, Lcom/htc/music/util/MemoryCacheMBitmapByTime;->onDestroy()V

    :cond_2
    invoke-super {p0}, Lcom/htc/music/widget/MusicListActivity;->onDestroy()V

    return-void
.end method

.method protected onListItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 0

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    const/4 v3, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    :goto_0
    return v3

    :pswitch_1
    invoke-direct {p0}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->goToPicker()V

    goto :goto_0

    :pswitch_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    const/16 v5, 0x22

    if-ne v4, v5, :cond_0

    move v0, v3

    :goto_1
    iget-object v4, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mPlaylistItemList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistItemInfo;

    iput-boolean v0, v2, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistItemInfo;->mChecked:Z

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v4}, Lcom/htc/widget/HtcListView;->invalidateViews()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1e
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    instance-of v0, v0, Lcom/htc/widget/HtcReorderListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    check-cast v0, Lcom/htc/widget/HtcReorderListView;

    invoke-virtual {v0}, Lcom/htc/widget/HtcReorderListView;->OnMyPause()V

    :cond_0
    invoke-super {p0}, Lcom/htc/music/widget/MusicListActivity;->onPause()V

    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mAdapter:Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mAdapter:Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->access$000(Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mAdapter:Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->access$000(Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/util/AsyncImageDecoder;->clear()V

    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mAdapter:Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->access$000(Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/util/AsyncImageDecoder;->pauseDecode()V

    :cond_1
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->getCheckedItemCount()I

    move-result v0

    iget-object v4, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mTrackCursor:Landroid/database/Cursor;

    if-nez v4, :cond_3

    move v1, v3

    :goto_0
    const/16 v4, 0x22

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    if-eqz v2, :cond_0

    if-eq v1, v0, :cond_4

    move v4, v5

    :goto_1
    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_0
    const/16 v4, 0x23

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    if-eqz v2, :cond_2

    if-lez v0, :cond_1

    move v3, v5

    :cond_1
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_2
    return v5

    :cond_3
    iget-object v4, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v1

    goto :goto_0

    :cond_4
    move v4, v3

    goto :goto_1
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Lcom/htc/music/widget/MusicListActivity;->onResume()V

    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mAdapter:Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mAdapter:Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->access$000(Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mAdapter:Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->access$000(Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/util/AsyncImageDecoder;->clear()V

    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mAdapter:Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->access$000(Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/util/AsyncImageDecoder;->resumeDecode()V

    :cond_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mPlayListName:Landroid/widget/AutoCompleteTextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mPlayListName:Landroid/widget/AutoCompleteTextView;

    new-instance v1, Lcom/htc/music/browserlayer/EditPlaylistActivity$2;

    invoke-direct {v1, p0}, Lcom/htc/music/browserlayer/EditPlaylistActivity$2;-><init>(Lcom/htc/music/browserlayer/EditPlaylistActivity;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/AutoCompleteTextView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mAsyncQuerying:Z

    if-nez v0, :cond_2

    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->isMediaScannerScanning(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->showSpinner(Z)V

    :cond_3
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mAdapter:Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mAdapterSent:Z

    return-object v0
.end method

.method public onSaveClick()V
    .locals 12

    const/4 v10, 0x0

    const/4 v11, -0x1

    iget-object v8, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mPlayListName:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v8}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_1

    :cond_0
    const v8, 0x7f0700af

    invoke-static {p0, v8, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_1
    const/4 v3, 0x0

    const/4 v6, 0x0

    iget-object v8, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mPlaylistItemList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v7, v8, -0x1

    move v0, v7

    :goto_1
    if-ltz v0, :cond_3

    iget-object v8, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mPlaylistItemList:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistItemInfo;

    iget-boolean v8, v8, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistItemInfo;->mChecked:Z

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mPlaylistItemList:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v3, 0x1

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    const/4 v2, -0x1

    iget-object v8, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mSelectedPlaylistId:Ljava/lang/String;

    if-eqz v8, :cond_5

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->renamePlaylist(Ljava/lang/String;)Z

    if-nez v3, :cond_4

    iget-boolean v8, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mIsDrop:Z

    if-nez v8, :cond_4

    iget-boolean v8, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mIsAddSongs:Z

    if-nez v8, :cond_4

    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v8, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {p0, v11, v8}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->finish()V

    goto :goto_0

    :cond_4
    iget-object v8, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mSelectedPlaylistId:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {p0, v8, v9}, Lcom/htc/music/util/MusicUtils;->deletePlaylistTrack(Landroid/content/Context;J)V

    iget-object v8, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mSelectedPlaylistId:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_2
    if-ne v2, v11, :cond_6

    const v8, 0x7f0700b0

    invoke-static {p0, v8, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_5
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->createPlaylist(Ljava/lang/String;)I

    move-result v2

    goto :goto_2

    :cond_6
    iget-object v8, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mPlaylistItemList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v5, v6, [I

    const/4 v0, 0x0

    :goto_3
    if-ge v0, v6, :cond_7

    iget-object v8, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mPlaylistItemList:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistItemInfo;

    iget v8, v8, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistItemInfo;->mTrackId:I

    aput v8, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    int-to-long v8, v2

    iget-boolean v10, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mNewPlaylist:Z

    invoke-static {p0, v5, v8, v9, v10}, Lcom/htc/music/util/MusicUtils;->addToPlaylist(Landroid/content/Context;[IJZ)V

    invoke-direct {p0, v4}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->getPlaylistId(Ljava/lang/String;)I

    move-result v2

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v8, "playlistid"

    invoke-virtual {v1, v8, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v8, "playlistname"

    invoke-virtual {v1, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v11, v1}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->finish()V

    goto/16 :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "playlistname"

    iget-object v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mPlayListName:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "playlist"

    iget-object v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mSelectedPlaylistId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 12

    const v11, 0x7f070053

    const/16 v10, 0x8

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    move-object v0, p1

    iput-object p1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mOriginalPlaylistName:Ljava/lang/String;

    :goto_0
    const v5, 0x7f080037

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HeaderBarImage;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v10}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    :cond_0
    const v5, 0x7f080040

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HeaderBarImage;

    if-eqz v4, :cond_1

    invoke-virtual {v4, v8}, Lcom/htc/widget/HeaderBarImage;->setImageMode(I)V

    const v5, 0x208087b

    invoke-virtual {v4, v5}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    const v5, 0x7f07001f

    invoke-virtual {v4, v5}, Lcom/htc/widget/HeaderBarImage;->setLabelText(I)V

    invoke-virtual {v4, v8}, Lcom/htc/widget/HeaderBarImage;->setEnabled(Z)V

    invoke-virtual {v4, v8}, Lcom/htc/widget/HeaderBarImage;->setFocusable(Z)V

    invoke-virtual {v4, v8}, Lcom/htc/widget/HeaderBarImage;->setClickable(Z)V

    iget-object v5, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mAddSongsBtnListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v5, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mNewPlaylist:Z

    if-eqz v5, :cond_8

    invoke-virtual {v4, v10}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    :cond_1
    :goto_1
    const v5, 0x7f08008e

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HeaderBarInput;

    invoke-virtual {v1, v8}, Lcom/htc/widget/HeaderBarInput;->setInputMode(I)V

    invoke-virtual {v1}, Lcom/htc/widget/HeaderBarInput;->getAutoCompleteTextView()Landroid/widget/AutoCompleteTextView;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mPlayListName:Landroid/widget/AutoCompleteTextView;

    iget-object v5, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mPlayListName:Landroid/widget/AutoCompleteTextView;

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mPlayListName:Landroid/widget/AutoCompleteTextView;

    const v6, 0x7f0700a2

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/AutoCompleteTextView;->setHint(Ljava/lang/CharSequence;)V

    if-eqz v0, :cond_2

    iget-object v5, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mPlayListName:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v5, v0}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v5, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mSelectedPlaylistId:Ljava/lang/String;

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mPlayListName:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v5, v8}, Landroid/widget/AutoCompleteTextView;->setSelectAllOnFocus(Z)V

    :cond_3
    iget-object v5, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mPlayListName:Landroid/widget/AutoCompleteTextView;

    new-instance v6, Lcom/htc/music/browserlayer/EditPlaylistActivity$EditTextWatcher;

    invoke-direct {v6, p0}, Lcom/htc/music/browserlayer/EditPlaylistActivity$EditTextWatcher;-><init>(Lcom/htc/music/browserlayer/EditPlaylistActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v5, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mPlayListName:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v5}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    :goto_2
    return-void

    :cond_4
    iget-object v5, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mSelectedPlaylistId:Ljava/lang/String;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mSelectedPlaylistId:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-direct {p0, v5, v6}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->nameForId(J)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mOriginalPlaylistName:Ljava/lang/String;

    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mOriginalPlaylistName:Ljava/lang/String;

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "playlistcount"

    const/4 v7, -0x1

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-ltz v3, :cond_6

    invoke-virtual {p0, v11}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    add-int/lit8 v7, v3, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_6
    iget-boolean v5, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mNewPlaylist:Z

    if-eqz v5, :cond_7

    invoke-virtual {p0, v11}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_7
    sget-object v5, Lcom/htc/music/browserlayer/EditPlaylistActivity;->TAG:Ljava/lang/String;

    const-string v6, "setTitle, playlistcount should not be < 0"

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v4, v9}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    goto/16 :goto_1

    :cond_9
    sget-object v5, Lcom/htc/music/browserlayer/EditPlaylistActivity;->TAG:Ljava/lang/String;

    const-string v6, "setTitle, mPlayListName is null!"

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public showSpinner(Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_1

    instance-of v3, v1, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;

    if-eqz v3, :cond_1

    move-object v2, v1

    check-cast v2, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;

    invoke-virtual {v2, p1}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setCategoryProgressVisible(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v3, 0x7f08003f

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HeaderBarTall;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_2

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v0, v3}, Lcom/htc/widget/HeaderBarTall;->setProgressVisibility(I)V

    goto :goto_0

    :cond_2
    const/16 v3, 0x8

    goto :goto_1
.end method

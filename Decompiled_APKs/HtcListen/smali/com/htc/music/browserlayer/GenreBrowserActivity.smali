.class public Lcom/htc/music/browserlayer/GenreBrowserActivity;
.super Lcom/htc/music/widget/MusicListActivity;
.source "GenreBrowserActivity.java"

# interfaces
.implements Lcom/htc/music/util/MusicUtils$Defs;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;
    }
.end annotation


# static fields
.field private static final ALBUM_TRACK_SORT_ORDER:Ljava/lang/String; = "album COLLATE NOCASE ASC, track"

.field public static final DIALOG_FOR_DELETE:I = 0x1

.field public static final DIALOG_FOR_LONG_PRESS:I = 0x0

.field private static final GENRE_DEFAULT_SORT_ORDER:Ljava/lang/String; = "name COLLATE NOCASE ASC"

.field private static final SEARCH:I = 0x17

.field private static final TITLE_DEFAULT_SORT_ORDER:Ljava/lang/String; = "title COLLATE NOCASE ASC"

.field private static final UNKNOWN_GENRE_ID:J = -0x1L


# instance fields
.field mActivityTitle:Ljava/lang/String;

.field private mAdapter:Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;

.field private mAdapterSent:Z

.field private mArtistId:Ljava/lang/String;

.field mAsyncQuerying:Z

.field private mCountTemplate:Ljava/lang/String;

.field private mCurrentGenreId:Ljava/lang/String;

.field private mCurrentGenreName:Ljava/lang/String;

.field private mDelaySearchHandler:Landroid/os/Handler;

.field private mFilter:Ljava/lang/String;

.field private mGenreCursor:Landroid/database/Cursor;

.field mLowerSearchFilter:Ljava/lang/String;

.field private mPlaylistUri:Ljava/lang/String;

.field private mReScanHandler:Landroid/os/Handler;

.field private mScanListener:Landroid/content/BroadcastReceiver;

.field private preSearchTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/htc/music/widget/MusicListActivity;-><init>()V

    new-instance v0, Lcom/htc/music/browserlayer/GenreBrowserActivity$1;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/GenreBrowserActivity$1;-><init>(Lcom/htc/music/browserlayer/GenreBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/htc/music/browserlayer/GenreBrowserActivity$2;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/GenreBrowserActivity$2;-><init>(Lcom/htc/music/browserlayer/GenreBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    iput-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mActivityTitle:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mLowerSearchFilter:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mFilter:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->preSearchTime:J

    new-instance v0, Lcom/htc/music/browserlayer/GenreBrowserActivity$6;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/GenreBrowserActivity$6;-><init>(Lcom/htc/music/browserlayer/GenreBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mDelaySearchHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mAsyncQuerying:Z

    return-void
.end method

.method static synthetic access$000(Lcom/htc/music/browserlayer/GenreBrowserActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mPlaylistUri:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/music/browserlayer/GenreBrowserActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/music/browserlayer/GenreBrowserActivity;)J
    .locals 2

    iget-wide v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->preSearchTime:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/htc/music/browserlayer/GenreBrowserActivity;)Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/music/browserlayer/GenreBrowserActivity;Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->getGenreCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/music/browserlayer/GenreBrowserActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mCurrentGenreId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/music/browserlayer/GenreBrowserActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mFilter:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/music/browserlayer/GenreBrowserActivity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->getMarkedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/music/browserlayer/GenreBrowserActivity;)Landroid/database/Cursor;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mGenreCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$802(Lcom/htc/music/browserlayer/GenreBrowserActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0

    iput-object p1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mGenreCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method private getGenreCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 15

    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v5, v1

    const/4 v1, 0x1

    const-string v2, "name"

    aput-object v2, v5, v1

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "name != \'\'"

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  AND _id in (select audio_genres_map.genre_id as _id from audio_genres_map left outer join audio_meta on audio_genres_map.audio_id= audio_meta._id where audio_meta.is_music>=1)"

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x0

    if-nez p2, :cond_1

    const/4 v11, 0x1

    :goto_0
    if-eqz p2, :cond_0

    const/4 v1, 0x1

    new-array v7, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v1

    const-string v1, " AND "

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "name LIKE ?"

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x7f070046

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v11, 0x1

    :cond_0
    const/4 v9, 0x0

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mAsyncQuerying:Z

    const/4 v2, 0x0

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    sget-object v4, Landroid/provider/MediaStore$Audio$Genres;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v8, "name COLLATE NOCASE ASC"

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    move-object v10, v9

    :goto_1
    if-eqz v11, :cond_3

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->getUnknownGenre()Landroid/database/Cursor;

    move-result-object v13

    if-eqz v13, :cond_3

    new-instance v9, Landroid/database/MergeCursor;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/database/Cursor;

    const/4 v2, 0x0

    aput-object v10, v1, v2

    const/4 v2, 0x1

    aput-object v13, v1, v2

    invoke-direct {v9, v1}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    :goto_2
    return-object v9

    :cond_1
    const/4 v11, 0x0

    goto :goto_0

    :cond_2
    sget-object v4, Landroid/provider/MediaStore$Audio$Genres;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v8, "name COLLATE NOCASE ASC"

    move-object v3, p0

    invoke-static/range {v3 .. v8}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    move-object v10, v9

    goto :goto_1

    :cond_3
    move-object v9, v10

    goto :goto_2
.end method

.method private setTitle()V
    .locals 2

    const-string v0, ""

    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mPlaylistUri:Ljava/lang/String;

    if-eqz v1, :cond_0

    const v1, 0x7f07006a

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mActivityTitle:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->setTitle(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const v1, 0x7f070024

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public categoryRightAction()Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->playAllAction(Z)Z

    move-result v0

    return v0
.end method

.method public getUnknownGenre()Landroid/database/Cursor;
    .locals 13

    const/4 v12, 0x2

    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    new-array v6, v12, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v6, v5

    const-string v0, "name"

    aput-object v0, v6, v2

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "title != \'\'"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " AND is_music>=1"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " AND _id NOT IN (SELECT audio_id FROM audio_genres_map)"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-array v2, v2, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v5

    move-object v0, p0

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    const/4 v10, 0x0

    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v12}, Ljava/util/ArrayList;-><init>(I)V

    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/htc/music/util/ArrayListCursor;

    invoke-direct {v10, v6, v9}, Lcom/htc/music/util/ArrayListCursor;-><init>([Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_0
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    const/4 v7, 0x0

    :cond_1
    return-object v10
.end method

.method public init(Landroid/database/Cursor;)V
    .locals 4

    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;

    invoke-virtual {v0, p1}, Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;->changeCursor(Landroid/database/Cursor;)V

    :cond_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mGenreCursor:Landroid/database/Cursor;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->showDatabaseError()V

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->closeContextMenu()V

    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mGenreCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mActivityTitle:Ljava/lang/String;

    if-nez v0, :cond_2

    const v0, 0x7f070024

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mActivityTitle:Ljava/lang/String;

    :cond_2
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mActivityTitle:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->setTitle(Ljava/lang/String;)V

    const v0, 0x7f07002d

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->showEmptyView(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->hideEmptyErrorView()V

    invoke-direct {p0}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->setTitle()V

    goto :goto_0
.end method

.method isAsyncQuerying()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mAsyncQuerying:Z

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    const/4 v3, -0x1

    const/4 v6, 0x0

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    if-nez p2, :cond_1

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->finish()V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;

    invoke-virtual {v3}, Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v3

    invoke-direct {p0, v3, v6}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->getGenreCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    goto :goto_0

    :sswitch_1
    if-ne p2, v3, :cond_0

    iget-object v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mCurrentGenreId:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {p0, v3}, Lcom/htc/music/util/MusicUtils;->getSongListForGenre(Landroid/content/Context;I)[I

    move-result-object v0

    const-string v3, "playlist"

    const/4 v4, 0x0

    invoke-virtual {p3, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    int-to-long v3, v1

    invoke-static {p0, v0, v3, v4}, Lcom/htc/music/util/MusicUtils;->addToPlaylist(Landroid/content/Context;[IJ)V

    goto :goto_0

    :sswitch_2
    if-ne p2, v3, :cond_0

    iget-object v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mCurrentGenreId:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_0

    iget-object v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mCurrentGenreId:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {p0, v3}, Lcom/htc/music/util/MusicUtils;->getSongListForGenre(Landroid/content/Context;I)[I

    move-result-object v0

    if-eqz v0, :cond_2

    array-length v3, v0

    if-nez v3, :cond_3

    :cond_2
    const-string v3, "external"

    invoke-static {v3}, Landroid/provider/MediaStore$Audio$Genres;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mCurrentGenreId:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    int-to-long v4, v4

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v2, v6, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_3
    iget-object v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;

    invoke-virtual {v3}, Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v3

    invoke-direct {p0, v3, v6}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->getGenreCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    goto :goto_0

    :sswitch_3
    if-ne p2, v3, :cond_0

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->finish()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0xa -> :sswitch_2
        0xb -> :sswitch_0
        0xf -> :sswitch_3
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11

    const/4 v10, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const v0, 0x7f070054

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mCountTemplate:Ljava/lang/String;

    if-eqz p1, :cond_1

    const-string v0, "selectedgenre"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mCurrentGenreId:Ljava/lang/String;

    const-string v0, "artistid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mArtistId:Ljava/lang/String;

    const-string v0, "playlisturi"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mPlaylistUri:Ljava/lang/String;

    :goto_0
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicListActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->requestWindowFeature(I)Z

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->setVolumeControlStream(I)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/htc/music/util/MusicUtils;->bindToService(Landroid/content/Context;Ljava/lang/String;)Z

    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "file"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, v7}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const v0, 0x7f03002b

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v9

    invoke-virtual {v9, v1}, Lcom/htc/widget/HtcListView;->setFastScrollEnabled(Z)V

    invoke-virtual {v9, v2}, Lcom/htc/widget/HtcListView;->setTextFilterEnabled(Z)V

    invoke-virtual {v9, p0}, Lcom/htc/widget/HtcListView;->setOnScrollListener(Lcom/htc/widget/HtcAbsListView$OnScrollListener;)V

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;

    iput-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;

    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;

    if-nez v0, :cond_2

    new-instance v0, Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const v3, 0x7f030012

    iget-object v4, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mGenreCursor:Landroid/database/Cursor;

    new-array v5, v2, [Ljava/lang/String;

    new-array v6, v2, [I

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;-><init>(Landroid/content/Context;Lcom/htc/music/browserlayer/GenreBrowserActivity;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;

    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    invoke-direct {p0}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->setTitle()V

    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v0

    invoke-direct {p0, v0, v10}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->getGenreCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    :goto_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mPlaylistUri:Ljava/lang/String;

    if-nez v0, :cond_0

    const v0, 0x7f07009d

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->setSearchHint(I)V

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->enableSearch()V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v0, "artistid"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mArtistId:Ljava/lang/String;

    const-string v0, "playlisturi"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mPlaylistUri:Ljava/lang/String;

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;

    invoke-virtual {v0, p0}, Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;->setActivity(Lcom/htc/music/browserlayer/GenreBrowserActivity;)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mGenreCursor:Landroid/database/Cursor;

    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mGenreCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mGenreCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->init(Landroid/database/Cursor;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v0

    invoke-direct {p0, v0, v10}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->getGenreCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    goto :goto_1
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 11

    const v10, 0x7f070046

    const v9, 0x20c01fc

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, p0

    :cond_0
    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicListActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v5

    :goto_0
    return-object v5

    :pswitch_0
    iget-object v5, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mCurrentGenreName:Ljava/lang/String;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mCurrentGenreName:Ljava/lang/String;

    const-string v6, "<unknown>"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    invoke-virtual {p0, v10}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_1
    const/4 v5, 0x3

    new-array v3, v5, [Ljava/lang/CharSequence;

    const v5, 0x7f07004e

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v7

    const v5, 0x7f07004f

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v8

    const/4 v5, 0x2

    invoke-virtual {p0, v9}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/htc/music/browserlayer/GenreBrowserActivity$3;

    invoke-direct {v6, p0}, Lcom/htc/music/browserlayer/GenreBrowserActivity$3;-><init>(Lcom/htc/music/browserlayer/GenreBrowserActivity;)V

    invoke-virtual {v5, v3, v6}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mCurrentGenreName:Ljava/lang/String;

    goto :goto_1

    :pswitch_1
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->IsOnlyInternalStorage()Z

    move-result v5

    if-eqz v5, :cond_4

    const v5, 0x7f070014

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_2
    const/4 v1, 0x0

    iget-object v5, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mCurrentGenreName:Ljava/lang/String;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mCurrentGenreName:Ljava/lang/String;

    const-string v6, "<unknown>"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_3
    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {p0, v10}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_3
    const-string v5, "GenreBrowserActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mCurrentGenreId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mCurrentGenreId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v5, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    const v6, 0x1080027

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    const v6, 0x1040013

    new-instance v7, Lcom/htc/music/browserlayer/GenreBrowserActivity$5;

    invoke-direct {v7, p0}, Lcom/htc/music/browserlayer/GenreBrowserActivity$5;-><init>(Lcom/htc/music/browserlayer/GenreBrowserActivity;)V

    invoke-virtual {v5, v6, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    const v6, 0x1040009

    new-instance v7, Lcom/htc/music/browserlayer/GenreBrowserActivity$4;

    invoke-direct {v7, p0}, Lcom/htc/music/browserlayer/GenreBrowserActivity$4;-><init>(Lcom/htc/music/browserlayer/GenreBrowserActivity;)V

    invoke-virtual {v5, v6, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v5

    goto/16 :goto_0

    :cond_4
    const v5, 0x7f070013

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_5
    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mCurrentGenreName:Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mPlaylistUri:Ljava/lang/String;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    const/16 v0, 0x9

    const v1, 0x7f070008

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080a7e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/16 v0, 0xc

    const v1, 0x7f070009

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080a10

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    invoke-static {}, Lcom/htc/music/util/CustomizeSetting;->isSupportListenStore()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x16

    const v1, 0x20c0200

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080336

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onDeletionCompleted()V
    .locals 2

    invoke-super {p0}, Lcom/htc/music/widget/MusicListActivity;->onDeletionCompleted()V

    const-string v0, "GenreBrowserActivity"

    const-string v1, "call onDeletionCompleted()"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->getGenreCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    :cond_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mGenreCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mGenreCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mGenreCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mDelaySearchHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/htc/music/util/MusicUtils;->unbindFromService(Landroid/content/Context;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mAdapterSent:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;

    invoke-virtual {v1}, Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    iput-object v2, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;

    invoke-super {p0}, Lcom/htc/music/widget/MusicListActivity;->onDestroy()V

    return-void
.end method

.method protected onListItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 4

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.PICK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mPlaylistUri:Ljava/lang/String;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v3, "com.htc.media/albumtrack"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "playlisturi"

    iget-object v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mPlaylistUri:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "genreid"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "pickermode"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v2, 0xf

    invoke-virtual {p0, v1, v2}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method protected onListItemLongClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)Z
    .locals 4

    const-string v1, "GenreBrowserActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "position="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mPlaylistUri:Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mGenreCursor:Landroid/database/Cursor;

    invoke-interface {v1, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mGenreCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mGenreCursor:Landroid/database/Cursor;

    const-string v3, "_id"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mCurrentGenreId:Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mGenreCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mGenreCursor:Landroid/database/Cursor;

    const-string v3, "name"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mCurrentGenreName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->showDialog(I)V

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    const/4 v2, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    :goto_0
    return v2

    :sswitch_0
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->SetDLNASuffleMode(Landroid/content/Context;)V

    :sswitch_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const/16 v3, 0x9

    if-ne v1, v3, :cond_0

    move v1, v2

    :goto_1
    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->playAllAction(Z)Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :sswitch_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.music.settings.Listen_Online_Setting"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, -0x2

    invoke-virtual {p0, v0, v1}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xc -> :sswitch_1
        0x16 -> :sswitch_2
    .end sparse-switch
.end method

.method public onPause()V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mDelaySearchHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;->setAutoRequery(ZZ)V

    :cond_0
    invoke-super {p0}, Lcom/htc/music/widget/MusicListActivity;->onPause()V

    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 8

    const v7, 0x7f070046

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-super {p0, p1, p2}, Lcom/htc/music/widget/MusicListActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mCurrentGenreName:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mCurrentGenreName:Ljava/lang/String;

    const-string v4, "<unknown>"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    invoke-virtual {p0, v7}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    check-cast p2, Landroid/app/AlertDialog;

    invoke-virtual {p2, v2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mCurrentGenreName:Ljava/lang/String;

    goto :goto_1

    :pswitch_1
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->IsOnlyInternalStorage()Z

    move-result v3

    if-eqz v3, :cond_3

    const v3, 0x7f070014

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_2
    const/4 v0, 0x0

    iget-object v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mCurrentGenreName:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mCurrentGenreName:Ljava/lang/String;

    const-string v4, "<unknown>"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_2
    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {p0, v7}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    check-cast p2, Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {p2, v0}, Lcom/htc/widget/HtcAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    const v3, 0x7f070013

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_4
    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mCurrentGenreName:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    const/16 v3, 0xc

    iget-object v2, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mGenreCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mGenreCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_3

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/16 v2, 0x9

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_0
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_1
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_2
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    return v2

    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0}, Lcom/htc/music/widget/MusicListActivity;->onResume()V

    invoke-direct {p0}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->setTitle()V

    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;->setAutoRequery(ZZ)V

    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->isAsyncQuerying()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->isMediaScannerScanning(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->showSpinner(Z)V

    :cond_2
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mAdapterSent:Z

    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;

    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "selectedgenre"

    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mCurrentGenreId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "artistid"

    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mArtistId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "playlisturi"

    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mPlaylistUri:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onScrollStateChanged(Lcom/htc/widget/HtcAbsListView;I)V
    .locals 2

    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;->setAutoRequeryOffAndAutoOn()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;->setAutoRequery(Z)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;->setAutoRequeryOffAndAutoOn()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onSearch(Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->preSearchTime:J

    iput-object p1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mFilter:Ljava/lang/String;

    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mDelaySearchHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public playAllAction(Z)Z
    .locals 24

    const/4 v14, 0x0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "title != \'\'"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " AND is_music>=1"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " AND _id NOT IN (SELECT audio_id FROM audio_genres_map)"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v2

    const/4 v2, 0x1

    const-string v6, "album_id"

    aput-object v6, v4, v2

    const/4 v6, 0x0

    const-string v7, "title COLLATE NOCASE ASC"

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v22

    const-string v2, "external"

    invoke-static {v2}, Landroid/provider/MediaStore$Audio$Genres;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    const/4 v2, 0x1

    new-array v8, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v8, v2

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v11, "name COLLATE NOCASE ASC"

    move-object/from16 v6, p0

    invoke-static/range {v6 .. v11}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    if-eqz v22, :cond_0

    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_4

    :cond_0
    if-eqz v17, :cond_1

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_4

    :cond_1
    if-eqz v22, :cond_2

    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    const/16 v22, 0x0

    :cond_2
    if-eqz v17, :cond_3

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    const/16 v17, 0x0

    :cond_3
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_4
    const/4 v14, 0x0

    if-nez v17, :cond_7

    const/16 v16, 0x0

    :goto_1
    move/from16 v20, v16

    if-eqz v22, :cond_5

    add-int/lit8 v20, v20, 0x1

    move-object/from16 v14, v22

    :cond_5
    move/from16 v0, v20

    new-array v15, v0, [Landroid/database/Cursor;

    if-eqz v22, :cond_6

    add-int/lit8 v2, v20, -0x1

    aput-object v22, v15, v2

    :cond_6
    if-eqz v17, :cond_9

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v2, "_id"

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    const/16 v19, 0x0

    :goto_2
    move/from16 v0, v19

    move/from16 v1, v16

    if-ge v0, v1, :cond_8

    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    const-string v2, "external"

    move/from16 v0, v18

    int-to-long v3, v0

    invoke-static {v2, v3, v4}, Landroid/provider/MediaStore$Audio$Genres$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v7

    const/4 v2, 0x2

    new-array v8, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v8, v2

    const/4 v2, 0x1

    const-string v3, "album_id"

    aput-object v3, v8, v2

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v11, "album COLLATE NOCASE ASC, track"

    move-object/from16 v6, p0

    invoke-static/range {v6 .. v11}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    aput-object v12, v15, v19

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v19, v19, 0x1

    goto :goto_2

    :cond_7
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->getCount()I

    move-result v16

    goto :goto_1

    :cond_8
    new-instance v14, Landroid/database/MergeCursor;

    invoke-direct {v14, v15}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    :cond_9
    if-eqz v14, :cond_b

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mFilter:Ljava/lang/String;

    if-nez v2, :cond_a

    new-instance v21, Lcom/htc/music/NpCategory;

    const/16 v2, 0x11

    move-object/from16 v0, v21

    invoke-direct {v0, v2}, Lcom/htc/music/NpCategory;-><init>(S)V

    :cond_a
    if-eqz p1, :cond_d

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-static {v0, v14, v1}, Lcom/htc/music/util/MusicUtils;->shuffleAll(Landroid/content/Context;Landroid/database/Cursor;Lcom/htc/music/NpCategory;)V

    :goto_3
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    const/4 v14, 0x0

    :cond_b
    if-eqz v17, :cond_c

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    const/16 v17, 0x0

    :cond_c
    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_d
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-static {v0, v14, v1}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;Lcom/htc/music/NpCategory;)V

    goto :goto_3
.end method

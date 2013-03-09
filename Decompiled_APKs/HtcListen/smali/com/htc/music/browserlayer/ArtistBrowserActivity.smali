.class public Lcom/htc/music/browserlayer/ArtistBrowserActivity;
.super Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;
.source "ArtistBrowserActivity.java"

# interfaces
.implements Lcom/htc/music/util/MusicUtils$Defs;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;
    }
.end annotation


# static fields
.field private static final ALBUM_DEFAULT_SORT_ORDER:Ljava/lang/String; = "album COLLATE NOCASE ASC"

.field private static final ARTIST_ALBUM_TRACK_SORT_ORDER:Ljava/lang/String; = "artist COLLATE NOCASE ASC, album COLLATE NOCASE ASC, track"

.field private static final ARTIST_DEFAULT_SORT_ORDER:Ljava/lang/String; = "artist COLLATE NOCASE ASC"

.field public static final DIALOG_FOR_DELETE:I = 0x1

.field public static final DIALOG_FOR_LONG_PRESS:I = 0x0

.field public static final DIALOG_FOR_LONG_PRESS_UNKNOWN:I = 0x2

.field private static final SEARCH:I = 0x17

.field private static final TITLE_DEFAULT_SORT_ORDER:Ljava/lang/String; = "title COLLATE NOCASE ASC"


# instance fields
.field private TAG:Ljava/lang/String;

.field mActivityTitle:Ljava/lang/String;

.field private mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;

.field private mAdapterSent:Z

.field private mArtistCursor:Landroid/database/Cursor;

.field mAsyncQuerying:Z

.field mAsyncUri:Landroid/net/Uri;

.field mCols:[Ljava/lang/String;

.field private mComposer:Ljava/lang/String;

.field private mCurrentArtistId:Ljava/lang/String;

.field private mCurrentArtistName:Ljava/lang/String;

.field private mDelaySearchHandler:Landroid/os/Handler;

.field private mDescription:Ljava/lang/String;

.field private mFilter:Ljava/lang/String;

.field private mGenre:Ljava/lang/String;

.field mLowerSearchFilter:Ljava/lang/String;

.field private mPlaylistUri:Ljava/lang/String;

.field private mReScanHandler:Landroid/os/Handler;

.field private mScanListener:Landroid/content/BroadcastReceiver;

.field private mShowDirect:Z

.field private preSearchTime:J


# direct methods
.method public constructor <init>()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;-><init>()V

    const-string v0, "[ArtistBrowserActivity]"

    iput-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/htc/music/browserlayer/ArtistBrowserActivity$1;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivity$1;-><init>(Lcom/htc/music/browserlayer/ArtistBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/htc/music/browserlayer/ArtistBrowserActivity$2;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivity$2;-><init>(Lcom/htc/music/browserlayer/ArtistBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const/4 v1, 0x1

    const-string v2, "artist"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "number_of_albums"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "number_of_tracks"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mCols:[Ljava/lang/String;

    iput-object v3, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mActivityTitle:Ljava/lang/String;

    iput-boolean v4, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mAsyncQuerying:Z

    iput-object v3, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mLowerSearchFilter:Ljava/lang/String;

    iput-object v3, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mFilter:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->preSearchTime:J

    new-instance v0, Lcom/htc/music/browserlayer/ArtistBrowserActivity$6;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivity$6;-><init>(Lcom/htc/music/browserlayer/ArtistBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mDelaySearchHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/music/browserlayer/ArtistBrowserActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mPlaylistUri:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/music/browserlayer/ArtistBrowserActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/music/browserlayer/ArtistBrowserActivity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->getMarkedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/htc/music/browserlayer/ArtistBrowserActivity;)Landroid/database/Cursor;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/htc/music/browserlayer/ArtistBrowserActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0

    iput-object p1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/htc/music/browserlayer/ArtistBrowserActivity;)J
    .locals 2

    iget-wide v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->preSearchTime:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/htc/music/browserlayer/ArtistBrowserActivity;)Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/music/browserlayer/ArtistBrowserActivity;Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->getArtistCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/music/browserlayer/ArtistBrowserActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mCurrentArtistId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/music/browserlayer/ArtistBrowserActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mGenre:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/music/browserlayer/ArtistBrowserActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mComposer:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/music/browserlayer/ArtistBrowserActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mFilter:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/music/browserlayer/ArtistBrowserActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private getArtistCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 25

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "artist != \'\'"

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AND artist != \'<unknown>\'"

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "artist = \'<unknown>\'"

    move-object/from16 v0, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x0

    if-nez p2, :cond_3

    const/16 v19, 0x1

    :goto_0
    if-eqz p2, :cond_0

    const/4 v1, 0x1

    new-array v7, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "%"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "%"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v1

    const-string v1, " AND "

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "artist LIKE ?"

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x7f070043

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v19, 0x1

    :cond_0
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/provider/MediaStore$Audio$Artists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mAsyncUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mGenre:Ljava/lang/String;

    if-eqz v1, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mGenre:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    const-wide/16 v1, -0x1

    cmp-long v1, v17, v1

    if-nez v1, :cond_4

    const-string v1, " AND _id  in (select  distinct artist_id from audio where _id NOT IN (select audio_id from audio_genres_map ) ) "

    move-object/from16 v0, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_1
    const/4 v15, 0x0

    if-eqz p1, :cond_8

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mAsyncQuerying:Z

    if-eqz v19, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_2
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mAsyncUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mCols:[Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v8, "artist COLLATE NOCASE ASC"

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_3
    return-object v15

    :cond_3
    const/16 v19, 0x0

    goto/16 :goto_0

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " AND _id  in (select distinct artist_id from audio where _id IN (select audio_id from audio_genres_map WHERE genre_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mGenre:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") ) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mComposer:Ljava/lang/String;

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mComposer:Ljava/lang/String;

    invoke-static {v14}, Lcom/htc/music/util/MusicUtils;->isUnknownComposer(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_6

    const-string v1, " AND _id IN (SELECT distinct artist_id FROM audio_meta where (audio_meta.composer ISNULL OR audio_meta.composer = \'\' OR audio_meta.composer = \'<unknown>\'))"

    move-object/from16 v0, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_6
    const-string v1, "\'"

    const-string v2, "\'\'"

    invoke-virtual {v14, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " AND _id IN (SELECT distinct artist_id FROM audio_meta where audio_meta.composer = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_7
    const/4 v3, 0x0

    goto/16 :goto_2

    :cond_8
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mAsyncQuerying:Z

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mAsyncUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mCols:[Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v13, "artist COLLATE NOCASE ASC"

    move-object/from16 v8, p0

    move-object v12, v7

    invoke-static/range {v8 .. v13}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    if-eqz v19, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mAsyncUri:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->getUnknownArtist(Landroid/net/Uri;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    if-eqz v20, :cond_2

    new-instance v16, Landroid/database/MergeCursor;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/database/Cursor;

    const/4 v2, 0x0

    aput-object v15, v1, v2

    const/4 v2, 0x1

    aput-object v20, v1, v2

    move-object/from16 v0, v16

    invoke-direct {v0, v1}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    move-object/from16 v15, v16

    goto/16 :goto_3
.end method

.method private setTitle()V
    .locals 4

    const v3, 0x7f07001d

    const-string v0, ""

    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mDescription:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mActivityTitle:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->setTitle(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mPlaylistUri:Ljava/lang/String;

    if-eqz v1, :cond_1

    const v1, 0x7f070068

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public categoryRightAction()Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->playAllAction(Z)Z

    move-result v0

    return v0
.end method

.method createLongPressDialog(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/CharSequence;)Landroid/app/AlertDialog;
    .locals 2

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/htc/music/browserlayer/ArtistBrowserActivity$5;

    invoke-direct {v1, p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivity$5;-><init>(Lcom/htc/music/browserlayer/ArtistBrowserActivity;)V

    invoke-virtual {v0, p3, v1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method doSearch()V
    .locals 2

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mCurrentArtistName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/htc/music/util/MusicUtils;->searchViaArtistName(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public getUnknownArtist(Landroid/net/Uri;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mCols:[Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    return-object v6
.end method

.method public init(Landroid/database/Cursor;)V
    .locals 4

    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;

    invoke-virtual {v0, p1}, Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;->changeCursor(Landroid/database/Cursor;)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->showDatabaseError()V

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->closeContextMenu()V

    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mActivityTitle:Ljava/lang/String;

    if-nez v0, :cond_2

    const v0, 0x7f07001d

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mActivityTitle:Ljava/lang/String;

    :cond_2
    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mActivityTitle:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->setTitle(Ljava/lang/String;)V

    const v0, 0x7f07002b

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->showEmptyView(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->hideEmptyErrorView()V

    invoke-direct {p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->setTitle()V

    goto :goto_0
.end method

.method isAsyncQuerying()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mAsyncQuerying:Z

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v3, -0x1

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    if-nez p2, :cond_1

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->finish()V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;

    invoke-virtual {v3}, Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v3

    invoke-direct {p0, v3, v6}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->getArtistCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    goto :goto_0

    :sswitch_1
    if-ne p2, v3, :cond_0

    iget-object v3, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mCurrentArtistId:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mGenre:Ljava/lang/String;

    iget-object v5, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mComposer:Ljava/lang/String;

    invoke-static {v6, v3, v4, v5}, Lcom/htc/music/util/MusicUtils;->getQueryString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/htc/music/util/MusicUtils;->getSongListForArtist(Landroid/content/Context;Ljava/lang/String;)[I

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

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->finish()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0xb -> :sswitch_0
        0xf -> :sswitch_2
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11

    const/4 v10, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    const-string v0, "selectedartist"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mCurrentArtistId:Ljava/lang/String;

    const-string v0, "selectedartistname"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mCurrentArtistName:Ljava/lang/String;

    const-string v0, "genreid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mGenre:Ljava/lang/String;

    const-string v0, "composer"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mComposer:Ljava/lang/String;

    const-string v0, "isshowallsongs"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mShowDirect:Z

    const-string v0, "playlisturi"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mPlaylistUri:Ljava/lang/String;

    const-string v0, "description"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mDescription:Ljava/lang/String;

    :goto_0
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->requestWindowFeature(I)Z

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->setVolumeControlStream(I)V

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

    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, v7}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const v0, 0x7f030042

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v9

    invoke-virtual {v9, v1}, Lcom/htc/widget/HtcListView;->setFastScrollEnabled(Z)V

    invoke-virtual {v9, v2}, Lcom/htc/widget/HtcListView;->setTextFilterEnabled(Z)V

    invoke-virtual {v9, p0}, Lcom/htc/widget/HtcListView;->setOnScrollListener(Lcom/htc/widget/HtcAbsListView$OnScrollListener;)V

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;

    iput-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;

    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;

    if-nez v0, :cond_2

    new-instance v0, Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const v3, 0x7f030012

    iget-object v4, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    new-array v5, v2, [Ljava/lang/String;

    new-array v6, v2, [I

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;-><init>(Landroid/content/Context;Lcom/htc/music/browserlayer/ArtistBrowserActivity;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;

    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    invoke-direct {p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->setTitle()V

    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v0

    invoke-direct {p0, v0, v10}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->getArtistCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    :goto_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mPlaylistUri:Ljava/lang/String;

    if-nez v0, :cond_0

    const v0, 0x7f07009b

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->setSearchHint(I)V

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->enableSearch()V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v0, "genreid"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mGenre:Ljava/lang/String;

    const-string v0, "composer"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mComposer:Ljava/lang/String;

    const-string v0, "isshowallsongs"

    invoke-virtual {v8, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mShowDirect:Z

    const-string v0, "playlisturi"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mPlaylistUri:Ljava/lang/String;

    const-string v0, "description"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mDescription:Ljava/lang/String;

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;

    invoke-virtual {v0, p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;->setActivity(Lcom/htc/music/browserlayer/ArtistBrowserActivity;)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->init(Landroid/database/Cursor;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v0

    invoke-direct {p0, v0, v10}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->getArtistCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    goto :goto_1
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 12

    const/4 v11, 0x3

    const/4 v10, 0x2

    const v9, 0x20c01fc

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, p0

    :cond_0
    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v5

    :goto_0
    return-object v5

    :pswitch_0
    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mCurrentArtistName:Ljava/lang/String;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mCurrentArtistName:Ljava/lang/String;

    const-string v6, "<unknown>"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v4, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mCurrentArtistName:Ljava/lang/String;

    const/4 v5, 0x4

    new-array v3, v5, [Ljava/lang/CharSequence;

    const v5, 0x7f07004e

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v7

    const v5, 0x7f07004f

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v8

    invoke-virtual {p0, v9}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v10

    const v5, 0x20c0138

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v11

    :cond_1
    invoke-virtual {p0, v0, v4, v3}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->createLongPressDialog(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/CharSequence;)Landroid/app/AlertDialog;

    move-result-object v5

    goto :goto_0

    :pswitch_1
    const/4 v4, 0x0

    const/4 v3, 0x0

    const v5, 0x7f070043

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v3, v11, [Ljava/lang/CharSequence;

    const v5, 0x7f07004e

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v7

    const v5, 0x7f07004f

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v8

    invoke-virtual {p0, v9}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v10

    invoke-virtual {p0, v0, v4, v3}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->createLongPressDialog(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/CharSequence;)Landroid/app/AlertDialog;

    move-result-object v5

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->IsOnlyInternalStorage()Z

    move-result v5

    if-eqz v5, :cond_3

    const v5, 0x7f07000d

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    iget-object v5, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mCurrentArtistName:Ljava/lang/String;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mCurrentArtistName:Ljava/lang/String;

    const-string v6, "<unknown>"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_2
    new-array v5, v8, [Ljava/lang/Object;

    const v6, 0x7f070043

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_2
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

    new-instance v7, Lcom/htc/music/browserlayer/ArtistBrowserActivity$4;

    invoke-direct {v7, p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivity$4;-><init>(Lcom/htc/music/browserlayer/ArtistBrowserActivity;)V

    invoke-virtual {v5, v6, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    const v6, 0x1040009

    new-instance v7, Lcom/htc/music/browserlayer/ArtistBrowserActivity$3;

    invoke-direct {v7, p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivity$3;-><init>(Lcom/htc/music/browserlayer/ArtistBrowserActivity;)V

    invoke-virtual {v5, v6, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v5

    goto/16 :goto_0

    :cond_3
    const v5, 0x7f07000c

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_4
    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mCurrentArtistName:Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mPlaylistUri:Ljava/lang/String;

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

    const v1, 0x20809d2

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

    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onDeletionCompleted()V

    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->TAG:Ljava/lang/String;

    const-string v1, "call onDeletionCompleted()"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mDelaySearchHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/htc/music/util/MusicUtils;->unbindFromService(Landroid/content/Context;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mAdapterSent:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;

    invoke-virtual {v1}, Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    iput-object v2, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;

    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onDestroy()V

    return-void
.end method

.method protected onListItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 3

    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    invoke-interface {v1, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mCurrentArtistId:Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mPlaylistUri:Ljava/lang/String;

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mShowDirect:Z

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v2, "com.htc.media/track"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mCurrentArtistId:Ljava/lang/String;

    const-string v1, "artistid"

    iget-object v2, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mCurrentArtistId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "composer"

    iget-object v2, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mComposer:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "genreid"

    iget-object v2, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mGenre:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/htc/music/browserlayer/TrackBrowserActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "playlisturi"

    iget-object v2, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mPlaylistUri:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "artistid"

    iget-object v2, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mCurrentArtistId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "pickermode"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v1, 0xf

    invoke-virtual {p0, v0, v1}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method protected onListItemLongClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)Z
    .locals 4

    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->TAG:Ljava/lang/String;

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

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mPlaylistUri:Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    invoke-interface {v1, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    const-string v3, "_id"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mCurrentArtistId:Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    const-string v3, "artist"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mCurrentArtistName:Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCurrentArtistName"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mCurrentArtistName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mCurrentArtistName:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mCurrentArtistName:Ljava/lang/String;

    const-string v2, "<unknown>"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->showDialog(I)V

    :goto_0
    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->showDialog(I)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    const/4 v2, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

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
    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->playAllAction(Z)Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :sswitch_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.music.settings.Listen_Online_Setting"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, -0x2

    invoke-virtual {p0, v0, v1}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

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

    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mDelaySearchHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;->setAutoRequery(ZZ)V

    :cond_0
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onPause()V

    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-super {p0, p1, p2}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->IsOnlyInternalStorage()Z

    move-result v2

    if-eqz v2, :cond_1

    const v2, 0x7f07000d

    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    iget-object v2, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mCurrentArtistName:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mCurrentArtistName:Ljava/lang/String;

    const-string v3, "<unknown>"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    new-array v2, v5, [Ljava/lang/Object;

    const v3, 0x7f070043

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    check-cast p2, Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {p2, v0}, Lcom/htc/widget/HtcAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const v2, 0x7f07000c

    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mCurrentArtistName:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    iget-object v2, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_3

    const/4 v0, 0x1

    :goto_0
    const/16 v2, 0x9

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_0
    const/16 v2, 0xc

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_1
    const/16 v2, 0x16

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_2
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    return v2

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onResume()V

    invoke-direct {p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->setTitle()V

    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;->setAutoRequery(ZZ)V

    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->isAsyncQuerying()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->isMediaScannerScanning(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->showSpinner(Z)V

    :cond_2
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mAdapterSent:Z

    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;

    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "selectedartist"

    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mCurrentArtistId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "selectedartistname"

    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mCurrentArtistName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "genreid"

    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mGenre:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "composer"

    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mComposer:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "playlisturi"

    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mPlaylistUri:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "isshowallsongs"

    iget-boolean v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mShowDirect:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "description"

    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onScrollStateChanged(Lcom/htc/widget/HtcAbsListView;I)V
    .locals 2

    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;->setAutoRequeryOffAndAutoOn()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;->setAutoRequery(Z)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;->setAutoRequeryOffAndAutoOn()V

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

    iput-wide v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->preSearchTime:J

    iput-object p1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mFilter:Ljava/lang/String;

    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mDelaySearchHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public playAllAction(Z)Z
    .locals 13

    const/4 v8, 0x0

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "artist COLLATE NOCASE ASC, album COLLATE NOCASE ASC, track"

    const-string v0, "title != \'\'"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mGenre:Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string v5, "title_key"

    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mGenre:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v9, v0

    const-wide/16 v0, -0x1

    cmp-long v0, v9, v0

    if-nez v0, :cond_2

    const-string v0, " AND _id NOT IN (SELECT audio_id FROM audio_genres_map)"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "album_id"

    aput-object v3, v2, v0

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    :goto_0
    if-eqz v8, :cond_1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mFilter:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Lcom/htc/music/NpCategory;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/htc/music/NpCategory;-><init>(S)V

    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mGenre:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/music/NpCategory;->setGenreId(Ljava/lang/String;)Lcom/htc/music/NpCategory;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mComposer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/music/NpCategory;->setComposer(Ljava/lang/String;)Lcom/htc/music/NpCategory;

    move-result-object v6

    :cond_0
    if-eqz p1, :cond_6

    invoke-static {p0, v8, v6}, Lcom/htc/music/util/MusicUtils;->shuffleAll(Landroid/content/Context;Landroid/database/Cursor;Lcom/htc/music/NpCategory;)V

    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    const/4 v8, 0x0

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const-string v0, "external"

    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mGenre:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Landroid/provider/MediaStore$Audio$Genres$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "album_id"

    aput-object v3, v2, v0

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mComposer:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v7, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mComposer:Ljava/lang/String;

    invoke-static {v7}, Lcom/htc/music/util/MusicUtils;->isUnknownComposer(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    const-string v0, " AND "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v12}, Lcom/htc/music/util/MusicUtils;->appendUnknownComposerFilter(Ljava/lang/StringBuilder;)V

    :cond_4
    :goto_2
    const-string v0, " AND is_music>=1"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "album_id"

    aput-object v3, v2, v0

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    goto :goto_0

    :cond_5
    const-string v0, "\'"

    const-string v1, "\'\'"

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " AND composer = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_6
    invoke-static {p0, v8, v6}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;Lcom/htc/music/NpCategory;)V

    goto/16 :goto_1
.end method

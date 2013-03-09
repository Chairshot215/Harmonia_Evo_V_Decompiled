.class public Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;
.super Lcom/htc/music/widget/GroupListActivity;
.source "AlbumTrackBrowserActivity.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Lcom/htc/music/widget/GroupListView$OnGroupClickListener;
.implements Lcom/htc/music/util/MusicUtils$Defs;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;
    }
.end annotation


# static fields
.field private static final ALBUM_DEFAULT_SORT_ORDER:Ljava/lang/String; = "album COLLATE NOCASE ASC"

.field private static final TAG:Ljava/lang/String; = "[AlbumTrackBrowserActivity]"

.field private static final TITLE_DEFAULT_SORT_ORDER:Ljava/lang/String; = "title COLLATE NOCASE ASC"


# instance fields
.field private mAlbumCursor:Landroid/database/Cursor;

.field private mAlbumId:Ljava/lang/String;

.field private mArtistId:Ljava/lang/String;

.field mButtonClicked:Landroid/view/View$OnClickListener;

.field private mCancel:Lcom/htc/widget/HtcFooterButton;

.field private mComposer:Ljava/lang/String;

.field private mGenre:Ljava/lang/String;

.field private mGlist:Lcom/htc/music/widget/GroupListView;

.field private mNoChildMode:Z

.field private mPlaylistUri:Ljava/lang/String;

.field private mSave:Lcom/htc/widget/HtcFooterButton;

.field private mScanListener:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/htc/music/widget/GroupListActivity;-><init>()V

    new-instance v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$1;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$1;-><init>(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$3;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$3;-><init>(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mButtonClicked:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mArtistId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGenre:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mComposer:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mNoChildMode:Z

    return v0
.end method

.method static synthetic access$402(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0

    iput-object p1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$500(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1

    invoke-direct {p0, p1}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getTrackCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Lcom/htc/music/widget/GroupListView;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGlist:Lcom/htc/music/widget/GroupListView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mPlaylistUri:Ljava/lang/String;

    return-object v0
.end method

.method private getAddBtnText()Ljava/lang/String;
    .locals 8

    const/4 v3, 0x0

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGlist:Lcom/htc/music/widget/GroupListView;

    if-eqz v4, :cond_0

    const/4 v1, 0x0

    iget-boolean v4, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mNoChildMode:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGlist:Lcom/htc/music/widget/GroupListView;

    invoke-virtual {v4}, Lcom/htc/music/widget/GroupListView;->getGroupSeclectList()[I

    move-result-object v1

    :goto_0
    if-nez v1, :cond_2

    move v0, v3

    :cond_0
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f07005f

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f070054

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_1
    iget-object v4, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGlist:Lcom/htc/music/widget/GroupListView;

    invoke-virtual {v4}, Lcom/htc/music/widget/GroupListView;->getChildSeclectList()[I

    move-result-object v1

    goto :goto_0

    :cond_2
    array-length v0, v1

    goto :goto_1
.end method

.method private getTrackCursor(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 22

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mArtistId:Ljava/lang/String;

    if-nez v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGenre:Ljava/lang/String;

    if-nez v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mComposer:Ljava/lang/String;

    if-eqz v1, :cond_1

    :cond_0
    const-string v1, "album != \'\'"

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const/4 v5, 0x0

    if-eqz p1, :cond_3

    const-string v1, " "

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    array-length v1, v0

    new-array v5, v1, [Ljava/lang/String;

    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v12

    const/4 v1, 0x0

    invoke-virtual {v12, v1}, Ljava/text/Collator;->setStrength(I)V

    const/16 v16, 0x0

    :goto_1
    move-object/from16 v0, v18

    array-length v1, v0

    move/from16 v0, v16

    if-ge v0, v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x25

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v18, v16

    invoke-static {v2}, Landroid/provider/MediaStore$Audio;->keyFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x25

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v16

    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    :cond_1
    const-string v1, "title != \'\'"

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const/16 v16, 0x0

    :goto_2
    move-object/from16 v0, v18

    array-length v1, v0

    move/from16 v0, v16

    if-ge v0, v1, :cond_3

    const-string v1, " AND "

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "artist_key||"

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "album_key ||"

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "title_key LIKE ?"

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const/4 v1, 0x7

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v3, v1

    const/4 v1, 0x1

    const-string v2, "album"

    aput-object v2, v3, v1

    const/4 v1, 0x2

    const-string v2, "artist"

    aput-object v2, v3, v1

    const/4 v1, 0x3

    const-string v2, "numsongs"

    aput-object v2, v3, v1

    const/4 v1, 0x4

    const-string v2, "minyear"

    aput-object v2, v3, v1

    const/4 v1, 0x5

    const-string v2, "maxyear"

    aput-object v2, v3, v1

    const/4 v1, 0x6

    const-string v2, "album_art"

    aput-object v2, v3, v1

    const/16 v1, 0x8

    new-array v8, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v8, v1

    const/4 v1, 0x1

    const-string v2, "title"

    aput-object v2, v8, v1

    const/4 v1, 0x2

    const-string v2, "title_key"

    aput-object v2, v8, v1

    const/4 v1, 0x3

    const-string v2, "_data"

    aput-object v2, v8, v1

    const/4 v1, 0x4

    const-string v2, "album"

    aput-object v2, v8, v1

    const/4 v1, 0x5

    const-string v2, "album_id"

    aput-object v2, v8, v1

    const/4 v1, 0x6

    const-string v2, "artist"

    aput-object v2, v8, v1

    const/4 v1, 0x7

    const-string v2, "artist_id"

    aput-object v2, v8, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mArtistId:Ljava/lang/String;

    if-eqz v1, :cond_4

    const-string v1, "external"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mArtistId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v1, v6, v7}, Landroid/provider/MediaStore$Audio$Artists$Albums;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "album COLLATE NOCASE ASC"

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v6}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    :goto_3
    return-object v17

    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGenre:Ljava/lang/String;

    if-eqz v1, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGenre:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    const-wide/16 v1, -0x1

    cmp-long v1, v14, v1

    if-nez v1, :cond_5

    const-string v1, " AND _id  in (select  distinct album_id from audio where _id NOT IN (select audio_id from audio_genres_map ) )"

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    sget-object v2, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "album COLLATE NOCASE ASC"

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v6}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    goto :goto_3

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " AND _id  in (select  distinct album_id from audio where _id IN (select audio_id from audio_genres_map WHERE genre_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGenre:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mComposer:Ljava/lang/String;

    if-eqz v1, :cond_8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mComposer:Ljava/lang/String;

    invoke-static {v13}, Lcom/htc/music/util/MusicUtils;->isUnknownComposer(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_7

    const-string v1, " AND _id IN (SELECT distinct album_id FROM audio_meta where (audio_meta.composer ISNULL OR audio_meta.composer = \'\' OR audio_meta.composer = \'<unknown>\'))"

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_5
    sget-object v2, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "album COLLATE NOCASE ASC"

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v6}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    goto :goto_3

    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " AND _id IN (SELECT distinct album_id FROM audio_meta where audio_meta.composer = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mAlbumId:Ljava/lang/String;

    if-eqz v1, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " AND album_id=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mAlbumId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    const-string v1, " AND is_musicis_music>=1"

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v11, "title COLLATE NOCASE ASC"

    move-object/from16 v6, p0

    move-object v10, v5

    invoke-static/range {v6 .. v11}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    goto/16 :goto_3
.end method


# virtual methods
.method public init()V
    .locals 14

    const v3, 0x7f070065

    const v4, 0x7f03000e

    const/4 v13, 0x1

    const/4 v7, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getTrackCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    const v1, 0x7f030027

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->setContentView(I)V

    const v1, 0x7f08003c

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10, v7}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f08003e

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcFooterButton;

    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSave:Lcom/htc/widget/HtcFooterButton;

    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSave:Lcom/htc/widget/HtcFooterButton;

    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mButtonClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSave:Lcom/htc/widget/HtcFooterButton;

    invoke-direct {p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getAddBtnText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcFooterButton;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f07005f

    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (0)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSave:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v1}, Lcom/htc/widget/HtcFooterButton;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSave:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v1, v7}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    :goto_1
    const v1, 0x7f08003d

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcFooterButton;

    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mCancel:Lcom/htc/widget/HtcFooterButton;

    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mCancel:Lcom/htc/widget/HtcFooterButton;

    const v2, 0x20c013d

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mCancel:Lcom/htc/widget/HtcFooterButton;

    new-instance v2, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$2;

    invoke-direct {v2, p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$2;-><init>(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v11

    if-nez v11, :cond_2

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->setTitle(Ljava/lang/String;)V

    const v1, 0x7f070029

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->showEmptyView(I)V

    goto/16 :goto_0

    :cond_1
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSave:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v1, v13}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->hideEmptyErrorView()V

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->setTitle(Ljava/lang/String;)V

    new-instance v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;

    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    new-array v5, v7, [Ljava/lang/String;

    new-array v6, v7, [I

    new-array v8, v7, [Ljava/lang/String;

    new-array v9, v7, [I

    move-object v1, p0

    move-object v2, p0

    move v7, v4

    invoke-direct/range {v0 .. v9}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;-><init>(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;Landroid/content/Context;Landroid/database/Cursor;I[Ljava/lang/String;[II[Ljava/lang/String;[I)V

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->setListAdapter(Landroid/widget/ExpandableListAdapter;)V

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getGroupListView()Lcom/htc/music/widget/GroupListView;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGlist:Lcom/htc/music/widget/GroupListView;

    iget-boolean v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mNoChildMode:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGlist:Lcom/htc/music/widget/GroupListView;

    invoke-virtual {v1}, Lcom/htc/music/widget/GroupListView;->expandAllGroups()V

    :cond_3
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGlist:Lcom/htc/music/widget/GroupListView;

    invoke-virtual {v1, p0}, Lcom/htc/music/widget/GroupListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGlist:Lcom/htc/music/widget/GroupListView;

    invoke-virtual {v1, p0}, Lcom/htc/music/widget/GroupListView;->setOnGroupClickListener(Lcom/htc/music/widget/GroupListView$OnGroupClickListener;)V

    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGlist:Lcom/htc/music/widget/GroupListView;

    invoke-virtual {v1, v13}, Lcom/htc/music/widget/GroupListView;->setFastScrollEnabled(Z)V

    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGlist:Lcom/htc/music/widget/GroupListView;

    invoke-virtual {v1, v13}, Lcom/htc/music/widget/GroupListView;->setTextFilterEnabled(Z)V

    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGlist:Lcom/htc/music/widget/GroupListView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/htc/music/widget/GroupListView;->setChoiceMode(I)V

    goto/16 :goto_0
.end method

.method public onChildClick(Lcom/htc/music/widget/GroupListView;Landroid/view/View;IIJ)Z
    .locals 4

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSave:Lcom/htc/widget/HtcFooterButton;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSave:Lcom/htc/widget/HtcFooterButton;

    invoke-direct {p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getAddBtnText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcFooterButton;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f07005f

    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (0)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSave:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v1}, Lcom/htc/widget/HtcFooterButton;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSave:Lcom/htc/widget/HtcFooterButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSave:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/htc/music/widget/GroupListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/htc/music/widget/GroupListActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->requestWindowFeature(I)Z

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->setVolumeControlStream(I)V

    if-eqz p1, :cond_0

    const-string v2, "genreid"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGenre:Ljava/lang/String;

    const-string v2, "composer"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mComposer:Ljava/lang/String;

    const-string v2, "playlisturi"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mPlaylistUri:Ljava/lang/String;

    const-string v2, "artistid"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mArtistId:Ljava/lang/String;

    const-string v2, "albumid"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mAlbumId:Ljava/lang/String;

    const-string v2, "nochildmode"

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mNoChildMode:Z

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/htc/music/util/MusicUtils;->bindToService(Landroid/content/Context;Ljava/lang/String;)Z

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "file"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->init()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "genreid"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGenre:Ljava/lang/String;

    const-string v2, "composer"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mComposer:Ljava/lang/String;

    const-string v2, "playlisturi"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mPlaylistUri:Ljava/lang/String;

    const-string v2, "artistid"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mArtistId:Ljava/lang/String;

    const-string v2, "nochildmode"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mNoChildMode:Z

    const-string v2, "albumid"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mAlbumId:Ljava/lang/String;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/htc/music/util/MusicUtils;->unbindFromService(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    const/4 v0, 0x0

    check-cast v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->setListAdapter(Landroid/widget/ExpandableListAdapter;)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-super {p0}, Lcom/htc/music/widget/GroupListActivity;->onDestroy()V

    return-void
.end method

.method public onGroupClick(Lcom/htc/music/widget/GroupListView;Landroid/view/View;IJ)Z
    .locals 4

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSave:Lcom/htc/widget/HtcFooterButton;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSave:Lcom/htc/widget/HtcFooterButton;

    invoke-direct {p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getAddBtnText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcFooterButton;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f07005f

    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (0)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSave:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v1}, Lcom/htc/widget/HtcFooterButton;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSave:Lcom/htc/widget/HtcFooterButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSave:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/htc/music/widget/GroupListActivity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/htc/music/widget/GroupListActivity;->onResume()V

    const v0, 0x7f070065

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "genreid"

    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGenre:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "composer"

    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mComposer:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "playlisturi"

    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mPlaylistUri:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "artistid"

    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mArtistId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "albumid"

    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mAlbumId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "nochildmode"

    iget-boolean v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mNoChildMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-super {p0, p1}, Lcom/htc/music/widget/GroupListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public setTitle(I)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 3

    const v2, 0x2020053

    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x2020054

    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

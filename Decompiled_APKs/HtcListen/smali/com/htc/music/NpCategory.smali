.class public Lcom/htc/music/NpCategory;
.super Ljava/lang/Object;
.source "NpCategory.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CATEGORY_ALBUM:S = 0x8s

.field public static final CATEGORY_ALLALBUM:S = 0xcs

.field public static final CATEGORY_ALLARTIST:S = 0x5s

.field public static final CATEGORY_ALLCOMPOSER:S = 0x13s

.field public static final CATEGORY_ALLGENRE:S = 0x11s

.field public static final CATEGORY_ALLPLAYLIST:S = 0x16s

.field public static final CATEGORY_ALLSONG:S = 0x0s

.field public static final CATEGORY_ARTIST:S = 0x2s

.field public static final CATEGORY_ARTIST_ALBUM:S = 0xbs

.field public static final CATEGORY_ARTIST_ALLALBUM:S = 0xfs

.field public static final CATEGORY_COMPOSER:S = 0x12s

.field public static final CATEGORY_COMPOSER_ALBUM:S = 0xas

.field public static final CATEGORY_COMPOSER_ALLALBUM:S = 0xes

.field public static final CATEGORY_COMPOSER_ALLARTIST:S = 0x7s

.field public static final CATEGORY_COMPOSER_ARTIST:S = 0x4s

.field public static final CATEGORY_DONT_REFRESH:S = 0x15s

.field public static final CATEGORY_GENRE:S = 0x10s

.field public static final CATEGORY_GENRE_ALBUM:S = 0x9s

.field public static final CATEGORY_GENRE_ALLALBUM:S = 0xds

.field public static final CATEGORY_GENRE_ALLARTIST:S = 0x6s

.field public static final CATEGORY_GENRE_ARTIST:S = 0x3s

.field public static final CATEGORY_PLAYLIST:S = 0x14s

.field public static final CATEGORY_PURCHASED:S = 0x1s

.field public static final CATEGORY_UNDEFINED:S = -0x1s

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/music/NpCategory;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "[NpCategory]"


# instance fields
.field private mAlbumId:I

.field private mArtistId:I

.field private mCategory:S

.field private mComposer:Ljava/lang/StringBuilder;

.field private mGenreId:I

.field private mPlaylistId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/htc/music/NpCategory$1;

    invoke-direct {v0}, Lcom/htc/music/NpCategory$1;-><init>()V

    sput-object v0, Lcom/htc/music/NpCategory;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    int-to-short v1, v1

    iput-short v1, p0, Lcom/htc/music/NpCategory;->mCategory:S

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/htc/music/NpCategory;->mArtistId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/htc/music/NpCategory;->mAlbumId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/htc/music/NpCategory;->mGenreId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/htc/music/NpCategory;->mComposer:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/htc/music/NpCategory;->mPlaylistId:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "[NpCategory]"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/htc/music/NpCategory$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/music/NpCategory;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(S)V
    .locals 3

    const/4 v2, -0x1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    if-lt p1, v2, :cond_0

    const/16 v0, 0x16

    if-le p1, v0, :cond_1

    :cond_0
    const-string v0, "[NpCategory]"

    const-string v1, "category error in constructor."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    iput-short v2, p0, Lcom/htc/music/NpCategory;->mCategory:S

    :goto_0
    iput v2, p0, Lcom/htc/music/NpCategory;->mArtistId:I

    iput v2, p0, Lcom/htc/music/NpCategory;->mAlbumId:I

    const/4 v0, -0x2

    iput v0, p0, Lcom/htc/music/NpCategory;->mGenreId:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/htc/music/NpCategory;->mComposer:Ljava/lang/StringBuilder;

    iput v2, p0, Lcom/htc/music/NpCategory;->mPlaylistId:I

    return-void

    :cond_1
    iput-short p1, p0, Lcom/htc/music/NpCategory;->mCategory:S

    goto :goto_0
.end method

.method public constructor <init>(SIIILjava/lang/String;I)V
    .locals 3

    const/4 v2, -0x1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    if-lt p1, v2, :cond_0

    const/16 v0, 0x16

    if-le p1, v0, :cond_1

    :cond_0
    const-string v0, "[NpCategory]"

    const-string v1, "category error in constructor."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    iput-short v2, p0, Lcom/htc/music/NpCategory;->mCategory:S

    :goto_0
    iput v2, p0, Lcom/htc/music/NpCategory;->mArtistId:I

    iput v2, p0, Lcom/htc/music/NpCategory;->mAlbumId:I

    const/4 v0, -0x2

    iput v0, p0, Lcom/htc/music/NpCategory;->mGenreId:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/htc/music/NpCategory;->mComposer:Ljava/lang/StringBuilder;

    iput v2, p0, Lcom/htc/music/NpCategory;->mPlaylistId:I

    invoke-virtual {p0, p2}, Lcom/htc/music/NpCategory;->setArtistId(I)Lcom/htc/music/NpCategory;

    invoke-virtual {p0, p3}, Lcom/htc/music/NpCategory;->setAlbumId(I)Lcom/htc/music/NpCategory;

    invoke-virtual {p0, p4}, Lcom/htc/music/NpCategory;->setGenreId(I)Lcom/htc/music/NpCategory;

    invoke-virtual {p0, p5}, Lcom/htc/music/NpCategory;->setComposer(Ljava/lang/String;)Lcom/htc/music/NpCategory;

    invoke-virtual {p0, p6}, Lcom/htc/music/NpCategory;->setPlaylistId(I)Lcom/htc/music/NpCategory;

    return-void

    :cond_1
    iput-short p1, p0, Lcom/htc/music/NpCategory;->mCategory:S

    goto :goto_0
.end method

.method public constructor <init>(SLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v2, -0x1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    if-lt p1, v2, :cond_0

    const/16 v0, 0x16

    if-le p1, v0, :cond_1

    :cond_0
    const-string v0, "[NpCategory]"

    const-string v1, "category error in constructor."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    iput-short v2, p0, Lcom/htc/music/NpCategory;->mCategory:S

    :goto_0
    iput v2, p0, Lcom/htc/music/NpCategory;->mArtistId:I

    iput v2, p0, Lcom/htc/music/NpCategory;->mAlbumId:I

    const/4 v0, -0x2

    iput v0, p0, Lcom/htc/music/NpCategory;->mGenreId:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/htc/music/NpCategory;->mComposer:Ljava/lang/StringBuilder;

    iput v2, p0, Lcom/htc/music/NpCategory;->mPlaylistId:I

    invoke-virtual {p0, p2}, Lcom/htc/music/NpCategory;->setArtistId(Ljava/lang/String;)Lcom/htc/music/NpCategory;

    invoke-virtual {p0, p3}, Lcom/htc/music/NpCategory;->setAlbumId(Ljava/lang/String;)Lcom/htc/music/NpCategory;

    invoke-virtual {p0, p4}, Lcom/htc/music/NpCategory;->setGenreId(Ljava/lang/String;)Lcom/htc/music/NpCategory;

    invoke-virtual {p0, p5}, Lcom/htc/music/NpCategory;->setComposer(Ljava/lang/String;)Lcom/htc/music/NpCategory;

    invoke-virtual {p0, p6}, Lcom/htc/music/NpCategory;->setPlaylistId(Ljava/lang/String;)Lcom/htc/music/NpCategory;

    return-void

    :cond_1
    iput-short p1, p0, Lcom/htc/music/NpCategory;->mCategory:S

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAlbumId()I
    .locals 1

    iget v0, p0, Lcom/htc/music/NpCategory;->mAlbumId:I

    return v0
.end method

.method public getArtistId()I
    .locals 1

    iget v0, p0, Lcom/htc/music/NpCategory;->mArtistId:I

    return v0
.end method

.method public getCategory()S
    .locals 1

    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    return v0
.end method

.method public getComposer()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/NpCategory;->mComposer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGenreId()I
    .locals 1

    iget v0, p0, Lcom/htc/music/NpCategory;->mGenreId:I

    return v0
.end method

.method public getPlaylistId()I
    .locals 1

    iget v0, p0, Lcom/htc/music/NpCategory;->mPlaylistId:I

    return v0
.end method

.method public query(Landroid/content/Context;)Landroid/database/Cursor;
    .locals 26

    move-object/from16 v0, p0

    iget-short v2, v0, Lcom/htc/music/NpCategory;->mCategory:S

    const/4 v3, -0x1

    if-le v2, v3, :cond_0

    move-object/from16 v0, p0

    iget-short v2, v0, Lcom/htc/music/NpCategory;->mCategory:S

    const/16 v3, 0x16

    if-gt v2, v3, :cond_0

    move-object/from16 v0, p0

    iget-short v2, v0, Lcom/htc/music/NpCategory;->mCategory:S

    const/16 v3, 0x15

    if-ne v2, v3, :cond_2

    :cond_0
    const/4 v11, 0x0

    :cond_1
    :goto_0
    return-object v11

    :cond_2
    const/4 v11, 0x0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-short v2, v0, Lcom/htc/music/NpCategory;->mCategory:S

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    const-string v2, "[NpCategory]"

    const-string v3, "There is something wrong in NpCategory.query()."

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    if-nez v10, :cond_3

    const-string v10, "title COLLATE NOCASE ASC"

    :cond_3
    if-nez v6, :cond_4

    sget-object v6, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    :cond_4
    if-nez v7, :cond_5

    const/4 v2, 0x2

    new-array v7, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v7, v2

    const/4 v2, 0x1

    const-string v3, "album_id"

    aput-object v3, v7, v2

    :cond_5
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    move-object/from16 v5, p1

    invoke-static/range {v5 .. v10}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    const/16 v24, 0x0

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    goto :goto_0

    :pswitch_1
    const-string v2, "title != \'\' AND is_music>=1"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_2
    const-string v2, "title != \'\' AND is_music>1"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/NpCategory;->mArtistId:I

    const/4 v3, -0x1

    if-gt v2, v3, :cond_6

    const/4 v11, 0x0

    goto :goto_0

    :cond_6
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/music/NpCategory;->mArtistId:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-static {v2, v3, v5, v8}, Lcom/htc/music/util/MusicUtils;->getQueryString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/NpCategory;->mArtistId:I

    const/4 v3, -0x1

    if-le v2, v3, :cond_7

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/NpCategory;->mGenreId:I

    const/4 v3, -0x2

    if-gt v2, v3, :cond_8

    :cond_7
    const/4 v11, 0x0

    goto :goto_0

    :cond_8
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/music/NpCategory;->mArtistId:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/music/NpCategory;->mGenreId:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    invoke-static {v2, v3, v5, v8}, Lcom/htc/music/util/MusicUtils;->getQueryString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :pswitch_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/NpCategory;->mArtistId:I

    const/4 v3, -0x1

    if-le v2, v3, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/NpCategory;->mComposer:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/NpCategory;->mComposer:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_a

    :cond_9
    const/4 v11, 0x0

    goto/16 :goto_0

    :cond_a
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/music/NpCategory;->mArtistId:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/music/NpCategory;->mComposer:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v3, v5, v8}, Lcom/htc/music/util/MusicUtils;->getQueryString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :pswitch_6
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-static {v2, v3, v5, v8}, Lcom/htc/music/util/MusicUtils;->getQueryString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "artist COLLATE NOCASE ASC , title COLLATE NOCASE ASC"

    goto/16 :goto_1

    :pswitch_7
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/NpCategory;->mGenreId:I

    const/4 v3, -0x2

    if-gt v2, v3, :cond_b

    const/4 v11, 0x0

    goto/16 :goto_0

    :cond_b
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/music/NpCategory;->mGenreId:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    invoke-static {v2, v3, v5, v8}, Lcom/htc/music/util/MusicUtils;->getQueryString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "title_key"

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/NpCategory;->mGenreId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_c

    const-string v2, "external"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/music/NpCategory;->mGenreId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v8, v3

    invoke-static {v2, v8, v9}, Landroid/provider/MediaStore$Audio$Genres$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v6

    goto/16 :goto_1

    :cond_c
    const-string v2, " AND _id NOT IN (SELECT audio_id FROM audio_genres_map)"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :pswitch_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/NpCategory;->mComposer:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/NpCategory;->mComposer:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_e

    :cond_d
    const/4 v11, 0x0

    goto/16 :goto_0

    :cond_e
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/music/NpCategory;->mComposer:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v3, v5, v8}, Lcom/htc/music/util/MusicUtils;->getQueryString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "artist COLLATE NOCASE ASC , title COLLATE NOCASE ASC"

    goto/16 :goto_1

    :pswitch_9
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/NpCategory;->mAlbumId:I

    const/4 v3, -0x1

    if-gt v2, v3, :cond_f

    const/4 v11, 0x0

    goto/16 :goto_0

    :cond_f
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/NpCategory;->mAlbumId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-static {v2, v3, v5, v8}, Lcom/htc/music/util/MusicUtils;->getQueryString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "track, title COLLATE NOCASE ASC"

    goto/16 :goto_1

    :pswitch_a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/NpCategory;->mAlbumId:I

    const/4 v3, -0x1

    if-le v2, v3, :cond_10

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/NpCategory;->mGenreId:I

    const/4 v3, -0x2

    if-gt v2, v3, :cond_11

    :cond_10
    const/4 v11, 0x0

    goto/16 :goto_0

    :cond_11
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/NpCategory;->mAlbumId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/music/NpCategory;->mGenreId:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    invoke-static {v2, v3, v5, v8}, Lcom/htc/music/util/MusicUtils;->getQueryString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/NpCategory;->mGenreId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_12

    const-string v2, "external"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/music/NpCategory;->mGenreId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v8, v3

    invoke-static {v2, v8, v9}, Landroid/provider/MediaStore$Audio$Genres$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v6

    :goto_2
    const-string v10, "track, title COLLATE NOCASE ASC"

    goto/16 :goto_1

    :cond_12
    const-string v2, " AND _id NOT IN (SELECT audio_id FROM audio_genres_map)"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :pswitch_b
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/NpCategory;->mAlbumId:I

    const/4 v3, -0x1

    if-le v2, v3, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/NpCategory;->mComposer:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/NpCategory;->mComposer:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_14

    :cond_13
    const/4 v11, 0x0

    goto/16 :goto_0

    :cond_14
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/NpCategory;->mAlbumId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/music/NpCategory;->mComposer:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v3, v5, v8}, Lcom/htc/music/util/MusicUtils;->getQueryString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "track, title COLLATE NOCASE ASC"

    goto/16 :goto_1

    :pswitch_c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/NpCategory;->mArtistId:I

    const/4 v3, -0x1

    if-le v2, v3, :cond_15

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/NpCategory;->mAlbumId:I

    const/4 v3, -0x1

    if-gt v2, v3, :cond_16

    :cond_15
    const/4 v11, 0x0

    goto/16 :goto_0

    :cond_16
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/NpCategory;->mAlbumId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/music/NpCategory;->mArtistId:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-static {v2, v3, v5, v8}, Lcom/htc/music/util/MusicUtils;->getQueryString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "track, title COLLATE NOCASE ASC"

    goto/16 :goto_1

    :pswitch_d
    const-string v2, "title != \'\' AND is_music>=1"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "album COLLATE NOCASE ASC , track, title COLLATE NOCASE ASC"

    goto/16 :goto_1

    :pswitch_e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/NpCategory;->mGenreId:I

    const/4 v3, -0x2

    if-gt v2, v3, :cond_17

    const/4 v11, 0x0

    goto/16 :goto_0

    :cond_17
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/music/NpCategory;->mGenreId:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    invoke-static {v2, v3, v5, v8}, Lcom/htc/music/util/MusicUtils;->getQueryString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "title_key"

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/NpCategory;->mGenreId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_18

    const-string v2, "external"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/music/NpCategory;->mGenreId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v8, v3

    invoke-static {v2, v8, v9}, Landroid/provider/MediaStore$Audio$Genres$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v6

    goto/16 :goto_1

    :cond_18
    const-string v2, " AND _id NOT IN (SELECT audio_id FROM audio_genres_map)"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :pswitch_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/NpCategory;->mComposer:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/NpCategory;->mComposer:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1a

    :cond_19
    const/4 v11, 0x0

    goto/16 :goto_0

    :cond_1a
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/music/NpCategory;->mComposer:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v3, v5, v8}, Lcom/htc/music/util/MusicUtils;->getQueryString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "album COLLATE NOCASE ASC , track, title COLLATE NOCASE ASC"

    goto/16 :goto_1

    :pswitch_10
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/NpCategory;->mArtistId:I

    const/4 v3, -0x1

    if-gt v2, v3, :cond_1b

    const/4 v11, 0x0

    goto/16 :goto_0

    :cond_1b
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/music/NpCategory;->mArtistId:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-static {v2, v3, v5, v8}, Lcom/htc/music/util/MusicUtils;->getQueryString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "album COLLATE NOCASE ASC , track, title COLLATE NOCASE ASC"

    goto/16 :goto_1

    :pswitch_11
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/NpCategory;->mGenreId:I

    const/4 v3, -0x2

    if-gt v2, v3, :cond_1c

    const/4 v11, 0x0

    goto/16 :goto_0

    :cond_1c
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/music/NpCategory;->mGenreId:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    invoke-static {v2, v3, v5, v8}, Lcom/htc/music/util/MusicUtils;->getQueryString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/NpCategory;->mGenreId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1d

    const-string v2, "external"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/music/NpCategory;->mGenreId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v8, v3

    invoke-static {v2, v8, v9}, Landroid/provider/MediaStore$Audio$Genres$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v6

    :goto_3
    const-string v10, "title_key"

    goto/16 :goto_1

    :cond_1d
    const-string v2, " AND _id NOT IN (SELECT audio_id FROM audio_genres_map)"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :pswitch_12
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "title != \'\'"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " AND is_music>=1"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " AND _id NOT IN (SELECT audio_id FROM audio_genres_map)"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "_id"

    aput-object v5, v4, v2

    const/4 v2, 0x1

    const-string v5, "album_id"

    aput-object v5, v4, v2

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "title"

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v7}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v22

    const-string v2, "external"

    invoke-static {v2}, Landroid/provider/MediaStore$Audio$Genres;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "_id"

    aput-object v5, v4, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "name"

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v7}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    if-eqz v22, :cond_1e

    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_22

    :cond_1e
    if-eqz v16, :cond_1f

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_22

    :cond_1f
    if-eqz v22, :cond_20

    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    const/16 v22, 0x0

    :cond_20
    if-eqz v16, :cond_21

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    const/16 v16, 0x0

    :cond_21
    const/16 v25, 0x0

    const/4 v11, 0x0

    goto/16 :goto_0

    :cond_22
    if-nez v16, :cond_25

    const/16 v19, 0x0

    :goto_4
    if-eqz v22, :cond_23

    add-int/lit8 v19, v19, 0x1

    move-object/from16 v11, v22

    :cond_23
    move/from16 v0, v19

    new-array v15, v0, [Landroid/database/Cursor;

    const/16 v23, 0x0

    if-eqz v22, :cond_24

    const/4 v2, 0x0

    aput-object v22, v15, v2

    add-int/lit8 v23, v23, 0x1

    :cond_24
    if-eqz v16, :cond_27

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v2, "_id"

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    move/from16 v18, v23

    :goto_5
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_26

    move-object/from16 v0, v16

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    const-string v2, "external"

    move/from16 v0, v17

    int-to-long v8, v0

    invoke-static {v2, v8, v9}, Landroid/provider/MediaStore$Audio$Genres$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v3

    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "_id"

    aput-object v5, v4, v2

    const/4 v2, 0x1

    const-string v5, "album_id"

    aput-object v5, v4, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "title"

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v7}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    aput-object v14, v15, v18

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v18, v18, 0x1

    goto :goto_5

    :cond_25
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v19

    goto :goto_4

    :cond_26
    new-instance v11, Landroid/database/MergeCursor;

    invoke-direct {v11, v15}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    const/16 v16, 0x0

    const/16 v25, 0x0

    goto/16 :goto_0

    :cond_27
    const/16 v25, 0x0

    const/4 v11, 0x0

    goto/16 :goto_0

    :pswitch_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/NpCategory;->mComposer:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_28

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/NpCategory;->mComposer:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_29

    :cond_28
    const/4 v11, 0x0

    goto/16 :goto_0

    :cond_29
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/music/NpCategory;->mComposer:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v3, v5, v8}, Lcom/htc/music/util/MusicUtils;->getQueryString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :pswitch_14
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-static {v2, v3, v5, v8}, Lcom/htc/music/util/MusicUtils;->getQueryString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "composer COLLATE NOCASE ASC , title COLLATE NOCASE ASC"

    goto/16 :goto_1

    :pswitch_15
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/NpCategory;->mPlaylistId:I

    const/4 v3, -0x1

    if-gt v2, v3, :cond_2a

    const/4 v11, 0x0

    goto/16 :goto_0

    :cond_2a
    const/4 v2, 0x2

    new-array v7, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "audio_id"

    aput-object v3, v7, v2

    const/4 v2, 0x1

    const-string v3, "album_id"

    aput-object v3, v7, v2

    const-string v2, "external"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/music/NpCategory;->mPlaylistId:I

    int-to-long v8, v3

    invoke-static {v2, v8, v9}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v6

    const-string v2, "title != \'\'"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "play_order"

    goto/16 :goto_1

    :pswitch_16
    const/4 v2, 0x2

    new-array v13, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "audio_id"

    aput-object v3, v13, v2

    const/4 v2, 0x1

    const-string v3, "album_id"

    aput-object v3, v13, v2

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v4, v2

    const/16 v20, 0x0

    const/4 v15, 0x0

    const/16 v19, 0x0

    :try_start_0
    const-string v2, "external"

    invoke-static {v2}, Landroid/provider/MediaStore$Audio$Playlists;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "name"

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v7}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    if-eqz v20, :cond_2c

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_2c

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->getCount()I

    move-result v19

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v2, "_id"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    move/from16 v0, v19

    new-array v15, v0, [Landroid/database/Cursor;

    const/16 v18, 0x0

    :goto_6
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_2b

    move-object/from16 v0, v20

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    const-string v2, "external"

    move/from16 v0, v21

    int-to-long v8, v0

    invoke-static {v2, v8, v9}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "title_key"

    move-object/from16 v5, p1

    move-object v7, v13

    invoke-static/range {v5 .. v10}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    aput-object v2, v15, v18

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v18, v18, 0x1

    goto :goto_6

    :cond_2b
    new-instance v11, Landroid/database/MergeCursor;

    invoke-direct {v11, v15}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v20, :cond_1

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    const/16 v20, 0x0

    goto/16 :goto_0

    :cond_2c
    const/4 v11, 0x0

    if-eqz v20, :cond_1

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    const/16 v20, 0x0

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    if-eqz v20, :cond_2d

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    const/16 v20, 0x0

    :cond_2d
    throw v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_0
        :pswitch_16
    .end packed-switch
.end method

.method public reset(S)Lcom/htc/music/NpCategory;
    .locals 4

    const/4 v3, -0x1

    if-lt p1, v3, :cond_0

    const/16 v0, 0x16

    if-le p1, v0, :cond_2

    :cond_0
    const-string v0, "[NpCategory]"

    const-string v1, "category error in constructor."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    iput-short v3, p0, Lcom/htc/music/NpCategory;->mCategory:S

    :goto_0
    iput v3, p0, Lcom/htc/music/NpCategory;->mArtistId:I

    iput v3, p0, Lcom/htc/music/NpCategory;->mAlbumId:I

    const/4 v0, -0x2

    iput v0, p0, Lcom/htc/music/NpCategory;->mGenreId:I

    iget-object v0, p0, Lcom/htc/music/NpCategory;->mComposer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/NpCategory;->mComposer:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/music/NpCategory;->mComposer:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_1
    iput v3, p0, Lcom/htc/music/NpCategory;->mPlaylistId:I

    return-object p0

    :cond_2
    iput-short p1, p0, Lcom/htc/music/NpCategory;->mCategory:S

    goto :goto_0
.end method

.method public setAlbumId(I)Lcom/htc/music/NpCategory;
    .locals 6

    const/16 v5, 0xb

    const/16 v4, 0xa

    const/16 v3, 0x9

    const/16 v2, 0x8

    const/4 v0, -0x1

    if-gt p1, v0, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    if-nez v0, :cond_3

    iput-short v2, p0, Lcom/htc/music/NpCategory;->mCategory:S

    :cond_2
    :goto_1
    iput p1, p0, Lcom/htc/music/NpCategory;->mAlbumId:I

    goto :goto_0

    :cond_3
    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    iput-short v3, p0, Lcom/htc/music/NpCategory;->mCategory:S

    goto :goto_1

    :cond_4
    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    const/16 v1, 0x12

    if-ne v0, v1, :cond_5

    iput-short v4, p0, Lcom/htc/music/NpCategory;->mCategory:S

    goto :goto_1

    :cond_5
    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    iput-short v5, p0, Lcom/htc/music/NpCategory;->mCategory:S

    goto :goto_1

    :cond_6
    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    if-eq v0, v2, :cond_2

    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    if-eq v0, v5, :cond_2

    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    if-eq v0, v3, :cond_2

    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    if-ne v0, v4, :cond_0

    goto :goto_1
.end method

.method public setAlbumId(Ljava/lang/String;)Lcom/htc/music/NpCategory;
    .locals 5

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/music/NpCategory;->setAlbumId(I)Lcom/htc/music/NpCategory;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "[NpCategory]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The string cannot be parsed as an integer value"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setArtistId(I)Lcom/htc/music/NpCategory;
    .locals 7

    const/16 v6, 0xf

    const/16 v5, 0xb

    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v0, -0x1

    if-gt p1, v0, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    if-nez v0, :cond_3

    iput-short v2, p0, Lcom/htc/music/NpCategory;->mCategory:S

    :cond_2
    :goto_1
    iput p1, p0, Lcom/htc/music/NpCategory;->mArtistId:I

    goto :goto_0

    :cond_3
    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    iput-short v3, p0, Lcom/htc/music/NpCategory;->mCategory:S

    goto :goto_1

    :cond_4
    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    const/16 v1, 0x12

    if-ne v0, v1, :cond_5

    iput-short v4, p0, Lcom/htc/music/NpCategory;->mCategory:S

    goto :goto_1

    :cond_5
    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    const/16 v1, 0x8

    if-ne v0, v1, :cond_6

    iput-short v5, p0, Lcom/htc/music/NpCategory;->mCategory:S

    goto :goto_1

    :cond_6
    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    const/16 v1, 0xc

    if-ne v0, v1, :cond_7

    iput-short v6, p0, Lcom/htc/music/NpCategory;->mCategory:S

    goto :goto_1

    :cond_7
    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    if-eq v0, v2, :cond_2

    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    if-eq v0, v5, :cond_2

    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    if-eq v0, v3, :cond_2

    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    if-eq v0, v4, :cond_2

    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    if-ne v0, v6, :cond_0

    goto :goto_1
.end method

.method public setArtistId(Ljava/lang/String;)Lcom/htc/music/NpCategory;
    .locals 5

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/music/NpCategory;->setArtistId(I)Lcom/htc/music/NpCategory;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "[NpCategory]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The string cannot be parsed as an integer value"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setComposer(Ljava/lang/String;)Lcom/htc/music/NpCategory;
    .locals 7

    const/16 v6, 0x12

    const/16 v5, 0xe

    const/16 v4, 0xa

    const/4 v3, 0x7

    const/4 v2, 0x4

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    if-nez v0, :cond_4

    iput-short v6, p0, Lcom/htc/music/NpCategory;->mCategory:S

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/htc/music/NpCategory;->mComposer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/htc/music/NpCategory;->mComposer:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/music/NpCategory;->mComposer:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v0, p0, Lcom/htc/music/NpCategory;->mComposer:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_4
    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    iput-short v2, p0, Lcom/htc/music/NpCategory;->mCategory:S

    goto :goto_1

    :cond_5
    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    const/16 v1, 0x8

    if-ne v0, v1, :cond_6

    iput-short v4, p0, Lcom/htc/music/NpCategory;->mCategory:S

    goto :goto_1

    :cond_6
    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    const/4 v1, 0x5

    if-ne v0, v1, :cond_7

    iput-short v3, p0, Lcom/htc/music/NpCategory;->mCategory:S

    goto :goto_1

    :cond_7
    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    const/16 v1, 0xc

    if-ne v0, v1, :cond_8

    iput-short v5, p0, Lcom/htc/music/NpCategory;->mCategory:S

    goto :goto_1

    :cond_8
    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    if-eq v0, v6, :cond_2

    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    if-eq v0, v2, :cond_2

    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    if-eq v0, v4, :cond_2

    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    if-eq v0, v5, :cond_2

    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    if-ne v0, v3, :cond_0

    goto :goto_1
.end method

.method public setGenreId(I)Lcom/htc/music/NpCategory;
    .locals 7

    const/16 v6, 0x10

    const/16 v5, 0xd

    const/16 v4, 0x9

    const/4 v3, 0x6

    const/4 v2, 0x3

    const/4 v0, -0x2

    if-gt p1, v0, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    if-nez v0, :cond_3

    iput-short v6, p0, Lcom/htc/music/NpCategory;->mCategory:S

    :cond_2
    :goto_1
    iput p1, p0, Lcom/htc/music/NpCategory;->mGenreId:I

    goto :goto_0

    :cond_3
    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    iput-short v2, p0, Lcom/htc/music/NpCategory;->mCategory:S

    goto :goto_1

    :cond_4
    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    const/16 v1, 0x8

    if-ne v0, v1, :cond_5

    iput-short v4, p0, Lcom/htc/music/NpCategory;->mCategory:S

    goto :goto_1

    :cond_5
    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    const/4 v1, 0x5

    if-ne v0, v1, :cond_6

    iput-short v3, p0, Lcom/htc/music/NpCategory;->mCategory:S

    goto :goto_1

    :cond_6
    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    const/16 v1, 0xc

    if-ne v0, v1, :cond_7

    iput-short v5, p0, Lcom/htc/music/NpCategory;->mCategory:S

    goto :goto_1

    :cond_7
    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    if-eq v0, v6, :cond_2

    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    if-eq v0, v2, :cond_2

    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    if-eq v0, v4, :cond_2

    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    if-eq v0, v3, :cond_2

    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    if-ne v0, v5, :cond_0

    goto :goto_1
.end method

.method public setGenreId(Ljava/lang/String;)Lcom/htc/music/NpCategory;
    .locals 5

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/music/NpCategory;->setGenreId(I)Lcom/htc/music/NpCategory;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "[NpCategory]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The string cannot be parsed as an integer value"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setPlaylistId(I)Lcom/htc/music/NpCategory;
    .locals 2

    const/16 v1, 0x14

    const/4 v0, -0x1

    if-gt p1, v0, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    if-nez v0, :cond_2

    iput-short v1, p0, Lcom/htc/music/NpCategory;->mCategory:S

    :goto_1
    iput p1, p0, Lcom/htc/music/NpCategory;->mPlaylistId:I

    goto :goto_0

    :cond_2
    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    if-ne v0, v1, :cond_0

    goto :goto_1
.end method

.method public setPlaylistId(Ljava/lang/String;)Lcom/htc/music/NpCategory;
    .locals 5

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/music/NpCategory;->setPlaylistId(I)Lcom/htc/music/NpCategory;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "[NpCategory]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The string cannot be parsed as an integer value"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/htc/music/NpCategory;->mComposer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Category = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/htc/music/NpCategory;->mCategory:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ArtistId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/music/NpCategory;->mArtistId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "AlbumId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/music/NpCategory;->mAlbumId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "GenreId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/music/NpCategory;->mGenreId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Composer = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/music/NpCategory;->mComposer:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "PlaylistId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/music/NpCategory;->mPlaylistId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Category = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/htc/music/NpCategory;->mCategory:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ArtistId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/music/NpCategory;->mArtistId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "AlbumId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/music/NpCategory;->mAlbumId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "GenreId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/music/NpCategory;->mGenreId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "PlaylistId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/music/NpCategory;->mPlaylistId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    :try_start_0
    iget-short v1, p0, Lcom/htc/music/NpCategory;->mCategory:S

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Lcom/htc/music/NpCategory;->mArtistId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Lcom/htc/music/NpCategory;->mAlbumId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Lcom/htc/music/NpCategory;->mGenreId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Lcom/htc/music/NpCategory;->mComposer:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v1, p0, Lcom/htc/music/NpCategory;->mPlaylistId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "[NpCategory]"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

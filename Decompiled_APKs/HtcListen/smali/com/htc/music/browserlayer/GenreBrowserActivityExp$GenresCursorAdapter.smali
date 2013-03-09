.class Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;
.super Lcom/htc/music/browserlayer/HTCCursorAdapter;
.source "GenreBrowserActivityExp.java"

# interfaces
.implements Landroid/widget/SectionIndexer;
.implements Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/GenreBrowserActivityExp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GenresCursorAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter$GenreViewHolder;,
        Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter$QueryHandler;
    }
.end annotation


# instance fields
.field alphabetColumnIndex:I

.field private mActivity:Lcom/htc/music/browserlayer/GenreBrowserActivityExp;

.field private mAlbumArtCache:Ljava/util/Hashtable;

.field mAllAlbumsLabel:Ljava/lang/String;

.field mAllSongsLabel:Ljava/lang/String;

.field private mAlphabet:Ljava/lang/StringBuffer;

.field mAlphabetArray:[Ljava/lang/String;

.field private mAlphabetColumnIndex:I

.field mAlphabetLength:I

.field private final mBuilder:Ljava/lang/StringBuilder;

.field private mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

.field private mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

.field private mIndexer:Lcom/htc/music/widget/HtcAlphabetIndexer;

.field private mIndexerTable:Ljava/util/Hashtable;

.field private mListViewHeight:I

.field private mQueryHandler:Landroid/content/AsyncQueryHandler;

.field private mResources:Landroid/content/res/Resources;

.field private mRootCursor:Landroid/database/Cursor;

.field private mSectionPosition:I

.field private final mUnknownAlbum:Ljava/lang/String;

.field private final mUnknownArtist:Ljava/lang/String;

.field private mViewGroup:Landroid/view/ViewGroup;

.field final synthetic this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExp;


# direct methods
.method public constructor <init>(Lcom/htc/music/browserlayer/GenreBrowserActivityExp;Landroid/content/Context;Lcom/htc/music/browserlayer/GenreBrowserActivityExp;Landroid/database/Cursor;Ljava/util/LinkedList;[II)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/htc/music/browserlayer/GenreBrowserActivityExp;",
            "Landroid/database/Cursor;",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/htc/music/browserlayer/HtcListNode;",
            ">;[II)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExp;

    const/4 v0, 0x1

    invoke-direct {p0, p2, p4, p5, v0}, Lcom/htc/music/browserlayer/HTCCursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Ljava/util/LinkedList;Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mBuilder:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mRootCursor:Landroid/database/Cursor;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mResources:Landroid/content/res/Resources;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mAlphabet:Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mAlbumArtCache:Ljava/util/Hashtable;

    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->alphabetColumnIndex:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mAlphabetLength:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mAlphabetArray:[Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mListViewHeight:I

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mIndexerTable:Ljava/util/Hashtable;

    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mAlphabetColumnIndex:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mSectionPosition:I

    const v0, 0x7f070044

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mUnknownAlbum:Ljava/lang/String;

    const v0, 0x7f070043

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mUnknownArtist:Ljava/lang/String;

    iput-object p3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mActivity:Lcom/htc/music/browserlayer/GenreBrowserActivityExp;

    new-instance v0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter$QueryHandler;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter$QueryHandler;-><init>(Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mResources:Landroid/content/res/Resources;

    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f020057

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setFilterBitmap(Z)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setDither(Z)V

    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mAlphabetLength:I

    iget v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mAlphabetLength:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mAlphabetArray:[Ljava/lang/String;

    const/4 v9, 0x0

    :goto_0
    iget v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mAlphabetLength:I

    if-ge v9, v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mAlphabetArray:[Ljava/lang/String;

    const-string v1, "ABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    const v0, 0x7f07009a

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mAllSongsLabel:Ljava/lang/String;

    const v0, 0x7f070099

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mAllAlbumsLabel:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->cacheAlbumArt(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mResources:Landroid/content/res/Resources;

    const v1, 0x20d008b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mResources:Landroid/content/res/Resources;

    const v1, 0x20d008f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    mul-int/lit8 v0, v7, 0x2

    sub-int v0, v8, v0

    iput v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mListViewHeight:I

    new-instance v0, Lcom/htc/music/util/AsyncImageDecoder;

    iget v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mListViewHeight:I

    iget v4, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mListViewHeight:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p2

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/htc/music/util/AsyncImageDecoder;-><init>(Landroid/content/Context;Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;IIZZ)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    return-void
.end method

.method static synthetic access$1000(Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;I)Landroid/database/Cursor;
    .locals 1

    invoke-direct {p0, p1}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->getGenresArtistCursor(I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;)Lcom/htc/music/browserlayer/GenreBrowserActivityExp;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mActivity:Lcom/htc/music/browserlayer/GenreBrowserActivityExp;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->go2Tracks(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->updateAlphabetIndex()V

    return-void
.end method

.method static synthetic access$900(Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;Landroid/database/Cursor;I)Landroid/database/Cursor;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->getGenresAlbumCusror(Landroid/database/Cursor;I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private cacheAlbumArt(Landroid/content/Context;)V
    .locals 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-object v7, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExp;

    iget-object v7, v7, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mAlbumCols:[Ljava/lang/String;

    invoke-direct {p0, p1, v7}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->getAlbumsCursor(Landroid/content/Context;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "_id"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v7, "album_art"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v4, :cond_0

    if-eqz v0, :cond_0

    iget-object v7, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mAlbumArtCache:Ljava/util/Hashtable;

    invoke-virtual {v7, v4}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mAlbumArtCache:Ljava/util/Hashtable;

    invoke-virtual {v7, v4, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    const/4 v1, 0x0

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    goto :goto_0
.end method

.method private getAlbumsCursor(Landroid/content/Context;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "album != \'\'"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v9, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mActivity:Lcom/htc/music/browserlayer/GenreBrowserActivityExp;

    sget-object v2, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const-string v6, "album COLLATE NOCASE ASC"

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/htc/music/util/MusicUtils;->mergeDlAlbumArt(Landroid/content/Context;Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v7

    return-object v7
.end method

.method private getGenreAllSongs(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10

    const/4 v4, 0x0

    const/4 v7, 0x0

    const-string v8, "title_key"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "genre_id = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "external"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Landroid/provider/MediaStore$Audio$Genres$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    return-object v7
.end method

.method private getGenresAlbumCursor(IZ)Landroid/database/Cursor;
    .locals 8

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "album != \'\'"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_1

    const-string v0, " AND album != \'<unknown>\'"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    const-string v0, " AND _id  in (select  distinct album_id from audio where _id NOT IN (select audio_id from audio_genres_map ) )"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExp;

    sget-object v1, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExp;

    iget-object v2, v2, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mAlbumCols:[Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "album COLLATE NOCASE ASC"

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExp;

    #getter for: Lcom/htc/music/widget/MusicListActivity;->mIsEnhancerExist:Z
    invoke-static {v0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->access$1900(Lcom/htc/music/browserlayer/GenreBrowserActivityExp;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExp;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/htc/music/util/MusicUtils;->mergeDlAlbumArt(Landroid/content/Context;Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v6

    :cond_0
    return-object v6

    :cond_1
    const-string v0, " AND album = \'<unknown>\'"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " AND _id  in (select  distinct album_id from audio where _id IN (select audio_id from audio_genres_map WHERE genre_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private getGenresAlbumCursor(Landroid/content/Context;I)Landroid/database/Cursor;
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, p2, v4}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->getGenresAlbumCursor(IZ)Landroid/database/Cursor;

    move-result-object v0

    invoke-direct {p0, p2, v5}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->getGenresAlbumCursor(IZ)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v1, Landroid/database/MergeCursor;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/database/Cursor;

    aput-object v0, v3, v4

    aput-object v2, v3, v5

    invoke-direct {v1, v3}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    move-object v0, v1

    :cond_0
    return-object v0
.end method

.method private getGenresAlbumCusror(Landroid/database/Cursor;I)Landroid/database/Cursor;
    .locals 3

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v1, "[GenreBrowserActivityExp]"

    const-string v2, "getGenresAlbumCusror, parentCursor = null or parentCursor closed"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExp;

    iget-object v1, v1, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mContext:Landroid/content/Context;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->getGenresAlbumCursor(Landroid/content/Context;I)Landroid/database/Cursor;

    move-result-object v1

    goto :goto_0
.end method

.method private getGenresAllSongs(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 12

    const/4 v5, 0x0

    const/4 v9, 0x0

    const-string v10, "title_key"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "title != \'\'"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x5

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v3, v0

    const/4 v0, 0x1

    const-string v1, "album"

    aput-object v1, v3, v0

    const/4 v0, 0x2

    const-string v1, "artist"

    aput-object v1, v3, v0

    const/4 v0, 0x3

    const-string v1, "album_id"

    aput-object v1, v3, v0

    const/4 v0, 0x4

    const-string v1, "artist_id"

    aput-object v1, v3, v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v7, v0

    const-wide/16 v0, -0x1

    cmp-long v0, v7, v0

    if-nez v0, :cond_0

    const-string v0, " AND _id NOT IN (SELECT audio_id FROM audio_genres_map)"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    :goto_0
    return-object v9

    :cond_0
    const-string v0, "external"

    invoke-static {v0, v7, v8}, Landroid/provider/MediaStore$Audio$Genres$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v4, v5

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    goto :goto_0
.end method

.method private getGenresArtistCursor(I)Landroid/database/Cursor;
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, p1, v4}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->getGenresArtistCursor(IZ)Landroid/database/Cursor;

    move-result-object v0

    invoke-direct {p0, p1, v5}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->getGenresArtistCursor(IZ)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_1

    new-instance v1, Landroid/database/MergeCursor;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/database/Cursor;

    aput-object v0, v3, v4

    aput-object v2, v3, v5

    invoke-direct {v1, v3}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    move-object v0, v1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getGenresArtistCursor(IZ)Landroid/database/Cursor;
    .locals 8

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "artist != \'\'"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_0

    const-string v0, " AND artist != \'<unknown>\'"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    const-string v0, " AND _id  in (select  distinct artist_id from audio where _id NOT IN (select audio_id from audio_genres_map ) )"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "artist"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExp;

    sget-object v1, Landroid/provider/MediaStore$Audio$Artists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "artist COLLATE NOCASE ASC"

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    return-object v6

    :cond_0
    const-string v0, " AND artist = \'<unknown>\'"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " AND _id  in (select  distinct artist_id from audio where _id IN (select audio_id from audio_genres_map WHERE genre_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private getGenresArtistCursor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8

    const/4 v4, 0x2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Landroid/database/MergeCursor;

    new-array v4, v4, [Landroid/database/Cursor;

    const/4 v5, 0x0

    new-instance v6, Lcom/htc/music/util/ArrayListCursor;

    iget-object v7, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExp;

    iget-object v7, v7, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mArtistCols:[Ljava/lang/String;

    invoke-direct {v6, v7, v1}, Lcom/htc/music/util/ArrayListCursor;-><init>([Ljava/lang/String;Ljava/util/ArrayList;)V

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->getGenresArtistCursor(I)Landroid/database/Cursor;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-direct {v2, v4}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    return-object v2
.end method

.method private getGenresArtistCursor(Landroid/database/Cursor;I)Landroid/database/Cursor;
    .locals 4

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExp;

    iget-object v1, v1, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mAllSongsLabel:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mAllAlbumsLabel:Ljava/lang/String;

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->getGenresArtistCursor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method private getGenresArtistCusror(Landroid/database/Cursor;I)Landroid/database/Cursor;
    .locals 4

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v1, "[GenreBrowserActivityExp]"

    const-string v2, "getGenresArtistCusror, parentCursor = null or parentCursor closed"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExp;

    iget-object v1, v1, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mAllSongsLabel:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mAllAlbumsLabel:Ljava/lang/String;

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->getGenresArtistCursor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    goto :goto_0
.end method

.method private getGenresSongCusror(Landroid/database/Cursor;I)Landroid/database/Cursor;
    .locals 3

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExp;

    iget-object v1, v1, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExp;

    iget-object v2, v2, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mSongCols:[Ljava/lang/String;

    invoke-direct {p0, v1, v2, v0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->getGenreAllSongs(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method private go2Tracks(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    if-eqz p2, :cond_1

    const-string v1, "[GenreBrowserActivityExp]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Going to launch album detail view. album="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v2, "com.htc.media/albumtrack"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "albumid"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    if-eqz p3, :cond_0

    const-string v1, "artistid"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const-string v1, "genreid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExp;

    invoke-virtual {v1, v0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_1
    const-string v1, "android.intent.action.PICK"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v2, "com.htc.media/track"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8

    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v1, v7

    :goto_0
    return-object v1

    :cond_0
    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    move-object v1, v7

    goto :goto_0
.end method

.method private setAlphabet(Landroid/database/Cursor;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, -0x1

    const/4 v5, 0x1

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mIndexerTable:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->clear()V

    const/4 v1, 0x0

    iget v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mAlphabetColumnIndex:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v5, :cond_2

    invoke-virtual {v0, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mAlphabet:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v6, :cond_2

    iget-object v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mAlphabet:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mIndexerTable:Ljava/util/Hashtable;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v2, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    iget v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mAlphabetColumnIndex:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v5, :cond_2

    invoke-virtual {v0, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mAlphabet:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v6, :cond_2

    iget-object v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mAlphabet:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mIndexerTable:Ljava/util/Hashtable;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v2, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private updateAlphabetIndex()V
    .locals 15

    const/4 v14, 0x1

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->getNodeList()Ljava/util/LinkedList;

    move-result-object v5

    if-nez v5, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v11, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mIndexerTable:Ljava/util/Hashtable;

    invoke-virtual {v11}, Ljava/util/Hashtable;->clear()V

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v6

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v6, :cond_4

    invoke-virtual {v5, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/music/browserlayer/HtcListNode;

    iget v11, v4, Lcom/htc/music/browserlayer/HtcListNode;->level:I

    if-nez v11, :cond_2

    iget-object v11, v4, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    if-eqz v11, :cond_2

    iget-object v11, v4, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    invoke-interface {v11}, Landroid/database/Cursor;->isClosed()Z

    move-result v11

    if-eqz v11, :cond_3

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v11, v4, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    iget v12, v4, Lcom/htc/music/browserlayer/HtcListNode;->cursorPosition:I

    invoke-interface {v11, v12}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v11

    if-eqz v11, :cond_2

    iget-object v11, v4, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    iget v12, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mAlphabetColumnIndex:I

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_2

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    if-lt v11, v14, :cond_2

    const/4 v11, 0x0

    invoke-virtual {v9, v11, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    const-string v11, "ABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-virtual {v11, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_2

    iget-object v11, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mIndexerTable:Ljava/util/Hashtable;

    invoke-virtual {v11, v10}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    const-string v11, "[GenreBrowserActivityExp]"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "key:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v11, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mIndexerTable:Ljava/util/Hashtable;

    new-instance v12, Ljava/lang/Integer;

    invoke-direct {v12, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v11, v10, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_2
    iget v11, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mAlphabetLength:I

    if-ge v0, v11, :cond_0

    iget-object v11, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mAlphabetArray:[Ljava/lang/String;

    aget-object v7, v11, v0

    iget-object v11, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mIndexerTable:Ljava/util/Hashtable;

    invoke-virtual {v11, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-nez v1, :cond_6

    const/4 v3, 0x0

    const/4 v2, 0x0

    add-int/lit8 v3, v0, 0x1

    :goto_3
    iget v11, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mAlphabetLength:I

    if-ge v3, v11, :cond_5

    iget-object v11, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mAlphabetArray:[Ljava/lang/String;

    aget-object v8, v11, v3

    iget-object v11, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mIndexerTable:Ljava/util/Hashtable;

    invoke-virtual {v11, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-nez v2, :cond_5

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    if-nez v2, :cond_7

    iget-object v11, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mIndexerTable:Ljava/util/Hashtable;

    new-instance v12, Ljava/lang/Integer;

    invoke-direct {v12, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v11, v7, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    iget-object v11, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mIndexerTable:Ljava/util/Hashtable;

    invoke-virtual {v11, v7, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4
.end method


# virtual methods
.method public changeCursor(Landroid/database/Cursor;)V
    .locals 2

    const-string v0, "[GenreBrowserActivityExp]"

    const-string v1, "@@@@ Adapter - changeCursor - start"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mActivity:Lcom/htc/music/browserlayer/GenreBrowserActivityExp;

    iget-object v0, v0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mCursor:Landroid/database/Cursor;

    if-eq p1, v0, :cond_0

    const-string v0, "[GenreBrowserActivityExp]"

    const-string v1, "@@@@ Adapter - changeCursor - change!!"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mActivity:Lcom/htc/music/browserlayer/GenreBrowserActivityExp;

    iput-object p1, v0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mCursor:Landroid/database/Cursor;

    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mActivity:Lcom/htc/music/browserlayer/GenreBrowserActivityExp;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->updateOptionsMenu()V

    invoke-super {p0, p1}, Lcom/htc/music/browserlayer/HTCCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    :cond_0
    const-string v0, "[GenreBrowserActivityExp]"

    const-string v1, "@@@@ Adapter - changeCursor() - ok"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 17

    if-nez p4, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f03000d

    const/4 v4, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v1, v2, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p4

    :cond_0
    invoke-static/range {p1 .. p2}, Lcom/htc/widget/MoreExpandableItemInfo;->getPosition(II)I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/htc/music/browserlayer/HtcListNode;

    if-nez v11, :cond_1

    const-string v1, "[GenreBrowserActivityExp]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "info is null in getChildView. position = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object p4

    :cond_1
    const v1, 0x7f080043

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/htc/widget/HtcListItem2LineText;

    const v1, 0x7f080042

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/htc/widget/HtcListItemTileImage;

    invoke-virtual {v11}, Lcom/htc/music/browserlayer/HtcListNode;->getParent()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v13

    check-cast v13, Lcom/htc/music/browserlayer/HtcListNode;

    iget-object v1, v13, Lcom/htc/music/browserlayer/HtcListNode;->mTitle:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mAllAlbumsLabel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Lcom/htc/widget/HtcListItemTileImage;->setVisibility(I)V

    :goto_1
    iget v1, v11, Lcom/htc/music/browserlayer/HtcListNode;->mImageRes:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/htc/widget/HtcListItemTileImage;->setTag(Ljava/lang/Object;)V

    const/16 v1, 0x8

    invoke-virtual {v14, v1}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    iget-object v1, v11, Lcom/htc/music/browserlayer/HtcListNode;->mTitle:Ljava/lang/String;

    invoke-virtual {v14, v1}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    iget v1, v11, Lcom/htc/music/browserlayer/HtcListNode;->mImageRes:I

    if-eqz v1, :cond_a

    sget-object v1, Lcom/htc/music/util/MusicUtils;->sLibraryMemCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    iget v2, v11, Lcom/htc/music/browserlayer/HtcListNode;->mImageRes:I

    invoke-virtual {v1, v2}, Lcom/htc/music/util/MemoryCacheMBitmapByTime;->pull(I)Lcom/htc/music/util/MBitmap;

    move-result-object v12

    if-nez v12, :cond_6

    const/4 v8, 0x0

    :goto_2
    if-nez v12, :cond_7

    const/4 v9, 0x0

    :goto_3
    iget-object v1, v11, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    if-eqz v1, :cond_9

    iget-object v1, v11, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    iget v2, v11, Lcom/htc/music/browserlayer/HtcListNode;->cursorPosition:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    iget-object v1, v11, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    const-string v2, "album_art"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    const/4 v3, 0x0

    if-ltz v7, :cond_2

    iget-object v1, v11, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    :cond_2
    if-eqz v8, :cond_3

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {v9, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    :cond_3
    iget-object v1, v11, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    iget v2, v11, Lcom/htc/music/browserlayer/HtcListNode;->cursorPosition:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-eqz v1, :cond_4

    if-ltz v7, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    iget v2, v11, Lcom/htc/music/browserlayer/HtcListNode;->mImageRes:I

    iget v4, v11, Lcom/htc/music/browserlayer/HtcListNode;->mImageRes:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v15, 0x0

    new-instance v16, Ljava/lang/Integer;

    move-object/from16 v0, v16

    invoke-direct {v0, v5}, Ljava/lang/Integer;-><init>(I)V

    aput-object v16, v6, v15

    const/4 v15, 0x1

    aput-object v3, v6, v15

    invoke-virtual/range {v1 .. v6}, Lcom/htc/music/util/AsyncImageDecoder;->add(ILjava/lang/String;II[Ljava/lang/Object;)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v10, v1}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :cond_5
    const/16 v1, 0x8

    invoke-virtual {v10, v1}, Lcom/htc/widget/HtcListItemTileImage;->setVisibility(I)V

    goto/16 :goto_1

    :cond_6
    invoke-virtual {v12}, Lcom/htc/music/util/MBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    goto :goto_2

    :cond_7
    invoke-virtual {v12}, Lcom/htc/music/util/MBitmap;->getPath()Ljava/lang/String;

    move-result-object v9

    goto :goto_3

    :cond_8
    invoke-virtual {v10, v8}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v10, v1}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const-string v1, "[GenreBrowserActivityExp]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getChildView, info.cursor is null, position: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    const/16 v1, 0x8

    invoke-virtual {v10, v1}, Lcom/htc/widget/HtcListItemTileImage;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public getChildren(ILcom/htc/widget/MoreExpandableItemInfo;)Ljava/util/LinkedList;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/htc/widget/MoreExpandableItemInfo;",
            ")",
            "Ljava/util/LinkedList",
            "<+",
            "Lcom/htc/widget/MoreExpandableItemInfo;",
            ">;"
        }
    .end annotation

    new-instance v13, Ljava/util/LinkedList;

    invoke-direct {v13}, Ljava/util/LinkedList;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mNodeList:Ljava/util/LinkedList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/htc/music/browserlayer/HtcListNode;

    iget-object v7, v11, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    iget v0, v11, Lcom/htc/music/browserlayer/HtcListNode;->cursorPosition:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-interface {v7, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    iget v12, v11, Lcom/htc/music/browserlayer/HtcListNode;->level:I

    if-nez v12, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExp;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;

    move-object/from16 v18, v0

    iget v0, v11, Lcom/htc/music/browserlayer/HtcListNode;->cursorPosition:I

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, p1

    invoke-virtual {v0, v7, v1, v2, v12}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->getChildrenCursor(Landroid/database/Cursor;III)Landroid/database/Cursor;

    move-result-object v5

    if-nez v5, :cond_1

    const-string v18, "[GenreBrowserActivityExp]"

    const-string v19, "getChildrenCursor return null!!"

    invoke-static/range {v18 .. v19}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v13, 0x0

    :cond_0
    :goto_0
    return-object v13

    :cond_1
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v10, 0x0

    :goto_1
    const/16 v18, 0x1

    move/from16 v0, v18

    if-gt v10, v0, :cond_0

    const/4 v15, 0x0

    if-nez v10, :cond_3

    new-instance v15, Lcom/htc/music/browserlayer/HtcListNode;

    add-int/lit8 v18, v12, 0x1

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v15, v5, v10, v0, v1}, Lcom/htc/music/browserlayer/HtcListNode;-><init>(Landroid/database/Cursor;IIZ)V

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v15, Lcom/htc/music/browserlayer/HtcListNode;->mTitle:Ljava/lang/String;

    :cond_2
    :goto_2
    const/16 v18, 0x1

    move/from16 v0, v18

    iput v0, v15, Lcom/htc/music/browserlayer/HtcListNode;->viewType:I

    invoke-virtual {v13, v15}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    :cond_3
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v0, v10, :cond_4

    new-instance v15, Lcom/htc/music/browserlayer/HtcListNode;

    add-int/lit8 v18, v12, 0x1

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v15, v5, v10, v0, v1}, Lcom/htc/music/browserlayer/HtcListNode;-><init>(Landroid/database/Cursor;IIZ)V

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v15, Lcom/htc/music/browserlayer/HtcListNode;->mTitle:Ljava/lang/String;

    goto :goto_2

    :cond_4
    const/16 v18, 0x2

    move/from16 v0, v18

    if-ne v0, v10, :cond_2

    new-instance v15, Lcom/htc/music/browserlayer/HtcListNode;

    add-int/lit8 v18, v12, 0x1

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v15, v5, v10, v0, v1}, Lcom/htc/music/browserlayer/HtcListNode;-><init>(Landroid/database/Cursor;IIZ)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExp;

    move-object/from16 v18, v0

    const v19, 0x7f07001d

    invoke-virtual/range {v18 .. v19}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v15, Lcom/htc/music/browserlayer/HtcListNode;->mTitle:Ljava/lang/String;

    goto :goto_2

    :cond_5
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v0, v12, :cond_c

    const/16 v18, 0x1

    iget v0, v11, Lcom/htc/music/browserlayer/HtcListNode;->cursorPosition:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExp;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;

    move-object/from16 v18, v0

    iget v0, v11, Lcom/htc/music/browserlayer/HtcListNode;->cursorPosition:I

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, p1

    invoke-virtual {v0, v7, v1, v2, v12}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->getChildrenCursor(Landroid/database/Cursor;III)Landroid/database/Cursor;

    move-result-object v5

    if-nez v5, :cond_6

    const-string v18, "[GenreBrowserActivityExp]"

    const-string v19, "getChildrenCursor return null level==1 && 1== info.cursorpos!!"

    invoke-static/range {v18 .. v19}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v13, 0x0

    goto/16 :goto_0

    :cond_6
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v10, 0x0

    :goto_3
    if-ge v10, v6, :cond_0

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object v8, v14

    const-string v18, "<unknown>"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExp;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v8, v0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mUnknownAlbum:Ljava/lang/String;

    :cond_7
    new-instance v15, Lcom/htc/music/browserlayer/HtcListNode;

    add-int/lit8 v18, v12, 0x1

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v15, v5, v10, v0, v1}, Lcom/htc/music/browserlayer/HtcListNode;-><init>(Landroid/database/Cursor;IIZ)V

    iput-object v8, v15, Lcom/htc/music/browserlayer/HtcListNode;->mTitle:Ljava/lang/String;

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    move/from16 v0, v18

    iput v0, v15, Lcom/htc/music/browserlayer/HtcListNode;->mImageRes:I

    if-eqz v14, :cond_8

    const-string v18, "<unknown>"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_b

    :cond_8
    const/16 v17, 0x1

    :goto_4
    const-string v18, "album_art"

    move-object/from16 v0, v18

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v5, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-nez v17, :cond_9

    if-eqz v4, :cond_9

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v18

    if-nez v18, :cond_a

    :cond_9
    const v18, 0x7f020057

    move/from16 v0, v18

    iput v0, v15, Lcom/htc/music/browserlayer/HtcListNode;->mImageRes:I

    :cond_a
    const/16 v18, 0x2

    move/from16 v0, v18

    iput v0, v15, Lcom/htc/music/browserlayer/HtcListNode;->viewType:I

    invoke-virtual {v13, v15}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_3

    :cond_b
    const/16 v17, 0x0

    goto :goto_4

    :cond_c
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v0, v12, :cond_0

    invoke-virtual {v11}, Lcom/htc/music/browserlayer/HtcListNode;->getParent()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v16

    check-cast v16, Lcom/htc/music/browserlayer/HtcListNode;

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/htc/music/browserlayer/HtcListNode;->cursorPosition:I

    move/from16 v19, v0

    invoke-interface/range {v18 .. v19}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-interface/range {v18 .. v19}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExp;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;

    move-object/from16 v18, v0

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    invoke-direct/range {v18 .. v19}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->getGenresArtistCursor(I)Landroid/database/Cursor;

    move-result-object v5

    if-nez v5, :cond_d

    const-string v18, "[GenreBrowserActivityExp]"

    const-string v19, "getChildrenCursor return null level==1"

    invoke-static/range {v18 .. v19}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v13, 0x0

    goto/16 :goto_0

    :cond_d
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v10, 0x0

    :goto_5
    if-ge v10, v6, :cond_0

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object v8, v14

    const-string v18, "<unknown>"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExp;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v8, v0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mUnknownArtist:Ljava/lang/String;

    :cond_e
    new-instance v15, Lcom/htc/music/browserlayer/HtcListNode;

    add-int/lit8 v18, v12, 0x1

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v15, v5, v10, v0, v1}, Lcom/htc/music/browserlayer/HtcListNode;-><init>(Landroid/database/Cursor;IIZ)V

    iput-object v8, v15, Lcom/htc/music/browserlayer/HtcListNode;->mTitle:Ljava/lang/String;

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    move/from16 v0, v18

    iput v0, v15, Lcom/htc/music/browserlayer/HtcListNode;->mImageRes:I

    const/16 v18, 0x2

    move/from16 v0, v18

    iput v0, v15, Lcom/htc/music/browserlayer/HtcListNode;->viewType:I

    invoke-virtual {v13, v15}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_5
.end method

.method public getChildrenCursor(Landroid/database/Cursor;III)Landroid/database/Cursor;
    .locals 2

    const/4 v0, 0x0

    packed-switch p4, :pswitch_data_0

    :cond_0
    :goto_0
    return-object v0

    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->getGenresArtistCusror(Landroid/database/Cursor;I)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->getGenresAlbumCusror(Landroid/database/Cursor;I)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    const/16 v8, 0x8

    if-nez p3, :cond_0

    iget-object v5, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f03000d

    const/4 v7, 0x0

    invoke-virtual {v5, v6, p4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/browserlayer/HtcListNode;

    const v5, 0x7f080043

    invoke-virtual {p3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcListItem2LineText;

    const v5, 0x7f080042

    invoke-virtual {p3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListItemTileImage;

    if-eqz v2, :cond_2

    invoke-virtual {v4, v8}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    iget-object v5, v2, Lcom/htc/music/browserlayer/HtcListNode;->mTitle:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    :goto_0
    iget-object v5, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExp;

    invoke-virtual {v5}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x2050050

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v3, v5

    iget-object v5, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExp;

    invoke-virtual {v5}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x2080025

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    add-int/2addr v3, v5

    invoke-virtual {v4}, Lcom/htc/widget/HtcListItem2LineText;->getPaddingLeft()I

    move-result v5

    invoke-virtual {v4}, Lcom/htc/widget/HtcListItem2LineText;->getPaddingTop()I

    move-result v6

    invoke-virtual {v4}, Lcom/htc/widget/HtcListItem2LineText;->getPaddingBottom()I

    move-result v7

    invoke-virtual {v4, v5, v6, v3, v7}, Lcom/htc/widget/HtcListItem2LineText;->setPadding(IIII)V

    :cond_1
    invoke-virtual {v1, v8}, Lcom/htc/widget/HtcListItemTileImage;->setVisibility(I)V

    return-object p3

    :cond_2
    const-string v5, "[GenreBrowserActivityExp]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "info is null in getGroupView. position = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getPositionForSection(I)I
    .locals 5

    const-string v2, "[GenreBrowserActivityExp]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "@@@@ Adapter - getPositionForSection("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mAlphabetArray:[Ljava/lang/String;

    if-nez v2, :cond_0

    const/4 v2, -0x1

    :goto_0
    return v2

    :cond_0
    iget-object v2, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mAlphabetArray:[Ljava/lang/String;

    aget-object v1, v2, p1

    const-string v2, "[GenreBrowserActivityExp]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "@@@@ getPositionForSection() section["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mIndexerTable:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mSectionPosition:I

    :cond_1
    const-string v2, "[GenreBrowserActivityExp]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "@@@@ getPositionForSection() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mSectionPosition:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v2, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mSectionPosition:I

    goto :goto_0
.end method

.method public getQueryHandler()Landroid/content/AsyncQueryHandler;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    return-object v0
.end method

.method public getSectionForPosition(I)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 2

    const-string v0, "[GenreBrowserActivityExp]"

    const-string v1, "@@@@ Adapter - getSections()"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mAlphabetArray:[Ljava/lang/String;

    return-object v0
.end method

.method protected initNodeList()V
    .locals 8

    const/4 v7, 0x1

    iget-object v5, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExp;

    iget-object v5, v5, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mCursor:Landroid/database/Cursor;

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExp;

    iget-object v5, v5, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v0, 0x0

    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    :cond_2
    iget-object v5, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExp;

    iget-object v5, v5, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    iget-object v5, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExp;

    const v6, 0x7f070046

    invoke-virtual {v5, v6}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_3
    iget-object v5, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mActivity:Lcom/htc/music/browserlayer/GenreBrowserActivityExp;

    iget-object v5, v5, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mLowerSearchFilter:Ljava/lang/String;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mActivity:Lcom/htc/music/browserlayer/GenreBrowserActivityExp;

    iget-object v6, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mActivity:Lcom/htc/music/browserlayer/GenreBrowserActivityExp;

    iget-object v6, v6, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mLowerSearchFilter:Ljava/lang/String;

    #calls: Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->getMarkedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    invoke-static {v5, v1, v6}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->access$1800(Lcom/htc/music/browserlayer/GenreBrowserActivityExp;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :cond_4
    new-instance v3, Lcom/htc/music/browserlayer/HtcListNode;

    iget-object v5, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExp;

    iget-object v5, v5, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mCursor:Landroid/database/Cursor;

    const/4 v6, 0x0

    invoke-direct {v3, v5, v0, v6, v7}, Lcom/htc/music/browserlayer/HtcListNode;-><init>(Landroid/database/Cursor;IIZ)V

    iput-object v1, v3, Lcom/htc/music/browserlayer/HtcListNode;->mTitle:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    iget-object v5, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExp;

    iget-object v5, v5, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v5

    if-lez v5, :cond_0

    iput-object v4, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mNodeList:Ljava/util/LinkedList;

    iget-object v5, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;
    invoke-static {v5}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->access$1700(Lcom/htc/music/browserlayer/GenreBrowserActivityExp;)Lcom/htc/widget/MoreExpandableHtcListView;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/htc/widget/MoreExpandableHtcListView;->changeRoot(Ljava/util/LinkedList;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;Landroid/database/Cursor;IIIZ)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x0

    packed-switch p4, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->updateAlphabetIndex()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, p5, v5}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->getParentCurosr(II)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-nez p3, :cond_1

    invoke-direct {p0, v2, v6, v6}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->go2Tracks(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    if-eq p3, v4, :cond_0

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v6, v1}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->go2Tracks(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, p5, v5}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->getParentCurosr(II)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0, v6}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->go2Tracks(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onDatasetChanged(Landroid/database/Cursor;)V
    .locals 3

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExp;

    #calls: Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->setActivitTitle(I)V
    invoke-static {v1, v0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->access$1600(Lcom/htc/music/browserlayer/GenreBrowserActivityExp;I)V

    if-lez v0, :cond_1

    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mActivity:Lcom/htc/music/browserlayer/GenreBrowserActivityExp;

    invoke-virtual {v1}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->hideEmptyErrorView()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mActivity:Lcom/htc/music/browserlayer/GenreBrowserActivityExp;

    const v2, 0x7f07002d

    invoke-virtual {v1, v2}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->showEmptyView(I)V

    goto :goto_0
.end method

.method public varargs onImageDecoded(ILandroid/graphics/Bitmap;J[Ljava/lang/Object;)V
    .locals 14

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v12, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mActivity:Lcom/htc/music/browserlayer/GenreBrowserActivityExp;

    invoke-virtual {v12}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/widget/HtcListView;->getChildCount()I

    move-result v6

    if-gtz v6, :cond_2

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    :cond_2
    if-eqz p5, :cond_3

    move-object/from16 v0, p5

    array-length v12, v0

    const/4 v13, 0x2

    if-lt v12, v13, :cond_3

    const/4 v12, 0x0

    aget-object v12, p5, v12

    if-eqz v12, :cond_3

    const/4 v12, 0x0

    aget-object v12, p5, v12

    instance-of v12, v12, Ljava/lang/Integer;

    if-nez v12, :cond_4

    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    :cond_4
    iget-object v12, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mNodeList:Ljava/util/LinkedList;

    invoke-virtual {v12}, Ljava/util/LinkedList;->size()I

    move-result v12

    if-lez v12, :cond_7

    iget-object v13, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mNodeList:Ljava/util/LinkedList;

    const/4 v12, 0x0

    aget-object v12, p5, v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v13, v12}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/htc/music/browserlayer/HtcListNode;

    :goto_1
    if-eqz v10, :cond_0

    iget v12, v10, Lcom/htc/music/browserlayer/HtcListNode;->viewType:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_0

    const/4 v11, 0x0

    const/4 v12, 0x1

    aget-object v12, p5, v12

    if-eqz v12, :cond_5

    const/4 v12, 0x1

    aget-object v12, p5, v12

    instance-of v12, v12, Ljava/lang/String;

    if-eqz v12, :cond_5

    const/4 v12, 0x1

    aget-object v11, p5, v12

    check-cast v11, Ljava/lang/String;

    :cond_5
    new-instance v4, Lcom/htc/music/util/MBitmap;

    move-object/from16 v0, p2

    invoke-direct {v4, v0, v11}, Lcom/htc/music/util/MBitmap;-><init>(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    sget-object v12, Lcom/htc/music/util/MusicUtils;->sLibraryMemCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    move-wide/from16 v0, p3

    invoke-virtual {v12, p1, v4, v0, v1}, Lcom/htc/music/util/MemoryCacheMBitmapByTime;->push(ILcom/htc/music/util/MBitmap;J)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v6, :cond_0

    iget-object v12, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;
    invoke-static {v12}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->access$1700(Lcom/htc/music/browserlayer/GenreBrowserActivityExp;)Lcom/htc/widget/MoreExpandableHtcListView;

    move-result-object v12

    invoke-virtual {v12, v7}, Lcom/htc/widget/MoreExpandableHtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    const v12, 0x7f080042

    invoke-virtual {v9, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/htc/widget/HtcListItemTileImage;

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Lcom/htc/widget/HtcListItemTileImage;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz v3, :cond_6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_7
    const/4 v10, 0x0

    goto :goto_1
.end method

.method public requeryRootCursor()Landroid/database/Cursor;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExp;

    #calls: Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->getGenresCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    invoke-static {v0, v1, v1}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->access$300(Lcom/htc/music/browserlayer/GenreBrowserActivityExp;Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 3

    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mActivity:Lcom/htc/music/browserlayer/GenreBrowserActivityExp;

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->getGenresCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    invoke-static {v0, v1, v2}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->access$300(Lcom/htc/music/browserlayer/GenreBrowserActivityExp;Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public setActivity(Lcom/htc/music/browserlayer/GenreBrowserActivityExp;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mActivity:Lcom/htc/music/browserlayer/GenreBrowserActivityExp;

    return-void
.end method

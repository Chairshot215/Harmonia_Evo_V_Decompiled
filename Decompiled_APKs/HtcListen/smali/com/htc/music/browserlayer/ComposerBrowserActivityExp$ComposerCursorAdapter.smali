.class Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;
.super Lcom/htc/music/browserlayer/HTCCursorAdapter;
.source "ComposerBrowserActivityExp.java"

# interfaces
.implements Landroid/widget/SectionIndexer;
.implements Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ComposerCursorAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter$ComposerViewHolder;,
        Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter$QueryHandler;
    }
.end annotation


# instance fields
.field private mActivity:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;

.field private mAlbumArtCache:Ljava/util/Hashtable;

.field mAllAlbumsLabel:Ljava/lang/String;

.field mAllSongsLabel:Ljava/lang/String;

.field private mAlphabet:Ljava/lang/StringBuffer;

.field mAlphabetArray:[Ljava/lang/String;

.field private mAlphabetColumnIndex:I

.field mAlphabetLength:I

.field private mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

.field private mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

.field private mIndexer:Lcom/htc/music/widget/HtcAlphabetIndexer;

.field private mIndexerTable:Ljava/util/Hashtable;

.field private mListViewHeight:I

.field private mQueryHandler:Landroid/content/AsyncQueryHandler;

.field private mResources:Landroid/content/res/Resources;

.field private mSectionPosition:I

.field private final mUnknownAlbum:Ljava/lang/String;

.field private final mUnknownArtist:Ljava/lang/String;

.field private final mUnknownComposer:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;


# direct methods
.method public constructor <init>(Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;Landroid/content/Context;Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;Landroid/database/Cursor;Ljava/util/LinkedList;I)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;",
            "Landroid/database/Cursor;",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/htc/music/browserlayer/HtcListNode;",
            ">;I)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->this$0:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;

    const/4 v0, 0x1

    invoke-direct {p0, p2, p4, p5, v0}, Lcom/htc/music/browserlayer/HTCCursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Ljava/util/LinkedList;Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mResources:Landroid/content/res/Resources;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mAlphabet:Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mAlbumArtCache:Ljava/util/Hashtable;

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mAlphabetColumnIndex:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mListViewHeight:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mAlphabetLength:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mAlphabetArray:[Ljava/lang/String;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mIndexerTable:Ljava/util/Hashtable;

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mSectionPosition:I

    const v0, 0x7f070045

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mUnknownComposer:Ljava/lang/String;

    const v0, 0x7f070044

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mUnknownAlbum:Ljava/lang/String;

    const v0, 0x7f070043

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mUnknownArtist:Ljava/lang/String;

    iput-object p3, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mActivity:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;

    new-instance v0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter$QueryHandler;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter$QueryHandler;-><init>(Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mResources:Landroid/content/res/Resources;

    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f020057

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setFilterBitmap(Z)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setDither(Z)V

    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mAlphabetLength:I

    iget v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mAlphabetLength:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mAlphabetArray:[Ljava/lang/String;

    const/4 v9, 0x0

    :goto_0
    iget v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mAlphabetLength:I

    if-ge v9, v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mAlphabetArray:[Ljava/lang/String;

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

    iput-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mAllSongsLabel:Ljava/lang/String;

    const v0, 0x7f070099

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mAllAlbumsLabel:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->cacheAlbumArt(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mResources:Landroid/content/res/Resources;

    const v1, 0x20d008b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mResources:Landroid/content/res/Resources;

    const v1, 0x20d008f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    mul-int/lit8 v0, v7, 0x2

    sub-int v0, v8, v0

    iput v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mListViewHeight:I

    new-instance v0, Lcom/htc/music/util/AsyncImageDecoder;

    iget v3, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mListViewHeight:I

    iget v4, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mListViewHeight:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p2

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/htc/music/util/AsyncImageDecoder;-><init>(Landroid/content/Context;Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;IIZZ)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    return-void
.end method

.method static synthetic access$1000(Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;Landroid/database/Cursor;I)Landroid/database/Cursor;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->getComposerAlbumCusror(Landroid/database/Cursor;I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1

    invoke-direct {p0, p1}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->getComposerArtistCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->go2Tracks(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;)Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mActivity:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->updateAlphabetIndex()V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mUnknownComposer:Ljava/lang/String;

    return-object v0
.end method

.method private cacheAlbumArt(Landroid/content/Context;)V
    .locals 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-object v7, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->this$0:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;

    iget-object v7, v7, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAlbumCols:[Ljava/lang/String;

    invoke-direct {p0, p1, v7}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->getAlbumsCursor(Landroid/content/Context;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x0

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x6

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v4, :cond_0

    if-eqz v0, :cond_0

    iget-object v7, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mAlbumArtCache:Ljava/util/Hashtable;

    invoke-virtual {v7, v4}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mAlbumArtCache:Ljava/util/Hashtable;

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
    .locals 9

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "album != \'\'"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v2, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v6, "album COLLATE NOCASE ASC"

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    return-object v7
.end method

.method private getComposerAlbumCursor(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, p2, v4}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->getComposerAlbumCursor(Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v0

    invoke-direct {p0, p2, v5}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->getComposerAlbumCursor(Ljava/lang/String;Z)Landroid/database/Cursor;

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

.method private getComposerAlbumCursor(Ljava/lang/String;Z)Landroid/database/Cursor;
    .locals 9

    const/4 v0, 0x6

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "album"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "album_key"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "artist"

    aput-object v1, v2, v0

    const/4 v0, 0x4

    const-string v1, "numsongs"

    aput-object v1, v2, v0

    const/4 v0, 0x5

    const-string v1, "album_art"

    aput-object v1, v2, v0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "album != \'\'"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_1

    const-string v0, " AND album != \'<unknown>\'"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-static {p1}, Lcom/htc/music/util/MusicUtils;->isUnknownComposer(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v0, " AND _id IN (SELECT distinct album_id FROM audio_meta where (audio_meta.composer ISNULL OR audio_meta.composer = \'\' OR audio_meta.composer = \'<unknown>\'))"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->this$0:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;

    sget-object v1, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

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

    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->this$0:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;

    #getter for: Lcom/htc/music/widget/MusicListActivity;->mIsEnhancerExist:Z
    invoke-static {v0}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->access$1900(Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->this$0:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/htc/music/util/MusicUtils;->mergeDlAlbumArt(Landroid/content/Context;Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v6

    :cond_0
    return-object v6

    :cond_1
    const-string v0, " AND album = \'<unknown>\'"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " AND _id IN (SELECT distinct album_id FROM audio_meta where audio_meta.composer = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private getComposerAlbumCusror(Landroid/database/Cursor;I)Landroid/database/Cursor;
    .locals 3

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v1, "[ComposerBrowserActivityExp]"

    const-string v2, "getComposerAlbumCusror, parentCursor = null or parentCursor closed"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/music/util/MusicUtils;->isUnknownComposer(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "<unknown>"

    :cond_2
    iget-object v1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->this$0:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;

    iget-object v1, v1, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, v0}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->getComposerAlbumCursor(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    goto :goto_0
.end method

.method private getComposerAllSongs(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

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

    invoke-static {p2}, Lcom/htc/music/util/MusicUtils;->isUnknownComposer(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-static {v9}, Lcom/htc/music/util/MusicUtils;->appendUnknownComposerFilter(Ljava/lang/StringBuilder;)V

    :goto_0
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v6, "title COLLATE NOCASE ASC"

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    return-object v7

    :cond_0
    const-string v0, "\'"

    const-string v1, "\'\'"

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "composer = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private getComposerArtistCursor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x3

    new-array v1, v5, [Ljava/lang/String;

    const-string v5, "artist_id"

    aput-object v5, v1, v7

    const-string v5, "artist"

    aput-object v5, v1, v8

    const-string v5, "number_of_tracks"

    aput-object v5, v1, v6

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Landroid/database/MergeCursor;

    new-array v5, v6, [Landroid/database/Cursor;

    new-instance v6, Lcom/htc/music/util/ArrayListCursor;

    invoke-direct {v6, v1, v2}, Lcom/htc/music/util/ArrayListCursor;-><init>([Ljava/lang/String;Ljava/util/ArrayList;)V

    aput-object v6, v5, v7

    invoke-direct {p0, p2}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->getComposerArtistCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-direct {v3, v5}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    return-object v3
.end method

.method private getComposerArtistCursor(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, p1, v4}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->getComposerArtistCursor(Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v0

    invoke-direct {p0, p1, v5}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->getComposerArtistCursor(Ljava/lang/String;Z)Landroid/database/Cursor;

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

.method private getComposerArtistCursor(Ljava/lang/String;Z)Landroid/database/Cursor;
    .locals 9

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "artist != \'\'"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_0

    const-string v0, " AND artist != \'<unknown>\'"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-static {p1}, Lcom/htc/music/util/MusicUtils;->isUnknownComposer(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v0, " AND _id IN (SELECT distinct artist_id FROM audio_meta where (audio_meta.composer ISNULL OR audio_meta.composer = \'\' OR audio_meta.composer = \'<unknown>\'))"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "<unknown>"

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

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->this$0:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;

    sget-object v1, Landroid/provider/MediaStore$Audio$Artists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "artist COLLATE NOCASE ASC"

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    return-object v6

    :cond_0
    const-string v0, " AND artist = \'<unknown>\'"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " AND _id IN (SELECT distinct artist_id FROM audio_meta where audio_meta.composer = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private getComposerArtistCusror(Landroid/database/Cursor;I)Landroid/database/Cursor;
    .locals 4

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v1, "[ComposerBrowserActivityExp]"

    const-string v2, "getComposerArtistCusror, parentCursor = null or parentCursor closed"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/music/util/MusicUtils;->isUnknownComposer(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "<unknown>"

    :cond_2
    iget-object v1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->this$0:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;

    iget-object v1, v1, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mAllSongsLabel:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mAllAlbumsLabel:Ljava/lang/String;

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->getComposerArtistCursor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    goto :goto_0
.end method

.method private go2Tracks(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    if-eqz p2, :cond_1

    const-string v1, "[ComposerBrowserActivityExp]"

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
    const-string v1, "composer"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->this$0:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;

    invoke-virtual {v1, v0}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->startActivity(Landroid/content/Intent;)V

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

.method private updateAlphabetIndex()V
    .locals 15

    const/4 v14, 0x1

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->getNodeList()Ljava/util/LinkedList;

    move-result-object v5

    if-nez v5, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v11, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mIndexerTable:Ljava/util/Hashtable;

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

    iget v12, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mAlphabetColumnIndex:I

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

    iget-object v11, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mIndexerTable:Ljava/util/Hashtable;

    invoke-virtual {v11, v10}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    const-string v11, "[ComposerBrowserActivityExp]"

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

    iget-object v11, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mIndexerTable:Ljava/util/Hashtable;

    new-instance v12, Ljava/lang/Integer;

    invoke-direct {v12, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v11, v10, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_2
    iget v11, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mAlphabetLength:I

    if-ge v0, v11, :cond_0

    iget-object v11, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mAlphabetArray:[Ljava/lang/String;

    aget-object v7, v11, v0

    iget-object v11, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mIndexerTable:Ljava/util/Hashtable;

    invoke-virtual {v11, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-nez v1, :cond_6

    const/4 v3, 0x0

    const/4 v2, 0x0

    add-int/lit8 v3, v0, 0x1

    :goto_3
    iget v11, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mAlphabetLength:I

    if-ge v3, v11, :cond_5

    iget-object v11, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mAlphabetArray:[Ljava/lang/String;

    aget-object v8, v11, v3

    iget-object v11, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mIndexerTable:Ljava/util/Hashtable;

    invoke-virtual {v11, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-nez v2, :cond_5

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    if-nez v2, :cond_7

    iget-object v11, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mIndexerTable:Ljava/util/Hashtable;

    new-instance v12, Ljava/lang/Integer;

    invoke-direct {v12, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v11, v7, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    iget-object v11, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mIndexerTable:Ljava/util/Hashtable;

    invoke-virtual {v11, v7, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4
.end method


# virtual methods
.method public changeCursor(Landroid/database/Cursor;)V
    .locals 2

    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mActivity:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;

    iget-object v0, v0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mCursor:Landroid/database/Cursor;

    if-eq p1, v0, :cond_0

    const-string v0, "[ComposerBrowserActivityExp]"

    const-string v1, "@@@@ Adapter - changeCursor - change!!"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mActivity:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;

    iput-object p1, v0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mCursor:Landroid/database/Cursor;

    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mActivity:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->updateOptionsMenu()V

    invoke-super {p0, p1}, Lcom/htc/music/browserlayer/HTCCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    :cond_0
    return-void
.end method

.method public cursorFilter(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v6, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/Hashtable;

    invoke-direct {v5}, Ljava/util/Hashtable;-><init>()V

    const/4 v4, 0x0

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/music/util/MusicUtils;->isUnknownComposer(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v1, "<unknown>"

    :cond_0
    invoke-virtual {v5, v1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v10}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/music/util/MusicUtils;->isUnknownComposer(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    const-string v1, "<unknown>"

    :cond_2
    invoke-virtual {v5, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v5, v1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v10}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    new-array v0, v10, [Ljava/lang/String;

    const-string v8, "_id"

    aput-object v8, v0, v9

    const-string v8, "composer"

    aput-object v8, v0, v11

    new-instance v3, Lcom/htc/music/util/ArrayListCursor;

    invoke-direct {v3, v0, v2}, Lcom/htc/music/util/ArrayListCursor;-><init>([Ljava/lang/String;Ljava/util/ArrayList;)V

    new-instance v6, Landroid/database/MergeCursor;

    new-array v8, v11, [Landroid/database/Cursor;

    aput-object v3, v8, v9

    invoke-direct {v6, v8}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    return-object v6
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

    invoke-virtual {v0, v5}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/htc/music/browserlayer/HtcListNode;

    if-nez v11, :cond_1

    const-string v1, "[ComposerBrowserActivityExp]"

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

    iget-object v2, v0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->this$0:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;

    const v4, 0x7f07001d

    invoke-virtual {v2, v4}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v1, 0x8

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

    if-eqz v1, :cond_9

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

    iget-object v1, v0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

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

    iget-object v1, v0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v10, v1}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :cond_5
    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Lcom/htc/widget/HtcListItemTileImage;->setVisibility(I)V

    goto :goto_1

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

    iget-object v8, v11, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    iget v0, v11, Lcom/htc/music/browserlayer/HtcListNode;->cursorPosition:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-interface {v8, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    iget v12, v11, Lcom/htc/music/browserlayer/HtcListNode;->level:I

    if-nez v12, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->this$0:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    move-object/from16 v18, v0

    iget v0, v11, Lcom/htc/music/browserlayer/HtcListNode;->cursorPosition:I

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, p1

    invoke-virtual {v0, v8, v1, v2, v12}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->getChildrenCursor(Landroid/database/Cursor;III)Landroid/database/Cursor;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v10, 0x0

    :goto_0
    const/16 v18, 0x2

    move/from16 v0, v18

    if-gt v10, v0, :cond_4

    const/4 v15, 0x0

    if-nez v10, :cond_1

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

    :cond_0
    :goto_1
    const/16 v18, 0x1

    move/from16 v0, v18

    iput v0, v15, Lcom/htc/music/browserlayer/HtcListNode;->viewType:I

    invoke-virtual {v13, v15}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    :cond_1
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v0, v10, :cond_2

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

    goto :goto_1

    :cond_2
    const/16 v18, 0x2

    move/from16 v0, v18

    if-ne v0, v10, :cond_0

    new-instance v15, Lcom/htc/music/browserlayer/HtcListNode;

    add-int/lit8 v18, v12, 0x1

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v15, v5, v10, v0, v1}, Lcom/htc/music/browserlayer/HtcListNode;-><init>(Landroid/database/Cursor;IIZ)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->this$0:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;

    move-object/from16 v18, v0

    const v19, 0x7f07001d

    invoke-virtual/range {v18 .. v19}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v15, Lcom/htc/music/browserlayer/HtcListNode;->mTitle:Ljava/lang/String;

    goto :goto_1

    :cond_3
    const-string v18, "[ComposerBrowserActivityExp]"

    const-string v19, "childCursor == null, 0 == level"

    invoke-static/range {v18 .. v19}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_2
    return-object v13

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

    iget-object v0, v0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->this$0:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    move-object/from16 v18, v0

    iget v0, v11, Lcom/htc/music/browserlayer/HtcListNode;->cursorPosition:I

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, p1

    invoke-virtual {v0, v8, v1, v2, v12}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->getChildrenCursor(Landroid/database/Cursor;III)Landroid/database/Cursor;

    move-result-object v5

    if-eqz v5, :cond_b

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v10, 0x0

    :goto_3
    if-ge v10, v7, :cond_4

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object v9, v14

    const-string v18, "<unknown>"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->this$0:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v9, v0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mUnknownAlbum:Ljava/lang/String;

    :cond_6
    new-instance v15, Lcom/htc/music/browserlayer/HtcListNode;

    add-int/lit8 v18, v12, 0x1

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v15, v5, v10, v0, v1}, Lcom/htc/music/browserlayer/HtcListNode;-><init>(Landroid/database/Cursor;IIZ)V

    iput-object v9, v15, Lcom/htc/music/browserlayer/HtcListNode;->mTitle:Ljava/lang/String;

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    move/from16 v0, v18

    iput v0, v15, Lcom/htc/music/browserlayer/HtcListNode;->mImageRes:I

    if-eqz v14, :cond_7

    const-string v18, "<unknown>"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_a

    :cond_7
    const/16 v17, 0x1

    :goto_4
    const-string v18, "album_art"

    move-object/from16 v0, v18

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v5, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-nez v17, :cond_8

    if-eqz v4, :cond_8

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v18

    if-nez v18, :cond_9

    :cond_8
    const v18, 0x7f020057

    move/from16 v0, v18

    iput v0, v15, Lcom/htc/music/browserlayer/HtcListNode;->mImageRes:I

    :cond_9
    const/16 v18, 0x2

    move/from16 v0, v18

    iput v0, v15, Lcom/htc/music/browserlayer/HtcListNode;->viewType:I

    invoke-virtual {v13, v15}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_3

    :cond_a
    const/16 v17, 0x0

    goto :goto_4

    :cond_b
    const-string v18, "[ComposerBrowserActivityExp]"

    const-string v19, "childCursor == null, 1 == level && 1 == info.cursorPosition"

    invoke-static/range {v18 .. v19}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_c
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v0, v12, :cond_e

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

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->this$0:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v0, v6}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->getComposerArtistCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v10, 0x0

    :goto_5
    if-ge v10, v7, :cond_4

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object v9, v14

    const-string v18, "<unknown>"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->this$0:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v9, v0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mUnknownArtist:Ljava/lang/String;

    :cond_d
    new-instance v15, Lcom/htc/music/browserlayer/HtcListNode;

    add-int/lit8 v18, v12, 0x1

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v15, v5, v10, v0, v1}, Lcom/htc/music/browserlayer/HtcListNode;-><init>(Landroid/database/Cursor;IIZ)V

    iput-object v9, v15, Lcom/htc/music/browserlayer/HtcListNode;->mTitle:Ljava/lang/String;

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

    :cond_e
    const-string v18, "[ComposerBrowserActivityExp]"

    const-string v19, "childCursor == null 1 == level"

    invoke-static/range {v18 .. v19}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method public getChildrenCursor(Landroid/database/Cursor;III)Landroid/database/Cursor;
    .locals 2

    const/4 v0, 0x0

    packed-switch p4, :pswitch_data_0

    :cond_0
    :goto_0
    return-object v0

    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->getComposerArtistCusror(Landroid/database/Cursor;I)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->getComposerAlbumCusror(Landroid/database/Cursor;I)Landroid/database/Cursor;

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
    invoke-virtual {p0, p1}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->getItem(I)Ljava/lang/Object;

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
    iget-object v5, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->this$0:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;

    invoke-virtual {v5}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x2050050

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v3, v5

    iget-object v5, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->this$0:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;

    invoke-virtual {v5}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->getResources()Landroid/content/res/Resources;

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
    const-string v5, "[ComposerBrowserActivityExp]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "info == null in getGroupView. groupPosition "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getPositionForSection(I)I
    .locals 3

    iget-object v2, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mAlphabetArray:[Ljava/lang/String;

    if-nez v2, :cond_0

    const/4 v2, -0x1

    :goto_0
    return v2

    :cond_0
    iget-object v2, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mAlphabetArray:[Ljava/lang/String;

    aget-object v1, v2, p1

    iget-object v2, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mIndexerTable:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mSectionPosition:I

    :cond_1
    iget v2, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mSectionPosition:I

    goto :goto_0
.end method

.method public getQueryHandler()Landroid/content/AsyncQueryHandler;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    return-object v0
.end method

.method public getSectionForPosition(I)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mAlphabetArray:[Ljava/lang/String;

    return-object v0
.end method

.method protected initNodeList()V
    .locals 8

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->this$0:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;

    iget-object v5, v5, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mCursor:Landroid/database/Cursor;

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->this$0:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;

    iget-object v5, v5, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v0, 0x0

    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    :cond_2
    iget-object v5, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->this$0:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;

    iget-object v5, v5, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/music/util/MusicUtils;->isUnknownComposer(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mUnknownComposer:Ljava/lang/String;

    :cond_3
    iget-object v5, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mActivity:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;

    iget-object v5, v5, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mLowerSearchFilter:Ljava/lang/String;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mActivity:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;

    iget-object v6, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mActivity:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;

    iget-object v6, v6, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mLowerSearchFilter:Ljava/lang/String;

    #calls: Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->getMarkedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    invoke-static {v5, v1, v6}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->access$1800(Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :cond_4
    new-instance v3, Lcom/htc/music/browserlayer/HtcListNode;

    iget-object v5, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->this$0:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;

    iget-object v5, v5, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mCursor:Landroid/database/Cursor;

    const/4 v6, 0x1

    invoke-direct {v3, v5, v0, v7, v6}, Lcom/htc/music/browserlayer/HtcListNode;-><init>(Landroid/database/Cursor;IIZ)V

    iput-object v1, v3, Lcom/htc/music/browserlayer/HtcListNode;->mTitle:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    iget-object v5, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->this$0:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;

    iget-object v5, v5, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v5

    if-lez v5, :cond_0

    iput-object v4, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mNodeList:Ljava/util/LinkedList;

    iget-object v5, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->this$0:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;
    invoke-static {v5}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->access$1700(Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;)Lcom/htc/widget/MoreExpandableHtcListView;

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
    invoke-direct {p0}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->updateAlphabetIndex()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, p5, v5}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->getParentCurosr(II)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/music/util/MusicUtils;->isUnknownComposer(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v2, "<unknown>"

    :cond_1
    if-nez p3, :cond_2

    invoke-direct {p0, v2, v6, v6}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->go2Tracks(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v4, 0x1

    if-eq p3, v4, :cond_0

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v6, v1}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->go2Tracks(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, p5, v5}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->getParentCurosr(II)Landroid/database/Cursor;

    move-result-object v3

    const/4 v2, 0x0

    if-eqz v3, :cond_3

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_3
    invoke-static {v2}, Lcom/htc/music/util/MusicUtils;->isUnknownComposer(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v2, "<unknown>"

    :cond_4
    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0, v6}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->go2Tracks(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

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

    iget-object v1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->this$0:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;

    #calls: Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->setActivitTitle(I)V
    invoke-static {v1, v0}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->access$1600(Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;I)V

    if-lez v0, :cond_1

    iget-object v1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mActivity:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;

    invoke-virtual {v1}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->hideEmptyErrorView()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mActivity:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;

    const v2, 0x7f07002e

    invoke-virtual {v1, v2}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->showEmptyView(I)V

    goto :goto_0
.end method

.method public varargs onImageDecoded(ILandroid/graphics/Bitmap;J[Ljava/lang/Object;)V
    .locals 14

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v12, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mActivity:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;

    invoke-virtual {v12}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/widget/HtcListView;->getChildCount()I

    move-result v6

    if-gtz v6, :cond_2

    const-string v12, "[ComposerBrowserActivityExp]"

    const-string v13, "onImageDecoded: Illegal Arguments"

    invoke-static {v12, v13}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

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
    const-string v12, "[ComposerBrowserActivityExp]"

    const-string v13, "onImageDecoded: Illegal Arguments"

    invoke-static {v12, v13}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    :cond_4
    iget-object v12, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mNodeList:Ljava/util/LinkedList;

    invoke-virtual {v12}, Ljava/util/LinkedList;->size()I

    move-result v12

    if-lez v12, :cond_6

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
    if-eqz v10, :cond_5

    iget v12, v10, Lcom/htc/music/browserlayer/HtcListNode;->viewType:I

    const/4 v13, 0x2

    if-eq v12, v13, :cond_7

    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    :cond_6
    const/4 v10, 0x0

    goto :goto_1

    :cond_7
    const/4 v11, 0x0

    const/4 v12, 0x1

    aget-object v12, p5, v12

    if-eqz v12, :cond_8

    const/4 v12, 0x1

    aget-object v12, p5, v12

    instance-of v12, v12, Ljava/lang/String;

    if-eqz v12, :cond_8

    const/4 v12, 0x1

    aget-object v11, p5, v12

    check-cast v11, Ljava/lang/String;

    :cond_8
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

    iget-object v12, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->this$0:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;
    invoke-static {v12}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->access$1700(Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;)Lcom/htc/widget/MoreExpandableHtcListView;

    move-result-object v12

    invoke-virtual {v12, v7}, Lcom/htc/widget/MoreExpandableHtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    const v12, 0x7f080042

    invoke-virtual {v9, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/htc/widget/HtcListItemTileImage;

    if-eqz v5, :cond_9

    invoke-virtual {v5}, Lcom/htc/widget/HtcListItemTileImage;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz v3, :cond_9

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_2
.end method

.method public requeryRootCursor()Landroid/database/Cursor;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->this$0:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;

    #calls: Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->getComposerCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    invoke-static {v0, v1, v1}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->access$300(Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 3

    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mActivity:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->getComposerCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    invoke-static {v0, v1, v2}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->access$300(Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public setActivity(Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mActivity:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;

    return-void
.end method

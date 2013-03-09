.class Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;
.super Lcom/htc/music/browserlayer/HTCCursorAdapter;
.source "ArtistBrowserActivityExp.java"

# interfaces
.implements Landroid/widget/SectionIndexer;
.implements Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ArtistCursorAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter$ArtistViewHolder;,
        Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter$QueryHandler;
    }
.end annotation


# instance fields
.field private mActivity:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;

.field mAllSongsLabel:Ljava/lang/String;

.field mAlphabetArray:[Ljava/lang/String;

.field private mAlphabetColumnIndex:I

.field mAlphabetLength:I

.field private mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

.field private mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

.field private mIndexerTable:Ljava/util/Hashtable;

.field private mListViewHeight:I

.field private mQueryHandler:Landroid/content/AsyncQueryHandler;

.field private mResources:Landroid/content/res/Resources;

.field private mSectionPosition:I

.field private final mUnknownAlbum:Ljava/lang/String;

.field private final mUnknownArtist:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;


# direct methods
.method public constructor <init>(Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;Landroid/content/Context;Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;Landroid/database/Cursor;Ljava/util/LinkedList;[II)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;",
            "Landroid/database/Cursor;",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/htc/music/browserlayer/HtcListNode;",
            ">;[II)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;

    const/4 v0, 0x1

    invoke-direct {p0, p2, p4, p5, v0}, Lcom/htc/music/browserlayer/HTCCursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Ljava/util/LinkedList;Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->mResources:Landroid/content/res/Resources;

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->mAlphabetLength:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->mAlphabetArray:[Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->mAlphabetColumnIndex:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->mListViewHeight:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->mIndexerTable:Ljava/util/Hashtable;

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->mSectionPosition:I

    const v0, 0x7f070044

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->mUnknownAlbum:Ljava/lang/String;

    const v0, 0x7f070043

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->mUnknownArtist:Ljava/lang/String;

    iput-object p3, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->mActivity:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;

    new-instance v0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter$QueryHandler;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter$QueryHandler;-><init>(Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->mResources:Landroid/content/res/Resources;

    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f020057

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setFilterBitmap(Z)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setDither(Z)V

    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->mAlphabetLength:I

    iget v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->mAlphabetLength:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->mAlphabetArray:[Ljava/lang/String;

    const/4 v9, 0x0

    :goto_0
    iget v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->mAlphabetLength:I

    if-ge v9, v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->mAlphabetArray:[Ljava/lang/String;

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

    iput-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->mAllSongsLabel:Ljava/lang/String;

    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->mResources:Landroid/content/res/Resources;

    const v1, 0x20d008b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->mResources:Landroid/content/res/Resources;

    const v1, 0x20d008f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    mul-int/lit8 v0, v7, 0x2

    sub-int v0, v8, v0

    iput v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->mListViewHeight:I

    new-instance v0, Lcom/htc/music/util/AsyncImageDecoder;

    iget v3, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->mListViewHeight:I

    iget v4, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->mListViewHeight:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p2

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/htc/music/util/AsyncImageDecoder;-><init>(Landroid/content/Context;Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;IIZZ)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    return-void
.end method

.method static synthetic access$1200(Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->go2Tracks(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->getArtistAlbumsCursor(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->updateAlphabetIndex()V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;)Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->mActivity:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;

    return-object v0
.end method

.method private getArtistAlbumChildCusror(Landroid/database/Cursor;I)Landroid/database/Cursor;
    .locals 7

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    const-string v5, "[ArtistBrowserActivityExp]"

    const-string v6, "getArtistAlbumChildCusror, parentCursor = null or parentCursor closed"

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-object v4

    :cond_2
    invoke-interface {p1, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x0

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x1

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x3

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iget-object v5, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;

    iget-object v5, v5, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;

    iget-object v6, v6, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mAlbumCols:[Ljava/lang/String;

    invoke-direct {p0, v5, v6, v1}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->getArtistAlbumsCursor(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-nez v5, :cond_4

    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    :cond_4
    invoke-direct {p0, v2, v1, v0, v3}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->mergeAllSongsItem2AlbumCursor(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v4

    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getArtistAlbumsCursor(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, p3, v4}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->getArtistAlbumsCursor(Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v0

    invoke-direct {p0, p3, v5}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->getArtistAlbumsCursor(Ljava/lang/String;Z)Landroid/database/Cursor;

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

.method private getArtistAlbumsCursor(Ljava/lang/String;Z)Landroid/database/Cursor;
    .locals 8

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "artist_id = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " AND album != \'\'"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_1

    const-string v0, " AND album != \'<unknown>\'"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;

    const-string v1, "external"

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/provider/MediaStore$Audio$Artists$Albums;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;

    iget-object v2, v2, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mAlbumCols:[Ljava/lang/String;

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

    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;

    #getter for: Lcom/htc/music/widget/MusicListActivity;->mIsEnhancerExist:Z
    invoke-static {v0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->access$900(Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/htc/music/util/MusicUtils;->mergeDlAlbumArt(Landroid/content/Context;Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v6

    :cond_0
    return-object v6

    :cond_1
    const-string v0, " AND album = \'<unknown>\'"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private go2Tracks(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    if-eqz p2, :cond_0

    const-string v1, "[ArtistBrowserActivityExp]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Going to launch album detail view. albumId="

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
    const-string v1, "artistid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;

    invoke-virtual {v1, v0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_0
    const-string v1, "android.intent.action.PICK"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v2, "com.htc.media/track"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private mergeAllSongsItem2AlbumCursor(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 6

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-object p1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;

    iget-object v3, v3, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mAlbumCols:[Ljava/lang/String;

    array-length v3, v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->mAllSongsLabel:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/htc/music/util/ArrayListCursor;

    iget-object v3, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;

    iget-object v3, v3, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mAlbumCols:[Ljava/lang/String;

    invoke-direct {v1, v3, v0}, Lcom/htc/music/util/ArrayListCursor;-><init>([Ljava/lang/String;Ljava/util/ArrayList;)V

    new-instance v3, Landroid/database/MergeCursor;

    new-array v4, v4, [Landroid/database/Cursor;

    aput-object v1, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-direct {v3, v4}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    move-object p1, v3

    goto :goto_0
.end method

.method private updateAlphabetIndex()V
    .locals 15

    const/4 v14, 0x1

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->getNodeList()Ljava/util/LinkedList;

    move-result-object v5

    if-nez v5, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v11, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->mIndexerTable:Ljava/util/Hashtable;

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

    iget v12, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->mAlphabetColumnIndex:I

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

    iget-object v11, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->mIndexerTable:Ljava/util/Hashtable;

    invoke-virtual {v11, v10}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    const-string v11, "[ArtistBrowserActivityExp]"

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

    iget-object v11, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->mIndexerTable:Ljava/util/Hashtable;

    new-instance v12, Ljava/lang/Integer;

    invoke-direct {v12, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v11, v10, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_2
    iget v11, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->mAlphabetLength:I

    if-ge v0, v11, :cond_0

    iget-object v11, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->mAlphabetArray:[Ljava/lang/String;

    aget-object v7, v11, v0

    iget-object v11, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->mIndexerTable:Ljava/util/Hashtable;

    invoke-virtual {v11, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-nez v1, :cond_6

    const/4 v3, 0x0

    const/4 v2, 0x0

    add-int/lit8 v3, v0, 0x1

    :goto_3
    iget v11, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->mAlphabetLength:I

    if-ge v3, v11, :cond_5

    iget-object v11, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->mAlphabetArray:[Ljava/lang/String;

    aget-object v8, v11, v3

    iget-object v11, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->mIndexerTable:Ljava/util/Hashtable;

    invoke-virtual {v11, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-nez v2, :cond_5

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    if-nez v2, :cond_7

    iget-object v11, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->mIndexerTable:Ljava/util/Hashtable;

    new-instance v12, Ljava/lang/Integer;

    invoke-direct {v12, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v11, v7, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    iget-object v11, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->mIndexerTable:Ljava/util/Hashtable;

    invoke-virtual {v11, v7, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4
.end method


# virtual methods
.method public changeCursor(Landroid/database/Cursor;)V
    .locals 2

    const-string v0, "[ArtistBrowserActivityExp]"

    const-string v1, "@@@@ Adapter - changeCursor - start"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->mActivity:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;

    iget-object v0, v0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mCursor:Landroid/database/Cursor;

    if-eq p1, v0, :cond_0

    const-string v0, "[ArtistBrowserActivityExp]"

    const-string v1, "@@@@ Adapter - changeCursor - change!!"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->mActivity:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;

    iput-object p1, v0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mCursor:Landroid/database/Cursor;

    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->mActivity:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->updateOptionsMenu()V

    invoke-super {p0, p1}, Lcom/htc/music/browserlayer/HTCCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    :cond_0
    const-string v0, "[ArtistBrowserActivityExp]"

    const-string v1, "@@@@ Adapter - changeCursor() - ok"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 15

    if-nez p4, :cond_0

    iget-object v1, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f03000d

    const/4 v4, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v1, v2, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p4

    new-instance v10, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter$ArtistViewHolder;

    invoke-direct {v10, p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter$ArtistViewHolder;-><init>(Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;)V

    const v1, 0x7f080043

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListItem2LineText;

    iput-object v1, v10, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter$ArtistViewHolder;->text:Lcom/htc/widget/HtcListItem2LineText;

    const v1, 0x7f080042

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListItemTileImage;

    iput-object v1, v10, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter$ArtistViewHolder;->icon:Lcom/htc/widget/HtcListItemTileImage;

    move-object/from16 v0, p4

    invoke-virtual {v0, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter$ArtistViewHolder;

    invoke-static/range {p1 .. p2}, Lcom/htc/widget/MoreExpandableItemInfo;->getPosition(II)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/htc/music/browserlayer/HtcListNode;

    if-eqz v11, :cond_1

    if-nez v10, :cond_2

    :cond_1
    const-string v1, "[ArtistBrowserActivityExp]"

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

    :cond_2
    iget-object v1, v10, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter$ArtistViewHolder;->icon:Lcom/htc/widget/HtcListItemTileImage;

    if-eqz v1, :cond_3

    iget v1, v11, Lcom/htc/music/browserlayer/HtcListNode;->level:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    iget-object v1, v10, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter$ArtistViewHolder;->icon:Lcom/htc/widget/HtcListItemTileImage;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItemTileImage;->setVisibility(I)V

    :goto_1
    iget-object v1, v10, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter$ArtistViewHolder;->icon:Lcom/htc/widget/HtcListItemTileImage;

    iget v2, v11, Lcom/htc/music/browserlayer/HtcListNode;->mImageRes:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItemTileImage;->setTag(Ljava/lang/Object;)V

    :cond_3
    iget-object v1, v10, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter$ArtistViewHolder;->text:Lcom/htc/widget/HtcListItem2LineText;

    if-eqz v1, :cond_4

    iget-object v1, v10, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter$ArtistViewHolder;->text:Lcom/htc/widget/HtcListItem2LineText;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    iget-object v1, v10, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter$ArtistViewHolder;->text:Lcom/htc/widget/HtcListItem2LineText;

    iget-object v2, v11, Lcom/htc/music/browserlayer/HtcListNode;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    :cond_4
    iget v1, v11, Lcom/htc/music/browserlayer/HtcListNode;->mImageRes:I

    const v2, 0x7f020057

    if-ne v1, v2, :cond_6

    iget-object v1, v10, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter$ArtistViewHolder;->icon:Lcom/htc/widget/HtcListItemTileImage;

    iget-object v2, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_5
    iget-object v1, v10, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter$ArtistViewHolder;->icon:Lcom/htc/widget/HtcListItemTileImage;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItemTileImage;->setVisibility(I)V

    goto :goto_1

    :cond_6
    iget v1, v11, Lcom/htc/music/browserlayer/HtcListNode;->mImageRes:I

    if-eqz v1, :cond_e

    sget-object v1, Lcom/htc/music/util/MusicUtils;->sLibraryMemCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    iget v2, v11, Lcom/htc/music/browserlayer/HtcListNode;->mImageRes:I

    invoke-virtual {v1, v2}, Lcom/htc/music/util/MemoryCacheMBitmapByTime;->pull(I)Lcom/htc/music/util/MBitmap;

    move-result-object v12

    if-nez v12, :cond_a

    const/4 v8, 0x0

    :goto_2
    if-nez v12, :cond_b

    const/4 v9, 0x0

    :goto_3
    iget-object v1, v11, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    if-eqz v1, :cond_d

    iget-object v1, v11, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    iget v2, v11, Lcom/htc/music/browserlayer/HtcListNode;->cursorPosition:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    iget-object v1, v11, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    const-string v2, "album_art"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    const/4 v3, 0x0

    if-ltz v7, :cond_7

    iget-object v1, v11, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    :cond_7
    if-eqz v8, :cond_8

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-static {v9, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    :cond_8
    iget-object v1, v11, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    iget v2, v11, Lcom/htc/music/browserlayer/HtcListNode;->cursorPosition:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-eqz v1, :cond_9

    if-ltz v7, :cond_9

    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    iget v2, v11, Lcom/htc/music/browserlayer/HtcListNode;->mImageRes:I

    iget v4, v11, Lcom/htc/music/browserlayer/HtcListNode;->mImageRes:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v13, 0x0

    new-instance v14, Ljava/lang/Integer;

    invoke-direct {v14, v5}, Ljava/lang/Integer;-><init>(I)V

    aput-object v14, v6, v13

    const/4 v13, 0x1

    aput-object v3, v6, v13

    invoke-virtual/range {v1 .. v6}, Lcom/htc/music/util/AsyncImageDecoder;->add(ILjava/lang/String;II[Ljava/lang/Object;)V

    :cond_9
    iget-object v1, v10, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter$ArtistViewHolder;->icon:Lcom/htc/widget/HtcListItemTileImage;

    iget-object v2, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :cond_a
    invoke-virtual {v12}, Lcom/htc/music/util/MBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    goto :goto_2

    :cond_b
    invoke-virtual {v12}, Lcom/htc/music/util/MBitmap;->getPath()Ljava/lang/String;

    move-result-object v9

    goto :goto_3

    :cond_c
    iget-object v1, v10, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter$ArtistViewHolder;->icon:Lcom/htc/widget/HtcListItemTileImage;

    invoke-virtual {v1, v8}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    :cond_d
    iget-object v1, v10, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter$ArtistViewHolder;->icon:Lcom/htc/widget/HtcListItemTileImage;

    iget-object v2, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const-string v1, "[ArtistBrowserActivityExp]"

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

    :cond_e
    iget-object v1, v10, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter$ArtistViewHolder;->icon:Lcom/htc/widget/HtcListItemTileImage;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItemTileImage;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public getChildren(ILcom/htc/widget/MoreExpandableItemInfo;)Ljava/util/LinkedList;
    .locals 13
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

    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    iget-object v10, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mNodeList:Ljava/util/LinkedList;

    invoke-virtual {v10, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/music/browserlayer/HtcListNode;

    iget-object v2, v5, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v10

    if-nez v10, :cond_1

    :try_start_0
    iget v10, v5, Lcom/htc/music/browserlayer/HtcListNode;->cursorPosition:I

    invoke-interface {v2, v10}, Landroid/database/Cursor;->moveToPosition(I)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    iget v6, v5, Lcom/htc/music/browserlayer/HtcListNode;->level:I

    if-nez v6, :cond_5

    iget-object v10, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;

    iget-object v10, v10, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;

    iget v11, v5, Lcom/htc/music/browserlayer/HtcListNode;->cursorPosition:I

    invoke-virtual {v10, v2, v11, p1, v6}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->getChildrenCursor(Landroid/database/Cursor;III)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v10, "[ArtistBrowserActivityExp]"

    const-string v11, "getChildrenCursor return null!!"

    invoke-static {v10, v11}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object v7

    :catch_0
    move-exception v3

    const-string v10, "[ArtistBrowserActivityExp]"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getChildren, IllegalStateException ex: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v10, "[ArtistBrowserActivityExp]"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getChildren, cursor == null || cursor.isClosed(), cursor: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v4, 0x0

    :goto_1
    const/4 v10, 0x2

    if-ge v4, v10, :cond_0

    const/4 v8, 0x0

    if-nez v4, :cond_4

    new-instance v8, Lcom/htc/music/browserlayer/HtcListNode;

    add-int/lit8 v10, v6, 0x1

    const/4 v11, 0x0

    invoke-direct {v8, v1, v4, v10, v11}, Lcom/htc/music/browserlayer/HtcListNode;-><init>(Landroid/database/Cursor;IIZ)V

    const/4 v10, 0x1

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v8, Lcom/htc/music/browserlayer/HtcListNode;->mTitle:Ljava/lang/String;

    :cond_3
    :goto_2
    const/4 v10, 0x1

    iput v10, v8, Lcom/htc/music/browserlayer/HtcListNode;->viewType:I

    invoke-virtual {v7, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    :cond_4
    const/4 v10, 0x1

    if-ne v10, v4, :cond_3

    new-instance v8, Lcom/htc/music/browserlayer/HtcListNode;

    add-int/lit8 v10, v6, 0x1

    const/4 v11, 0x1

    invoke-direct {v8, v1, v4, v10, v11}, Lcom/htc/music/browserlayer/HtcListNode;-><init>(Landroid/database/Cursor;IIZ)V

    iget-object v10, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;

    const v11, 0x7f070099

    invoke-virtual {v10, v11}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v8, Lcom/htc/music/browserlayer/HtcListNode;->mTitle:Ljava/lang/String;

    goto :goto_2

    :cond_5
    const/4 v10, 0x1

    if-ne v10, v6, :cond_0

    invoke-virtual {v5}, Lcom/htc/music/browserlayer/HtcListNode;->getParent()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v9

    check-cast v9, Lcom/htc/music/browserlayer/HtcListNode;

    iget-object v10, v9, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    iget v11, v9, Lcom/htc/music/browserlayer/HtcListNode;->cursorPosition:I

    invoke-interface {v10, v11}, Landroid/database/Cursor;->moveToPosition(I)Z

    iget-object v10, v9, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v10, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;

    iget-object v10, v10, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;

    iget-object v11, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;

    iget-object v11, v11, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mContext:Landroid/content/Context;

    iget-object v12, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;

    iget-object v12, v12, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mAlbumCols:[Ljava/lang/String;

    invoke-direct {v10, v11, v12, v0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->getArtistAlbumsCursor(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_6

    const-string v10, "[ArtistBrowserActivityExp]"

    const-string v11, "getChildrenCursor return null!!"

    invoke-static {v10, v11}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x0

    goto/16 :goto_0

    :cond_6
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v4, 0x0

    :goto_3
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v10

    if-ge v4, v10, :cond_0

    new-instance v8, Lcom/htc/music/browserlayer/HtcListNode;

    add-int/lit8 v10, v6, 0x1

    const/4 v11, 0x0

    invoke-direct {v8, v1, v4, v10, v11}, Lcom/htc/music/browserlayer/HtcListNode;-><init>(Landroid/database/Cursor;IIZ)V

    const/4 v10, 0x1

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v8, Lcom/htc/music/browserlayer/HtcListNode;->mTitle:Ljava/lang/String;

    iget-object v10, v8, Lcom/htc/music/browserlayer/HtcListNode;->mTitle:Ljava/lang/String;

    if-eqz v10, :cond_7

    iget-object v10, v8, Lcom/htc/music/browserlayer/HtcListNode;->mTitle:Ljava/lang/String;

    const-string v11, "<unknown>"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    :cond_7
    iget-object v10, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;

    const v11, 0x7f070044

    invoke-virtual {v10, v11}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v8, Lcom/htc/music/browserlayer/HtcListNode;->mTitle:Ljava/lang/String;

    :cond_8
    const/4 v10, 0x0

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    iput v10, v8, Lcom/htc/music/browserlayer/HtcListNode;->mImageRes:I

    const/4 v10, 0x2

    iput v10, v8, Lcom/htc/music/browserlayer/HtcListNode;->viewType:I

    invoke-virtual {v7, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_3
.end method

.method public getChildrenCursor(Landroid/database/Cursor;III)Landroid/database/Cursor;
    .locals 1

    const/4 v0, 0x0

    packed-switch p4, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-object v0

    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->getArtistAlbumChildCusror(Landroid/database/Cursor;I)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    const/16 v8, 0x8

    if-nez p3, :cond_0

    iget-object v4, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f03000d

    const/4 v6, 0x0

    invoke-virtual {v4, v5, p4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    new-instance v1, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter$ArtistViewHolder;

    invoke-direct {v1, p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter$ArtistViewHolder;-><init>(Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;)V

    const v4, 0x7f080043

    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcListItem2LineText;

    iput-object v4, v1, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter$ArtistViewHolder;->text:Lcom/htc/widget/HtcListItem2LineText;

    const v4, 0x7f080042

    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcListItemTileImage;

    iput-object v4, v1, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter$ArtistViewHolder;->icon:Lcom/htc/widget/HtcListItemTileImage;

    invoke-virtual {p3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/browserlayer/HtcListNode;

    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter$ArtistViewHolder;

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    iget-object v4, v1, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter$ArtistViewHolder;->text:Lcom/htc/widget/HtcListItem2LineText;

    if-eqz v4, :cond_1

    iget-object v4, v1, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter$ArtistViewHolder;->text:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v4, v8}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    iget-object v4, v1, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter$ArtistViewHolder;->text:Lcom/htc/widget/HtcListItem2LineText;

    iget-object v5, v2, Lcom/htc/music/browserlayer/HtcListNode;->mTitle:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    :cond_1
    iget-object v4, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;

    invoke-virtual {v4}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x2050050

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v3, v4

    iget-object v4, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;

    invoke-virtual {v4}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x2080025

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    iget-object v4, v1, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter$ArtistViewHolder;->text:Lcom/htc/widget/HtcListItem2LineText;

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, v1, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter$ArtistViewHolder;->text:Lcom/htc/widget/HtcListItem2LineText;

    iget-object v5, v1, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter$ArtistViewHolder;->text:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v5}, Lcom/htc/widget/HtcListItem2LineText;->getPaddingLeft()I

    move-result v5

    iget-object v6, v1, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter$ArtistViewHolder;->text:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v6}, Lcom/htc/widget/HtcListItem2LineText;->getPaddingTop()I

    move-result v6

    iget-object v7, v1, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter$ArtistViewHolder;->text:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v7}, Lcom/htc/widget/HtcListItem2LineText;->getPaddingBottom()I

    move-result v7

    invoke-virtual {v4, v5, v6, v3, v7}, Lcom/htc/widget/HtcListItem2LineText;->setPadding(IIII)V

    :cond_2
    if-eqz v1, :cond_3

    iget-object v4, v1, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter$ArtistViewHolder;->icon:Lcom/htc/widget/HtcListItemTileImage;

    if-eqz v4, :cond_3

    iget-object v4, v1, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter$ArtistViewHolder;->icon:Lcom/htc/widget/HtcListItemTileImage;

    invoke-virtual {v4, v8}, Lcom/htc/widget/HtcListItemTileImage;->setVisibility(I)V

    :cond_3
    return-object p3
.end method

.method public getPositionForSection(I)I
    .locals 5

    const-string v2, "[ArtistBrowserActivityExp]"

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

    iget-object v2, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->mAlphabetArray:[Ljava/lang/String;

    if-nez v2, :cond_0

    const/4 v2, -0x1

    :goto_0
    return v2

    :cond_0
    iget-object v2, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->mAlphabetArray:[Ljava/lang/String;

    aget-object v1, v2, p1

    const-string v2, "[ArtistBrowserActivityExp]"

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

    iget-object v2, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->mIndexerTable:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->mSectionPosition:I

    :cond_1
    const-string v2, "[ArtistBrowserActivityExp]"

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

    iget v4, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->mSectionPosition:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v2, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->mSectionPosition:I

    goto :goto_0
.end method

.method public getQueryHandler()Landroid/content/AsyncQueryHandler;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    return-object v0
.end method

.method public getSectionForPosition(I)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 2

    const-string v0, "[ArtistBrowserActivityExp]"

    const-string v1, "@@@@ Adapter - getSections()"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->mAlphabetArray:[Ljava/lang/String;

    return-object v0
.end method

.method protected initNodeList()V
    .locals 8

    const/4 v7, 0x1

    iget-object v5, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;

    iget-object v5, v5, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mCursor:Landroid/database/Cursor;

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;

    iget-object v5, v5, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v0, 0x0

    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    :cond_2
    iget-object v5, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;

    iget-object v5, v5, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v5, "<unknown>"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->mUnknownArtist:Ljava/lang/String;

    :cond_3
    iget-object v5, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->mActivity:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;

    iget-object v5, v5, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mLowerSearchFilter:Ljava/lang/String;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->mActivity:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;

    iget-object v6, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->mActivity:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;

    iget-object v6, v6, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mLowerSearchFilter:Ljava/lang/String;

    #calls: Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->getMarkedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    invoke-static {v5, v1, v6}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->access$1100(Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :cond_4
    new-instance v3, Lcom/htc/music/browserlayer/HtcListNode;

    iget-object v5, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;

    iget-object v5, v5, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mCursor:Landroid/database/Cursor;

    const/4 v6, 0x0

    invoke-direct {v3, v5, v0, v6, v7}, Lcom/htc/music/browserlayer/HtcListNode;-><init>(Landroid/database/Cursor;IIZ)V

    iput-object v1, v3, Lcom/htc/music/browserlayer/HtcListNode;->mTitle:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    iget-object v5, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;

    iget-object v5, v5, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v5

    if-lez v5, :cond_0

    iput-object v4, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mNodeList:Ljava/util/LinkedList;

    iget-object v5, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;
    invoke-static {v5}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->access$1000(Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;)Lcom/htc/widget/MoreExpandableHtcListView;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/htc/widget/MoreExpandableHtcListView;->changeRoot(Ljava/util/LinkedList;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;Landroid/database/Cursor;IIIZ)V
    .locals 4

    const/4 v3, 0x0

    packed-switch p4, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->updateAlphabetIndex()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, p5, v3}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->getParentCurosr(II)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-nez p3, :cond_1

    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->go2Tracks(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->go2Tracks(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
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

    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;

    #calls: Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->setActivitTitle(I)V
    invoke-static {v1, v0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->access$800(Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;I)V

    if-lez v0, :cond_1

    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->mActivity:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;

    invoke-virtual {v1}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->hideEmptyErrorView()V

    :goto_1
    invoke-direct {p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->updateAlphabetIndex()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->mActivity:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;

    const v2, 0x7f07002b

    invoke-virtual {v1, v2}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->showEmptyView(I)V

    goto :goto_1
.end method

.method public varargs onImageDecoded(ILandroid/graphics/Bitmap;J[Ljava/lang/Object;)V
    .locals 16

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->mActivity:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;

    invoke-virtual {v13}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/htc/widget/HtcListView;->getChildCount()I

    move-result v7

    if-gtz v7, :cond_2

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    :cond_2
    if-eqz p5, :cond_3

    move-object/from16 v0, p5

    array-length v13, v0

    const/4 v14, 0x2

    if-lt v13, v14, :cond_3

    const/4 v13, 0x0

    aget-object v13, p5, v13

    if-eqz v13, :cond_3

    const/4 v13, 0x0

    aget-object v13, p5, v13

    instance-of v13, v13, Ljava/lang/Integer;

    if-nez v13, :cond_4

    :cond_3
    const-string v13, "[ArtistBrowserActivityExp]"

    const-string v14, "onImageDecoded: Illegal Arguments"

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mNodeList:Ljava/util/LinkedList;

    invoke-virtual {v13}, Ljava/util/LinkedList;->size()I

    move-result v13

    if-lez v13, :cond_6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mNodeList:Ljava/util/LinkedList;

    const/4 v13, 0x0

    aget-object v13, p5, v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v14, v13}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/htc/music/browserlayer/HtcListNode;

    :goto_1
    if-eqz v11, :cond_5

    iget v13, v11, Lcom/htc/music/browserlayer/HtcListNode;->viewType:I

    const/4 v14, 0x2

    if-eq v13, v14, :cond_7

    :cond_5
    const-string v13, "[ArtistBrowserActivityExp]"

    const-string v14, "onImageDecoded: Illegal Arguments"

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    :cond_6
    const/4 v11, 0x0

    goto :goto_1

    :cond_7
    const/4 v12, 0x0

    const/4 v13, 0x1

    aget-object v13, p5, v13

    if-eqz v13, :cond_8

    const/4 v13, 0x1

    aget-object v13, p5, v13

    instance-of v13, v13, Ljava/lang/String;

    if-eqz v13, :cond_8

    const/4 v13, 0x1

    aget-object v12, p5, v13

    check-cast v12, Ljava/lang/String;

    :cond_8
    new-instance v5, Lcom/htc/music/util/MBitmap;

    move-object/from16 v0, p2

    invoke-direct {v5, v0, v12}, Lcom/htc/music/util/MBitmap;-><init>(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    sget-object v13, Lcom/htc/music/util/MusicUtils;->sLibraryMemCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    move/from16 v0, p1

    move-wide/from16 v1, p3

    invoke-virtual {v13, v0, v5, v1, v2}, Lcom/htc/music/util/MemoryCacheMBitmapByTime;->push(ILcom/htc/music/util/MBitmap;J)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v7, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;
    invoke-static {v13}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->access$1000(Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;)Lcom/htc/widget/MoreExpandableHtcListView;

    move-result-object v13

    invoke-virtual {v13, v8}, Lcom/htc/widget/MoreExpandableHtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    if-nez v10, :cond_9

    const-string v13, "[ArtistBrowserActivityExp]"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "onImageDecoded, can\'t find listview item, count = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " i = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    const v13, 0x7f080042

    invoke-virtual {v10, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/htc/widget/HtcListItemTileImage;

    if-eqz v6, :cond_a

    invoke-virtual {v6}, Lcom/htc/widget/HtcListItemTileImage;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-eqz v4, :cond_a

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_a
    add-int/lit8 v8, v8, 0x1

    goto :goto_2
.end method

.method public requeryRootCursor()Landroid/database/Cursor;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;

    #calls: Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->getArtistCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    invoke-static {v0, v1, v1}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->access$300(Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 3

    const-string v0, "[ArtistBrowserActivityExp]"

    const-string v1, "Adapter - runQueryOnBackgroundThread()"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->mActivity:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->getArtistCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    invoke-static {v0, v1, v2}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->access$300(Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public setActivity(Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->mActivity:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;

    return-void
.end method

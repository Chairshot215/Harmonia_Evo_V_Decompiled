.class public Lcom/htc/fusion/htcbookmarkwidget/util/BookmarkDatabaseImageList;
.super Ljava/lang/Object;
.source "BookmarkDatabaseImageList.java"

# interfaces
.implements Lcom/htc/fusion/htcbookmarkwidget/util/IImageList;


# static fields
.field private static final THUMBNAIL_PATH_CUSTOMIZATION_FOLDER:Ljava/lang/String; = "/system/customize/resource/"

.field private static final THUMBNAIL_PATH_CUSTOM_WIZARD_FOLDER:Ljava/lang/String; = "/data/data/cw/resource/"

.field private static final THUMBNAIL_PATH_CUSTOM_WIZARD_TEMP_FOLDER:Ljava/lang/String; = "/data/data/cwtemp/resource/"


# instance fields
.field private mContentList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/fusion/htcbookmarkwidget/IBookmark;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0
    .parameter "c"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/fusion/htcbookmarkwidget/IBookmark;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p2, contentList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/fusion/htcbookmarkwidget/IBookmark;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/htc/fusion/htcbookmarkwidget/util/BookmarkDatabaseImageList;->mContext:Landroid/content/Context;

    .line 24
    iput-object p2, p0, Lcom/htc/fusion/htcbookmarkwidget/util/BookmarkDatabaseImageList;->mContentList:Ljava/util/ArrayList;

    .line 25
    return-void
.end method

.method private getHashCodeForKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "key"

    .prologue
    .line 40
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getImagePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "url"

    .prologue
    .line 93
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/data/cw/resource/s"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, p1}, Lcom/htc/fusion/htcbookmarkwidget/util/BookmarkDatabaseImageList;->getHashCodeForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, path:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 96
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 97
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 101
    new-instance v0, Ljava/io/File;

    .end local v0           #f:Ljava/io/File;
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 102
    .restart local v0       #f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 103
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/data/cwtemp/resource/s"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, p1}, Lcom/htc/fusion/htcbookmarkwidget/util/BookmarkDatabaseImageList;->getHashCodeForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 107
    new-instance v0, Ljava/io/File;

    .end local v0           #f:Ljava/io/File;
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 108
    .restart local v0       #f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    .line 109
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 113
    new-instance v0, Ljava/io/File;

    .end local v0           #f:Ljava/io/File;
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 114
    .restart local v0       #f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_4

    .line 115
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/system/customize/resource/s"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, p1}, Lcom/htc/fusion/htcbookmarkwidget/util/BookmarkDatabaseImageList;->getHashCodeForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 119
    new-instance v0, Ljava/io/File;

    .end local v0           #f:Ljava/io/File;
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 120
    .restart local v0       #f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 121
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    move-object v2, v1

    .line 123
    .end local v1           #path:Ljava/lang/String;
    .local v2, path:Ljava/lang/String;
    :goto_0
    return-object v2

    .end local v2           #path:Ljava/lang/String;
    .restart local v1       #path:Ljava/lang/String;
    :cond_1
    move-object v2, v1

    .line 99
    .end local v1           #path:Ljava/lang/String;
    .restart local v2       #path:Ljava/lang/String;
    goto :goto_0

    .end local v2           #path:Ljava/lang/String;
    .restart local v1       #path:Ljava/lang/String;
    :cond_2
    move-object v2, v1

    .line 105
    .end local v1           #path:Ljava/lang/String;
    .restart local v2       #path:Ljava/lang/String;
    goto :goto_0

    .end local v2           #path:Ljava/lang/String;
    .restart local v1       #path:Ljava/lang/String;
    :cond_3
    move-object v2, v1

    .line 111
    .end local v1           #path:Ljava/lang/String;
    .restart local v2       #path:Ljava/lang/String;
    goto :goto_0

    .end local v2           #path:Ljava/lang/String;
    .restart local v1       #path:Ljava/lang/String;
    :cond_4
    move-object v2, v1

    .line 117
    .end local v1           #path:Ljava/lang/String;
    .restart local v2       #path:Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 29
    return-void
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 32
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 36
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getImage(Ljava/lang/String;)Lcom/htc/fusion/htcbookmarkwidget/util/IImage;
    .locals 8
    .parameter "key"

    .prologue
    const/4 v2, 0x0

    .line 44
    iget-object v6, p0, Lcom/htc/fusion/htcbookmarkwidget/util/BookmarkDatabaseImageList;->mContentList:Ljava/util/ArrayList;

    if-nez v6, :cond_1

    .line 69
    :cond_0
    :goto_0
    return-object v2

    .line 46
    :cond_1
    iget-object v6, p0, Lcom/htc/fusion/htcbookmarkwidget/util/BookmarkDatabaseImageList;->mContentList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 47
    .local v4, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/fusion/htcbookmarkwidget/IBookmark;>;"
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 48
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/fusion/htcbookmarkwidget/IBookmark;

    .line 49
    .local v0, b:Lcom/htc/fusion/htcbookmarkwidget/IBookmark;
    invoke-interface {v0}, Lcom/htc/fusion/htcbookmarkwidget/IBookmark;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 50
    const/4 v2, 0x0

    .line 52
    .local v2, i:Lcom/htc/fusion/htcbookmarkwidget/util/IImage;
    invoke-interface {v0}, Lcom/htc/fusion/htcbookmarkwidget/IBookmark;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/htc/fusion/htcbookmarkwidget/util/BookmarkDatabaseImageList;->getImagePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 54
    .local v5, path:Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 55
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 56
    new-instance v3, Lcom/htc/fusion/htcbookmarkwidget/util/BitmapImage;

    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-direct {v3, v6}, Lcom/htc/fusion/htcbookmarkwidget/util/BitmapImage;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2           #i:Lcom/htc/fusion/htcbookmarkwidget/util/IImage;
    .local v3, i:Lcom/htc/fusion/htcbookmarkwidget/util/IImage;
    move-object v2, v3

    .line 64
    .end local v1           #f:Ljava/io/File;
    .end local v3           #i:Lcom/htc/fusion/htcbookmarkwidget/util/IImage;
    .restart local v2       #i:Lcom/htc/fusion/htcbookmarkwidget/util/IImage;
    :cond_3
    :goto_1
    if-nez v2, :cond_0

    invoke-interface {v0}, Lcom/htc/fusion/htcbookmarkwidget/IBookmark;->getThumbnailImage()Lcom/htc/fusion/htcbookmarkwidget/util/IImage;

    move-result-object v2

    goto :goto_0

    .line 58
    .restart local v1       #f:Ljava/io/File;
    :cond_4
    :try_start_1
    new-instance v1, Ljava/io/File;

    .end local v1           #f:Ljava/io/File;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".jpg"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 59
    .restart local v1       #f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 60
    new-instance v3, Lcom/htc/fusion/htcbookmarkwidget/util/BitmapImage;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".jpg"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-direct {v3, v6}, Lcom/htc/fusion/htcbookmarkwidget/util/BitmapImage;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .end local v2           #i:Lcom/htc/fusion/htcbookmarkwidget/util/IImage;
    .restart local v3       #i:Lcom/htc/fusion/htcbookmarkwidget/util/IImage;
    move-object v2, v3

    .end local v3           #i:Lcom/htc/fusion/htcbookmarkwidget/util/IImage;
    .restart local v2       #i:Lcom/htc/fusion/htcbookmarkwidget/util/IImage;
    goto :goto_1

    .line 63
    .end local v1           #f:Ljava/io/File;
    :catch_0
    move-exception v6

    goto :goto_1
.end method

.method public getImageAt(I)Lcom/htc/fusion/htcbookmarkwidget/util/IImage;
    .locals 1
    .parameter "index"

    .prologue
    .line 73
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getImageIndex(Lcom/htc/fusion/htcbookmarkwidget/util/IImage;)I
    .locals 1
    .parameter "image"

    .prologue
    .line 77
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 81
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public removeImage(Lcom/htc/fusion/htcbookmarkwidget/util/IImage;)Z
    .locals 1
    .parameter "image"

    .prologue
    .line 85
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public removeImageAt(I)Z
    .locals 1
    .parameter "index"

    .prologue
    .line 89
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

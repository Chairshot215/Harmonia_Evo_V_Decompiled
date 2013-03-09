.class public Lcom/htc/fusion/htcbookmarkwidget/util/BookmarkImageList;
.super Ljava/lang/Object;
.source "BookmarkImageList.java"

# interfaces
.implements Lcom/htc/fusion/htcbookmarkwidget/util/IImageList;
.implements Lcom/htc/fusion/htcbookmarkwidget/util/StorageStateListener;


# static fields
.field private static final CACHE_ENABLED:Z = false

.field private static final DEBUG:Z = false

.field private static final IMAGE_DIRECTORY_CUSTOMIZATION_RES:Ljava/lang/String; = "/system/customize/resource"

.field private static final IMAGE_DIRECTORY_CW_CUSTOMIZATION_RES:Ljava/lang/String; = "/data/data/cw/resource"

.field private static final IMAGE_EXTENSION:Ljava/lang/String; = "jpg"

.field private static final IMAGE_FORDER_NAME:Ljava/lang/String; = ".bookmark_thumb1"

.field private static final IMAGE_PREFIX_MEDIUM:Ljava/lang/String; = "m"

.field private static final IMAGE_PREFIX_SMALL:Ljava/lang/String; = "s"

.field private static final LOGTAG:Ljava/lang/String; = "HtcBookmarkWidget"


# instance fields
.field private mCache:Lcom/htc/fusion/htcbookmarkwidget/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/fusion/htcbookmarkwidget/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mState:Lcom/htc/fusion/htcbookmarkwidget/util/StorageStateListener$StorageState;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 179
    sget-object v0, Lcom/htc/fusion/htcbookmarkwidget/util/StorageStateListener$StorageState;->UNKNOW:Lcom/htc/fusion/htcbookmarkwidget/util/StorageStateListener$StorageState;

    iput-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/util/BookmarkImageList;->mState:Lcom/htc/fusion/htcbookmarkwidget/util/StorageStateListener$StorageState;

    .line 28
    invoke-virtual {p0}, Lcom/htc/fusion/htcbookmarkwidget/util/BookmarkImageList;->updateState()V

    .line 29
    return-void
.end method

.method private getHashCodeForKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "key"

    .prologue
    .line 176
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getImagePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "key"

    .prologue
    const/4 v3, 0x0

    .line 123
    invoke-direct {p0, p1}, Lcom/htc/fusion/htcbookmarkwidget/util/BookmarkImageList;->getHashCodeForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 125
    .local v1, hashCode:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/util/BookmarkImageList;->mState:Lcom/htc/fusion/htcbookmarkwidget/util/StorageStateListener$StorageState;

    sget-object v4, Lcom/htc/fusion/htcbookmarkwidget/util/StorageStateListener$StorageState;->EXTERNAL:Lcom/htc/fusion/htcbookmarkwidget/util/StorageStateListener$StorageState;

    if-ne v0, v4, :cond_1

    .line 126
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 152
    .local v2, basePath:Ljava/lang/String;
    :goto_0
    const-string v3, ".bookmark_thumb1"

    const-string v4, "s"

    const-string v5, "jpg"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/fusion/htcbookmarkwidget/util/BookmarkImageList;->getPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .end local v2           #basePath:Ljava/lang/String;
    :cond_0
    :goto_1
    return-object v6

    .line 127
    :cond_1
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/util/BookmarkImageList;->mState:Lcom/htc/fusion/htcbookmarkwidget/util/StorageStateListener$StorageState;

    sget-object v4, Lcom/htc/fusion/htcbookmarkwidget/util/StorageStateListener$StorageState;->PHONE:Lcom/htc/fusion/htcbookmarkwidget/util/StorageStateListener$StorageState;

    if-ne v0, v4, :cond_2

    .line 128
    invoke-static {}, Lcom/htc/fusion/htcbookmarkwidget/util/AppUnbundleUtil;->getPhoneStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .restart local v2       #basePath:Ljava/lang/String;
    goto :goto_0

    .line 132
    .end local v2           #basePath:Ljava/lang/String;
    :cond_2
    const-string v2, "/data/data/cw/resource"

    const-string v4, "s"

    const-string v5, "jpg"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/fusion/htcbookmarkwidget/util/BookmarkImageList;->getPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 139
    .local v6, custPath:Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 140
    .local v7, file:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    const-string v2, "/system/customize/resource"

    const-string v4, "s"

    const-string v5, "jpg"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/fusion/htcbookmarkwidget/util/BookmarkImageList;->getPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1
.end method

.method private getPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "hashCode"
    .parameter "baseDir"
    .parameter "imgDir"
    .parameter "prefix"
    .parameter "extension"

    .prologue
    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 162
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    if-eqz p3, :cond_0

    .line 165
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    :cond_0
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 113
    return-void
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 98
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getImage(Ljava/lang/String;)Lcom/htc/fusion/htcbookmarkwidget/util/IImage;
    .locals 8
    .parameter "key"

    .prologue
    const/4 v3, 0x0

    .line 32
    invoke-direct {p0, p1}, Lcom/htc/fusion/htcbookmarkwidget/util/BookmarkImageList;->getHashCodeForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 33
    .local v1, hashCode:Ljava/lang/String;
    const/4 v6, 0x0

    .line 39
    .local v6, bitmap:Landroid/graphics/Bitmap;
    if-nez v6, :cond_2

    .line 40
    invoke-direct {p0, p1}, Lcom/htc/fusion/htcbookmarkwidget/util/BookmarkImageList;->getImagePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 41
    .local v7, path:Ljava/lang/String;
    invoke-static {v7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 43
    if-nez v6, :cond_0

    .line 44
    const-string v2, "/data/data/cw/resource"

    const-string v4, "s"

    const-string v5, "jpg"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/fusion/htcbookmarkwidget/util/BookmarkImageList;->getPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 50
    invoke-static {v7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 53
    :cond_0
    if-nez v6, :cond_1

    .line 54
    const-string v2, "/system/customize/resource"

    const-string v4, "s"

    const-string v5, "jpg"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/fusion/htcbookmarkwidget/util/BookmarkImageList;->getPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 60
    invoke-static {v7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 63
    :cond_1
    if-eqz v6, :cond_2

    .line 68
    .end local v7           #path:Ljava/lang/String;
    :cond_2
    if-eqz v6, :cond_3

    .line 69
    new-instance v3, Lcom/htc/fusion/htcbookmarkwidget/util/BitmapImage;

    invoke-direct {v3, v6}, Lcom/htc/fusion/htcbookmarkwidget/util/BitmapImage;-><init>(Landroid/graphics/Bitmap;)V

    .line 72
    :cond_3
    return-object v3
.end method

.method public getImageAt(I)Lcom/htc/fusion/htcbookmarkwidget/util/IImage;
    .locals 1
    .parameter "index"

    .prologue
    .line 76
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getImageIndex(Lcom/htc/fusion/htcbookmarkwidget/util/IImage;)I
    .locals 1
    .parameter "image"

    .prologue
    .line 80
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 94
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public removeImage(Lcom/htc/fusion/htcbookmarkwidget/util/IImage;)Z
    .locals 1
    .parameter "image"

    .prologue
    .line 102
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public removeImageAt(I)Z
    .locals 1
    .parameter "index"

    .prologue
    .line 106
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public updateState()V
    .locals 3

    .prologue
    .line 182
    sget-object v0, Lcom/htc/fusion/htcbookmarkwidget/util/StorageStateListener$StorageState;->UNKNOW:Lcom/htc/fusion/htcbookmarkwidget/util/StorageStateListener$StorageState;

    .line 183
    .local v0, state:Lcom/htc/fusion/htcbookmarkwidget/util/StorageStateListener$StorageState;
    invoke-static {}, Lcom/htc/fusion/htcbookmarkwidget/util/AppUnbundleUtil;->getPhoneStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 184
    sget-object v0, Lcom/htc/fusion/htcbookmarkwidget/util/StorageStateListener$StorageState;->PHONE:Lcom/htc/fusion/htcbookmarkwidget/util/StorageStateListener$StorageState;

    .line 191
    :goto_0
    invoke-virtual {p0, v0}, Lcom/htc/fusion/htcbookmarkwidget/util/BookmarkImageList;->updateState(Lcom/htc/fusion/htcbookmarkwidget/util/StorageStateListener$StorageState;)V

    .line 192
    return-void

    .line 185
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 186
    sget-object v0, Lcom/htc/fusion/htcbookmarkwidget/util/StorageStateListener$StorageState;->EXTERNAL:Lcom/htc/fusion/htcbookmarkwidget/util/StorageStateListener$StorageState;

    goto :goto_0

    .line 188
    :cond_1
    sget-object v0, Lcom/htc/fusion/htcbookmarkwidget/util/StorageStateListener$StorageState;->CUSTOMIZE_RES:Lcom/htc/fusion/htcbookmarkwidget/util/StorageStateListener$StorageState;

    goto :goto_0
.end method

.method public updateState(Lcom/htc/fusion/htcbookmarkwidget/util/StorageStateListener$StorageState;)V
    .locals 0
    .parameter "newState"

    .prologue
    .line 195
    iput-object p1, p0, Lcom/htc/fusion/htcbookmarkwidget/util/BookmarkImageList;->mState:Lcom/htc/fusion/htcbookmarkwidget/util/StorageStateListener$StorageState;

    .line 196
    return-void
.end method

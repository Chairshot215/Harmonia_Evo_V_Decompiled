.class final Lcom/htc/sdcardwizard/handler/BrowserHandler;
.super Lcom/htc/sdcardwizard/handler/FileCasperHandler;
.source "BrowserHandler.java"


# static fields
.field private static final CATEGORY_ICON_PACKAGE_NAME:Ljava/lang/String; = "com.android.browser"

.field private static final DIRECTORY:Ljava/lang/String; = "/Download"

.field private static final TAG:Ljava/lang/String; = "LSCW/BrowserHandler"


# instance fields
.field private final mDownloadManager:Landroid/app/DownloadManager;

.field private final mDownloadsIdMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mDownloadsMediaMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3
    .parameter "owner"

    .prologue
    .line 29
    new-instance v1, Lcom/htc/sdcardwizard/handler/PackageIconGetter;

    const-string v2, "com.android.browser"

    invoke-direct {v1, v2}, Lcom/htc/sdcardwizard/handler/PackageIconGetter;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v1}, Lcom/htc/sdcardwizard/handler/FileCasperHandler;-><init>(Landroid/app/Activity;Lcom/htc/sdcardwizard/handler/IconGetter;)V

    .line 31
    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->getRemovableStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 32
    .local v0, extSdFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 33
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/sdcardwizard/handler/SDCardHandler;->path:Ljava/lang/String;

    .line 35
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/sdcardwizard/handler/SDCardHandler;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/Download"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/sdcardwizard/handler/SDCardHandler;->path:Ljava/lang/String;

    .line 37
    const-string v1, "download"

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/DownloadManager;

    iput-object v1, p0, Lcom/htc/sdcardwizard/handler/BrowserHandler;->mDownloadManager:Landroid/app/DownloadManager;

    .line 38
    iget-object v1, p0, Lcom/htc/sdcardwizard/handler/BrowserHandler;->mDownloadManager:Landroid/app/DownloadManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/DownloadManager;->setAccessAllDownloads(Z)V

    .line 40
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/htc/sdcardwizard/handler/BrowserHandler;->mDownloadsIdMap:Ljava/util/HashMap;

    .line 41
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/htc/sdcardwizard/handler/BrowserHandler;->mDownloadsMediaMap:Ljava/util/HashMap;

    .line 42
    return-void
.end method

.method private reloadDownloadItems()V
    .locals 12

    .prologue
    .line 95
    iget-object v10, p0, Lcom/htc/sdcardwizard/handler/BrowserHandler;->mDownloadsIdMap:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->clear()V

    .line 96
    iget-object v10, p0, Lcom/htc/sdcardwizard/handler/BrowserHandler;->mDownloadsMediaMap:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->clear()V

    .line 98
    new-instance v0, Landroid/app/DownloadManager$Query;

    invoke-direct {v0}, Landroid/app/DownloadManager$Query;-><init>()V

    .line 99
    .local v0, baseQuery:Landroid/app/DownloadManager$Query;
    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Landroid/app/DownloadManager$Query;->setOnlyIncludeVisibleInDownloadsUi(Z)Landroid/app/DownloadManager$Query;

    .line 100
    iget-object v10, p0, Lcom/htc/sdcardwizard/handler/BrowserHandler;->mDownloadManager:Landroid/app/DownloadManager;

    invoke-virtual {v10, v0}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v4

    .line 102
    .local v4, dateSortedCursor:Landroid/database/Cursor;
    if-eqz v4, :cond_0

    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    if-nez v10, :cond_1

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    const-string v10, "local_uri"

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 107
    .local v2, columnLocalUri:I
    const-string v10, "_id"

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 108
    .local v1, columnId:I
    const-string v10, "media_type"

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 111
    .local v3, columnMedia:I
    :cond_2
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 112
    .local v8, strUri:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 113
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 114
    .local v9, uri:Landroid/net/Uri;
    invoke-virtual {v9}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v7

    .line 115
    .local v7, path:Ljava/lang/String;
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 116
    .local v5, id:I
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 118
    .local v6, mediaType:Ljava/lang/String;
    iget-object v10, p0, Lcom/htc/sdcardwizard/handler/BrowserHandler;->mDownloadsIdMap:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v7, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    iget-object v10, p0, Lcom/htc/sdcardwizard/handler/BrowserHandler;->mDownloadsMediaMap:Ljava/util/HashMap;

    invoke-virtual {v10, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .end local v5           #id:I
    .end local v6           #mediaType:Ljava/lang/String;
    .end local v7           #path:Ljava/lang/String;
    .end local v9           #uri:Landroid/net/Uri;
    :cond_3
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-nez v10, :cond_2

    goto :goto_0
.end method


# virtual methods
.method protected getCategoryID()Lcom/htc/sdcardwizard/handler/CategoryID;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/htc/sdcardwizard/handler/CategoryID;->BROWSER:Lcom/htc/sdcardwizard/handler/CategoryID;

    return-object v0
.end method

.method public getDeleteButtonCaptionId()I
    .locals 1

    .prologue
    .line 51
    const v0, 0x7f04001b

    return v0
.end method

.method protected getFilter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "path"

    .prologue
    .line 141
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItems()Lcom/htc/sdcardwizard/handler/SDCardItems;
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/htc/sdcardwizard/handler/BrowserHandler;->reloadDownloadItems()V

    .line 62
    invoke-super {p0}, Lcom/htc/sdcardwizard/handler/FileCasperHandler;->getItems()Lcom/htc/sdcardwizard/handler/SDCardItems;

    move-result-object v0

    return-object v0
.end method

.method protected getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/htc/sdcardwizard/handler/SDCardHandler;->path:Ljava/lang/String;

    return-object v0
.end method

.method protected getSelectAllCaptionId()I
    .locals 1

    .prologue
    .line 72
    const v0, 0x7f040034

    return v0
.end method

.method public getSelectAllIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/htc/sdcardwizard/handler/BrowserHandler;->getCategoryIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getTitleId()I
    .locals 1

    .prologue
    .line 46
    const v0, 0x7f040033

    return v0
.end method

.method protected onDeleteItem(Ljava/lang/String;)V
    .locals 6
    .parameter "itemId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 87
    iget-object v1, p0, Lcom/htc/sdcardwizard/handler/BrowserHandler;->mDownloadsIdMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 88
    .local v0, id:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 89
    const-string v1, "LSCW/BrowserHandler"

    const-string v2, "Item deleted from DownloadManager too"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v1, p0, Lcom/htc/sdcardwizard/handler/BrowserHandler;->mDownloadManager:Landroid/app/DownloadManager;

    const/4 v2, 0x1

    new-array v2, v2, [J

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v4, v4

    aput-wide v4, v2, v3

    invoke-virtual {v1, v2}, Landroid/app/DownloadManager;->remove([J)I

    .line 92
    :cond_0
    return-void
.end method

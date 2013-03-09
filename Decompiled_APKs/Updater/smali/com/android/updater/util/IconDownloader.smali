.class public Lcom/android/updater/util/IconDownloader;
.super Ljava/lang/Object;
.source "IconDownloader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/updater/util/IconDownloader$BitmapDisplayer;,
        Lcom/android/updater/util/IconDownloader$IconDownloadThread;,
        Lcom/android/updater/util/IconDownloader$IconQueue;,
        Lcom/android/updater/util/IconDownloader$QueueElement;
    }
.end annotation


# static fields
.field public static final DIRECTORY_NAME:Ljava/lang/String; = "ApkIcon"

.field private static final LOG:Z = false

.field private static final TAG:Ljava/lang/String; = "UpdaterAPK | IconDownloader"


# instance fields
.field private mCacheDir:Ljava/io/File;

.field private mDefaultAppIcon:I

.field private mFileName:Ljava/lang/String;

.field private mIconCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mIconDownloadThread:Lcom/android/updater/util/IconDownloader$IconDownloadThread;

.field private mIconQueue:Lcom/android/updater/util/IconDownloader$IconQueue;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 61
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/updater/util/IconDownloader;->mIconCache:Ljava/util/HashMap;

    .line 37
    new-instance v0, Lcom/android/updater/util/IconDownloader$IconQueue;

    invoke-direct {v0, p0}, Lcom/android/updater/util/IconDownloader$IconQueue;-><init>(Lcom/android/updater/util/IconDownloader;)V

    iput-object v0, p0, Lcom/android/updater/util/IconDownloader;->mIconQueue:Lcom/android/updater/util/IconDownloader$IconQueue;

    .line 38
    new-instance v0, Lcom/android/updater/util/IconDownloader$IconDownloadThread;

    invoke-direct {v0, p0}, Lcom/android/updater/util/IconDownloader$IconDownloadThread;-><init>(Lcom/android/updater/util/IconDownloader;)V

    iput-object v0, p0, Lcom/android/updater/util/IconDownloader;->mIconDownloadThread:Lcom/android/updater/util/IconDownloader$IconDownloadThread;

    .line 65
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ApkIcon"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/updater/util/IconDownloader;->mCacheDir:Ljava/io/File;

    .line 66
    iget-object v0, p0, Lcom/android/updater/util/IconDownloader;->mCacheDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/android/updater/util/IconDownloader;->mCacheDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 71
    :cond_0
    const v0, 0x1080093

    iput v0, p0, Lcom/android/updater/util/IconDownloader;->mDefaultAppIcon:I

    .line 72
    iget-object v0, p0, Lcom/android/updater/util/IconDownloader;->mIconDownloadThread:Lcom/android/updater/util/IconDownloader$IconDownloadThread;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/updater/util/IconDownloader$IconDownloadThread;->setPriority(I)V

    .line 73
    return-void
.end method

.method static synthetic access$100(Lcom/android/updater/util/IconDownloader;)Lcom/android/updater/util/IconDownloader$IconQueue;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/updater/util/IconDownloader;->mIconQueue:Lcom/android/updater/util/IconDownloader$IconQueue;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/updater/util/IconDownloader;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/updater/util/IconDownloader;->mIconCache:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/updater/util/IconDownloader;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/android/updater/util/IconDownloader;->saveToCache(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private saveToCache(Landroid/graphics/Bitmap;)V
    .locals 7
    .parameter "bmp"

    .prologue
    .line 197
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/updater/util/IconDownloader;->mCacheDir:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/updater/util/IconDownloader;->mFileName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 199
    .local v3, iconCachePath:Ljava/lang/String;
    const/4 v1, 0x0

    .line 200
    .local v1, fileOutputStream:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 202
    .end local v1           #fileOutputStream:Ljava/io/FileOutputStream;
    .local v2, fileOutputStream:Ljava/io/FileOutputStream;
    :try_start_1
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {p1, v4, v5, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 203
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 205
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 211
    .end local v2           #fileOutputStream:Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 205
    .restart local v2       #fileOutputStream:Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v4

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    throw v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 207
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 208
    .end local v2           #fileOutputStream:Ljava/io/FileOutputStream;
    .local v0, e:Ljava/lang/Exception;
    .restart local v1       #fileOutputStream:Ljava/io/FileOutputStream;
    :goto_1
    const-string v4, "UpdaterAPK | IconDownloader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "saveToCache() can not save file : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 207
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public ShowIcon(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 1
    .parameter "iconDownloadPath"
    .parameter "apkIcon"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/updater/util/IconDownloader;->mIconCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/android/updater/util/IconDownloader;->mIconCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 84
    :goto_0
    return-void

    .line 81
    :cond_0
    iget v0, p0, Lcom/android/updater/util/IconDownloader;->mDefaultAppIcon:I

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 82
    invoke-virtual {p0, p1, p2}, Lcom/android/updater/util/IconDownloader;->downloadIcon(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_0
.end method

.method public downloadIcon(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 3
    .parameter "iconDownloadPath"
    .parameter "apkIcon"

    .prologue
    .line 91
    iget-object v1, p0, Lcom/android/updater/util/IconDownloader;->mIconQueue:Lcom/android/updater/util/IconDownloader$IconQueue;

    invoke-virtual {v1, p2}, Lcom/android/updater/util/IconDownloader$IconQueue;->removeRedundant(Landroid/widget/ImageView;)V

    .line 92
    new-instance v0, Lcom/android/updater/util/IconDownloader$QueueElement;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/updater/util/IconDownloader$QueueElement;-><init>(Lcom/android/updater/util/IconDownloader;Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 93
    .local v0, queueElement:Lcom/android/updater/util/IconDownloader$QueueElement;
    iget-object v1, p0, Lcom/android/updater/util/IconDownloader;->mIconQueue:Lcom/android/updater/util/IconDownloader$IconQueue;

    #getter for: Lcom/android/updater/util/IconDownloader$IconQueue;->mQueueElementStack:Ljava/util/Stack;
    invoke-static {v1}, Lcom/android/updater/util/IconDownloader$IconQueue;->access$000(Lcom/android/updater/util/IconDownloader$IconQueue;)Ljava/util/Stack;

    move-result-object v2

    monitor-enter v2

    .line 94
    :try_start_0
    iget-object v1, p0, Lcom/android/updater/util/IconDownloader;->mIconQueue:Lcom/android/updater/util/IconDownloader$IconQueue;

    #getter for: Lcom/android/updater/util/IconDownloader$IconQueue;->mQueueElementStack:Ljava/util/Stack;
    invoke-static {v1}, Lcom/android/updater/util/IconDownloader$IconQueue;->access$000(Lcom/android/updater/util/IconDownloader$IconQueue;)Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    iget-object v1, p0, Lcom/android/updater/util/IconDownloader;->mIconQueue:Lcom/android/updater/util/IconDownloader$IconQueue;

    #getter for: Lcom/android/updater/util/IconDownloader$IconQueue;->mQueueElementStack:Ljava/util/Stack;
    invoke-static {v1}, Lcom/android/updater/util/IconDownloader$IconQueue;->access$000(Lcom/android/updater/util/IconDownloader$IconQueue;)Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 96
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    iget-object v1, p0, Lcom/android/updater/util/IconDownloader;->mIconDownloadThread:Lcom/android/updater/util/IconDownloader$IconDownloadThread;

    invoke-virtual {v1}, Lcom/android/updater/util/IconDownloader$IconDownloadThread;->getState()Ljava/lang/Thread$State;

    move-result-object v1

    sget-object v2, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    if-ne v1, v2, :cond_0

    .line 100
    iget-object v1, p0, Lcom/android/updater/util/IconDownloader;->mIconDownloadThread:Lcom/android/updater/util/IconDownloader$IconDownloadThread;

    invoke-virtual {v1}, Lcom/android/updater/util/IconDownloader$IconDownloadThread;->start()V

    .line 102
    :cond_0
    return-void

    .line 96
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getURLBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "iconDownloadPath"

    .prologue
    const/16 v10, 0x2f

    .line 169
    invoke-virtual {p1, v10}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/updater/util/IconDownloader;->mFileName:Ljava/lang/String;

    .line 170
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/android/updater/util/IconDownloader;->mCacheDir:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/updater/util/IconDownloader;->mFileName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 171
    .local v4, iconCachePath:Ljava/lang/String;
    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 173
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 191
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .local v1, bitmap:Landroid/graphics/Bitmap;
    :goto_0
    return-object v1

    .line 178
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    :cond_0
    const/4 v5, 0x0

    .line 180
    .local v5, iconDownloadPathUrl:Ljava/net/URL;
    :try_start_0
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    .end local v5           #iconDownloadPathUrl:Ljava/net/URL;
    .local v6, iconDownloadPathUrl:Ljava/net/URL;
    :try_start_1
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    .line 182
    .local v2, conn:Ljava/net/HttpURLConnection;
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    .line 183
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    .line 184
    .local v7, is:Ljava/io/InputStream;
    invoke-static {v7}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 185
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v5, v6

    .end local v2           #conn:Ljava/net/HttpURLConnection;
    .end local v6           #iconDownloadPathUrl:Ljava/net/URL;
    .end local v7           #is:Ljava/io/InputStream;
    .restart local v5       #iconDownloadPathUrl:Ljava/net/URL;
    :goto_1
    move-object v1, v0

    .line 191
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .restart local v1       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_0

    .line 187
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v3

    .line 188
    .local v3, e:Ljava/lang/Exception;
    :goto_2
    const-string v8, "UpdaterAPK | IconDownloader"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getURLBitmap() can not download file : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 187
    .end local v3           #e:Ljava/lang/Exception;
    .end local v5           #iconDownloadPathUrl:Ljava/net/URL;
    .restart local v6       #iconDownloadPathUrl:Ljava/net/URL;
    :catch_1
    move-exception v3

    move-object v5, v6

    .end local v6           #iconDownloadPathUrl:Ljava/net/URL;
    .restart local v5       #iconDownloadPathUrl:Ljava/net/URL;
    goto :goto_2
.end method

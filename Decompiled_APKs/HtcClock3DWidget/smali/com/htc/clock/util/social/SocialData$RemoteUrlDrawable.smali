.class public Lcom/htc/clock/util/social/SocialData$RemoteUrlDrawable;
.super Lcom/htc/graphics/drawable/UrlDrawable;
.source "SocialData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/clock/util/social/SocialData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RemoteUrlDrawable"
.end annotation


# instance fields
.field private mInflateCallback:Lcom/htc/clock/util/social/SocialData$InflatedCallback;

.field final synthetic this$0:Lcom/htc/clock/util/social/SocialData;


# direct methods
.method public constructor <init>(Lcom/htc/clock/util/social/SocialData;Landroid/content/Context;Ljava/lang/String;Lcom/htc/graphics/drawable/UrlDrawable$Options;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "url"
    .parameter "options"

    .prologue
    .line 345
    iput-object p1, p0, Lcom/htc/clock/util/social/SocialData$RemoteUrlDrawable;->this$0:Lcom/htc/clock/util/social/SocialData;

    .line 346
    invoke-direct {p0, p2, p3, p4}, Lcom/htc/graphics/drawable/UrlDrawable;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/htc/graphics/drawable/UrlDrawable$Options;)V

    .line 347
    return-void
.end method


# virtual methods
.method public getBitmapFromDiskCache()Landroid/graphics/Bitmap;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 351
    iget-object v5, p0, Lcom/htc/clock/util/social/SocialData$RemoteUrlDrawable;->this$0:Lcom/htc/clock/util/social/SocialData;

    #calls: Lcom/htc/clock/util/social/SocialData;->getCacheUri()Landroid/net/Uri;
    invoke-static {v5}, Lcom/htc/clock/util/social/SocialData;->access$000(Lcom/htc/clock/util/social/SocialData;)Landroid/net/Uri;

    move-result-object v1

    .line 352
    .local v1, contentUri:Landroid/net/Uri;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getBitmapFromDiskCache contentUri ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V

    .line 353
    if-nez v1, :cond_0

    .line 354
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getBitmapFromDiskCache no cache URL!  package_name="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/clock/util/social/SocialData$RemoteUrlDrawable;->this$0:Lcom/htc/clock/util/social/SocialData;

    iget-object v6, v6, Lcom/htc/clock/util/social/SocialData;->package_name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/clock/util/MyLog;->e(Ljava/lang/String;)V

    .line 355
    invoke-super {p0}, Lcom/htc/graphics/drawable/UrlDrawable;->getBitmapFromDiskCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 374
    :goto_0
    return-object v0

    .line 357
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/htc/clock/util/social/SocialData$RemoteUrlDrawable;->mUrl:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".png"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 359
    .local v4, uri:Landroid/net/Uri;
    const/4 v0, 0x0

    .line 361
    .local v0, bitmap:Landroid/graphics/Bitmap;
    sget-object v5, Lcom/htc/clock/util/social/SocialData$RemoteUrlDrawable;->sFileReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->lockInterruptibly()V

    .line 363
    :try_start_0
    iget-object v5, p0, Lcom/htc/clock/util/social/SocialData$RemoteUrlDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "r"

    invoke-virtual {v5, v4, v6}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 365
    .local v3, f:Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 371
    sget-object v5, Lcom/htc/clock/util/social/SocialData$RemoteUrlDrawable;->sFileReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 366
    .end local v3           #f:Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v2

    .line 367
    .local v2, e:Ljava/io/FileNotFoundException;
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getBitmapFromDiskCache FileNotFoundException!  url="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/clock/util/social/SocialData$RemoteUrlDrawable;->mUrl:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/clock/util/MyLog;->w(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 371
    sget-object v5, Lcom/htc/clock/util/social/SocialData$RemoteUrlDrawable;->sFileReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 368
    .end local v2           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v2

    .line 369
    .local v2, e:Ljava/lang/Exception;
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getBitmapFromDiskCache failed!  url="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/clock/util/social/SocialData$RemoteUrlDrawable;->mUrl:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2}, Lcom/htc/clock/util/MyLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 371
    sget-object v5, Lcom/htc/clock/util/social/SocialData$RemoteUrlDrawable;->sFileReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    sget-object v6, Lcom/htc/clock/util/social/SocialData$RemoteUrlDrawable;->sFileReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v5
.end method

.method public invalidateSelf()V
    .locals 1

    .prologue
    .line 415
    invoke-super {p0}, Lcom/htc/graphics/drawable/UrlDrawable;->invalidateSelf()V

    .line 416
    iget-object v0, p0, Lcom/htc/clock/util/social/SocialData$RemoteUrlDrawable;->mInflateCallback:Lcom/htc/clock/util/social/SocialData$InflatedCallback;

    .line 417
    .local v0, callback:Lcom/htc/clock/util/social/SocialData$InflatedCallback;
    if-eqz v0, :cond_0

    .line 418
    invoke-interface {v0, p0}, Lcom/htc/clock/util/social/SocialData$InflatedCallback;->onURLDrawableInflated(Lcom/htc/clock/util/social/SocialData$RemoteUrlDrawable;)V

    .line 420
    :cond_0
    return-void
.end method

.method public setInflatedCallback(Lcom/htc/clock/util/social/SocialData$InflatedCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 411
    iput-object p1, p0, Lcom/htc/clock/util/social/SocialData$RemoteUrlDrawable;->mInflateCallback:Lcom/htc/clock/util/social/SocialData$InflatedCallback;

    .line 412
    return-void
.end method

.method public writeBitmapToDiskCache(Landroid/graphics/Bitmap;)V
    .locals 8
    .parameter "bitmap"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 379
    iget-object v6, p0, Lcom/htc/clock/util/social/SocialData$RemoteUrlDrawable;->this$0:Lcom/htc/clock/util/social/SocialData;

    iget-object v7, p0, Lcom/htc/clock/util/social/SocialData$RemoteUrlDrawable;->this$0:Lcom/htc/clock/util/social/SocialData;

    iget-object v7, v7, Lcom/htc/clock/util/social/SocialData;->package_name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/htc/clock/util/social/SocialData;->mapToURI(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 380
    .local v0, contentUri:Landroid/net/Uri;
    if-nez v0, :cond_1

    .line 381
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "writeBitmapToDiskCache no cache URL!  package_name="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/clock/util/social/SocialData$RemoteUrlDrawable;->this$0:Lcom/htc/clock/util/social/SocialData;

    iget-object v7, v7, Lcom/htc/clock/util/social/SocialData;->package_name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/htc/clock/util/MyLog;->e(Ljava/lang/String;)V

    .line 382
    invoke-super {p0, p1}, Lcom/htc/graphics/drawable/UrlDrawable;->writeBitmapToDiskCache(Landroid/graphics/Bitmap;)V

    .line 408
    :cond_0
    :goto_0
    return-void

    .line 385
    :cond_1
    iget-object v6, p0, Lcom/htc/clock/util/social/SocialData$RemoteUrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-boolean v6, v6, Lcom/htc/graphics/drawable/UrlDrawable$Options;->writeDisk:Z

    if-eqz v6, :cond_0

    .line 386
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/htc/clock/util/social/SocialData$RemoteUrlDrawable;->mUrl:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".png"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 388
    .local v5, uri:Landroid/net/Uri;
    const/4 v3, 0x0

    .line 389
    .local v3, fos:Ljava/io/FileOutputStream;
    sget-object v6, Lcom/htc/clock/util/social/SocialData$RemoteUrlDrawable;->sFileWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->lockInterruptibly()V

    .line 391
    :try_start_0
    iget-object v6, p0, Lcom/htc/clock/util/social/SocialData$RemoteUrlDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "w"

    invoke-virtual {v6, v5, v7}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 393
    .local v2, f:Landroid/os/ParcelFileDescriptor;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 394
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .local v4, fos:Ljava/io/FileOutputStream;
    :try_start_1
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x64

    invoke-virtual {p1, v6, v7, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 401
    if-eqz v4, :cond_2

    .line 402
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 404
    :cond_2
    sget-object v6, Lcom/htc/clock/util/social/SocialData$RemoteUrlDrawable;->sFileWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 395
    .end local v2           #f:Landroid/os/ParcelFileDescriptor;
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v1

    .line 396
    .local v1, e:Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "writeBitmapToDiskCache FileNotFoundException!  url="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/clock/util/social/SocialData$RemoteUrlDrawable;->mUrl:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/htc/clock/util/MyLog;->w(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 401
    if-eqz v3, :cond_3

    .line 402
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 404
    :cond_3
    sget-object v6, Lcom/htc/clock/util/social/SocialData$RemoteUrlDrawable;->sFileWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 398
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 399
    .local v1, e:Ljava/lang/Exception;
    :goto_2
    :try_start_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "writeBitmapToDiskCache failed!  url="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/clock/util/social/SocialData$RemoteUrlDrawable;->mUrl:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v1}, Lcom/htc/clock/util/MyLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 401
    if-eqz v3, :cond_4

    .line 402
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 404
    :cond_4
    sget-object v6, Lcom/htc/clock/util/social/SocialData$RemoteUrlDrawable;->sFileWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_0

    .line 401
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    :goto_3
    if-eqz v3, :cond_5

    .line 402
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 404
    :cond_5
    sget-object v7, Lcom/htc/clock/util/social/SocialData$RemoteUrlDrawable;->sFileWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v6

    .line 401
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #f:Landroid/os/ParcelFileDescriptor;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    goto :goto_3

    .line 398
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    :catch_2
    move-exception v1

    move-object v3, v4

    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    goto :goto_2

    .line 395
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    :catch_3
    move-exception v1

    move-object v3, v4

    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    goto :goto_1
.end method

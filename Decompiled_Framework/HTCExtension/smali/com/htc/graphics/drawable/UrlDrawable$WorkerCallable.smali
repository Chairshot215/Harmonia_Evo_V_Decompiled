.class Lcom/htc/graphics/drawable/UrlDrawable$WorkerCallable;
.super Ljava/lang/Object;
.source "UrlDrawable.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/graphics/drawable/UrlDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkerCallable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field private static final STATE_FETCH_LOCAL:I = 0x1

.field private static final STATE_FETCH_REMOTE:I = 0x2

.field private static final STATE_RETRY_DUPLICATE:I = 0x4

.field private static final STATE_RETRY_GENERAL:I = 0x3


# instance fields
.field final synthetic this$0:Lcom/htc/graphics/drawable/UrlDrawable;


# direct methods
.method private constructor <init>(Lcom/htc/graphics/drawable/UrlDrawable;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/graphics/drawable/UrlDrawable$WorkerCallable;->this$0:Lcom/htc/graphics/drawable/UrlDrawable;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/graphics/drawable/UrlDrawable;Lcom/htc/graphics/drawable/UrlDrawable$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/graphics/drawable/UrlDrawable$WorkerCallable;-><init>(Lcom/htc/graphics/drawable/UrlDrawable;)V

    return-void
.end method


# virtual methods
.method public call()Landroid/graphics/Bitmap;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v9, 0x13

    invoke-static {v9}, Landroid/os/Process;->setThreadPriority(I)V

    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v4, 0x0

    const/4 v0, 0x0

    iget-object v9, p0, Lcom/htc/graphics/drawable/UrlDrawable$WorkerCallable;->this$0:Lcom/htc/graphics/drawable/UrlDrawable;

    iget-object v9, v9, Lcom/htc/graphics/drawable/UrlDrawable;->mImageId:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move v5, v4

    :goto_0
    packed-switch v3, :pswitch_data_0

    :goto_1
    move v4, v5

    :goto_2
    move v5, v4

    goto :goto_0

    :pswitch_0
    const/4 v9, 0x4

    if-ne v3, v9, :cond_0

    add-int/lit8 v4, v5, 0x1

    const/16 v9, 0x64

    if-lt v5, v9, :cond_1

    const-string v9, "UrlDrawable"

    const-string v10, "[%s] retry_duplicate=%d/%d exceeded"

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/htc/graphics/drawable/UrlDrawable$WorkerCallable;->this$0:Lcom/htc/graphics/drawable/UrlDrawable;

    iget-object v13, v13, Lcom/htc/graphics/drawable/UrlDrawable;->mUrl:Ljava/lang/String;

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    const/16 v13, 0x64

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    move-object v9, v0

    :goto_3
    return-object v9

    :cond_0
    move v4, v5

    :cond_1
    iget-object v9, p0, Lcom/htc/graphics/drawable/UrlDrawable$WorkerCallable;->this$0:Lcom/htc/graphics/drawable/UrlDrawable;

    #calls: Lcom/htc/graphics/drawable/UrlDrawable;->getFromLocal()Landroid/graphics/Bitmap;
    invoke-static {v9}, Lcom/htc/graphics/drawable/UrlDrawable;->access$500(Lcom/htc/graphics/drawable/UrlDrawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    move-object v9, v0

    goto :goto_3

    :cond_2
    iget-object v9, p0, Lcom/htc/graphics/drawable/UrlDrawable$WorkerCallable;->this$0:Lcom/htc/graphics/drawable/UrlDrawable;

    #calls: Lcom/htc/graphics/drawable/UrlDrawable;->canLoadToRamCache()Z
    invoke-static {v9}, Lcom/htc/graphics/drawable/UrlDrawable;->access$600(Lcom/htc/graphics/drawable/UrlDrawable;)Z

    move-result v9

    if-nez v9, :cond_3

    const/4 v3, 0x1

    const-wide/16 v9, 0xc8

    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_2

    :cond_3
    iget-object v9, p0, Lcom/htc/graphics/drawable/UrlDrawable$WorkerCallable;->this$0:Lcom/htc/graphics/drawable/UrlDrawable;

    iget-object v9, v9, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-boolean v9, v9, Lcom/htc/graphics/drawable/UrlDrawable$Options;->saveDefaultImageWhenDownloadFail:Z

    if-nez v9, :cond_5

    invoke-static {}, Lcom/htc/graphics/drawable/UrlDrawable;->access$700()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v9

    invoke-interface {v9, v2}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-static {}, Lcom/htc/graphics/drawable/UrlDrawable;->access$700()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v9

    invoke-interface {v9, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    sub-long/2addr v9, v7

    const-wide/32 v11, 0x927c0

    cmp-long v9, v9, v11

    if-gez v9, :cond_4

    const-string v9, "UrlDrawable"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "it\'s in blackList : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    move-object v9, v0

    goto :goto_3

    :cond_4
    invoke-static {}, Lcom/htc/graphics/drawable/UrlDrawable;->access$700()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v9

    invoke-interface {v9, v2}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    invoke-static {}, Lcom/htc/graphics/drawable/UrlDrawable;->access$800()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/graphics/drawable/UrlDrawable$WorkerCallable;->this$0:Lcom/htc/graphics/drawable/UrlDrawable;

    iget-object v10, v10, Lcom/htc/graphics/drawable/UrlDrawable;->mImageId:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    sget-boolean v9, Lcom/htc/graphics/drawable/UrlDrawable;->DEBUT_LOG_ENABLED:Z

    if-eqz v9, :cond_6

    const-string v9, "UrlDrawable"

    const-string v10, "[%s] retry_duplicate=%d/%d"

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/htc/graphics/drawable/UrlDrawable$WorkerCallable;->this$0:Lcom/htc/graphics/drawable/UrlDrawable;

    iget-object v13, v13, Lcom/htc/graphics/drawable/UrlDrawable;->mUrl:Ljava/lang/String;

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    const/16 v13, 0x64

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const/4 v3, 0x4

    const-wide/16 v9, 0xc8

    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V

    goto/16 :goto_2

    :cond_7
    const/4 v3, 0x2

    goto/16 :goto_2

    :pswitch_1
    const/4 v9, 0x3

    if-ne v3, v9, :cond_a

    add-int/lit8 v6, v6, 0x1

    const/4 v9, 0x3

    if-lt v6, v9, :cond_a

    const-string v9, "UrlDrawable"

    const-string v10, "[%s] retry_general=%d/%d exceeded"

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/htc/graphics/drawable/UrlDrawable$WorkerCallable;->this$0:Lcom/htc/graphics/drawable/UrlDrawable;

    iget-object v13, v13, Lcom/htc/graphics/drawable/UrlDrawable;->mUrl:Ljava/lang/String;

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    const/4 v13, 0x3

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/htc/graphics/drawable/UrlDrawable$WorkerCallable;->this$0:Lcom/htc/graphics/drawable/UrlDrawable;

    iget-object v9, v9, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-boolean v9, v9, Lcom/htc/graphics/drawable/UrlDrawable$Options;->saveDefaultImageWhenDownloadFail:Z

    if-eqz v9, :cond_9

    const-string v9, "UrlDrawable"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "try to store default bitmap into cache , defaultBitmap:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/graphics/drawable/UrlDrawable$WorkerCallable;->this$0:Lcom/htc/graphics/drawable/UrlDrawable;

    iget-object v11, v11, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v11, v11, Lcom/htc/graphics/drawable/UrlDrawable$Options;->defaultBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " option.writeDisk:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/graphics/drawable/UrlDrawable$WorkerCallable;->this$0:Lcom/htc/graphics/drawable/UrlDrawable;

    iget-object v11, v11, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-boolean v11, v11, Lcom/htc/graphics/drawable/UrlDrawable$Options;->writeDisk:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/htc/graphics/drawable/UrlDrawable$WorkerCallable;->this$0:Lcom/htc/graphics/drawable/UrlDrawable;

    iget-object v9, v9, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v0, v9, Lcom/htc/graphics/drawable/UrlDrawable$Options;->defaultBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/htc/graphics/drawable/UrlDrawable;->isValidBitmap(Landroid/graphics/Bitmap;)Z

    move-result v9

    if-eqz v9, :cond_8

    iget-object v9, p0, Lcom/htc/graphics/drawable/UrlDrawable$WorkerCallable;->this$0:Lcom/htc/graphics/drawable/UrlDrawable;

    invoke-virtual {v9, v0}, Lcom/htc/graphics/drawable/UrlDrawable;->writeBitmapToDiskCache(Landroid/graphics/Bitmap;)V

    iget-object v9, p0, Lcom/htc/graphics/drawable/UrlDrawable$WorkerCallable;->this$0:Lcom/htc/graphics/drawable/UrlDrawable;

    #calls: Lcom/htc/graphics/drawable/UrlDrawable;->writeBitmapToRamCache(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    invoke-static {v9, v0}, Lcom/htc/graphics/drawable/UrlDrawable;->access$900(Lcom/htc/graphics/drawable/UrlDrawable;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_8
    move v4, v5

    move-object v9, v0

    goto/16 :goto_3

    :cond_9
    const-string v9, "UrlDrawable"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Insert blackList : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {}, Lcom/htc/graphics/drawable/UrlDrawable;->access$700()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v9

    invoke-interface {v9, v2, v7}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    move v4, v5

    move-object v9, v0

    goto/16 :goto_3

    :cond_a
    iget-object v9, p0, Lcom/htc/graphics/drawable/UrlDrawable$WorkerCallable;->this$0:Lcom/htc/graphics/drawable/UrlDrawable;

    #calls: Lcom/htc/graphics/drawable/UrlDrawable;->getFromLocal()Landroid/graphics/Bitmap;
    invoke-static {v9}, Lcom/htc/graphics/drawable/UrlDrawable;->access$500(Lcom/htc/graphics/drawable/UrlDrawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_b

    move v4, v5

    move-object v9, v0

    goto/16 :goto_3

    :cond_b
    iget-object v9, p0, Lcom/htc/graphics/drawable/UrlDrawable$WorkerCallable;->this$0:Lcom/htc/graphics/drawable/UrlDrawable;

    #calls: Lcom/htc/graphics/drawable/UrlDrawable;->canLoadToRamCache()Z
    invoke-static {v9}, Lcom/htc/graphics/drawable/UrlDrawable;->access$600(Lcom/htc/graphics/drawable/UrlDrawable;)Z

    move-result v9

    if-nez v9, :cond_c

    const/4 v3, 0x1

    const-wide/16 v9, 0xc8

    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V

    move v4, v5

    goto/16 :goto_2

    :cond_c
    iget-object v9, p0, Lcom/htc/graphics/drawable/UrlDrawable$WorkerCallable;->this$0:Lcom/htc/graphics/drawable/UrlDrawable;

    #calls: Lcom/htc/graphics/drawable/UrlDrawable;->getFromRemote()Landroid/graphics/Bitmap;
    invoke-static {v9}, Lcom/htc/graphics/drawable/UrlDrawable;->access$1000(Lcom/htc/graphics/drawable/UrlDrawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/graphics/drawable/UrlDrawable;->isValidBitmap(Landroid/graphics/Bitmap;)Z

    move-result v9

    if-eqz v9, :cond_e

    iget-object v9, p0, Lcom/htc/graphics/drawable/UrlDrawable$WorkerCallable;->this$0:Lcom/htc/graphics/drawable/UrlDrawable;

    #calls: Lcom/htc/graphics/drawable/UrlDrawable;->canLoadToRamCache()Z
    invoke-static {v9}, Lcom/htc/graphics/drawable/UrlDrawable;->access$600(Lcom/htc/graphics/drawable/UrlDrawable;)Z

    move-result v9

    if-eqz v9, :cond_d

    move v4, v5

    move-object v9, v0

    goto/16 :goto_3

    :cond_d
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v9, 0x0

    move v4, v5

    goto/16 :goto_3

    :cond_e
    sget-boolean v9, Lcom/htc/graphics/drawable/UrlDrawable;->DEBUT_LOG_ENABLED:Z

    if-eqz v9, :cond_f

    const-string v9, "UrlDrawable"

    const-string v10, "[%s] retry_general=%d/%d"

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/htc/graphics/drawable/UrlDrawable$WorkerCallable;->this$0:Lcom/htc/graphics/drawable/UrlDrawable;

    iget-object v13, v13, Lcom/htc/graphics/drawable/UrlDrawable;->mUrl:Ljava/lang/String;

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    const/4 v13, 0x3

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    const/4 v3, 0x3

    const-wide/16 v9, 0x0

    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/htc/graphics/drawable/UrlDrawable$WorkerCallable;->call()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

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
    .parameter

    .prologue
    .line 872
    iput-object p1, p0, Lcom/htc/graphics/drawable/UrlDrawable$WorkerCallable;->this$0:Lcom/htc/graphics/drawable/UrlDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/graphics/drawable/UrlDrawable;Lcom/htc/graphics/drawable/UrlDrawable$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 872
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

    .prologue
    const/16 v13, 0x64

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x3

    .line 884
    const/16 v5, 0x13

    invoke-static {v5}, Landroid/os/Process;->setThreadPriority(I)V

    .line 886
    const/4 v1, 0x1

    .line 887
    .local v1, msg:I
    const/4 v4, 0x0

    .line 888
    .local v4, retry_general:I
    const/4 v2, 0x0

    .line 889
    .local v2, retry_duplicate:I
    const/4 v0, 0x0

    .local v0, bitmap:Landroid/graphics/Bitmap;
    move v3, v2

    .line 892
    .end local v2           #retry_duplicate:I
    .local v3, retry_duplicate:I
    :goto_0
    packed-switch v1, :pswitch_data_0

    :goto_1
    move v2, v3

    .end local v3           #retry_duplicate:I
    .restart local v2       #retry_duplicate:I
    :goto_2
    move v3, v2

    .line 972
    .end local v2           #retry_duplicate:I
    .restart local v3       #retry_duplicate:I
    goto :goto_0

    .line 895
    :pswitch_0
    const/4 v5, 0x4

    if-ne v1, v5, :cond_0

    add-int/lit8 v2, v3, 0x1

    .end local v3           #retry_duplicate:I
    .restart local v2       #retry_duplicate:I
    if-lt v3, v13, :cond_1

    .line 897
    const-string v5, "UrlDrawable"

    const-string v6, "[%s] retry_duplicate=%d/%d exceeded"

    new-array v7, v9, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/htc/graphics/drawable/UrlDrawable$WorkerCallable;->this$0:Lcom/htc/graphics/drawable/UrlDrawable;

    iget-object v8, v8, Lcom/htc/graphics/drawable/UrlDrawable;->mUrl:Ljava/lang/String;

    aput-object v8, v7, v10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v12

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    const/4 v0, 0x0

    move-object v5, v0

    .line 961
    :goto_3
    return-object v5

    .end local v2           #retry_duplicate:I
    .restart local v3       #retry_duplicate:I
    :cond_0
    move v2, v3

    .line 902
    .end local v3           #retry_duplicate:I
    .restart local v2       #retry_duplicate:I
    :cond_1
    iget-object v5, p0, Lcom/htc/graphics/drawable/UrlDrawable$WorkerCallable;->this$0:Lcom/htc/graphics/drawable/UrlDrawable;

    #calls: Lcom/htc/graphics/drawable/UrlDrawable;->getFromLocal()Landroid/graphics/Bitmap;
    invoke-static {v5}, Lcom/htc/graphics/drawable/UrlDrawable;->access$500(Lcom/htc/graphics/drawable/UrlDrawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    move-object v5, v0

    .line 903
    goto :goto_3

    .line 904
    :cond_2
    iget-object v5, p0, Lcom/htc/graphics/drawable/UrlDrawable$WorkerCallable;->this$0:Lcom/htc/graphics/drawable/UrlDrawable;

    #calls: Lcom/htc/graphics/drawable/UrlDrawable;->canLoadToRamCache()Z
    invoke-static {v5}, Lcom/htc/graphics/drawable/UrlDrawable;->access$600(Lcom/htc/graphics/drawable/UrlDrawable;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 905
    const/4 v1, 0x1

    .line 906
    const-wide/16 v5, 0xc8

    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_2

    .line 909
    :cond_3
    invoke-static {}, Lcom/htc/graphics/drawable/UrlDrawable;->access$700()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/graphics/drawable/UrlDrawable$WorkerCallable;->this$0:Lcom/htc/graphics/drawable/UrlDrawable;

    iget-object v6, v6, Lcom/htc/graphics/drawable/UrlDrawable;->mImageId:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 910
    sget-boolean v5, Lcom/htc/graphics/drawable/UrlDrawable;->DEBUT_LOG_ENABLED:Z

    if-eqz v5, :cond_4

    .line 911
    const-string v5, "UrlDrawable"

    const-string v6, "[%s] retry_duplicate=%d/%d"

    new-array v7, v9, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/htc/graphics/drawable/UrlDrawable$WorkerCallable;->this$0:Lcom/htc/graphics/drawable/UrlDrawable;

    iget-object v8, v8, Lcom/htc/graphics/drawable/UrlDrawable;->mUrl:Ljava/lang/String;

    aput-object v8, v7, v10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v12

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    :cond_4
    const/4 v1, 0x4

    .line 916
    const-wide/16 v5, 0xc8

    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    goto/16 :goto_2

    .line 918
    :cond_5
    const/4 v1, 0x2

    .line 920
    goto/16 :goto_2

    .line 923
    .end local v2           #retry_duplicate:I
    .restart local v3       #retry_duplicate:I
    :pswitch_1
    if-ne v1, v9, :cond_8

    .line 924
    add-int/lit8 v4, v4, 0x1

    if-lt v4, v9, :cond_8

    .line 925
    const-string v5, "UrlDrawable"

    const-string v6, "[%s] retry_general=%d/%d exceeded"

    new-array v7, v9, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/htc/graphics/drawable/UrlDrawable$WorkerCallable;->this$0:Lcom/htc/graphics/drawable/UrlDrawable;

    iget-object v8, v8, Lcom/htc/graphics/drawable/UrlDrawable;->mUrl:Ljava/lang/String;

    aput-object v8, v7, v10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v12

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    iget-object v5, p0, Lcom/htc/graphics/drawable/UrlDrawable$WorkerCallable;->this$0:Lcom/htc/graphics/drawable/UrlDrawable;

    iget-object v5, v5, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-boolean v5, v5, Lcom/htc/graphics/drawable/UrlDrawable$Options;->saveDefaultImageWhenDownloadFail:Z

    if-eqz v5, :cond_7

    .line 934
    const-string v5, "UrlDrawable"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "try to store default bitmap into cache , defaultBitmap:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/graphics/drawable/UrlDrawable$WorkerCallable;->this$0:Lcom/htc/graphics/drawable/UrlDrawable;

    iget-object v7, v7, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v7, v7, Lcom/htc/graphics/drawable/UrlDrawable$Options;->defaultBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " option.writeDisk:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/graphics/drawable/UrlDrawable$WorkerCallable;->this$0:Lcom/htc/graphics/drawable/UrlDrawable;

    iget-object v7, v7, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-boolean v7, v7, Lcom/htc/graphics/drawable/UrlDrawable$Options;->writeDisk:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    iget-object v5, p0, Lcom/htc/graphics/drawable/UrlDrawable$WorkerCallable;->this$0:Lcom/htc/graphics/drawable/UrlDrawable;

    iget-object v5, v5, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v0, v5, Lcom/htc/graphics/drawable/UrlDrawable$Options;->defaultBitmap:Landroid/graphics/Bitmap;

    .line 937
    invoke-static {v0}, Lcom/htc/graphics/drawable/UrlDrawable;->isValidBitmap(Landroid/graphics/Bitmap;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 938
    iget-object v5, p0, Lcom/htc/graphics/drawable/UrlDrawable$WorkerCallable;->this$0:Lcom/htc/graphics/drawable/UrlDrawable;

    invoke-virtual {v5, v0}, Lcom/htc/graphics/drawable/UrlDrawable;->writeBitmapToDiskCache(Landroid/graphics/Bitmap;)V

    .line 939
    iget-object v5, p0, Lcom/htc/graphics/drawable/UrlDrawable$WorkerCallable;->this$0:Lcom/htc/graphics/drawable/UrlDrawable;

    #calls: Lcom/htc/graphics/drawable/UrlDrawable;->writeBitmapToRamCache(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    invoke-static {v5, v0}, Lcom/htc/graphics/drawable/UrlDrawable;->access$800(Lcom/htc/graphics/drawable/UrlDrawable;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_6
    move v2, v3

    .end local v3           #retry_duplicate:I
    .restart local v2       #retry_duplicate:I
    move-object v5, v0

    .line 941
    goto/16 :goto_3

    .line 944
    .end local v2           #retry_duplicate:I
    .restart local v3       #retry_duplicate:I
    :cond_7
    const/4 v0, 0x0

    move v2, v3

    .end local v3           #retry_duplicate:I
    .restart local v2       #retry_duplicate:I
    move-object v5, v0

    goto/16 :goto_3

    .line 948
    .end local v2           #retry_duplicate:I
    .restart local v3       #retry_duplicate:I
    :cond_8
    iget-object v5, p0, Lcom/htc/graphics/drawable/UrlDrawable$WorkerCallable;->this$0:Lcom/htc/graphics/drawable/UrlDrawable;

    #calls: Lcom/htc/graphics/drawable/UrlDrawable;->getFromLocal()Landroid/graphics/Bitmap;
    invoke-static {v5}, Lcom/htc/graphics/drawable/UrlDrawable;->access$500(Lcom/htc/graphics/drawable/UrlDrawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_9

    move v2, v3

    .end local v3           #retry_duplicate:I
    .restart local v2       #retry_duplicate:I
    move-object v5, v0

    .line 949
    goto/16 :goto_3

    .line 950
    .end local v2           #retry_duplicate:I
    .restart local v3       #retry_duplicate:I
    :cond_9
    iget-object v5, p0, Lcom/htc/graphics/drawable/UrlDrawable$WorkerCallable;->this$0:Lcom/htc/graphics/drawable/UrlDrawable;

    #calls: Lcom/htc/graphics/drawable/UrlDrawable;->canLoadToRamCache()Z
    invoke-static {v5}, Lcom/htc/graphics/drawable/UrlDrawable;->access$600(Lcom/htc/graphics/drawable/UrlDrawable;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 951
    const/4 v1, 0x1

    .line 952
    const-wide/16 v5, 0xc8

    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    move v2, v3

    .line 953
    .end local v3           #retry_duplicate:I
    .restart local v2       #retry_duplicate:I
    goto/16 :goto_2

    .line 955
    .end local v2           #retry_duplicate:I
    .restart local v3       #retry_duplicate:I
    :cond_a
    iget-object v5, p0, Lcom/htc/graphics/drawable/UrlDrawable$WorkerCallable;->this$0:Lcom/htc/graphics/drawable/UrlDrawable;

    #calls: Lcom/htc/graphics/drawable/UrlDrawable;->getFromRemote()Landroid/graphics/Bitmap;
    invoke-static {v5}, Lcom/htc/graphics/drawable/UrlDrawable;->access$900(Lcom/htc/graphics/drawable/UrlDrawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 956
    invoke-static {v0}, Lcom/htc/graphics/drawable/UrlDrawable;->isValidBitmap(Landroid/graphics/Bitmap;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 957
    iget-object v5, p0, Lcom/htc/graphics/drawable/UrlDrawable$WorkerCallable;->this$0:Lcom/htc/graphics/drawable/UrlDrawable;

    #calls: Lcom/htc/graphics/drawable/UrlDrawable;->canLoadToRamCache()Z
    invoke-static {v5}, Lcom/htc/graphics/drawable/UrlDrawable;->access$600(Lcom/htc/graphics/drawable/UrlDrawable;)Z

    move-result v5

    if-eqz v5, :cond_b

    move v2, v3

    .end local v3           #retry_duplicate:I
    .restart local v2       #retry_duplicate:I
    move-object v5, v0

    .line 958
    goto/16 :goto_3

    .line 960
    .end local v2           #retry_duplicate:I
    .restart local v3       #retry_duplicate:I
    :cond_b
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 961
    const/4 v5, 0x0

    move v2, v3

    .end local v3           #retry_duplicate:I
    .restart local v2       #retry_duplicate:I
    goto/16 :goto_3

    .line 964
    .end local v2           #retry_duplicate:I
    .restart local v3       #retry_duplicate:I
    :cond_c
    sget-boolean v5, Lcom/htc/graphics/drawable/UrlDrawable;->DEBUT_LOG_ENABLED:Z

    if-eqz v5, :cond_d

    .line 965
    const-string v5, "UrlDrawable"

    const-string v6, "[%s] retry_general=%d/%d"

    new-array v7, v9, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/htc/graphics/drawable/UrlDrawable$WorkerCallable;->this$0:Lcom/htc/graphics/drawable/UrlDrawable;

    iget-object v8, v8, Lcom/htc/graphics/drawable/UrlDrawable;->mUrl:Ljava/lang/String;

    aput-object v8, v7, v10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v12

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    :cond_d
    const/4 v1, 0x3

    .line 970
    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    goto/16 :goto_1

    .line 892
    nop

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

    .prologue
    .line 872
    invoke-virtual {p0}, Lcom/htc/graphics/drawable/UrlDrawable$WorkerCallable;->call()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

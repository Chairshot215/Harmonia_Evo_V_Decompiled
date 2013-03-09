.class public abstract Lcom/htc/album/processor/BaseProcessor;
.super Ljava/lang/Thread;
.source "BaseProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/processor/BaseProcessor$OnProcessListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<PR:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Thread;"
    }
.end annotation


# static fields
.field public static final KEY_DATE_MODIFIED:Ljava/lang/String; = "date_modified"

.field public static final KEY_FILE_PATH:Ljava/lang/String; = "_data"

.field public static final KEY_FILE_SIZE:Ljava/lang/String; = "_size"

.field private static final LOG_TAG:Ljava/lang/String; = null

.field public static final MSG_PROCESS_BEGIN:I = 0x3e8

.field public static final MSG_PROCESS_END:I = 0x3e9

.field public static final RESULT_CODE_CANCEL_DURING_PROCESSING:I = 0x4

.field public static final RESULT_CODE_CANCEL_PIROR_PROCESS:I = 0x3

.field public static final RESULT_CODE_COMPLETED:I = 0x1

.field public static final RESULT_CODE_ERROR_NOT_SUPPORTED:I = 0x5

.field public static final RESULT_CODE_ERROR_PROCESSING:I = 0x6

.field public static final RESULT_CODE_OK:I = 0x0

.field public static final RESULT_CODE_STORAGE_FULL:I = 0x2

.field public static final RESULT_CODE_UNKNOW:I = -0x1

.field public static final SCHEME_FILE:Ljava/lang/String; = "file"


# instance fields
.field protected mActivity:Landroid/app/Activity;

.field protected mHandler:Landroid/os/Handler;

.field private mOnProcessListener:Lcom/htc/album/processor/BaseProcessor$OnProcessListener;

.field protected mProcessedResult:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TPR;"
        }
    .end annotation
.end field

.field private mResultCode:I

.field private mScanner:Landroid/media/MediaScanner;

.field protected mStop:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/htc/album/processor/BaseProcessor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/processor/BaseProcessor;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/os/Handler;)V
    .locals 2
    .parameter "activity"
    .parameter "handler"

    .prologue
    .local p0, this:Lcom/htc/album/processor/BaseProcessor;,"Lcom/htc/album/processor/BaseProcessor<TPR;>;"
    const/4 v1, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 41
    iput-object v1, p0, Lcom/htc/album/processor/BaseProcessor;->mActivity:Landroid/app/Activity;

    .line 42
    iput-object v1, p0, Lcom/htc/album/processor/BaseProcessor;->mHandler:Landroid/os/Handler;

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/processor/BaseProcessor;->mStop:Z

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/album/processor/BaseProcessor;->mResultCode:I

    .line 47
    iput-object v1, p0, Lcom/htc/album/processor/BaseProcessor;->mScanner:Landroid/media/MediaScanner;

    .line 48
    iput-object v1, p0, Lcom/htc/album/processor/BaseProcessor;->mOnProcessListener:Lcom/htc/album/processor/BaseProcessor$OnProcessListener;

    .line 59
    iput-object p1, p0, Lcom/htc/album/processor/BaseProcessor;->mActivity:Landroid/app/Activity;

    .line 60
    iput-object p2, p0, Lcom/htc/album/processor/BaseProcessor;->mHandler:Landroid/os/Handler;

    .line 61
    invoke-virtual {p0}, Lcom/htc/album/processor/BaseProcessor;->getLocalClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/album/processor/BaseProcessor;->setName(Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method private onProcessEnd()V
    .locals 3

    .prologue
    .local p0, this:Lcom/htc/album/processor/BaseProcessor;,"Lcom/htc/album/processor/BaseProcessor<TPR;>;"
    const/4 v2, 0x0

    .line 172
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/album/processor/BaseProcessor;->setKeepScreenOn(Z)V

    .line 173
    iget-object v0, p0, Lcom/htc/album/processor/BaseProcessor;->mHandler:Landroid/os/Handler;

    .line 174
    .local v0, handler:Landroid/os/Handler;
    if-eqz v0, :cond_0

    .line 176
    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 179
    :cond_0
    iput-object v2, p0, Lcom/htc/album/processor/BaseProcessor;->mHandler:Landroid/os/Handler;

    .line 180
    iput-object v2, p0, Lcom/htc/album/processor/BaseProcessor;->mActivity:Landroid/app/Activity;

    .line 181
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 190
    .local p0, this:Lcom/htc/album/processor/BaseProcessor;,"Lcom/htc/album/processor/BaseProcessor<TPR;>;"
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/htc/album/processor/BaseProcessor;->setPriority(I)V

    .line 191
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/processor/BaseProcessor;->mStop:Z

    .line 192
    return-void
.end method

.method protected abstract generateFilePath(Lcom/htc/album/processor/FileInfo;)Ljava/lang/String;
.end method

.method protected abstract getLocalClassName()Ljava/lang/String;
.end method

.method public getResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TPR;"
        }
    .end annotation

    .prologue
    .line 206
    .local p0, this:Lcom/htc/album/processor/BaseProcessor;,"Lcom/htc/album/processor/BaseProcessor<TPR;>;"
    iget-object v0, p0, Lcom/htc/album/processor/BaseProcessor;->mProcessedResult:Ljava/lang/Object;

    return-object v0
.end method

.method public getResultCode()I
    .locals 1

    .prologue
    .line 201
    .local p0, this:Lcom/htc/album/processor/BaseProcessor;,"Lcom/htc/album/processor/BaseProcessor<TPR;>;"
    iget v0, p0, Lcom/htc/album/processor/BaseProcessor;->mResultCode:I

    return v0
.end method

.method public isCanceled()Z
    .locals 1

    .prologue
    .line 185
    .local p0, this:Lcom/htc/album/processor/BaseProcessor;,"Lcom/htc/album/processor/BaseProcessor<TPR;>;"
    iget-boolean v0, p0, Lcom/htc/album/processor/BaseProcessor;->mStop:Z

    return v0
.end method

.method protected abstract obtainResult()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TPR;"
        }
    .end annotation
.end method

.method protected onPostProcess()V
    .locals 0

    .prologue
    .line 168
    .local p0, this:Lcom/htc/album/processor/BaseProcessor;,"Lcom/htc/album/processor/BaseProcessor<TPR;>;"
    return-void
.end method

.method protected onPreProcess()I
    .locals 3

    .prologue
    .local p0, this:Lcom/htc/album/processor/BaseProcessor;,"Lcom/htc/album/processor/BaseProcessor<TPR;>;"
    const/4 v2, 0x1

    .line 151
    invoke-virtual {p0, v2}, Lcom/htc/album/processor/BaseProcessor;->setPriority(I)V

    .line 152
    iget-object v0, p0, Lcom/htc/album/processor/BaseProcessor;->mHandler:Landroid/os/Handler;

    .line 153
    .local v0, handler:Landroid/os/Handler;
    if-eqz v0, :cond_0

    .line 155
    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 157
    :cond_0
    invoke-virtual {p0, v2}, Lcom/htc/album/processor/BaseProcessor;->setKeepScreenOn(Z)V

    .line 158
    const/4 v1, 0x0

    return v1
.end method

.method protected onProcessing()I
    .locals 1

    .prologue
    .line 163
    .local p0, this:Lcom/htc/album/processor/BaseProcessor;,"Lcom/htc/album/processor/BaseProcessor<TPR;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public release()V
    .locals 1

    .prologue
    .local p0, this:Lcom/htc/album/processor/BaseProcessor;,"Lcom/htc/album/processor/BaseProcessor<TPR;>;"
    const/4 v0, 0x0

    .line 237
    iput-object v0, p0, Lcom/htc/album/processor/BaseProcessor;->mScanner:Landroid/media/MediaScanner;

    .line 238
    iput-object v0, p0, Lcom/htc/album/processor/BaseProcessor;->mOnProcessListener:Lcom/htc/album/processor/BaseProcessor$OnProcessListener;

    .line 239
    iput-object v0, p0, Lcom/htc/album/processor/BaseProcessor;->mProcessedResult:Ljava/lang/Object;

    .line 240
    iput-object v0, p0, Lcom/htc/album/processor/BaseProcessor;->mActivity:Landroid/app/Activity;

    .line 241
    iput-object v0, p0, Lcom/htc/album/processor/BaseProcessor;->mHandler:Landroid/os/Handler;

    .line 242
    return-void
.end method

.method public run()V
    .locals 8

    .prologue
    .local p0, this:Lcom/htc/album/processor/BaseProcessor;,"Lcom/htc/album/processor/BaseProcessor<TPR;>;"
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 83
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/album/processor/BaseProcessor;->obtainResult()Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/album/processor/BaseProcessor;->mProcessedResult:Ljava/lang/Object;

    .line 84
    new-instance v3, Landroid/media/MediaScanner;

    iget-object v6, p0, Lcom/htc/album/processor/BaseProcessor;->mActivity:Landroid/app/Activity;

    invoke-direct {v3, v6}, Landroid/media/MediaScanner;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/htc/album/processor/BaseProcessor;->mScanner:Landroid/media/MediaScanner;

    .line 86
    invoke-virtual {p0}, Lcom/htc/album/processor/BaseProcessor;->onPreProcess()I

    move-result v3

    iput v3, p0, Lcom/htc/album/processor/BaseProcessor;->mResultCode:I

    .line 87
    iget-object v2, p0, Lcom/htc/album/processor/BaseProcessor;->mOnProcessListener:Lcom/htc/album/processor/BaseProcessor$OnProcessListener;

    .line 88
    .local v2, listener:Lcom/htc/album/processor/BaseProcessor$OnProcessListener;
    iget-boolean v3, p0, Lcom/htc/album/processor/BaseProcessor;->mStop:Z

    if-nez v3, :cond_0

    if-eqz v2, :cond_0

    iget v3, p0, Lcom/htc/album/processor/BaseProcessor;->mResultCode:I

    if-nez v3, :cond_0

    .line 89
    invoke-interface {v2}, Lcom/htc/album/processor/BaseProcessor$OnProcessListener;->OnProcessBegin()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 103
    :cond_0
    iget v3, p0, Lcom/htc/album/processor/BaseProcessor;->mResultCode:I

    if-eqz v3, :cond_3

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/htc/album/processor/BaseProcessor;->mStop:Z

    .line 108
    .end local v2           #listener:Lcom/htc/album/processor/BaseProcessor$OnProcessListener;
    :goto_1
    :try_start_1
    iget v3, p0, Lcom/htc/album/processor/BaseProcessor;->mResultCode:I

    if-nez v3, :cond_1

    .line 109
    invoke-virtual {p0}, Lcom/htc/album/processor/BaseProcessor;->onProcessing()I

    move-result v3

    iput v3, p0, Lcom/htc/album/processor/BaseProcessor;->mResultCode:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_3

    .line 123
    :cond_1
    iget v3, p0, Lcom/htc/album/processor/BaseProcessor;->mResultCode:I

    if-eqz v3, :cond_7

    :goto_2
    iput-boolean v4, p0, Lcom/htc/album/processor/BaseProcessor;->mStop:Z

    .line 128
    :goto_3
    :try_start_2
    invoke-virtual {p0}, Lcom/htc/album/processor/BaseProcessor;->onPostProcess()V

    .line 129
    iget-object v2, p0, Lcom/htc/album/processor/BaseProcessor;->mOnProcessListener:Lcom/htc/album/processor/BaseProcessor$OnProcessListener;

    .line 130
    .restart local v2       #listener:Lcom/htc/album/processor/BaseProcessor$OnProcessListener;
    iget-boolean v3, p0, Lcom/htc/album/processor/BaseProcessor;->mStop:Z

    if-nez v3, :cond_2

    if-eqz v2, :cond_2

    iget v3, p0, Lcom/htc/album/processor/BaseProcessor;->mResultCode:I

    if-nez v3, :cond_2

    .line 131
    invoke-interface {v2}, Lcom/htc/album/processor/BaseProcessor$OnProcessListener;->OnProcessEnd()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_5

    .line 145
    :cond_2
    invoke-direct {p0}, Lcom/htc/album/processor/BaseProcessor;->onProcessEnd()V

    .line 147
    .end local v2           #listener:Lcom/htc/album/processor/BaseProcessor$OnProcessListener;
    :goto_4
    return-void

    .restart local v2       #listener:Lcom/htc/album/processor/BaseProcessor$OnProcessListener;
    :cond_3
    move v3, v5

    .line 103
    goto :goto_0

    .line 91
    .end local v2           #listener:Lcom/htc/album/processor/BaseProcessor$OnProcessListener;
    :catch_0
    move-exception v1

    .line 93
    .local v1, ex:Ljava/lang/Exception;
    :try_start_3
    sget-object v3, Lcom/htc/album/processor/BaseProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[run][onPreProcess] Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const/4 v3, 0x6

    iput v3, p0, Lcom/htc/album/processor/BaseProcessor;->mResultCode:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 103
    iget v3, p0, Lcom/htc/album/processor/BaseProcessor;->mResultCode:I

    if-eqz v3, :cond_4

    move v3, v4

    :goto_5
    iput-boolean v3, p0, Lcom/htc/album/processor/BaseProcessor;->mStop:Z

    goto :goto_1

    :cond_4
    move v3, v5

    goto :goto_5

    .line 96
    .end local v1           #ex:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 98
    .local v0, er:Ljava/lang/Error;
    :try_start_4
    sget-object v3, Lcom/htc/album/processor/BaseProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[run][onPreProcess] Error: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const/4 v3, 0x6

    iput v3, p0, Lcom/htc/album/processor/BaseProcessor;->mResultCode:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 103
    iget v3, p0, Lcom/htc/album/processor/BaseProcessor;->mResultCode:I

    if-eqz v3, :cond_5

    move v3, v4

    :goto_6
    iput-boolean v3, p0, Lcom/htc/album/processor/BaseProcessor;->mStop:Z

    goto :goto_1

    :cond_5
    move v3, v5

    goto :goto_6

    .end local v0           #er:Ljava/lang/Error;
    :catchall_0
    move-exception v3

    iget v6, p0, Lcom/htc/album/processor/BaseProcessor;->mResultCode:I

    if-eqz v6, :cond_6

    :goto_7
    iput-boolean v4, p0, Lcom/htc/album/processor/BaseProcessor;->mStop:Z

    throw v3

    :cond_6
    move v4, v5

    goto :goto_7

    :cond_7
    move v4, v5

    .line 123
    goto :goto_2

    .line 111
    :catch_2
    move-exception v1

    .line 113
    .restart local v1       #ex:Ljava/lang/Exception;
    :try_start_5
    sget-object v3, Lcom/htc/album/processor/BaseProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[run][onProcessing] Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const/4 v3, 0x6

    iput v3, p0, Lcom/htc/album/processor/BaseProcessor;->mResultCode:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 123
    iget v3, p0, Lcom/htc/album/processor/BaseProcessor;->mResultCode:I

    if-eqz v3, :cond_8

    :goto_8
    iput-boolean v4, p0, Lcom/htc/album/processor/BaseProcessor;->mStop:Z

    goto/16 :goto_3

    :cond_8
    move v4, v5

    goto :goto_8

    .line 116
    .end local v1           #ex:Ljava/lang/Exception;
    :catch_3
    move-exception v0

    .line 118
    .restart local v0       #er:Ljava/lang/Error;
    :try_start_6
    sget-object v3, Lcom/htc/album/processor/BaseProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[run][onProcessing] Error: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const/4 v3, 0x6

    iput v3, p0, Lcom/htc/album/processor/BaseProcessor;->mResultCode:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 123
    iget v3, p0, Lcom/htc/album/processor/BaseProcessor;->mResultCode:I

    if-eqz v3, :cond_9

    :goto_9
    iput-boolean v4, p0, Lcom/htc/album/processor/BaseProcessor;->mStop:Z

    goto/16 :goto_3

    :cond_9
    move v4, v5

    goto :goto_9

    .end local v0           #er:Ljava/lang/Error;
    :catchall_1
    move-exception v3

    iget v6, p0, Lcom/htc/album/processor/BaseProcessor;->mResultCode:I

    if-eqz v6, :cond_a

    :goto_a
    iput-boolean v4, p0, Lcom/htc/album/processor/BaseProcessor;->mStop:Z

    throw v3

    :cond_a
    move v4, v5

    goto :goto_a

    .line 133
    :catch_4
    move-exception v1

    .line 135
    .restart local v1       #ex:Ljava/lang/Exception;
    :try_start_7
    sget-object v3, Lcom/htc/album/processor/BaseProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[run][onPostProcess] Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const/4 v3, 0x6

    iput v3, p0, Lcom/htc/album/processor/BaseProcessor;->mResultCode:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 145
    invoke-direct {p0}, Lcom/htc/album/processor/BaseProcessor;->onProcessEnd()V

    goto/16 :goto_4

    .line 138
    .end local v1           #ex:Ljava/lang/Exception;
    :catch_5
    move-exception v0

    .line 140
    .restart local v0       #er:Ljava/lang/Error;
    :try_start_8
    sget-object v3, Lcom/htc/album/processor/BaseProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[run][onPostProcess] Error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const/4 v3, 0x6

    iput v3, p0, Lcom/htc/album/processor/BaseProcessor;->mResultCode:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 145
    invoke-direct {p0}, Lcom/htc/album/processor/BaseProcessor;->onProcessEnd()V

    goto/16 :goto_4

    .end local v0           #er:Ljava/lang/Error;
    :catchall_2
    move-exception v3

    invoke-direct {p0}, Lcom/htc/album/processor/BaseProcessor;->onProcessEnd()V

    throw v3
.end method

.method protected scanDirectories([Ljava/lang/String;)V
    .locals 2
    .parameter "folders"

    .prologue
    .line 216
    .local p0, this:Lcom/htc/album/processor/BaseProcessor;,"Lcom/htc/album/processor/BaseProcessor<TPR;>;"
    iget-object v0, p0, Lcom/htc/album/processor/BaseProcessor;->mScanner:Landroid/media/MediaScanner;

    const-string v1, "external"

    invoke-virtual {v0, p1, v1}, Landroid/media/MediaScanner;->scanDirectories([Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    return-void
.end method

.method protected scanSingleFile(Ljava/lang/String;)Landroid/net/Uri;
    .locals 3
    .parameter "filePath"

    .prologue
    .line 211
    .local p0, this:Lcom/htc/album/processor/BaseProcessor;,"Lcom/htc/album/processor/BaseProcessor<TPR;>;"
    iget-object v0, p0, Lcom/htc/album/processor/BaseProcessor;->mScanner:Landroid/media/MediaScanner;

    const-string v1, "external"

    const-string v2, "image/jpeg"

    invoke-virtual {v0, p1, v1, v2}, Landroid/media/MediaScanner;->scanSingleFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected setKeepScreenOn(Z)V
    .locals 2
    .parameter "screenOn"

    .prologue
    .line 220
    .local p0, this:Lcom/htc/album/processor/BaseProcessor;,"Lcom/htc/album/processor/BaseProcessor<TPR;>;"
    iget-object v0, p0, Lcom/htc/album/processor/BaseProcessor;->mActivity:Landroid/app/Activity;

    .line 221
    .local v0, activity:Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 233
    :goto_0
    return-void

    .line 224
    :cond_0
    new-instance v1, Lcom/htc/album/processor/BaseProcessor$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/htc/album/processor/BaseProcessor$1;-><init>(Lcom/htc/album/processor/BaseProcessor;ZLandroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setOnProcessListener(Lcom/htc/album/processor/BaseProcessor$OnProcessListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 66
    .local p0, this:Lcom/htc/album/processor/BaseProcessor;,"Lcom/htc/album/processor/BaseProcessor<TPR;>;"
    iput-object p1, p0, Lcom/htc/album/processor/BaseProcessor;->mOnProcessListener:Lcom/htc/album/processor/BaseProcessor$OnProcessListener;

    .line 67
    return-void
.end method

.method protected setResultCode(I)V
    .locals 0
    .parameter "result"

    .prologue
    .line 196
    .local p0, this:Lcom/htc/album/processor/BaseProcessor;,"Lcom/htc/album/processor/BaseProcessor<TPR;>;"
    iput p1, p0, Lcom/htc/album/processor/BaseProcessor;->mResultCode:I

    .line 197
    return-void
.end method

.class Lcom/htc/providers/uploads/AutoUploadService$4;
.super Ljava/lang/Object;
.source "AutoUploadService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/providers/uploads/AutoUploadService;->schedulerDailyUpload()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/providers/uploads/AutoUploadService;


# direct methods
.method constructor <init>(Lcom/htc/providers/uploads/AutoUploadService;)V
    .locals 0
    .parameter

    .prologue
    .line 288
    iput-object p1, p0, Lcom/htc/providers/uploads/AutoUploadService$4;->this$0:Lcom/htc/providers/uploads/AutoUploadService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 291
    iget-object v8, p0, Lcom/htc/providers/uploads/AutoUploadService$4;->this$0:Lcom/htc/providers/uploads/AutoUploadService;

    iget-object v8, v8, Lcom/htc/providers/uploads/AutoUploadService;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/htc/providers/uploads/UploadHelper;->getLastFrequency(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 292
    .local v5, lastFrequencyStr:Ljava/lang/String;
    const-wide/16 v3, 0x0

    .line 294
    .local v3, lastFrequency:J
    :try_start_0
    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 296
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 297
    .local v0, curTime:J
    move-wide v6, v3

    .line 299
    .local v6, nextTriggerTime:J
    :goto_0
    cmp-long v8, v6, v0

    if-gez v8, :cond_0

    .line 300
    const-wide/32 v8, 0x5265c00

    add-long/2addr v6, v8

    goto :goto_0

    .line 302
    :cond_0
    const-string v8, "AutoUploadService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "nextTriggerTime = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iget-object v8, p0, Lcom/htc/providers/uploads/AutoUploadService$4;->this$0:Lcom/htc/providers/uploads/AutoUploadService;

    #calls: Lcom/htc/providers/uploads/AutoUploadService;->setSchedulerAlarm(J)V
    invoke-static {v8, v6, v7}, Lcom/htc/providers/uploads/AutoUploadService;->access$500(Lcom/htc/providers/uploads/AutoUploadService;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 310
    iget-object v8, p0, Lcom/htc/providers/uploads/AutoUploadService$4;->this$0:Lcom/htc/providers/uploads/AutoUploadService;

    #getter for: Lcom/htc/providers/uploads/AutoUploadService;->mHandler:Lcom/htc/providers/uploads/AutoUploadService$AutouploadHandler;
    invoke-static {v8}, Lcom/htc/providers/uploads/AutoUploadService;->access$300(Lcom/htc/providers/uploads/AutoUploadService;)Lcom/htc/providers/uploads/AutoUploadService$AutouploadHandler;

    move-result-object v8

    invoke-virtual {v8, v11}, Lcom/htc/providers/uploads/AutoUploadService$AutouploadHandler;->sendEmptyMessage(I)Z

    .line 313
    .end local v0           #curTime:J
    .end local v6           #nextTriggerTime:J
    :goto_1
    return-void

    .line 306
    :catch_0
    move-exception v2

    .line 307
    .local v2, e:Ljava/lang/NumberFormatException;
    :try_start_1
    const-string v8, "AutoUploadService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "wrong lastFrequencyStr: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 310
    iget-object v8, p0, Lcom/htc/providers/uploads/AutoUploadService$4;->this$0:Lcom/htc/providers/uploads/AutoUploadService;

    #getter for: Lcom/htc/providers/uploads/AutoUploadService;->mHandler:Lcom/htc/providers/uploads/AutoUploadService$AutouploadHandler;
    invoke-static {v8}, Lcom/htc/providers/uploads/AutoUploadService;->access$300(Lcom/htc/providers/uploads/AutoUploadService;)Lcom/htc/providers/uploads/AutoUploadService$AutouploadHandler;

    move-result-object v8

    invoke-virtual {v8, v11}, Lcom/htc/providers/uploads/AutoUploadService$AutouploadHandler;->sendEmptyMessage(I)Z

    goto :goto_1

    .end local v2           #e:Ljava/lang/NumberFormatException;
    :catchall_0
    move-exception v8

    iget-object v9, p0, Lcom/htc/providers/uploads/AutoUploadService$4;->this$0:Lcom/htc/providers/uploads/AutoUploadService;

    #getter for: Lcom/htc/providers/uploads/AutoUploadService;->mHandler:Lcom/htc/providers/uploads/AutoUploadService$AutouploadHandler;
    invoke-static {v9}, Lcom/htc/providers/uploads/AutoUploadService;->access$300(Lcom/htc/providers/uploads/AutoUploadService;)Lcom/htc/providers/uploads/AutoUploadService$AutouploadHandler;

    move-result-object v9

    invoke-virtual {v9, v11}, Lcom/htc/providers/uploads/AutoUploadService$AutouploadHandler;->sendEmptyMessage(I)Z

    throw v8
.end method

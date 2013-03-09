.class Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService$1;
.super Ljava/lang/Object;
.source "DFUsageDataCollectionService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;


# direct methods
.method constructor <init>(Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService$1;->this$0:Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 61
    const-string v5, "DFPI.DFUsageDataCollectionService"

    const-string v6, "mSchedulePerHourThread.run()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object v5, p0, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService$1;->this$0:Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;

    #getter for: Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->mUsageReportHelper:Lcom/htc/demoflopackageinstaller/UsageReportHelper;
    invoke-static {v5}, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->access$000(Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;)Lcom/htc/demoflopackageinstaller/UsageReportHelper;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 64
    iget-object v5, p0, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService$1;->this$0:Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;

    #getter for: Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->mUsageReportHelper:Lcom/htc/demoflopackageinstaller/UsageReportHelper;
    invoke-static {v5}, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->access$000(Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;)Lcom/htc/demoflopackageinstaller/UsageReportHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/demoflopackageinstaller/UsageReportHelper;->getReport()V

    .line 66
    :cond_0
    iget-object v5, p0, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService$1;->this$0:Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;

    #getter for: Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->mVideoReportHelper:Lcom/htc/demoflopackageinstaller/VideoReportHelper;
    invoke-static {v5}, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->access$100(Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;)Lcom/htc/demoflopackageinstaller/VideoReportHelper;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 68
    iget-object v5, p0, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService$1;->this$0:Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;

    #getter for: Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->mVideoReportHelper:Lcom/htc/demoflopackageinstaller/VideoReportHelper;
    invoke-static {v5}, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->access$100(Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;)Lcom/htc/demoflopackageinstaller/VideoReportHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/demoflopackageinstaller/VideoReportHelper;->getReport()V

    .line 70
    :cond_1
    iget-object v5, p0, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService$1;->this$0:Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;

    #calls: Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->addFileToUpList()V
    invoke-static {v5}, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->access$200(Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;)V

    .line 71
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    const/16 v6, 0xb

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 72
    .local v1, hour:I
    if-nez v1, :cond_6

    .line 74
    const-string v5, "DFPI.DFUsageDataCollectionService"

    const-string v6, "2400, upload start"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v5, p0, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService$1;->this$0:Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;

    #getter for: Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->mUpManager:Lcom/htc/demoflopackageinstaller/net/UploadManager;
    invoke-static {v5}, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->access$300(Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;)Lcom/htc/demoflopackageinstaller/net/UploadManager;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 77
    iget-object v5, p0, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService$1;->this$0:Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;

    const/4 v6, 0x1

    #setter for: Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->mUploadFlag:Z
    invoke-static {v5, v6}, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->access$402(Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;Z)Z

    .line 78
    iget-object v5, p0, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService$1;->this$0:Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;

    #getter for: Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->mUpManager:Lcom/htc/demoflopackageinstaller/net/UploadManager;
    invoke-static {v5}, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->access$300(Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;)Lcom/htc/demoflopackageinstaller/net/UploadManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/demoflopackageinstaller/net/UploadManager;->startUpload()V

    .line 81
    :cond_2
    const-string v5, "DFPI.DFUsageDataCollectionService"

    const-string v6, "2400, query and download"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v5, p0, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService$1;->this$0:Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;

    #calls: Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->isNetworkOK()Z
    invoke-static {v5}, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->access$500(Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 84
    iget-object v5, p0, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService$1;->this$0:Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;

    #calls: Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->writeTempXmlForQuery()Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->access$600(Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/demoflopackageinstaller/net/HttpHelper;->QueryData(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 85
    .local v4, qrList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/demoflopackageinstaller/net/QueryResult;>;"
    if-eqz v4, :cond_6

    .line 87
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/demoflopackageinstaller/net/QueryResult;

    .line 89
    .local v3, qr:Lcom/htc/demoflopackageinstaller/net/QueryResult;
    invoke-virtual {v3}, Lcom/htc/demoflopackageinstaller/net/QueryResult;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Demo"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 91
    new-instance v0, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService$1;->this$0:Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;

    #getter for: Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->mDownloadApkFolder:Ljava/lang/String;
    invoke-static {v6}, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->access$700(Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Demo.apk"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 92
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 93
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 95
    .end local v0           #f:Ljava/io/File;
    :cond_3
    invoke-virtual {v3}, Lcom/htc/demoflopackageinstaller/net/QueryResult;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "DemoRecovery"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 97
    new-instance v0, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService$1;->this$0:Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;

    #getter for: Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->mDownloadApkFolder:Ljava/lang/String;
    invoke-static {v6}, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->access$700(Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "DemoRecovery.apk"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 98
    .restart local v0       #f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 99
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 101
    .end local v0           #f:Ljava/io/File;
    :cond_4
    iget-object v5, p0, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService$1;->this$0:Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;

    #getter for: Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->mDownManager:Lcom/htc/demoflopackageinstaller/net/DownloadManager;
    invoke-static {v5}, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->access$800(Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;)Lcom/htc/demoflopackageinstaller/net/DownloadManager;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/htc/demoflopackageinstaller/net/DownloadManager;->addToQueue(Lcom/htc/demoflopackageinstaller/net/QueryResult;)Z

    goto :goto_0

    .line 103
    .end local v3           #qr:Lcom/htc/demoflopackageinstaller/net/QueryResult;
    :cond_5
    iget-object v5, p0, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService$1;->this$0:Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;

    #getter for: Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->mDownManager:Lcom/htc/demoflopackageinstaller/net/DownloadManager;
    invoke-static {v5}, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->access$800(Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;)Lcom/htc/demoflopackageinstaller/net/DownloadManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/demoflopackageinstaller/net/DownloadManager;->startDownload()V

    .line 107
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #qrList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/demoflopackageinstaller/net/QueryResult;>;"
    :cond_6
    return-void
.end method

.class public Lcom/htc/reportagent/CSUploader;
.super Ljava/lang/Object;
.source "CSUploader.java"

# interfaces
.implements Lcom/htc/reportagent/UploadHelper;


# static fields
.field private static final TAG:Ljava/lang/String; = "CSUploader"

.field private static final _DEBUG:Z


# instance fields
.field private mBudgetManager:Lcom/htc/reportagent/budget/BudgetManager;

.field private mContext:Landroid/content/Context;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/htc/reportagent/budget/BudgetManager;)V
    .locals 0
    .parameter "context"
    .parameter "budgetManager"

    .prologue
    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/htc/reportagent/CSUploader;->mContext:Landroid/content/Context;

    .line 37
    iput-object p2, p0, Lcom/htc/reportagent/CSUploader;->mBudgetManager:Lcom/htc/reportagent/budget/BudgetManager;

    .line 38
    return-void
.end method

.method private toLimitedStringFrom(Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;)Ljava/lang/String;
    .locals 9
    .parameter "envelope"

    .prologue
    .line 78
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    .local v4, sb:Ljava/lang/StringBuilder;
    const-string v5, "[envelope header]\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {p1}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->getDeviceInfo()Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    move-result-object v1

    .line 82
    .local v1, deviceInfo:Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;
    if-eqz v1, :cond_0

    .line 83
    invoke-virtual {v1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    :cond_0
    const-string v5, "[Previous 2 payloads of envelope] Note, data field is ignored.\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {p1}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->getPayloadList()Ljava/util/List;

    move-result-object v3

    .line 88
    .local v3, payloadList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_2

    const/4 v5, 0x2

    if-ge v2, v5, :cond_2

    .line 89
    const-string v5, "=> AppId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;

    invoke-virtual {v5}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->getAppId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    const-string v5, "   Category : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;

    invoke-virtual {v5}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->getCategory()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    const-string v5, "   Timestamp : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;

    invoke-virtual {v5}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->getTimestamp()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;

    invoke-virtual {v5}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->getData()Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, data:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 94
    const-string v5, "   Data : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 96
    .end local v0           #data:Ljava/lang/String;
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method


# virtual methods
.method public putReport([BLjava/util/Properties;)V
    .locals 0
    .parameter "data"
    .parameter "prop"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/HttpException;
        }
    .end annotation

    .prologue
    .line 75
    return-void
.end method

.method public putReport(Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;)Z
    .locals 9
    .parameter "envelope"

    .prologue
    const/4 v3, 0x0

    .line 50
    new-instance v1, Lcom/htc/xps/pomelo/log/LogLib;

    iget-object v4, p0, Lcom/htc/reportagent/CSUploader;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4, v3}, Lcom/htc/xps/pomelo/log/LogLib;-><init>(Landroid/content/Context;Z)V

    .line 52
    .local v1, logLib:Lcom/htc/xps/pomelo/log/LogLib;
    invoke-virtual {v1}, Lcom/htc/xps/pomelo/log/LogLib;->getServerHost()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 53
    const-string v4, "CSUploader"

    const-string v5, "no log server url"

    invoke-static {v4, v5}, Lcom/htc/reportagent/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :cond_0
    :goto_0
    return v3

    .line 57
    :cond_1
    sget-object v4, Lcom/htc/xps/pomelo/log/LogLib$SendResult;->CONNECTFAILED:Lcom/htc/xps/pomelo/log/LogLib$SendResult;

    invoke-virtual {v4}, Lcom/htc/xps/pomelo/log/LogLib$SendResult;->getValue()I

    move-result v2

    .line 59
    .local v2, ret:I
    :try_start_0
    invoke-virtual {v1, p1}, Lcom/htc/xps/pomelo/log/LogLib;->sendLogEnvelope(Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;)I

    move-result v2

    .line 60
    const-string v4, "CSUploader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "returned value : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/reportagent/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :goto_1
    iget-object v4, p0, Lcom/htc/reportagent/CSUploader;->mBudgetManager:Lcom/htc/reportagent/budget/BudgetManager;

    invoke-virtual {v1}, Lcom/htc/xps/pomelo/log/LogLib;->getTotalDownloadSize()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v1}, Lcom/htc/xps/pomelo/log/LogLib;->getTotalUploadSize()I

    move-result v7

    int-to-long v7, v7

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/htc/reportagent/budget/BudgetManager;->updateAppUsage(JJ)V

    .line 68
    sget-object v4, Lcom/htc/xps/pomelo/log/LogLib$SendResult;->SUCCESS:Lcom/htc/xps/pomelo/log/LogLib$SendResult;

    invoke-virtual {v4}, Lcom/htc/xps/pomelo/log/LogLib$SendResult;->getValue()I

    move-result v4

    if-ne v2, v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v4, "CSUploader"

    const-string v5, "IllegalArgumentException happend during putReport"

    invoke-static {v4, v5}, Lcom/htc/reportagent/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1
.end method

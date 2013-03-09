.class public Lcom/htc/reportagent/policy/RemotePolicyAccessor;
.super Ljava/lang/Object;
.source "RemotePolicyAccessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/reportagent/policy/RemotePolicyAccessor$AckResult;,
        Lcom/htc/reportagent/policy/RemotePolicyAccessor$ResponseResult;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final _DEBUG:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mRequest:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyRequestPKT;

.field private mResponse:Lcom/htc/xps/pomelo/log/LogLib$PolicyResponse;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/htc/reportagent/policy/RemotePolicyAccessor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/reportagent/policy/RemotePolicyAccessor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 51
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/htc/reportagent/policy/RemotePolicyAccessor;->mContext:Landroid/content/Context;

    .line 53
    return-void
.end method


# virtual methods
.method public getExpectedDLSize()J
    .locals 5

    .prologue
    .line 84
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;->newBuilder()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;

    move-result-object v2

    sget-object v3, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$PolicyStatus;->UPDATE_TO_DATE:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$PolicyStatus;

    invoke-virtual {v2, v3}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;->setStatus(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$PolicyStatus;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;

    move-result-object v2

    const-wide v3, 0x7fffffffffffffffL

    invoke-virtual {v2, v3, v4}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;->setUpdateTimestamp(J)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;->build()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;->toByteArray()[B

    move-result-object v2

    array-length v2, v2

    int-to-long v0, v2

    .line 89
    .local v0, size:J
    return-wide v0
.end method

.method public getExpectedULSize()J
    .locals 7

    .prologue
    .line 68
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyRequestPKT;->newBuilder()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyRequestPKT$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/reportagent/policy/RemotePolicyAccessor;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/htc/reportagent/pbdata/DeviceInfoHelper;->getPolicyDeviceInfo(Landroid/content/Context;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyRequestPKT$Builder;->setDeviceInfo(Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyRequestPKT$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/reportagent/policy/RemotePolicyAccessor;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/htc/reportagent/policy/PolicyPreference;->getPolicyLastUpdate(Landroid/content/Context;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyRequestPKT$Builder;->setLastUpdate(J)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyRequestPKT$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyRequestPKT$Builder;->build()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyRequestPKT;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyRequestPKT;->toByteArray()[B

    move-result-object v4

    array-length v4, v4

    int-to-long v0, v4

    .line 73
    .local v0, size1:J
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgePKT;->newBuilder()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgePKT$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/reportagent/policy/RemotePolicyAccessor;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/htc/reportagent/pbdata/DeviceInfoHelper;->getPolicyDeviceInfo(Landroid/content/Context;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgePKT$Builder;->setDeviceInfo(Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgePKT$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgePKT$Builder;->build()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgePKT;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgePKT;->toByteArray()[B

    move-result-object v4

    array-length v4, v4

    int-to-long v2, v4

    .line 77
    .local v2, size2:J
    add-long v4, v0, v2

    return-wide v4
.end method

.method public getPolicy()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 158
    iget-object v1, p0, Lcom/htc/reportagent/policy/RemotePolicyAccessor;->mResponse:Lcom/htc/xps/pomelo/log/LogLib$PolicyResponse;

    if-nez v1, :cond_1

    .line 167
    :cond_0
    :goto_0
    return-object v0

    .line 161
    :cond_1
    iget-object v1, p0, Lcom/htc/reportagent/policy/RemotePolicyAccessor;->mResponse:Lcom/htc/xps/pomelo/log/LogLib$PolicyResponse;

    iget-object v1, v1, Lcom/htc/xps/pomelo/log/LogLib$PolicyResponse;->policyResponse:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;

    if-eqz v1, :cond_0

    .line 164
    iget-object v1, p0, Lcom/htc/reportagent/policy/RemotePolicyAccessor;->mResponse:Lcom/htc/xps/pomelo/log/LogLib$PolicyResponse;

    iget-object v1, v1, Lcom/htc/xps/pomelo/log/LogLib$PolicyResponse;->policyResponse:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;

    invoke-virtual {v1}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;->getPolicyCount()I

    move-result v1

    if-eqz v1, :cond_0

    .line 167
    iget-object v0, p0, Lcom/htc/reportagent/policy/RemotePolicyAccessor;->mResponse:Lcom/htc/xps/pomelo/log/LogLib$PolicyResponse;

    iget-object v0, v0, Lcom/htc/xps/pomelo/log/LogLib$PolicyResponse;->policyResponse:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;

    invoke-virtual {v0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;->getPolicyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public hasPolicyServerHost()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 57
    new-instance v1, Lcom/htc/xps/pomelo/log/LogLib;

    iget-object v2, p0, Lcom/htc/reportagent/policy/RemotePolicyAccessor;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/htc/xps/pomelo/log/LogLib;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v1}, Lcom/htc/xps/pomelo/log/LogLib;->getPolicyServerHost()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public replyPolicyResult2Server(ZLjava/util/List;)Lcom/htc/reportagent/policy/RemotePolicyAccessor$AckResult;
    .locals 9
    .parameter "isUpdateSucc"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem;",
            ">;)",
            "Lcom/htc/reportagent/policy/RemotePolicyAccessor$AckResult;"
        }
    .end annotation

    .prologue
    .local p2, items:Ljava/util/List;,"Ljava/util/List<Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem;>;"
    const/4 v8, 0x0

    .line 172
    new-instance v2, Lcom/htc/reportagent/policy/RemotePolicyAccessor$AckResult;

    invoke-direct {v2}, Lcom/htc/reportagent/policy/RemotePolicyAccessor$AckResult;-><init>()V

    .line 175
    .local v2, result:Lcom/htc/reportagent/policy/RemotePolicyAccessor$AckResult;
    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_1

    .line 176
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgePKT;->newBuilder()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgePKT$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/reportagent/policy/RemotePolicyAccessor;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/htc/reportagent/pbdata/DeviceInfoHelper;->getPolicyDeviceInfo(Landroid/content/Context;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgePKT$Builder;->setDeviceInfo(Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgePKT$Builder;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgePKT$Builder;->addAllAck(Ljava/lang/Iterable;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgePKT$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgePKT$Builder;->build()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgePKT;

    move-result-object v0

    .line 185
    .local v0, ack:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgePKT;
    :goto_0
    const/4 v3, 0x0

    .line 191
    .local v3, status:I
    new-instance v1, Lcom/htc/xps/pomelo/log/LogLib;

    iget-object v4, p0, Lcom/htc/reportagent/policy/RemotePolicyAccessor;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4, v8}, Lcom/htc/xps/pomelo/log/LogLib;-><init>(Landroid/content/Context;Z)V

    .line 192
    .local v1, logLib:Lcom/htc/xps/pomelo/log/LogLib;
    invoke-virtual {v1, v0}, Lcom/htc/xps/pomelo/log/LogLib;->sendPolicyAck(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgePKT;)I

    move-result v3

    .line 193
    iget-wide v4, v2, Lcom/htc/reportagent/policy/RemotePolicyAccessor$AckResult;->ULSize:J

    invoke-virtual {v1}, Lcom/htc/xps/pomelo/log/LogLib;->getTotalUploadSize()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    iput-wide v4, v2, Lcom/htc/reportagent/policy/RemotePolicyAccessor$AckResult;->ULSize:J

    .line 194
    iget-wide v4, v2, Lcom/htc/reportagent/policy/RemotePolicyAccessor$AckResult;->DLSize:J

    invoke-virtual {v1}, Lcom/htc/xps/pomelo/log/LogLib;->getTotalDownloadSize()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    iput-wide v4, v2, Lcom/htc/reportagent/policy/RemotePolicyAccessor$AckResult;->DLSize:J

    .line 197
    sget-object v4, Lcom/htc/xps/pomelo/log/LogLib$SendResult;->SUCCESS:Lcom/htc/xps/pomelo/log/LogLib$SendResult;

    invoke-virtual {v4}, Lcom/htc/xps/pomelo/log/LogLib$SendResult;->getValue()I

    move-result v4

    if-ne v4, v3, :cond_2

    .line 199
    if-eqz p1, :cond_0

    .line 200
    iget-object v4, p0, Lcom/htc/reportagent/policy/RemotePolicyAccessor;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/htc/reportagent/policy/RemotePolicyAccessor;->mResponse:Lcom/htc/xps/pomelo/log/LogLib$PolicyResponse;

    iget-object v5, v5, Lcom/htc/xps/pomelo/log/LogLib$PolicyResponse;->policyResponse:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;

    invoke-virtual {v5}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;->getUpdateTimestamp()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/htc/reportagent/policy/PolicyPreference;->setPolicyLastUpdate(Landroid/content/Context;J)V

    .line 202
    :cond_0
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/htc/reportagent/policy/RemotePolicyAccessor;->mResponse:Lcom/htc/xps/pomelo/log/LogLib$PolicyResponse;

    .line 203
    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/htc/reportagent/policy/RemotePolicyAccessor$AckResult;->success:Z

    .line 208
    :goto_1
    return-object v2

    .line 181
    .end local v0           #ack:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgePKT;
    .end local v1           #logLib:Lcom/htc/xps/pomelo/log/LogLib;
    .end local v3           #status:I
    :cond_1
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgePKT;->newBuilder()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgePKT$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/reportagent/policy/RemotePolicyAccessor;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/htc/reportagent/pbdata/DeviceInfoHelper;->getPolicyDeviceInfo(Landroid/content/Context;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgePKT$Builder;->setDeviceInfo(Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgePKT$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgePKT$Builder;->build()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgePKT;

    move-result-object v0

    .restart local v0       #ack:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgePKT;
    goto :goto_0

    .line 207
    .restart local v1       #logLib:Lcom/htc/xps/pomelo/log/LogLib;
    .restart local v3       #status:I
    :cond_2
    iput-boolean v8, v2, Lcom/htc/reportagent/policy/RemotePolicyAccessor$AckResult;->success:Z

    goto :goto_1
.end method

.method public updatePolicyFromServer()Lcom/htc/reportagent/policy/RemotePolicyAccessor$ResponseResult;
    .locals 6

    .prologue
    .line 95
    new-instance v1, Lcom/htc/reportagent/policy/RemotePolicyAccessor$ResponseResult;

    invoke-direct {v1}, Lcom/htc/reportagent/policy/RemotePolicyAccessor$ResponseResult;-><init>()V

    .line 97
    .local v1, result:Lcom/htc/reportagent/policy/RemotePolicyAccessor$ResponseResult;
    invoke-virtual {p0}, Lcom/htc/reportagent/policy/RemotePolicyAccessor;->hasPolicyServerHost()Z

    move-result v2

    if-nez v2, :cond_0

    .line 98
    sget-object v2, Lcom/htc/reportagent/policy/RemotePolicyAccessor$ResponseResult$Status;->FAILURE:Lcom/htc/reportagent/policy/RemotePolicyAccessor$ResponseResult$Status;

    iput-object v2, v1, Lcom/htc/reportagent/policy/RemotePolicyAccessor$ResponseResult;->status:Lcom/htc/reportagent/policy/RemotePolicyAccessor$ResponseResult$Status;

    .line 99
    sget-object v2, Lcom/htc/reportagent/policy/RemotePolicyAccessor;->TAG:Ljava/lang/String;

    const-string v3, "no policy url for accessing"

    invoke-static {v2, v3}, Lcom/htc/reportagent/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :goto_0
    return-object v1

    .line 103
    :cond_0
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyRequestPKT;->newBuilder()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyRequestPKT$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/reportagent/policy/RemotePolicyAccessor;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/htc/reportagent/pbdata/DeviceInfoHelper;->getPolicyDeviceInfo(Landroid/content/Context;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyRequestPKT$Builder;->setDeviceInfo(Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyRequestPKT$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/reportagent/policy/RemotePolicyAccessor;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/htc/reportagent/policy/PolicyPreference;->getPolicyLastUpdate(Landroid/content/Context;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyRequestPKT$Builder;->setLastUpdate(J)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyRequestPKT$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyRequestPKT$Builder;->build()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyRequestPKT;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/reportagent/policy/RemotePolicyAccessor;->mRequest:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyRequestPKT;

    .line 114
    new-instance v0, Lcom/htc/xps/pomelo/log/LogLib;

    iget-object v2, p0, Lcom/htc/reportagent/policy/RemotePolicyAccessor;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/htc/xps/pomelo/log/LogLib;-><init>(Landroid/content/Context;Z)V

    .line 115
    .local v0, logLib:Lcom/htc/xps/pomelo/log/LogLib;
    iget-object v2, p0, Lcom/htc/reportagent/policy/RemotePolicyAccessor;->mRequest:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyRequestPKT;

    invoke-virtual {v0, v2}, Lcom/htc/xps/pomelo/log/LogLib;->getLogPolicy(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyRequestPKT;)Lcom/htc/xps/pomelo/log/LogLib$PolicyResponse;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/reportagent/policy/RemotePolicyAccessor;->mResponse:Lcom/htc/xps/pomelo/log/LogLib$PolicyResponse;

    .line 116
    iget-wide v2, v1, Lcom/htc/reportagent/policy/RemotePolicyAccessor$ResponseResult;->ULSize:J

    invoke-virtual {v0}, Lcom/htc/xps/pomelo/log/LogLib;->getTotalUploadSize()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/htc/reportagent/policy/RemotePolicyAccessor$ResponseResult;->ULSize:J

    .line 117
    iget-wide v2, v1, Lcom/htc/reportagent/policy/RemotePolicyAccessor$ResponseResult;->DLSize:J

    invoke-virtual {v0}, Lcom/htc/xps/pomelo/log/LogLib;->getTotalDownloadSize()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/htc/reportagent/policy/RemotePolicyAccessor$ResponseResult;->DLSize:J

    .line 120
    iget-object v2, p0, Lcom/htc/reportagent/policy/RemotePolicyAccessor;->mResponse:Lcom/htc/xps/pomelo/log/LogLib$PolicyResponse;

    if-nez v2, :cond_1

    .line 122
    sget-object v2, Lcom/htc/reportagent/policy/RemotePolicyAccessor$ResponseResult$Status;->FAILURE:Lcom/htc/reportagent/policy/RemotePolicyAccessor$ResponseResult$Status;

    iput-object v2, v1, Lcom/htc/reportagent/policy/RemotePolicyAccessor$ResponseResult;->status:Lcom/htc/reportagent/policy/RemotePolicyAccessor$ResponseResult$Status;

    goto :goto_0

    .line 126
    :cond_1
    iget-object v2, p0, Lcom/htc/reportagent/policy/RemotePolicyAccessor;->mResponse:Lcom/htc/xps/pomelo/log/LogLib$PolicyResponse;

    iget-object v2, v2, Lcom/htc/xps/pomelo/log/LogLib$PolicyResponse;->policyResponse:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;

    if-nez v2, :cond_2

    .line 128
    sget-object v2, Lcom/htc/reportagent/policy/RemotePolicyAccessor$ResponseResult$Status;->FAILURE:Lcom/htc/reportagent/policy/RemotePolicyAccessor$ResponseResult$Status;

    iput-object v2, v1, Lcom/htc/reportagent/policy/RemotePolicyAccessor$ResponseResult;->status:Lcom/htc/reportagent/policy/RemotePolicyAccessor$ResponseResult$Status;

    goto :goto_0

    .line 132
    :cond_2
    sget-object v2, Lcom/htc/xps/pomelo/log/LogLib$SendResult;->SUCCESS:Lcom/htc/xps/pomelo/log/LogLib$SendResult;

    invoke-virtual {v2}, Lcom/htc/xps/pomelo/log/LogLib$SendResult;->getValue()I

    move-result v2

    iget-object v3, p0, Lcom/htc/reportagent/policy/RemotePolicyAccessor;->mResponse:Lcom/htc/xps/pomelo/log/LogLib$PolicyResponse;

    iget v3, v3, Lcom/htc/xps/pomelo/log/LogLib$PolicyResponse;->statusCode:I

    if-eq v2, v3, :cond_3

    .line 134
    sget-object v2, Lcom/htc/reportagent/policy/RemotePolicyAccessor$ResponseResult$Status;->FAILURE:Lcom/htc/reportagent/policy/RemotePolicyAccessor$ResponseResult$Status;

    iput-object v2, v1, Lcom/htc/reportagent/policy/RemotePolicyAccessor$ResponseResult;->status:Lcom/htc/reportagent/policy/RemotePolicyAccessor$ResponseResult$Status;

    goto :goto_0

    .line 138
    :cond_3
    iget-object v2, p0, Lcom/htc/reportagent/policy/RemotePolicyAccessor;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/reportagent/policy/RemotePolicyAccessor;->mResponse:Lcom/htc/xps/pomelo/log/LogLib$PolicyResponse;

    iget-object v3, v3, Lcom/htc/xps/pomelo/log/LogLib$PolicyResponse;->policyResponse:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;

    invoke-virtual {v3}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;->getUpdateTimestamp()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/htc/reportagent/policy/PolicyPreference;->setPolicyLastUpdate(Landroid/content/Context;J)V

    .line 140
    sget-object v2, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$PolicyStatus;->UPDATE_TO_DATE:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$PolicyStatus;

    iget-object v3, p0, Lcom/htc/reportagent/policy/RemotePolicyAccessor;->mResponse:Lcom/htc/xps/pomelo/log/LogLib$PolicyResponse;

    iget-object v3, v3, Lcom/htc/xps/pomelo/log/LogLib$PolicyResponse;->policyResponse:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;

    invoke-virtual {v3}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;->getStatus()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$PolicyStatus;

    move-result-object v3

    if-ne v2, v3, :cond_4

    .line 141
    sget-object v2, Lcom/htc/reportagent/policy/RemotePolicyAccessor$ResponseResult$Status;->UP_TO_DATE:Lcom/htc/reportagent/policy/RemotePolicyAccessor$ResponseResult$Status;

    iput-object v2, v1, Lcom/htc/reportagent/policy/RemotePolicyAccessor$ResponseResult;->status:Lcom/htc/reportagent/policy/RemotePolicyAccessor$ResponseResult$Status;

    goto/16 :goto_0

    .line 145
    :cond_4
    iget-object v2, p0, Lcom/htc/reportagent/policy/RemotePolicyAccessor;->mResponse:Lcom/htc/xps/pomelo/log/LogLib$PolicyResponse;

    iget-object v2, v2, Lcom/htc/xps/pomelo/log/LogLib$PolicyResponse;->policyResponse:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;

    invoke-virtual {v2}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;->getPolicyCount()I

    move-result v2

    if-nez v2, :cond_5

    .line 147
    sget-object v2, Lcom/htc/reportagent/policy/RemotePolicyAccessor$ResponseResult$Status;->FAILURE:Lcom/htc/reportagent/policy/RemotePolicyAccessor$ResponseResult$Status;

    iput-object v2, v1, Lcom/htc/reportagent/policy/RemotePolicyAccessor$ResponseResult;->status:Lcom/htc/reportagent/policy/RemotePolicyAccessor$ResponseResult$Status;

    goto/16 :goto_0

    .line 151
    :cond_5
    sget-object v2, Lcom/htc/reportagent/policy/RemotePolicyAccessor$ResponseResult$Status;->NEW_POLICY:Lcom/htc/reportagent/policy/RemotePolicyAccessor$ResponseResult$Status;

    iput-object v2, v1, Lcom/htc/reportagent/policy/RemotePolicyAccessor$ResponseResult;->status:Lcom/htc/reportagent/policy/RemotePolicyAccessor$ResponseResult$Status;

    goto/16 :goto_0
.end method

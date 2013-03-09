.class Lcom/htc/reportagent/policy/FakePolicyServer;
.super Ljava/lang/Object;
.source "FakePolicyServer.java"


# static fields
.field private static final FAIL_FACTOR:I = 0x3

.field private static final TAG:Ljava/lang/String;

.field private static final _DEBUG:Z

.field private static volatile countAck:I

.field private static volatile countGetPolicy:I

.field private static volatile countPolicySucc:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 22
    const-class v0, Lcom/htc/reportagent/policy/FakePolicyServer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/reportagent/policy/FakePolicyServer;->TAG:Ljava/lang/String;

    .line 27
    sput v1, Lcom/htc/reportagent/policy/FakePolicyServer;->countGetPolicy:I

    .line 28
    sput v1, Lcom/htc/reportagent/policy/FakePolicyServer;->countPolicySucc:I

    .line 30
    sput v1, Lcom/htc/reportagent/policy/FakePolicyServer;->countAck:I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getLogPolicy(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyRequestPKT;)Lcom/htc/xps/pomelo/log/LogLib$PolicyResponse;
    .locals 9
    .parameter "request"

    .prologue
    .line 34
    new-instance v1, Lcom/htc/xps/pomelo/log/LogLib$PolicyResponse;

    invoke-direct {v1}, Lcom/htc/xps/pomelo/log/LogLib$PolicyResponse;-><init>()V

    .line 36
    .local v1, response:Lcom/htc/xps/pomelo/log/LogLib$PolicyResponse;
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Random;-><init>(J)V

    .line 39
    .local v0, random:Ljava/util/Random;
    sget v2, Lcom/htc/reportagent/policy/FakePolicyServer;->countGetPolicy:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/htc/reportagent/policy/FakePolicyServer;->countGetPolicy:I

    .line 41
    sget v2, Lcom/htc/reportagent/policy/FakePolicyServer;->countGetPolicy:I

    rem-int/lit8 v2, v2, 0x3

    if-eqz v2, :cond_0

    .line 43
    sget-object v2, Lcom/htc/xps/pomelo/log/LogLib$SendResult;->NOTFOUND:Lcom/htc/xps/pomelo/log/LogLib$SendResult;

    invoke-virtual {v2}, Lcom/htc/xps/pomelo/log/LogLib$SendResult;->getValue()I

    move-result v2

    iput v2, v1, Lcom/htc/xps/pomelo/log/LogLib$PolicyResponse;->statusCode:I

    .line 44
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/htc/xps/pomelo/log/LogLib$PolicyResponse;->policyResponse:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;

    .line 151
    :goto_0
    return-object v1

    .line 50
    :cond_0
    sget-object v2, Lcom/htc/xps/pomelo/log/LogLib$SendResult;->SUCCESS:Lcom/htc/xps/pomelo/log/LogLib$SendResult;

    invoke-virtual {v2}, Lcom/htc/xps/pomelo/log/LogLib$SendResult;->getValue()I

    move-result v2

    iput v2, v1, Lcom/htc/xps/pomelo/log/LogLib$PolicyResponse;->statusCode:I

    .line 51
    sget v2, Lcom/htc/reportagent/policy/FakePolicyServer;->countPolicySucc:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/htc/reportagent/policy/FakePolicyServer;->countPolicySucc:I

    .line 53
    sget v2, Lcom/htc/reportagent/policy/FakePolicyServer;->countPolicySucc:I

    rem-int/lit8 v2, v2, 0x3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 55
    :pswitch_0
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;->newBuilder()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;->setUpdateTimestamp(J)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;

    move-result-object v2

    sget-object v3, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$PolicyStatus;->UPDATE_TO_DATE:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$PolicyStatus;

    invoke-virtual {v2, v3}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;->setStatus(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$PolicyStatus;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;->build()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/xps/pomelo/log/LogLib$PolicyResponse;->policyResponse:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;

    goto :goto_0

    .line 62
    :pswitch_1
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;->newBuilder()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;->setUpdateTimestamp(J)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;

    move-result-object v2

    sget-object v3, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$PolicyStatus;->NEW_POLICIES:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$PolicyStatus;

    invoke-virtual {v2, v3}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;->setStatus(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$PolicyStatus;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;->build()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/xps/pomelo/log/LogLib$PolicyResponse;->policyResponse:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;

    goto :goto_0

    .line 69
    :pswitch_2
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;->newBuilder()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;->setUpdateTimestamp(J)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;

    move-result-object v2

    sget-object v3, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$PolicyStatus;->NEW_POLICIES:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$PolicyStatus;

    invoke-virtual {v2, v3}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;->setStatus(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$PolicyStatus;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;

    move-result-object v2

    invoke-static {}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;->newBuilder()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem$Builder;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MgmtGroupId"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem$Builder;->setMgmtGroupId(Ljava/lang/String;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem$Builder;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PolicyGroupId"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem$Builder;->setPolicyGroupId(Ljava/lang/String;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem$Builder;

    move-result-object v3

    invoke-static {}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;->newBuilder()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;

    move-result-object v4

    const-string v5, "com.htc.reportagent"

    invoke-virtual {v4, v5}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;->setAppId(Ljava/lang/String;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;

    move-result-object v4

    invoke-static {}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppCategoryItem;->newBuilder()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppCategoryItem$Builder;

    move-result-object v5

    const-string v6, "policy"

    invoke-virtual {v5, v6}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppCategoryItem$Builder;->setCategory(Ljava/lang/String;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppCategoryItem$Builder;

    move-result-object v5

    invoke-static {}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;->newBuilder()Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;

    move-result-object v6

    const-string v7, "freq"

    invoke-virtual {v6, v7}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;->setKey(Ljava/lang/String;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x3b

    invoke-virtual {v0, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v8

    add-int/lit8 v8, v8, 0x3d

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;->setValue(Ljava/lang/String;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppCategoryItem$Builder;->addItem(Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppCategoryItem$Builder;

    move-result-object v5

    invoke-static {}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;->newBuilder()Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "key"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;->setKey(Ljava/lang/String;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "value"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;->setValue(Ljava/lang/String;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppCategoryItem$Builder;->addItem(Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppCategoryItem$Builder;

    move-result-object v5

    invoke-static {}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;->newBuilder()Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "key"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;->setKey(Ljava/lang/String;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "value"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;->setValue(Ljava/lang/String;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppCategoryItem$Builder;->addItem(Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppCategoryItem$Builder;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;->addCategoryItem(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppCategoryItem$Builder;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;

    move-result-object v4

    invoke-static {}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppCategoryItem;->newBuilder()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppCategoryItem$Builder;

    move-result-object v5

    const-string v6, "fixCategory1"

    invoke-virtual {v5, v6}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppCategoryItem$Builder;->setCategory(Ljava/lang/String;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppCategoryItem$Builder;

    move-result-object v5

    invoke-static {}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;->newBuilder()Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;

    move-result-object v6

    const-string v7, "fixKey"

    invoke-virtual {v6, v7}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;->setKey(Ljava/lang/String;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "value"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;->setValue(Ljava/lang/String;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppCategoryItem$Builder;->addItem(Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppCategoryItem$Builder;

    move-result-object v5

    invoke-static {}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;->newBuilder()Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "key"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;->setKey(Ljava/lang/String;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "value"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;->setValue(Ljava/lang/String;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppCategoryItem$Builder;->addItem(Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppCategoryItem$Builder;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;->addCategoryItem(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppCategoryItem$Builder;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem$Builder;->addAppPolicyItem(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem$Builder;

    move-result-object v3

    invoke-static {}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;->newBuilder()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;

    move-result-object v4

    const-string v5, "com.htc.fakeApp"

    invoke-virtual {v4, v5}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;->setAppId(Ljava/lang/String;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;

    move-result-object v4

    invoke-static {}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppCategoryItem;->newBuilder()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppCategoryItem$Builder;

    move-result-object v5

    const-string v6, "fixCategory1"

    invoke-virtual {v5, v6}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppCategoryItem$Builder;->setCategory(Ljava/lang/String;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppCategoryItem$Builder;

    move-result-object v5

    invoke-static {}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;->newBuilder()Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;

    move-result-object v6

    const-string v7, "fixKey"

    invoke-virtual {v6, v7}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;->setKey(Ljava/lang/String;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "value"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;->setValue(Ljava/lang/String;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppCategoryItem$Builder;->addItem(Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppCategoryItem$Builder;

    move-result-object v5

    invoke-static {}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;->newBuilder()Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "key"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;->setKey(Ljava/lang/String;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "value"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;->setValue(Ljava/lang/String;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppCategoryItem$Builder;->addItem(Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppCategoryItem$Builder;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;->addCategoryItem(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppCategoryItem$Builder;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;

    move-result-object v4

    invoke-static {}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppCategoryItem;->newBuilder()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppCategoryItem$Builder;

    move-result-object v5

    const-string v6, "fixCategory2"

    invoke-virtual {v5, v6}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppCategoryItem$Builder;->setCategory(Ljava/lang/String;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppCategoryItem$Builder;

    move-result-object v5

    invoke-static {}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;->newBuilder()Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;

    move-result-object v6

    const-string v7, "fixKey"

    invoke-virtual {v6, v7}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;->setKey(Ljava/lang/String;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "value"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;->setValue(Ljava/lang/String;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppCategoryItem$Builder;->addItem(Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppCategoryItem$Builder;

    move-result-object v5

    invoke-static {}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;->newBuilder()Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "key"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;->setKey(Ljava/lang/String;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "value"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;->setValue(Ljava/lang/String;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppCategoryItem$Builder;->addItem(Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppCategoryItem$Builder;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;->addCategoryItem(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppCategoryItem$Builder;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem$Builder;->addAppPolicyItem(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem$Builder;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;->addPolicy(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem$Builder;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;->build()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/xps/pomelo/log/LogLib$PolicyResponse;->policyResponse:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;

    goto/16 :goto_0

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static sendPolicyAck(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgePKT;)I
    .locals 1
    .parameter "ack"

    .prologue
    .line 157
    sget v0, Lcom/htc/reportagent/policy/FakePolicyServer;->countAck:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/htc/reportagent/policy/FakePolicyServer;->countAck:I

    .line 159
    sget v0, Lcom/htc/reportagent/policy/FakePolicyServer;->countAck:I

    rem-int/lit8 v0, v0, 0x3

    if-eqz v0, :cond_0

    .line 161
    sget-object v0, Lcom/htc/xps/pomelo/log/LogLib$SendResult;->CONNECTFAILED:Lcom/htc/xps/pomelo/log/LogLib$SendResult;

    invoke-virtual {v0}, Lcom/htc/xps/pomelo/log/LogLib$SendResult;->getValue()I

    move-result v0

    .line 166
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/htc/xps/pomelo/log/LogLib$SendResult;->SUCCESS:Lcom/htc/xps/pomelo/log/LogLib$SendResult;

    invoke-virtual {v0}, Lcom/htc/xps/pomelo/log/LogLib$SendResult;->getValue()I

    move-result v0

    goto :goto_0
.end method

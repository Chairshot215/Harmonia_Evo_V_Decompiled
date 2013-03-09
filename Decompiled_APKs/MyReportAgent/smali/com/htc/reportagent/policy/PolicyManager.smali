.class public Lcom/htc/reportagent/policy/PolicyManager;
.super Ljava/lang/Object;
.source "PolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/reportagent/policy/PolicyManager$1;,
        Lcom/htc/reportagent/policy/PolicyManager$DownloadResult;,
        Lcom/htc/reportagent/policy/PolicyManager$Event;
    }
.end annotation


# static fields
.field public static final STATUS_DISABLE:I = 0x2

.field public static final STATUS_ENABLE:I = 0x3

.field public static final STATUS_OOBE:I = 0x1

.field public static final STATUS_WAIT:I = 0x4

.field private static final TAG:Ljava/lang/String;

.field private static final _DEBUG:Z


# instance fields
.field private mAlarmIntent:Landroid/app/PendingIntent;

.field private mBudgetManager:Lcom/htc/reportagent/budget/BudgetManager;

.field private mContext:Landroid/content/Context;

.field private mRemotePolicyAccessor:Lcom/htc/reportagent/policy/RemotePolicyAccessor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    const-class v0, Lcom/htc/reportagent/policy/PolicyManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/reportagent/policy/PolicyManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/reportagent/budget/BudgetManager;)V
    .locals 4
    .parameter "context"
    .parameter "budgetManager"

    .prologue
    .line 82
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/reportagent/policy/PolicyManager;->mAlarmIntent:Landroid/app/PendingIntent;

    .line 83
    iput-object p1, p0, Lcom/htc/reportagent/policy/PolicyManager;->mContext:Landroid/content/Context;

    .line 84
    iput-object p2, p0, Lcom/htc/reportagent/policy/PolicyManager;->mBudgetManager:Lcom/htc/reportagent/budget/BudgetManager;

    .line 85
    new-instance v1, Lcom/htc/reportagent/policy/RemotePolicyAccessor;

    iget-object v2, p0, Lcom/htc/reportagent/policy/PolicyManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/htc/reportagent/policy/RemotePolicyAccessor;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/reportagent/policy/PolicyManager;->mRemotePolicyAccessor:Lcom/htc/reportagent/policy/RemotePolicyAccessor;

    .line 87
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.reportagent.action.POLICY_ALARM"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 88
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/htc/reportagent/policy/PolicyManager;->mContext:Landroid/content/Context;

    const-class v2, Lcom/htc/reportagent/ReportService;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 89
    iget-object v1, p0, Lcom/htc/reportagent/policy/PolicyManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x1000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/reportagent/policy/PolicyManager;->mAlarmIntent:Landroid/app/PendingIntent;

    .line 90
    return-void
.end method

.method private downloadPolicy()Lcom/htc/reportagent/policy/PolicyManager$DownloadResult;
    .locals 19

    .prologue
    .line 358
    invoke-static {}, Lcom/htc/reportagent/util/Utils;->getRetryTimes()I

    move-result v12

    .line 362
    .local v12, retryTimes:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/reportagent/policy/PolicyManager;->mRemotePolicyAccessor:Lcom/htc/reportagent/policy/RemotePolicyAccessor;

    invoke-virtual {v14}, Lcom/htc/reportagent/policy/RemotePolicyAccessor;->getExpectedULSize()J

    move-result-wide v5

    .line 363
    .local v5, expectedULSize:J
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/reportagent/policy/PolicyManager;->mRemotePolicyAccessor:Lcom/htc/reportagent/policy/RemotePolicyAccessor;

    invoke-virtual {v14}, Lcom/htc/reportagent/policy/RemotePolicyAccessor;->getExpectedDLSize()J

    move-result-wide v3

    .line 365
    .local v3, expectedDLSize:J
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/reportagent/policy/PolicyManager;->mBudgetManager:Lcom/htc/reportagent/budget/BudgetManager;

    invoke-virtual {v14, v3, v4, v5, v6}, Lcom/htc/reportagent/budget/BudgetManager;->isAvailableByCurrentNetwork(JJ)Z

    move-result v14

    if-nez v14, :cond_1

    .line 366
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/reportagent/policy/PolicyManager;->mBudgetManager:Lcom/htc/reportagent/budget/BudgetManager;

    invoke-virtual {v14, v3, v4, v5, v6}, Lcom/htc/reportagent/budget/BudgetManager;->isAvailableByNoncurrentNetwork(JJ)Z

    move-result v14

    if-nez v14, :cond_0

    .line 367
    sget-object v14, Lcom/htc/reportagent/policy/PolicyManager$DownloadResult;->FAIL_ALL_NO_BUDGET:Lcom/htc/reportagent/policy/PolicyManager$DownloadResult;

    .line 429
    :goto_0
    return-object v14

    .line 369
    :cond_0
    sget-object v14, Lcom/htc/reportagent/policy/PolicyManager$DownloadResult;->FAIL_CURRENT_NETWORK_NO_BUDGET:Lcom/htc/reportagent/policy/PolicyManager$DownloadResult;

    goto :goto_0

    .line 374
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/reportagent/policy/PolicyManager;->mRemotePolicyAccessor:Lcom/htc/reportagent/policy/RemotePolicyAccessor;

    invoke-virtual {v14}, Lcom/htc/reportagent/policy/RemotePolicyAccessor;->hasPolicyServerHost()Z

    move-result v14

    if-nez v14, :cond_2

    .line 375
    sget-object v14, Lcom/htc/reportagent/policy/PolicyManager;->TAG:Ljava/lang/String;

    const-string v15, "no policy server"

    invoke-static {v14, v15}, Lcom/htc/reportagent/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    sget-object v14, Lcom/htc/reportagent/policy/PolicyManager$DownloadResult;->FAIL_GENERIC:Lcom/htc/reportagent/policy/PolicyManager$DownloadResult;

    goto :goto_0

    .line 381
    :cond_2
    const/4 v11, 0x0

    .line 382
    .local v11, result:Lcom/htc/reportagent/policy/RemotePolicyAccessor$ResponseResult;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    if-gt v7, v12, :cond_4

    .line 383
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/reportagent/policy/PolicyManager;->mRemotePolicyAccessor:Lcom/htc/reportagent/policy/RemotePolicyAccessor;

    invoke-virtual {v14}, Lcom/htc/reportagent/policy/RemotePolicyAccessor;->updatePolicyFromServer()Lcom/htc/reportagent/policy/RemotePolicyAccessor$ResponseResult;

    move-result-object v11

    .line 385
    if-nez v11, :cond_3

    .line 386
    sget-object v14, Lcom/htc/reportagent/policy/PolicyManager;->TAG:Ljava/lang/String;

    const-string v15, "downloadPolicy result is null"

    invoke-static {v14, v15}, Lcom/htc/reportagent/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    sget-object v14, Lcom/htc/reportagent/policy/PolicyManager$DownloadResult;->FAIL_GENERIC:Lcom/htc/reportagent/policy/PolicyManager$DownloadResult;

    goto :goto_0

    .line 390
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/reportagent/policy/PolicyManager;->mBudgetManager:Lcom/htc/reportagent/budget/BudgetManager;

    iget-wide v15, v11, Lcom/htc/reportagent/policy/RemotePolicyAccessor$ResponseResult;->DLSize:J

    iget-wide v0, v11, Lcom/htc/reportagent/policy/RemotePolicyAccessor$ResponseResult;->ULSize:J

    move-wide/from16 v17, v0

    invoke-virtual/range {v14 .. v18}, Lcom/htc/reportagent/budget/BudgetManager;->updateAppUsage(JJ)V

    .line 392
    sget-object v14, Lcom/htc/reportagent/policy/RemotePolicyAccessor$ResponseResult$Status;->NEW_POLICY:Lcom/htc/reportagent/policy/RemotePolicyAccessor$ResponseResult$Status;

    iget-object v15, v11, Lcom/htc/reportagent/policy/RemotePolicyAccessor$ResponseResult;->status:Lcom/htc/reportagent/policy/RemotePolicyAccessor$ResponseResult$Status;

    if-eq v14, v15, :cond_4

    sget-object v14, Lcom/htc/reportagent/policy/RemotePolicyAccessor$ResponseResult$Status;->UP_TO_DATE:Lcom/htc/reportagent/policy/RemotePolicyAccessor$ResponseResult$Status;

    iget-object v15, v11, Lcom/htc/reportagent/policy/RemotePolicyAccessor$ResponseResult;->status:Lcom/htc/reportagent/policy/RemotePolicyAccessor$ResponseResult$Status;

    if-ne v14, v15, :cond_5

    .line 398
    :cond_4
    sget-object v14, Lcom/htc/reportagent/policy/RemotePolicyAccessor$ResponseResult$Status;->FAILURE:Lcom/htc/reportagent/policy/RemotePolicyAccessor$ResponseResult$Status;

    iget-object v15, v11, Lcom/htc/reportagent/policy/RemotePolicyAccessor$ResponseResult;->status:Lcom/htc/reportagent/policy/RemotePolicyAccessor$ResponseResult$Status;

    if-ne v14, v15, :cond_6

    .line 399
    sget-object v14, Lcom/htc/reportagent/policy/PolicyManager;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "can\'t get policy from server for "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " times"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/htc/reportagent/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    sget-object v14, Lcom/htc/reportagent/policy/PolicyManager$DownloadResult;->FAIL_GENERIC:Lcom/htc/reportagent/policy/PolicyManager$DownloadResult;

    goto :goto_0

    .line 382
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 404
    :cond_6
    sget-object v14, Lcom/htc/reportagent/policy/RemotePolicyAccessor$ResponseResult$Status;->UP_TO_DATE:Lcom/htc/reportagent/policy/RemotePolicyAccessor$ResponseResult$Status;

    iget-object v15, v11, Lcom/htc/reportagent/policy/RemotePolicyAccessor$ResponseResult;->status:Lcom/htc/reportagent/policy/RemotePolicyAccessor$ResponseResult$Status;

    if-ne v14, v15, :cond_7

    .line 405
    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/htc/reportagent/policy/PolicyManager;->replyPolicyResult2Server(ZLjava/util/List;)Z

    .line 407
    sget-object v14, Lcom/htc/reportagent/policy/PolicyManager$DownloadResult;->SUCC_BUT_NOT_APPLY:Lcom/htc/reportagent/policy/PolicyManager$DownloadResult;

    goto/16 :goto_0

    .line 413
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/reportagent/policy/PolicyManager;->mRemotePolicyAccessor:Lcom/htc/reportagent/policy/RemotePolicyAccessor;

    invoke-virtual {v14}, Lcom/htc/reportagent/policy/RemotePolicyAccessor;->getPolicy()Ljava/util/List;

    move-result-object v10

    .line 416
    .local v10, policyItems:Ljava/util/List;,"Ljava/util/List<Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;>;"
    if-eqz v10, :cond_8

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v14

    if-nez v14, :cond_9

    .line 417
    :cond_8
    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/htc/reportagent/policy/PolicyManager;->replyPolicyResult2Server(ZLjava/util/List;)Z

    .line 418
    sget-object v14, Lcom/htc/reportagent/policy/PolicyManager$DownloadResult;->SUCC_BUT_NOT_APPLY:Lcom/htc/reportagent/policy/PolicyManager$DownloadResult;

    goto/16 :goto_0

    .line 421
    :cond_9
    const/4 v8, 0x1

    .line 422
    .local v8, isApply:Z
    new-instance v13, Lcom/htc/reportagent/policy/HandsetPolicyUpdater;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/reportagent/policy/PolicyManager;->mContext:Landroid/content/Context;

    invoke-direct {v13, v14}, Lcom/htc/reportagent/policy/HandsetPolicyUpdater;-><init>(Landroid/content/Context;)V

    .line 423
    .local v13, updater:Lcom/htc/reportagent/policy/HandsetPolicyUpdater;
    invoke-static {v10}, Lcom/htc/reportagent/policy/PolicyConverter;->handsetPolicyItem2Bundle(Ljava/util/List;)Landroid/os/Bundle;

    move-result-object v9

    .line 424
    .local v9, policyBundle:Landroid/os/Bundle;
    invoke-virtual {v13, v9}, Lcom/htc/reportagent/policy/HandsetPolicyUpdater;->applyPolicy2Provider(Landroid/os/Bundle;)Z

    move-result v8

    .line 427
    invoke-static {v10, v8}, Lcom/htc/reportagent/policy/PolicyConverter;->handsetPolicyItem2Acks(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v2

    .line 428
    .local v2, ackItems:Ljava/util/List;,"Ljava/util/List<Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem;>;"
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v2}, Lcom/htc/reportagent/policy/PolicyManager;->replyPolicyResult2Server(ZLjava/util/List;)Z

    .line 429
    sget-object v14, Lcom/htc/reportagent/policy/PolicyManager$DownloadResult;->SUCC_AND_APPLY:Lcom/htc/reportagent/policy/PolicyManager$DownloadResult;

    goto/16 :goto_0
.end method

.method private getPolicyUpdateFrequency()J
    .locals 9

    .prologue
    .line 488
    invoke-static {}, Lcom/htc/reportagent/ReportUPolicy;->getInstance()Lcom/htc/utils/ulog/UPolicy;

    move-result-object v4

    .line 489
    .local v4, policy:Lcom/htc/utils/ulog/UPolicy;
    const-string v5, "policy"

    const-string v6, "freq"

    invoke-virtual {v4, v5, v6}, Lcom/htc/utils/ulog/UPolicy;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 490
    .local v3, freqStr:Ljava/lang/String;
    const-wide/16 v1, -0x1

    .line 493
    .local v1, freq:J
    :try_start_0
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v5

    const-wide/32 v7, 0x36ee80

    mul-long v1, v5, v7

    .line 503
    :goto_0
    return-wide v1

    .line 498
    :catch_0
    move-exception v0

    .line 499
    .local v0, e:Ljava/lang/Exception;
    sget-object v5, Lcom/htc/reportagent/policy/PolicyManager;->TAG:Ljava/lang/String;

    const-string v6, "Exception happen during paring updateFrequency"

    invoke-static {v5, v6}, Lcom/htc/reportagent/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private onAlarmWakeup()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x4

    .line 266
    iget-object v2, p0, Lcom/htc/reportagent/policy/PolicyManager;->mContext:Landroid/content/Context;

    const-wide/16 v3, -0x1

    invoke-static {v2, v3, v4}, Lcom/htc/reportagent/policy/PolicyPreference;->setAlarmBaseline(Landroid/content/Context;J)V

    .line 268
    iget-object v2, p0, Lcom/htc/reportagent/policy/PolicyManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/reportagent/policy/PolicyPreference;->getPolicyManagerStatus(Landroid/content/Context;)I

    move-result v1

    .line 269
    .local v1, status:I
    packed-switch v1, :pswitch_data_0

    .line 306
    sget-object v2, Lcom/htc/reportagent/policy/PolicyManager;->TAG:Ljava/lang/String;

    const-string v3, "onAlarmWakeup()"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Wrong status "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Lcom/htc/reportagent/policy/PolicyManager;->status2String(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/htc/reportagent/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 275
    :pswitch_1
    iget-object v2, p0, Lcom/htc/reportagent/policy/PolicyManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/reportagent/util/Utils;->isPolicyAvailable(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 276
    iget-object v2, p0, Lcom/htc/reportagent/policy/PolicyManager;->mContext:Landroid/content/Context;

    invoke-static {v2, v6}, Lcom/htc/reportagent/policy/PolicyPreference;->setPolicyManagerStatus(Landroid/content/Context;I)V

    goto :goto_0

    .line 277
    :cond_1
    iget-object v2, p0, Lcom/htc/reportagent/policy/PolicyManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/reportagent/util/Utils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 278
    iget-object v2, p0, Lcom/htc/reportagent/policy/PolicyManager;->mContext:Landroid/content/Context;

    invoke-static {v2, v5}, Lcom/htc/reportagent/policy/PolicyPreference;->setPolicyManagerStatus(Landroid/content/Context;I)V

    goto :goto_0

    .line 280
    :cond_2
    invoke-direct {p0}, Lcom/htc/reportagent/policy/PolicyManager;->downloadPolicy()Lcom/htc/reportagent/policy/PolicyManager$DownloadResult;

    move-result-object v0

    .line 281
    .local v0, result:Lcom/htc/reportagent/policy/PolicyManager$DownloadResult;
    sget-object v2, Lcom/htc/reportagent/policy/PolicyManager$DownloadResult;->FAIL_CURRENT_NETWORK_NO_BUDGET:Lcom/htc/reportagent/policy/PolicyManager$DownloadResult;

    if-ne v2, v0, :cond_3

    .line 282
    iget-object v2, p0, Lcom/htc/reportagent/policy/PolicyManager;->mContext:Landroid/content/Context;

    invoke-static {v2, v5}, Lcom/htc/reportagent/policy/PolicyPreference;->setPolicyManagerStatus(Landroid/content/Context;I)V

    goto :goto_0

    .line 284
    :cond_3
    invoke-direct {p0}, Lcom/htc/reportagent/policy/PolicyManager;->resetAlarm()V

    goto :goto_0

    .line 291
    .end local v0           #result:Lcom/htc/reportagent/policy/PolicyManager$DownloadResult;
    :pswitch_2
    iget-object v2, p0, Lcom/htc/reportagent/policy/PolicyManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/reportagent/util/Utils;->isPolicyAvailable(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 292
    iget-object v2, p0, Lcom/htc/reportagent/policy/PolicyManager;->mContext:Landroid/content/Context;

    invoke-static {v2, v6}, Lcom/htc/reportagent/policy/PolicyPreference;->setPolicyManagerStatus(Landroid/content/Context;I)V

    goto :goto_0

    .line 293
    :cond_4
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/htc/reportagent/policy/PolicyManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/htc/reportagent/util/Utils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v3

    if-ne v2, v3, :cond_0

    .line 294
    iget-object v2, p0, Lcom/htc/reportagent/policy/PolicyManager;->mContext:Landroid/content/Context;

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/htc/reportagent/policy/PolicyPreference;->setPolicyManagerStatus(Landroid/content/Context;I)V

    .line 295
    invoke-direct {p0}, Lcom/htc/reportagent/policy/PolicyManager;->downloadPolicy()Lcom/htc/reportagent/policy/PolicyManager$DownloadResult;

    move-result-object v0

    .line 296
    .restart local v0       #result:Lcom/htc/reportagent/policy/PolicyManager$DownloadResult;
    sget-object v2, Lcom/htc/reportagent/policy/PolicyManager$DownloadResult;->FAIL_CURRENT_NETWORK_NO_BUDGET:Lcom/htc/reportagent/policy/PolicyManager$DownloadResult;

    if-ne v2, v0, :cond_5

    .line 297
    iget-object v2, p0, Lcom/htc/reportagent/policy/PolicyManager;->mContext:Landroid/content/Context;

    invoke-static {v2, v5}, Lcom/htc/reportagent/policy/PolicyPreference;->setPolicyManagerStatus(Landroid/content/Context;I)V

    goto :goto_0

    .line 299
    :cond_5
    invoke-direct {p0}, Lcom/htc/reportagent/policy/PolicyManager;->resetAlarm()V

    goto :goto_0

    .line 269
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private onBootComplete()V
    .locals 7

    .prologue
    .line 132
    iget-object v3, p0, Lcom/htc/reportagent/policy/PolicyManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/htc/reportagent/policy/PolicyPreference;->getPolicyManagerStatus(Landroid/content/Context;)I

    move-result v2

    .line 133
    .local v2, status:I
    packed-switch v2, :pswitch_data_0

    .line 153
    sget-object v3, Lcom/htc/reportagent/policy/PolicyManager;->TAG:Ljava/lang/String;

    const-string v4, "onOOBEFinish()"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Wrong status "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Lcom/htc/reportagent/policy/PolicyManager;->status2String(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/htc/reportagent/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :goto_0
    :pswitch_0
    return-void

    .line 140
    :pswitch_1
    iget-object v3, p0, Lcom/htc/reportagent/policy/PolicyManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/htc/reportagent/policy/PolicyPreference;->getAlarmBaseline(Landroid/content/Context;)J

    move-result-wide v0

    .line 141
    .local v0, alarmBaseline:J
    const-wide/16 v3, 0x0

    cmp-long v3, v3, v0

    if-ltz v3, :cond_0

    .line 142
    invoke-direct {p0}, Lcom/htc/reportagent/policy/PolicyManager;->resetAlarm()V

    goto :goto_0

    .line 144
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/htc/reportagent/policy/PolicyManager;->resetAlarm(J)V

    goto :goto_0

    .line 133
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private onNetworkChange()V
    .locals 6

    .prologue
    .line 237
    iget-object v2, p0, Lcom/htc/reportagent/policy/PolicyManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/reportagent/policy/PolicyPreference;->getPolicyManagerStatus(Landroid/content/Context;)I

    move-result v1

    .line 238
    .local v1, status:I
    packed-switch v1, :pswitch_data_0

    .line 261
    sget-object v2, Lcom/htc/reportagent/policy/PolicyManager;->TAG:Ljava/lang/String;

    const-string v3, "onNetworkChange()"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Wrong status "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Lcom/htc/reportagent/policy/PolicyManager;->status2String(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/htc/reportagent/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 246
    :pswitch_1
    iget-object v2, p0, Lcom/htc/reportagent/policy/PolicyManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/reportagent/util/Utils;->isPolicyAvailable(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 247
    iget-object v2, p0, Lcom/htc/reportagent/policy/PolicyManager;->mContext:Landroid/content/Context;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/htc/reportagent/policy/PolicyPreference;->setPolicyManagerStatus(Landroid/content/Context;I)V

    goto :goto_0

    .line 248
    :cond_1
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/htc/reportagent/policy/PolicyManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/htc/reportagent/util/Utils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v3

    if-ne v2, v3, :cond_0

    .line 249
    iget-object v2, p0, Lcom/htc/reportagent/policy/PolicyManager;->mContext:Landroid/content/Context;

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/htc/reportagent/policy/PolicyPreference;->setPolicyManagerStatus(Landroid/content/Context;I)V

    .line 250
    invoke-direct {p0}, Lcom/htc/reportagent/policy/PolicyManager;->downloadPolicy()Lcom/htc/reportagent/policy/PolicyManager$DownloadResult;

    move-result-object v0

    .line 251
    .local v0, result:Lcom/htc/reportagent/policy/PolicyManager$DownloadResult;
    sget-object v2, Lcom/htc/reportagent/policy/PolicyManager$DownloadResult;->FAIL_CURRENT_NETWORK_NO_BUDGET:Lcom/htc/reportagent/policy/PolicyManager$DownloadResult;

    if-ne v2, v0, :cond_2

    .line 252
    iget-object v2, p0, Lcom/htc/reportagent/policy/PolicyManager;->mContext:Landroid/content/Context;

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/htc/reportagent/policy/PolicyPreference;->setPolicyManagerStatus(Landroid/content/Context;I)V

    goto :goto_0

    .line 254
    :cond_2
    invoke-direct {p0}, Lcom/htc/reportagent/policy/PolicyManager;->resetAlarm()V

    goto :goto_0

    .line 238
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onNewPolicy()V
    .locals 5

    .prologue
    .line 159
    invoke-static {}, Lcom/htc/reportagent/cache/LogCacheManager;->getInstance()Lcom/htc/reportagent/cache/LogCacheManager;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/reportagent/policy/PolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/htc/reportagent/cache/LogCacheManager;->onNewPolicyArrival(Landroid/content/Context;)V

    .line 162
    iget-object v1, p0, Lcom/htc/reportagent/policy/PolicyManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/reportagent/policy/PolicyPreference;->getPolicyManagerStatus(Landroid/content/Context;)I

    move-result v0

    .line 163
    .local v0, status:I
    packed-switch v0, :pswitch_data_0

    .line 176
    sget-object v1, Lcom/htc/reportagent/policy/PolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "onNewPolicy()"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Wrong status "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/htc/reportagent/policy/PolicyManager;->status2String(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/htc/reportagent/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :goto_0
    :pswitch_0
    return-void

    .line 169
    :pswitch_1
    invoke-direct {p0}, Lcom/htc/reportagent/policy/PolicyManager;->resetAlarm()V

    goto :goto_0

    .line 163
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private onOOBEFinish()V
    .locals 6

    .prologue
    const/4 v4, 0x4

    .line 203
    iget-object v2, p0, Lcom/htc/reportagent/policy/PolicyManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/reportagent/policy/PolicyPreference;->getPolicyManagerStatus(Landroid/content/Context;)I

    move-result v1

    .line 204
    .local v1, status:I
    packed-switch v1, :pswitch_data_0

    .line 232
    sget-object v2, Lcom/htc/reportagent/policy/PolicyManager;->TAG:Ljava/lang/String;

    const-string v3, "onOOBEFinish()"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Wrong status "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Lcom/htc/reportagent/policy/PolicyManager;->status2String(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/htc/reportagent/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :goto_0
    :pswitch_0
    return-void

    .line 208
    :pswitch_1
    iget-object v2, p0, Lcom/htc/reportagent/policy/PolicyManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/reportagent/util/Utils;->isPolicyAvailable(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 209
    iget-object v2, p0, Lcom/htc/reportagent/policy/PolicyManager;->mContext:Landroid/content/Context;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/htc/reportagent/policy/PolicyPreference;->setPolicyManagerStatus(Landroid/content/Context;I)V

    goto :goto_0

    .line 211
    :cond_0
    iget-object v2, p0, Lcom/htc/reportagent/policy/PolicyManager;->mContext:Landroid/content/Context;

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/htc/reportagent/policy/PolicyPreference;->setPolicyManagerStatus(Landroid/content/Context;I)V

    .line 212
    iget-object v2, p0, Lcom/htc/reportagent/policy/PolicyManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/reportagent/util/Utils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 213
    iget-object v2, p0, Lcom/htc/reportagent/policy/PolicyManager;->mContext:Landroid/content/Context;

    invoke-static {v2, v4}, Lcom/htc/reportagent/policy/PolicyPreference;->setPolicyManagerStatus(Landroid/content/Context;I)V

    goto :goto_0

    .line 215
    :cond_1
    invoke-direct {p0}, Lcom/htc/reportagent/policy/PolicyManager;->downloadPolicy()Lcom/htc/reportagent/policy/PolicyManager$DownloadResult;

    move-result-object v0

    .line 216
    .local v0, result:Lcom/htc/reportagent/policy/PolicyManager$DownloadResult;
    sget-object v2, Lcom/htc/reportagent/policy/PolicyManager$DownloadResult;->FAIL_CURRENT_NETWORK_NO_BUDGET:Lcom/htc/reportagent/policy/PolicyManager$DownloadResult;

    if-ne v2, v0, :cond_2

    .line 217
    iget-object v2, p0, Lcom/htc/reportagent/policy/PolicyManager;->mContext:Landroid/content/Context;

    invoke-static {v2, v4}, Lcom/htc/reportagent/policy/PolicyPreference;->setPolicyManagerStatus(Landroid/content/Context;I)V

    goto :goto_0

    .line 219
    :cond_2
    invoke-direct {p0}, Lcom/htc/reportagent/policy/PolicyManager;->resetAlarm()V

    goto :goto_0

    .line 204
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private onSettingChange()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    .line 312
    iget-object v2, p0, Lcom/htc/reportagent/policy/PolicyManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/reportagent/policy/PolicyPreference;->getPolicyManagerStatus(Landroid/content/Context;)I

    move-result v1

    .line 313
    .local v1, status:I
    packed-switch v1, :pswitch_data_0

    .line 346
    sget-object v2, Lcom/htc/reportagent/policy/PolicyManager;->TAG:Ljava/lang/String;

    const-string v3, "onErrorReportChange()"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Wrong status "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Lcom/htc/reportagent/policy/PolicyManager;->status2String(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/htc/reportagent/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 319
    :pswitch_1
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/htc/reportagent/policy/PolicyManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/htc/reportagent/util/Utils;->isPolicyAvailable(Landroid/content/Context;)Z

    move-result v3

    if-ne v2, v3, :cond_0

    .line 320
    iget-object v2, p0, Lcom/htc/reportagent/policy/PolicyManager;->mContext:Landroid/content/Context;

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/htc/reportagent/policy/PolicyPreference;->setPolicyManagerStatus(Landroid/content/Context;I)V

    .line 321
    const-wide/16 v2, -0x1

    iget-object v4, p0, Lcom/htc/reportagent/policy/PolicyManager;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/htc/reportagent/policy/PolicyPreference;->getAlarmBaseline(Landroid/content/Context;)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 322
    iget-object v2, p0, Lcom/htc/reportagent/policy/PolicyManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/reportagent/util/Utils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 323
    iget-object v2, p0, Lcom/htc/reportagent/policy/PolicyManager;->mContext:Landroid/content/Context;

    invoke-static {v2, v6}, Lcom/htc/reportagent/policy/PolicyPreference;->setPolicyManagerStatus(Landroid/content/Context;I)V

    goto :goto_0

    .line 325
    :cond_1
    invoke-direct {p0}, Lcom/htc/reportagent/policy/PolicyManager;->downloadPolicy()Lcom/htc/reportagent/policy/PolicyManager$DownloadResult;

    move-result-object v0

    .line 326
    .local v0, result:Lcom/htc/reportagent/policy/PolicyManager$DownloadResult;
    sget-object v2, Lcom/htc/reportagent/policy/PolicyManager$DownloadResult;->FAIL_CURRENT_NETWORK_NO_BUDGET:Lcom/htc/reportagent/policy/PolicyManager$DownloadResult;

    if-ne v2, v0, :cond_2

    .line 327
    iget-object v2, p0, Lcom/htc/reportagent/policy/PolicyManager;->mContext:Landroid/content/Context;

    invoke-static {v2, v6}, Lcom/htc/reportagent/policy/PolicyPreference;->setPolicyManagerStatus(Landroid/content/Context;I)V

    goto :goto_0

    .line 329
    :cond_2
    invoke-direct {p0}, Lcom/htc/reportagent/policy/PolicyManager;->resetAlarm()V

    goto :goto_0

    .line 339
    .end local v0           #result:Lcom/htc/reportagent/policy/PolicyManager$DownloadResult;
    :pswitch_2
    iget-object v2, p0, Lcom/htc/reportagent/policy/PolicyManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/reportagent/util/Utils;->isPolicyAvailable(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 340
    iget-object v2, p0, Lcom/htc/reportagent/policy/PolicyManager;->mContext:Landroid/content/Context;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/htc/reportagent/policy/PolicyPreference;->setPolicyManagerStatus(Landroid/content/Context;I)V

    goto :goto_0

    .line 313
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private onTimeSet()V
    .locals 0

    .prologue
    .line 199
    return-void
.end method

.method private replyPolicyResult2Server(ZLjava/util/List;)Z
    .locals 8
    .parameter "isUpdateSucc"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 436
    .local p2, items:Ljava/util/List;,"Ljava/util/List<Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem;>;"
    invoke-static {}, Lcom/htc/reportagent/util/Utils;->getRetryTimes()I

    move-result v2

    .line 438
    .local v2, retryTimes:I
    const/4 v1, 0x0

    .line 439
    .local v1, result:Lcom/htc/reportagent/policy/RemotePolicyAccessor$AckResult;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-gt v0, v2, :cond_1

    .line 440
    iget-object v3, p0, Lcom/htc/reportagent/policy/PolicyManager;->mRemotePolicyAccessor:Lcom/htc/reportagent/policy/RemotePolicyAccessor;

    invoke-virtual {v3, p1, p2}, Lcom/htc/reportagent/policy/RemotePolicyAccessor;->replyPolicyResult2Server(ZLjava/util/List;)Lcom/htc/reportagent/policy/RemotePolicyAccessor$AckResult;

    move-result-object v1

    .line 442
    if-nez v1, :cond_0

    .line 443
    sget-object v3, Lcom/htc/reportagent/policy/PolicyManager;->TAG:Ljava/lang/String;

    const-string v4, "replyPolicyResult2Server result is null"

    invoke-static {v3, v4}, Lcom/htc/reportagent/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    const/4 v3, 0x0

    .line 459
    :goto_1
    return v3

    .line 447
    :cond_0
    iget-object v3, p0, Lcom/htc/reportagent/policy/PolicyManager;->mBudgetManager:Lcom/htc/reportagent/budget/BudgetManager;

    iget-wide v4, v1, Lcom/htc/reportagent/policy/RemotePolicyAccessor$AckResult;->DLSize:J

    iget-wide v6, v1, Lcom/htc/reportagent/policy/RemotePolicyAccessor$AckResult;->ULSize:J

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/htc/reportagent/budget/BudgetManager;->updateAppUsage(JJ)V

    .line 449
    iget-boolean v3, v1, Lcom/htc/reportagent/policy/RemotePolicyAccessor$AckResult;->success:Z

    if-eqz v3, :cond_3

    .line 453
    :cond_1
    iget-boolean v3, v1, Lcom/htc/reportagent/policy/RemotePolicyAccessor$AckResult;->success:Z

    if-nez v3, :cond_2

    .line 454
    sget-object v3, Lcom/htc/reportagent/policy/PolicyManager;->TAG:Ljava/lang/String;

    const-string v4, "Can\'t reply policy ack to server"

    invoke-static {v3, v4}, Lcom/htc/reportagent/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    :cond_2
    iget-boolean v3, v1, Lcom/htc/reportagent/policy/RemotePolicyAccessor$AckResult;->success:Z

    goto :goto_1

    .line 439
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private resetAlarm()V
    .locals 2

    .prologue
    .line 465
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/htc/reportagent/policy/PolicyManager;->resetAlarm(J)V

    .line 466
    return-void
.end method

.method private resetAlarm(J)V
    .locals 7
    .parameter "timeBase"

    .prologue
    .line 470
    invoke-direct {p0}, Lcom/htc/reportagent/policy/PolicyManager;->getPolicyUpdateFrequency()J

    move-result-wide v1

    .line 472
    .local v1, freq:J
    const-wide/32 v3, 0xea60

    cmp-long v3, v3, v1

    if-ltz v3, :cond_0

    .line 484
    :goto_0
    return-void

    .line 477
    :cond_0
    iget-object v3, p0, Lcom/htc/reportagent/policy/PolicyManager;->mContext:Landroid/content/Context;

    const-string v4, "alarm"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 478
    .local v0, am:Landroid/app/AlarmManager;
    iget-object v3, p0, Lcom/htc/reportagent/policy/PolicyManager;->mAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 479
    const/4 v3, 0x1

    add-long v4, p1, v1

    iget-object v6, p0, Lcom/htc/reportagent/policy/PolicyManager;->mAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 483
    iget-object v3, p0, Lcom/htc/reportagent/policy/PolicyManager;->mContext:Landroid/content/Context;

    invoke-static {v3, p1, p2}, Lcom/htc/reportagent/policy/PolicyPreference;->setAlarmBaseline(Landroid/content/Context;J)V

    goto :goto_0
.end method

.method public static status2String(I)Ljava/lang/String;
    .locals 2
    .parameter "status"

    .prologue
    .line 34
    packed-switch p0, :pswitch_data_0

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 35
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":STATUS_OOBE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 36
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":STATUS_DISABLE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 37
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":STATUS_ENABLE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 38
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":STATUS_WAIT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 34
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public onEvent(Lcom/htc/reportagent/policy/PolicyManager$Event;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 97
    sget-object v0, Lcom/htc/reportagent/policy/PolicyManager$1;->$SwitchMap$com$htc$reportagent$policy$PolicyManager$Event:[I

    invoke-virtual {p1}, Lcom/htc/reportagent/policy/PolicyManager$Event;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 128
    :goto_0
    return-void

    .line 100
    :pswitch_0
    invoke-direct {p0}, Lcom/htc/reportagent/policy/PolicyManager;->onBootComplete()V

    goto :goto_0

    .line 104
    :pswitch_1
    invoke-direct {p0}, Lcom/htc/reportagent/policy/PolicyManager;->onNewPolicy()V

    goto :goto_0

    .line 108
    :pswitch_2
    invoke-direct {p0}, Lcom/htc/reportagent/policy/PolicyManager;->onTimeSet()V

    goto :goto_0

    .line 112
    :pswitch_3
    invoke-direct {p0}, Lcom/htc/reportagent/policy/PolicyManager;->onOOBEFinish()V

    goto :goto_0

    .line 116
    :pswitch_4
    invoke-direct {p0}, Lcom/htc/reportagent/policy/PolicyManager;->onNetworkChange()V

    goto :goto_0

    .line 120
    :pswitch_5
    invoke-direct {p0}, Lcom/htc/reportagent/policy/PolicyManager;->onAlarmWakeup()V

    goto :goto_0

    .line 124
    :pswitch_6
    invoke-direct {p0}, Lcom/htc/reportagent/policy/PolicyManager;->onSettingChange()V

    goto :goto_0

    .line 97
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

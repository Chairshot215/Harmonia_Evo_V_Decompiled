.class Lcom/googlecode/android/wifi/tether/TetherService$ShutdownQuotaChecker;
.super Ljava/lang/Object;
.source "TetherService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/android/wifi/tether/TetherService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ShutdownQuotaChecker"
.end annotation


# static fields
.field private static final INTERVAL:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/googlecode/android/wifi/tether/TetherService;


# direct methods
.method constructor <init>(Lcom/googlecode/android/wifi/tether/TetherService;)V
    .locals 0
    .parameter

    .prologue
    .line 1270
    iput-object p1, p0, Lcom/googlecode/android/wifi/tether/TetherService$ShutdownQuotaChecker;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private sendShutdownBroadcast()V
    .locals 3

    .prologue
    .line 1348
    iget-object v1, p0, Lcom/googlecode/android/wifi/tether/TetherService$ShutdownQuotaChecker;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/googlecode/android/wifi/tether/TetherService;->autoShutdown:Z

    .line 1351
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.googlecode.android.wifi.tether.intent.MANAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1352
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.googlecode.android.wifi.tether.intent.MANAGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1353
    const-string v1, "state"

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1354
    iget-object v1, p0, Lcom/googlecode/android/wifi/tether/TetherService$ShutdownQuotaChecker;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    invoke-virtual {v1, v0}, Lcom/googlecode/android/wifi/tether/TetherService;->sendBroadcast(Landroid/content/Intent;)V

    .line 1355
    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    .prologue
    .line 1294
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/googlecode/android/wifi/tether/TetherService$ShutdownQuotaChecker;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    #getter for: Lcom/googlecode/android/wifi/tether/TetherService;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;
    invoke-static {v10}, Lcom/googlecode/android/wifi/tether/TetherService;->access$0(Lcom/googlecode/android/wifi/tether/TetherService;)Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-result-object v10

    iget-object v10, v10, Lcom/googlecode/android/wifi/tether/TetherApplication;->settings:Landroid/content/SharedPreferences;

    const-string v11, "quotamanualshutdownidlepref"

    const-string v12, "100"

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1295
    .local v3, QuotaMaxMBstring:Ljava/lang/String;
    const-string v10, "[^0-9]"

    const-string v11, ""

    invoke-virtual {v3, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1297
    const/4 v4, 0x0

    .line 1298
    .local v4, Updatestring:Z
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    const/16 v11, 0x8

    if-le v10, v11, :cond_0

    .line 1299
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x8

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v3, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1300
    const/4 v4, 0x1

    .line 1302
    :cond_0
    const-string v10, ""

    if-ne v3, v10, :cond_1

    .line 1303
    const-string v3, "100"

    .line 1304
    const/4 v4, 0x1

    .line 1307
    :cond_1
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    const-wide/32 v12, 0x100000

    mul-long v1, v10, v12

    .line 1308
    .local v1, QuotaMaxMB:J
    const-wide/16 v10, 0x1

    cmp-long v10, v1, v10

    if-gez v10, :cond_2

    .line 1309
    const-wide/16 v1, 0x1

    .line 1310
    const-string v3, "1"

    .line 1311
    const/4 v4, 0x1

    .line 1314
    :cond_2
    if-eqz v4, :cond_3

    .line 1315
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/googlecode/android/wifi/tether/TetherService$ShutdownQuotaChecker;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    #getter for: Lcom/googlecode/android/wifi/tether/TetherService;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;
    invoke-static {v10}, Lcom/googlecode/android/wifi/tether/TetherService;->access$0(Lcom/googlecode/android/wifi/tether/TetherService;)Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-result-object v10

    iget-object v10, v10, Lcom/googlecode/android/wifi/tether/TetherApplication;->preferenceEditor:Landroid/content/SharedPreferences$Editor;

    const-string v11, "quotamanualshutdownidlepref"

    invoke-interface {v10, v11, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1316
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/googlecode/android/wifi/tether/TetherService$ShutdownQuotaChecker;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    #getter for: Lcom/googlecode/android/wifi/tether/TetherService;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;
    invoke-static {v10}, Lcom/googlecode/android/wifi/tether/TetherService;->access$0(Lcom/googlecode/android/wifi/tether/TetherService;)Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-result-object v10

    iget-object v10, v10, Lcom/googlecode/android/wifi/tether/TetherApplication;->preferenceEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1319
    :cond_3
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/googlecode/android/wifi/tether/TetherService$ShutdownQuotaChecker;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    #getter for: Lcom/googlecode/android/wifi/tether/TetherService;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;
    invoke-static {v10}, Lcom/googlecode/android/wifi/tether/TetherService;->access$0(Lcom/googlecode/android/wifi/tether/TetherService;)Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-result-object v10

    invoke-virtual {v10}, Lcom/googlecode/android/wifi/tether/TetherApplication;->getTetherNetworkDevice()Ljava/lang/String;

    move-result-object v8

    .line 1320
    .local v8, tetherNetworkDevice:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/googlecode/android/wifi/tether/TetherService$ShutdownQuotaChecker;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    #getter for: Lcom/googlecode/android/wifi/tether/TetherService;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;
    invoke-static {v10}, Lcom/googlecode/android/wifi/tether/TetherService;->access$0(Lcom/googlecode/android/wifi/tether/TetherService;)Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-result-object v10

    iget-object v10, v10, Lcom/googlecode/android/wifi/tether/TetherApplication;->coretask:Lcom/googlecode/android/wifi/tether/system/CoreTask;

    invoke-virtual {v10, v8}, Lcom/googlecode/android/wifi/tether/system/CoreTask;->getDataTraffic(Ljava/lang/String;)[J

    move-result-object v7

    .line 1322
    .local v7, startCount:[J
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1344
    return-void

    .line 1323
    :cond_4
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/googlecode/android/wifi/tether/TetherService$ShutdownQuotaChecker;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    #getter for: Lcom/googlecode/android/wifi/tether/TetherService;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;
    invoke-static {v10}, Lcom/googlecode/android/wifi/tether/TetherService;->access$0(Lcom/googlecode/android/wifi/tether/TetherService;)Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-result-object v10

    iget-object v10, v10, Lcom/googlecode/android/wifi/tether/TetherApplication;->coretask:Lcom/googlecode/android/wifi/tether/system/CoreTask;

    invoke-virtual {v10, v8}, Lcom/googlecode/android/wifi/tether/system/CoreTask;->getDataTraffic(Ljava/lang/String;)[J

    move-result-object v9

    .line 1325
    .local v9, trafficCount:[J
    const/4 v10, 0x2

    new-array v6, v10, [J

    .line 1326
    .local v6, quotaData:[J
    const/4 v10, 0x0

    const/4 v11, 0x0

    aget-wide v11, v9, v11

    const/4 v13, 0x0

    aget-wide v13, v7, v13

    sub-long/2addr v11, v13

    const/4 v13, 0x1

    aget-wide v13, v9, v13

    const/4 v15, 0x1

    aget-wide v15, v7, v15

    sub-long/2addr v13, v15

    add-long/2addr v11, v13

    aput-wide v11, v6, v10

    .line 1327
    const/4 v10, 0x1

    aput-wide v1, v6, v10

    .line 1330
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/googlecode/android/wifi/tether/TetherService$ShutdownQuotaChecker;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    invoke-virtual {v10, v6}, Lcom/googlecode/android/wifi/tether/TetherService;->sendQuotaBroadcast([J)V

    .line 1332
    const/4 v10, 0x0

    aget-wide v10, v9, v10

    const/4 v12, 0x0

    aget-wide v12, v7, v12

    sub-long/2addr v10, v12

    const/4 v12, 0x1

    aget-wide v12, v9, v12

    const/4 v14, 0x1

    aget-wide v14, v7, v14

    sub-long/2addr v12, v14

    add-long/2addr v10, v12

    cmp-long v10, v10, v1

    if-ltz v10, :cond_5

    .line 1333
    const-string v10, "TetherService"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Automatic Shutdown: Qouta limit reached..."

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-wide/16 v12, 0x400

    div-long v12, v1, v12

    const-wide/16 v14, 0x400

    div-long/2addr v12, v14

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " MB(s)."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1334
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/googlecode/android/wifi/tether/TetherService$ShutdownQuotaChecker;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    #getter for: Lcom/googlecode/android/wifi/tether/TetherService;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;
    invoke-static {v10}, Lcom/googlecode/android/wifi/tether/TetherService;->access$0(Lcom/googlecode/android/wifi/tether/TetherService;)Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-result-object v10

    iget-object v10, v10, Lcom/googlecode/android/wifi/tether/TetherApplication;->preferenceEditor:Landroid/content/SharedPreferences$Editor;

    const-string v11, "autoshutdownquota"

    const/4 v12, 0x1

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1335
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/googlecode/android/wifi/tether/TetherService$ShutdownQuotaChecker;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    #getter for: Lcom/googlecode/android/wifi/tether/TetherService;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;
    invoke-static {v10}, Lcom/googlecode/android/wifi/tether/TetherService;->access$0(Lcom/googlecode/android/wifi/tether/TetherService;)Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-result-object v10

    iget-object v10, v10, Lcom/googlecode/android/wifi/tether/TetherApplication;->preferenceEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1336
    invoke-direct/range {p0 .. p0}, Lcom/googlecode/android/wifi/tether/TetherService$ShutdownQuotaChecker;->sendShutdownBroadcast()V

    .line 1339
    :cond_5
    const-wide/16 v10, 0x3e8

    :try_start_0
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1340
    :catch_0
    move-exception v5

    .line 1341
    .local v5, e:Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Thread;->interrupt()V

    goto/16 :goto_0
.end method

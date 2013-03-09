.class public Lcom/htc/reportagent/ReportManager;
.super Ljava/lang/Object;
.source "ReportManager.java"


# static fields
.field private static final MAX_INFLATED_LOG_SIZE:J = 0xc0000L

.field private static final MIN_RESEND_INTERVAL:J = 0x1b7740L

.field private static final TAG:Ljava/lang/String; = "ReportUploader"

.field private static final _DEBUG:Z

.field private static sCSUploader:Lcom/htc/reportagent/CSUploader;

.field private static sLastTimeTellHtcSettingChanged:J


# instance fields
.field private mBudgetManager:Lcom/htc/reportagent/budget/BudgetManager;

.field private mContext:Landroid/content/Context;

.field private mFeedbackPolicy:Lcom/htc/utils/ulog/UPolicy;

.field private mNetworkConnected:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 55
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/htc/reportagent/ReportManager;->sLastTimeTellHtcSettingChanged:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/reportagent/budget/BudgetManager;)V
    .locals 2
    .parameter "ctx"
    .parameter "budgetManager"

    .prologue
    .line 59
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/reportagent/ReportManager;->mNetworkConnected:Z

    .line 60
    iput-object p1, p0, Lcom/htc/reportagent/ReportManager;->mContext:Landroid/content/Context;

    .line 61
    iput-object p2, p0, Lcom/htc/reportagent/ReportManager;->mBudgetManager:Lcom/htc/reportagent/budget/BudgetManager;

    .line 62
    new-instance v0, Lcom/htc/utils/ulog/UPolicy;

    const-string v1, "com.htc.feedback"

    invoke-direct {v0, v1}, Lcom/htc/utils/ulog/UPolicy;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/reportagent/ReportManager;->mFeedbackPolicy:Lcom/htc/utils/ulog/UPolicy;

    .line 63
    sget-object v0, Lcom/htc/reportagent/ReportManager;->sCSUploader:Lcom/htc/reportagent/CSUploader;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Lcom/htc/reportagent/CSUploader;

    iget-object v1, p0, Lcom/htc/reportagent/ReportManager;->mBudgetManager:Lcom/htc/reportagent/budget/BudgetManager;

    invoke-direct {v0, p1, v1}, Lcom/htc/reportagent/CSUploader;-><init>(Landroid/content/Context;Lcom/htc/reportagent/budget/BudgetManager;)V

    sput-object v0, Lcom/htc/reportagent/ReportManager;->sCSUploader:Lcom/htc/reportagent/CSUploader;

    .line 65
    :cond_0
    return-void
.end method

.method private getDeviceInfoStringWithJSONStyle(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "msg"
    .parameter "position"

    .prologue
    .line 293
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 294
    .local v1, jobject:Lorg/json/JSONObject;
    if-nez p1, :cond_0

    const-string v3, ""

    .line 296
    .local v3, message:Ljava/lang/String;
    :goto_0
    :try_start_0
    const-string v4, "buildtype"

    const-string v5, "ro.build.type"

    const-string v6, "unknown"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 297
    const-string v4, "changelist"

    const-string v5, "ro.build.changelist"

    const-string v6, "-1"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 298
    const-string v4, "message"

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 299
    const-string v4, "keyset"

    const-string v5, "ro.build.tags"

    const-string v6, "unknown"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 300
    const-string v4, "fingerprint"

    sget-object v5, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 301
    const-string v4, "builddateid"

    const-string v5, "ro.build.date.utc"

    const-string v6, "unknown"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 302
    const-string v4, "buildidentify"

    const-string v5, "ro.build.project"

    const-string v6, "unknown"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 303
    const-string v4, "frameworkversion"

    const-string v5, "ro.build.version.release"

    const-string v6, "unknown"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 304
    const-string v4, "radio"

    const-string v5, "gsm.version.baseband"

    const-string v6, "unknown"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 309
    const-string v4, "project"

    const-string v5, "ro.product.device"

    const-string v6, "unknown"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 311
    const-string v4, "position"

    invoke-virtual {v1, v4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 312
    const-string v4, "unlocked_device"

    const-string v5, "ro.lb"

    const-string v6, "unknown"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 314
    const-string v4, "free_data_storage"

    const-string v5, "/data"

    invoke-direct {p0, v5}, Lcom/htc/reportagent/ReportManager;->getFreeSize(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    :goto_1
    const-string v2, ""

    .line 323
    .local v2, jsonString:Ljava/lang/String;
    :try_start_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 330
    :goto_2
    return-object v2

    .end local v2           #jsonString:Ljava/lang/String;
    .end local v3           #message:Ljava/lang/String;
    :cond_0
    move-object v3, p1

    .line 294
    goto/16 :goto_0

    .line 315
    .restart local v3       #message:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 316
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 325
    .end local v0           #e:Lorg/json/JSONException;
    .restart local v2       #jsonString:Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 326
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "ReportUploader"

    const-string v5, "[getDeviceInfoStringWithJSONStyle]Error to transfer to Json String"

    invoke-static {v4, v5}, Lcom/htc/reportagent/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method private getFreeSize(Ljava/lang/String;)J
    .locals 7
    .parameter "path"

    .prologue
    .line 625
    new-instance v0, Landroid/os/StatFs;

    invoke-direct {v0, p1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 626
    .local v0, dataFs:Landroid/os/StatFs;
    const-wide/16 v1, -0x1

    .line 627
    .local v1, freeDataSize:J
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v5

    int-to-long v5, v5

    mul-long v1, v3, v5

    .line 629
    return-wide v1
.end method

.method private isNetworkAllowed()Z
    .locals 10

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 573
    iget-object v7, p0, Lcom/htc/reportagent/ReportManager;->mContext:Landroid/content/Context;

    const-string v8, "connectivity"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 574
    .local v0, connectivityManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 575
    .local v1, networkInfo:Landroid/net/NetworkInfo;
    if-nez v1, :cond_0

    .line 576
    const-string v6, "ReportUploader"

    const-string v7, "Upload block due to no active network."

    invoke-static {v6, v7}, Lcom/htc/reportagent/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    :goto_0
    return v5

    .line 580
    :cond_0
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    .line 581
    .local v4, type:I
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v3

    .line 583
    .local v3, subType:I
    const-string v7, "ReportUploader"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getType(): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", getSubtype: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/reportagent/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 592
    const-string v6, "ReportUploader"

    const-string v7, "Upload block due to roaming."

    invoke-static {v6, v7}, Lcom/htc/reportagent/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 597
    :cond_1
    if-nez v4, :cond_3

    const/4 v7, 0x2

    if-eq v3, v7, :cond_2

    if-eq v3, v6, :cond_2

    const/4 v7, 0x7

    if-eq v3, v7, :cond_2

    const/4 v7, 0x4

    if-ne v3, v7, :cond_3

    .line 600
    :cond_2
    const-string v6, "ReportUploader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[2G] upload block because network type is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/reportagent/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 605
    :cond_3
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    const/16 v8, 0x12

    if-ne v7, v8, :cond_4

    .line 606
    const-string v5, "ReportUploader"

    const-string v7, "Upload by USBNET."

    invoke-static {v5, v7}, Lcom/htc/reportagent/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 607
    goto :goto_0

    .line 611
    :cond_4
    iget-object v7, p0, Lcom/htc/reportagent/ReportManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "htc_error_report_prefer_network"

    invoke-static {v7, v8, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 612
    .local v2, preferNetwork:I
    const-string v7, "ReportUploader"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "preferNetwork="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/reportagent/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    if-nez v2, :cond_5

    move v5, v6

    .line 614
    goto/16 :goto_0

    .line 615
    :cond_5
    if-ne v2, v6, :cond_6

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    if-ne v7, v6, :cond_6

    move v5, v6

    .line 616
    goto/16 :goto_0

    .line 618
    :cond_6
    const-string v6, "ReportUploader"

    const-string v7, "Upload block due to wifi only."

    invoke-static {v6, v7}, Lcom/htc/reportagent/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private readErrorReportFile(Ljava/lang/String;ZJLjava/lang/String;)Lcom/htc/reportagent/io/Buffer;
    .locals 21
    .parameter "tag"
    .parameter "fromDropBox"
    .parameter "time"
    .parameter "file"

    .prologue
    .line 207
    const/4 v12, 0x0

    .line 208
    .local v12, logEntry:Lcom/htc/reportagent/io/LogEntry;
    const/4 v10, 0x0

    .line 209
    .local v10, is:Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 210
    .local v4, bis:Ljava/io/BufferedInputStream;
    const/4 v14, 0x0

    .line 211
    .local v14, os:Lcom/htc/reportagent/io/ReleasableByteArrayOutputStream;
    const/4 v11, -0x1

    .line 213
    .local v11, length:I
    :try_start_0
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_7

    .line 214
    new-instance v17, Ljava/io/File;

    move-object/from16 v0, v17

    move-object/from16 v1, p5

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 215
    .local v17, sourceFile:Ljava/io/File;
    if-eqz v17, :cond_0

    .line 216
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->length()J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-int v11, v0

    .line 217
    :cond_0
    new-instance v13, Lcom/htc/reportagent/io/LogEntry;

    move-object/from16 v0, p5

    invoke-direct {v13, v0}, Lcom/htc/reportagent/io/LogEntry;-><init>(Ljava/lang/String;)V

    .end local v12           #logEntry:Lcom/htc/reportagent/io/LogEntry;
    .local v13, logEntry:Lcom/htc/reportagent/io/LogEntry;
    move-object v12, v13

    .line 224
    .end local v13           #logEntry:Lcom/htc/reportagent/io/LogEntry;
    .end local v17           #sourceFile:Ljava/io/File;
    .restart local v12       #logEntry:Lcom/htc/reportagent/io/LogEntry;
    :goto_0
    invoke-virtual {v12}, Lcom/htc/reportagent/io/LogEntry;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    .line 225
    new-instance v5, Ljava/io/BufferedInputStream;

    invoke-direct {v5, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_14
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 228
    .end local v4           #bis:Ljava/io/BufferedInputStream;
    .local v5, bis:Ljava/io/BufferedInputStream;
    if-gez v11, :cond_1

    .line 229
    const/high16 v11, 0x2

    .line 230
    :cond_1
    :try_start_1
    const-string v18, "ReportUploader"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "initialized OutputStream size: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " Bytes"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/htc/reportagent/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    new-instance v15, Lcom/htc/reportagent/io/ReleasableByteArrayOutputStream;

    invoke-direct {v15, v11}, Lcom/htc/reportagent/io/ReleasableByteArrayOutputStream;-><init>(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_15
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_12
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_10

    .line 233
    .end local v14           #os:Lcom/htc/reportagent/io/ReleasableByteArrayOutputStream;
    .local v15, os:Lcom/htc/reportagent/io/ReleasableByteArrayOutputStream;
    const/16 v18, 0x1000

    :try_start_2
    move/from16 v0, v18

    new-array v7, v0, [B

    .line 234
    .local v7, buffer:[B
    :goto_1
    const/16 v18, 0x0

    const/16 v19, 0x1000

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v5, v7, v0, v1}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v16

    .local v16, size:I
    const/16 v18, -0x1

    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_1a

    .line 235
    const/16 v18, 0x0

    move/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v15, v7, v0, v1}, Lcom/htc/reportagent/io/ReleasableByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_13
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_11

    goto :goto_1

    .line 243
    .end local v7           #buffer:[B
    .end local v16           #size:I
    :catch_0
    move-exception v8

    move-object v14, v15

    .end local v15           #os:Lcom/htc/reportagent/io/ReleasableByteArrayOutputStream;
    .restart local v14       #os:Lcom/htc/reportagent/io/ReleasableByteArrayOutputStream;
    move-object v4, v5

    .line 244
    .end local v5           #bis:Ljava/io/BufferedInputStream;
    .restart local v4       #bis:Ljava/io/BufferedInputStream;
    .local v8, e:Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_3
    invoke-virtual {v8}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 245
    const/4 v6, 0x0

    .line 254
    if-nez p2, :cond_2

    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_2

    .line 255
    new-instance v9, Ljava/io/File;

    move-object/from16 v0, p5

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 256
    .local v9, f:Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v18

    if-eqz v18, :cond_2

    .line 257
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 260
    .end local v9           #f:Ljava/io/File;
    :cond_2
    if-eqz v12, :cond_3

    .line 261
    invoke-virtual {v12}, Lcom/htc/reportagent/io/LogEntry;->closeEntry()V

    .line 262
    const/4 v12, 0x0

    .line 266
    :cond_3
    if-eqz v14, :cond_4

    .line 267
    :try_start_4
    invoke-virtual {v14}, Lcom/htc/reportagent/io/ReleasableByteArrayOutputStream;->close()V

    .line 268
    :cond_4
    if-eqz v4, :cond_5

    .line 269
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V

    .line 270
    const/4 v4, 0x0

    .line 272
    :cond_5
    if-eqz v10, :cond_6

    .line 273
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_f

    .line 274
    .end local v8           #e:Ljava/io/FileNotFoundException;
    :goto_3
    const/4 v10, 0x0

    .line 289
    :cond_6
    :goto_4
    return-object v6

    .line 219
    :cond_7
    if-eqz p2, :cond_8

    .line 220
    :try_start_5
    new-instance v13, Lcom/htc/reportagent/io/LogEntry;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/reportagent/ReportManager;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, p3

    move-object/from16 v3, v18

    invoke-direct {v13, v0, v1, v2, v3}, Lcom/htc/reportagent/io/LogEntry;-><init>(Ljava/lang/String;JLandroid/content/Context;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_14
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .end local v12           #logEntry:Lcom/htc/reportagent/io/LogEntry;
    .restart local v13       #logEntry:Lcom/htc/reportagent/io/LogEntry;
    move-object v12, v13

    .end local v13           #logEntry:Lcom/htc/reportagent/io/LogEntry;
    .restart local v12       #logEntry:Lcom/htc/reportagent/io/LogEntry;
    goto/16 :goto_0

    .line 222
    :cond_8
    const/4 v6, 0x0

    .line 254
    if-nez p2, :cond_9

    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_9

    .line 255
    new-instance v9, Ljava/io/File;

    move-object/from16 v0, p5

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 256
    .restart local v9       #f:Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v18

    if-eqz v18, :cond_9

    .line 257
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 260
    .end local v9           #f:Ljava/io/File;
    :cond_9
    if-eqz v12, :cond_a

    .line 261
    throw v12

    .line 262
    const/4 v12, 0x0

    .line 266
    :cond_a
    if-eqz v14, :cond_b

    .line 267
    :try_start_6
    throw v14
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8

    .line 268
    :cond_b
    if-eqz v4, :cond_c

    .line 269
    :try_start_7
    throw v4
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_9

    .line 270
    const/4 v4, 0x0

    .line 272
    :cond_c
    if-eqz v10, :cond_6

    .line 273
    :try_start_8
    throw v10
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_3

    .line 276
    :catch_1
    move-exception v8

    .line 277
    .local v8, e:Ljava/io/IOException;
    :goto_5
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 246
    .end local v8           #e:Ljava/io/IOException;
    :catch_2
    move-exception v8

    .line 247
    .local v8, e:Ljava/lang/NullPointerException;
    :goto_6
    :try_start_9
    invoke-virtual {v8}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 248
    const/4 v6, 0x0

    .line 254
    if-nez p2, :cond_d

    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_d

    .line 255
    new-instance v9, Ljava/io/File;

    move-object/from16 v0, p5

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 256
    .restart local v9       #f:Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v18

    if-eqz v18, :cond_d

    .line 257
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 260
    .end local v9           #f:Ljava/io/File;
    :cond_d
    if-eqz v12, :cond_e

    .line 261
    invoke-virtual {v12}, Lcom/htc/reportagent/io/LogEntry;->closeEntry()V

    .line 262
    const/4 v12, 0x0

    .line 266
    :cond_e
    if-eqz v14, :cond_f

    .line 267
    :try_start_a
    invoke-virtual {v14}, Lcom/htc/reportagent/io/ReleasableByteArrayOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_d

    .line 268
    :cond_f
    if-eqz v4, :cond_10

    .line 269
    :try_start_b
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_e

    .line 270
    const/4 v4, 0x0

    .line 272
    :cond_10
    if-eqz v10, :cond_6

    .line 273
    :try_start_c
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3

    goto :goto_3

    .line 276
    :catch_3
    move-exception v8

    goto :goto_5

    .line 249
    .end local v8           #e:Ljava/lang/NullPointerException;
    :catch_4
    move-exception v8

    .line 250
    .local v8, e:Ljava/io/IOException;
    :goto_7
    :try_start_d
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 251
    const/4 v6, 0x0

    .line 254
    if-nez p2, :cond_11

    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_11

    .line 255
    new-instance v9, Ljava/io/File;

    move-object/from16 v0, p5

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 256
    .restart local v9       #f:Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v18

    if-eqz v18, :cond_11

    .line 257
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 260
    .end local v9           #f:Ljava/io/File;
    :cond_11
    if-eqz v12, :cond_12

    .line 261
    invoke-virtual {v12}, Lcom/htc/reportagent/io/LogEntry;->closeEntry()V

    .line 262
    const/4 v12, 0x0

    .line 266
    :cond_12
    if-eqz v14, :cond_13

    .line 267
    :try_start_e
    invoke-virtual {v14}, Lcom/htc/reportagent/io/ReleasableByteArrayOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_b

    .line 268
    :cond_13
    if-eqz v4, :cond_14

    .line 269
    :try_start_f
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_c

    .line 270
    const/4 v4, 0x0

    .line 272
    :cond_14
    if-eqz v10, :cond_6

    .line 273
    :try_start_10
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_5

    goto/16 :goto_3

    .line 276
    :catch_5
    move-exception v8

    goto :goto_5

    .line 254
    .end local v8           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v18

    :goto_8
    if-nez p2, :cond_15

    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_15

    .line 255
    new-instance v9, Ljava/io/File;

    move-object/from16 v0, p5

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 256
    .restart local v9       #f:Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v19

    if-eqz v19, :cond_15

    .line 257
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 260
    .end local v9           #f:Ljava/io/File;
    :cond_15
    if-eqz v12, :cond_16

    .line 261
    invoke-virtual {v12}, Lcom/htc/reportagent/io/LogEntry;->closeEntry()V

    .line 262
    const/4 v12, 0x0

    .line 266
    :cond_16
    if-eqz v14, :cond_17

    .line 267
    :try_start_11
    invoke-virtual {v14}, Lcom/htc/reportagent/io/ReleasableByteArrayOutputStream;->close()V

    .line 268
    :cond_17
    if-eqz v4, :cond_18

    .line 269
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V

    .line 270
    const/4 v4, 0x0

    .line 272
    :cond_18
    if-eqz v10, :cond_19

    .line 273
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_6

    .line 274
    const/4 v10, 0x0

    .line 254
    :cond_19
    :goto_9
    throw v18

    .end local v4           #bis:Ljava/io/BufferedInputStream;
    .end local v14           #os:Lcom/htc/reportagent/io/ReleasableByteArrayOutputStream;
    .restart local v5       #bis:Ljava/io/BufferedInputStream;
    .restart local v7       #buffer:[B
    .restart local v15       #os:Lcom/htc/reportagent/io/ReleasableByteArrayOutputStream;
    .restart local v16       #size:I
    :cond_1a
    if-nez p2, :cond_1b

    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_1b

    .line 255
    new-instance v9, Ljava/io/File;

    move-object/from16 v0, p5

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 256
    .restart local v9       #f:Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v18

    if-eqz v18, :cond_1b

    .line 257
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 260
    .end local v9           #f:Ljava/io/File;
    :cond_1b
    if-eqz v12, :cond_1c

    .line 261
    invoke-virtual {v12}, Lcom/htc/reportagent/io/LogEntry;->closeEntry()V

    .line 262
    const/4 v12, 0x0

    .line 266
    :cond_1c
    if-eqz v15, :cond_1d

    .line 267
    :try_start_12
    invoke-virtual {v15}, Lcom/htc/reportagent/io/ReleasableByteArrayOutputStream;->close()V

    .line 268
    :cond_1d
    if-eqz v5, :cond_1f

    .line 269
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_7

    .line 270
    const/4 v4, 0x0

    .line 272
    .end local v5           #bis:Ljava/io/BufferedInputStream;
    .restart local v4       #bis:Ljava/io/BufferedInputStream;
    :goto_a
    if-eqz v10, :cond_1e

    .line 273
    :try_start_13
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_a

    .line 274
    const/4 v10, 0x0

    .line 281
    :cond_1e
    :goto_b
    const/4 v6, 0x0

    .line 282
    .local v6, buf:Lcom/htc/reportagent/io/Buffer;
    if-eqz v15, :cond_20

    .line 283
    const-string v18, "ReportUploader"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "file size: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v15}, Lcom/htc/reportagent/io/ReleasableByteArrayOutputStream;->size()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/htc/reportagent/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    invoke-virtual {v15}, Lcom/htc/reportagent/io/ReleasableByteArrayOutputStream;->getInnerBuffer()Lcom/htc/reportagent/io/Buffer;

    move-result-object v6

    .line 285
    invoke-virtual {v15}, Lcom/htc/reportagent/io/ReleasableByteArrayOutputStream;->release()V

    .line 286
    const/4 v14, 0x0

    .end local v15           #os:Lcom/htc/reportagent/io/ReleasableByteArrayOutputStream;
    .restart local v14       #os:Lcom/htc/reportagent/io/ReleasableByteArrayOutputStream;
    goto/16 :goto_4

    .line 276
    .end local v6           #buf:Lcom/htc/reportagent/io/Buffer;
    .end local v7           #buffer:[B
    .end local v16           #size:I
    :catch_6
    move-exception v8

    .line 277
    .restart local v8       #e:Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 276
    .end local v4           #bis:Ljava/io/BufferedInputStream;
    .end local v8           #e:Ljava/io/IOException;
    .end local v14           #os:Lcom/htc/reportagent/io/ReleasableByteArrayOutputStream;
    .restart local v5       #bis:Ljava/io/BufferedInputStream;
    .restart local v7       #buffer:[B
    .restart local v15       #os:Lcom/htc/reportagent/io/ReleasableByteArrayOutputStream;
    .restart local v16       #size:I
    :catch_7
    move-exception v8

    move-object v4, v5

    .line 277
    .end local v5           #bis:Ljava/io/BufferedInputStream;
    .restart local v4       #bis:Ljava/io/BufferedInputStream;
    .restart local v8       #e:Ljava/io/IOException;
    :goto_c
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    .line 276
    .end local v7           #buffer:[B
    .end local v8           #e:Ljava/io/IOException;
    .end local v15           #os:Lcom/htc/reportagent/io/ReleasableByteArrayOutputStream;
    .end local v16           #size:I
    .restart local v14       #os:Lcom/htc/reportagent/io/ReleasableByteArrayOutputStream;
    :catch_8
    move-exception v8

    goto/16 :goto_5

    :catch_9
    move-exception v8

    goto/16 :goto_5

    .end local v14           #os:Lcom/htc/reportagent/io/ReleasableByteArrayOutputStream;
    .restart local v7       #buffer:[B
    .restart local v15       #os:Lcom/htc/reportagent/io/ReleasableByteArrayOutputStream;
    .restart local v16       #size:I
    :catch_a
    move-exception v8

    goto :goto_c

    .end local v7           #buffer:[B
    .end local v15           #os:Lcom/htc/reportagent/io/ReleasableByteArrayOutputStream;
    .end local v16           #size:I
    .restart local v8       #e:Ljava/io/IOException;
    .restart local v14       #os:Lcom/htc/reportagent/io/ReleasableByteArrayOutputStream;
    :catch_b
    move-exception v8

    goto/16 :goto_5

    :catch_c
    move-exception v8

    goto/16 :goto_5

    .local v8, e:Ljava/lang/NullPointerException;
    :catch_d
    move-exception v8

    goto/16 :goto_5

    :catch_e
    move-exception v8

    goto/16 :goto_5

    .local v8, e:Ljava/io/FileNotFoundException;
    :catch_f
    move-exception v8

    goto/16 :goto_5

    .line 254
    .end local v4           #bis:Ljava/io/BufferedInputStream;
    .end local v8           #e:Ljava/io/FileNotFoundException;
    .restart local v5       #bis:Ljava/io/BufferedInputStream;
    :catchall_1
    move-exception v18

    move-object v4, v5

    .end local v5           #bis:Ljava/io/BufferedInputStream;
    .restart local v4       #bis:Ljava/io/BufferedInputStream;
    goto/16 :goto_8

    .end local v4           #bis:Ljava/io/BufferedInputStream;
    .end local v14           #os:Lcom/htc/reportagent/io/ReleasableByteArrayOutputStream;
    .restart local v5       #bis:Ljava/io/BufferedInputStream;
    .restart local v15       #os:Lcom/htc/reportagent/io/ReleasableByteArrayOutputStream;
    :catchall_2
    move-exception v18

    move-object v14, v15

    .end local v15           #os:Lcom/htc/reportagent/io/ReleasableByteArrayOutputStream;
    .restart local v14       #os:Lcom/htc/reportagent/io/ReleasableByteArrayOutputStream;
    move-object v4, v5

    .end local v5           #bis:Ljava/io/BufferedInputStream;
    .restart local v4       #bis:Ljava/io/BufferedInputStream;
    goto/16 :goto_8

    .line 249
    .end local v4           #bis:Ljava/io/BufferedInputStream;
    .restart local v5       #bis:Ljava/io/BufferedInputStream;
    :catch_10
    move-exception v8

    move-object v4, v5

    .end local v5           #bis:Ljava/io/BufferedInputStream;
    .restart local v4       #bis:Ljava/io/BufferedInputStream;
    goto/16 :goto_7

    .end local v4           #bis:Ljava/io/BufferedInputStream;
    .end local v14           #os:Lcom/htc/reportagent/io/ReleasableByteArrayOutputStream;
    .restart local v5       #bis:Ljava/io/BufferedInputStream;
    .restart local v15       #os:Lcom/htc/reportagent/io/ReleasableByteArrayOutputStream;
    :catch_11
    move-exception v8

    move-object v14, v15

    .end local v15           #os:Lcom/htc/reportagent/io/ReleasableByteArrayOutputStream;
    .restart local v14       #os:Lcom/htc/reportagent/io/ReleasableByteArrayOutputStream;
    move-object v4, v5

    .end local v5           #bis:Ljava/io/BufferedInputStream;
    .restart local v4       #bis:Ljava/io/BufferedInputStream;
    goto/16 :goto_7

    .line 246
    .end local v4           #bis:Ljava/io/BufferedInputStream;
    .restart local v5       #bis:Ljava/io/BufferedInputStream;
    :catch_12
    move-exception v8

    move-object v4, v5

    .end local v5           #bis:Ljava/io/BufferedInputStream;
    .restart local v4       #bis:Ljava/io/BufferedInputStream;
    goto/16 :goto_6

    .end local v4           #bis:Ljava/io/BufferedInputStream;
    .end local v14           #os:Lcom/htc/reportagent/io/ReleasableByteArrayOutputStream;
    .restart local v5       #bis:Ljava/io/BufferedInputStream;
    .restart local v15       #os:Lcom/htc/reportagent/io/ReleasableByteArrayOutputStream;
    :catch_13
    move-exception v8

    move-object v14, v15

    .end local v15           #os:Lcom/htc/reportagent/io/ReleasableByteArrayOutputStream;
    .restart local v14       #os:Lcom/htc/reportagent/io/ReleasableByteArrayOutputStream;
    move-object v4, v5

    .end local v5           #bis:Ljava/io/BufferedInputStream;
    .restart local v4       #bis:Ljava/io/BufferedInputStream;
    goto/16 :goto_6

    .line 243
    :catch_14
    move-exception v8

    goto/16 :goto_2

    .end local v4           #bis:Ljava/io/BufferedInputStream;
    .restart local v5       #bis:Ljava/io/BufferedInputStream;
    :catch_15
    move-exception v8

    move-object v4, v5

    .end local v5           #bis:Ljava/io/BufferedInputStream;
    .restart local v4       #bis:Ljava/io/BufferedInputStream;
    goto/16 :goto_2

    .end local v4           #bis:Ljava/io/BufferedInputStream;
    .end local v14           #os:Lcom/htc/reportagent/io/ReleasableByteArrayOutputStream;
    .restart local v5       #bis:Ljava/io/BufferedInputStream;
    .restart local v7       #buffer:[B
    .restart local v15       #os:Lcom/htc/reportagent/io/ReleasableByteArrayOutputStream;
    .restart local v16       #size:I
    :cond_1f
    move-object v4, v5

    .end local v5           #bis:Ljava/io/BufferedInputStream;
    .restart local v4       #bis:Ljava/io/BufferedInputStream;
    goto :goto_a

    .restart local v6       #buf:Lcom/htc/reportagent/io/Buffer;
    :cond_20
    move-object v14, v15

    .end local v15           #os:Lcom/htc/reportagent/io/ReleasableByteArrayOutputStream;
    .restart local v14       #os:Lcom/htc/reportagent/io/ReleasableByteArrayOutputStream;
    goto/16 :goto_4
.end method

.method private resumeCSCachedReport()V
    .locals 13

    .prologue
    .line 490
    invoke-direct {p0}, Lcom/htc/reportagent/ReportManager;->isNetworkAllowed()Z

    move-result v10

    if-nez v10, :cond_1

    .line 556
    :cond_0
    :goto_0
    return-void

    .line 493
    :cond_1
    invoke-static {}, Lcom/htc/reportagent/cache/LogCacheManager;->getInstance()Lcom/htc/reportagent/cache/LogCacheManager;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/reportagent/ReportManager;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v11}, Lcom/htc/reportagent/cache/LogCacheManager;->getFiles(Landroid/content/Context;)[Lcom/htc/reportagent/cache/EntryFile;

    move-result-object v4

    .line 494
    .local v4, fileList:[Lcom/htc/reportagent/cache/EntryFile;
    const-string v10, "ReportUploader"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Start upload resuming queue files. file count: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    array-length v12, v4

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/reportagent/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    move-object v0, v4

    .local v0, arr$:[Lcom/htc/reportagent/cache/EntryFile;
    array-length v7, v0

    .local v7, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_1
    if-ge v5, v7, :cond_0

    aget-object v3, v0, v5

    .line 496
    .local v3, file:Lcom/htc/reportagent/cache/EntryFile;
    if-eqz v3, :cond_2

    .line 497
    const-string v10, "ReportUploader"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "resume file: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Lcom/htc/reportagent/cache/EntryFile;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/reportagent/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    :try_start_0
    invoke-virtual {v3}, Lcom/htc/reportagent/cache/EntryFile;->getFileInputStreamEx()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v6

    .line 512
    .local v6, is:Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 513
    .local v2, envelope:Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;
    if-eqz v6, :cond_2

    .line 515
    :try_start_1
    invoke-static {v6}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->parseFrom(Ljava/io/InputStream;)Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;

    move-result-object v2

    .line 516
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/htc/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 526
    :try_start_2
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8

    .line 533
    if-eqz v2, :cond_2

    .line 540
    invoke-virtual {v2}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->getSerializedSize()I

    move-result v10

    int-to-long v8, v10

    .line 541
    .local v8, length:J
    iget-object v10, p0, Lcom/htc/reportagent/ReportManager;->mBudgetManager:Lcom/htc/reportagent/budget/BudgetManager;

    const-wide/16 v11, 0x1

    invoke-virtual {v10, v11, v12, v8, v9}, Lcom/htc/reportagent/budget/BudgetManager;->isAvailableByCurrentNetwork(JJ)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 546
    sget-object v10, Lcom/htc/reportagent/ReportManager;->sCSUploader:Lcom/htc/reportagent/CSUploader;

    invoke-virtual {v10, v2}, Lcom/htc/reportagent/CSUploader;->putReport(Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 547
    invoke-virtual {v3}, Lcom/htc/reportagent/cache/EntryFile;->delete()V

    .line 495
    .end local v2           #envelope:Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;
    .end local v6           #is:Ljava/io/InputStream;
    .end local v8           #length:J
    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 502
    :catch_0
    move-exception v1

    .line 503
    .local v1, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_2

    .line 505
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 506
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 508
    .end local v1           #e:Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 509
    .local v1, e:Ljava/security/GeneralSecurityException;
    invoke-virtual {v1}, Ljava/security/GeneralSecurityException;->printStackTrace()V

    goto :goto_2

    .line 517
    .end local v1           #e:Ljava/security/GeneralSecurityException;
    .restart local v2       #envelope:Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;
    .restart local v6       #is:Ljava/io/InputStream;
    :catch_3
    move-exception v1

    .line 518
    .local v1, e:Lcom/htc/protobuf/InvalidProtocolBufferException;
    :try_start_3
    invoke-virtual {v3}, Lcom/htc/reportagent/cache/EntryFile;->delete()V

    .line 519
    invoke-virtual {v1}, Lcom/htc/protobuf/InvalidProtocolBufferException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 526
    :try_start_4
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_2

    .line 527
    :catch_4
    move-exception v1

    .line 528
    .local v1, e:Ljava/io/IOException;
    :goto_3
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 521
    .end local v1           #e:Ljava/io/IOException;
    :catch_5
    move-exception v1

    .line 522
    .local v1, e:Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 526
    :try_start_6
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_2

    .line 527
    :catch_6
    move-exception v1

    goto :goto_3

    .line 525
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    .line 526
    :try_start_7
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    .line 525
    throw v10

    .line 549
    .restart local v8       #length:J
    :cond_3
    const-string v10, "break resuming queue files"

    invoke-static {v10}, Lcom/htc/reportagent/util/Log;->d(Ljava/lang/String;)I

    goto/16 :goto_0

    .line 527
    .end local v8           #length:J
    :catch_7
    move-exception v1

    goto :goto_3

    :catch_8
    move-exception v1

    goto :goto_3
.end method

.method private storeCSReport(Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;Ljava/lang/String;)V
    .locals 3
    .parameter "envelope"
    .parameter "tag"

    .prologue
    .line 484
    invoke-static {}, Lcom/htc/reportagent/cache/LogCacheManager;->getInstance()Lcom/htc/reportagent/cache/LogCacheManager;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/reportagent/ReportManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2, p2}, Lcom/htc/reportagent/cache/LogCacheManager;->putFile(Landroid/content/Context;[BLjava/lang/String;)V

    .line 485
    return-void
.end method

.method private upload(Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;Ljava/lang/String;)V
    .locals 10
    .parameter "envelope"
    .parameter "tag"

    .prologue
    .line 437
    invoke-direct {p0}, Lcom/htc/reportagent/ReportManager;->isNetworkAllowed()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 444
    invoke-virtual {p1}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->getSerializedSize()I

    move-result v7

    int-to-long v1, v7

    .line 446
    .local v1, length:J
    iget-object v7, p0, Lcom/htc/reportagent/ReportManager;->mBudgetManager:Lcom/htc/reportagent/budget/BudgetManager;

    const-wide/16 v8, 0x1

    invoke-virtual {v7, v8, v9, v1, v2}, Lcom/htc/reportagent/budget/BudgetManager;->isAvailableByCurrentNetwork(JJ)Z

    move-result v7

    if-nez v7, :cond_1

    .line 479
    .end local v1           #length:J
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/htc/reportagent/ReportManager;->storeCSReport(Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;Ljava/lang/String;)V

    .line 480
    :goto_0
    return-void

    .line 449
    .restart local v1       #length:J
    :cond_1
    const/4 v5, 0x0

    .line 454
    .local v5, succeedToUploadFirstLog:Z
    invoke-static {}, Lcom/htc/reportagent/util/Utils;->getRetryTimes()I

    move-result v4

    .line 457
    .local v4, retry:I
    iget-object v7, p0, Lcom/htc/reportagent/ReportManager;->mContext:Landroid/content/Context;

    const-string v8, "power"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 458
    .local v3, pm:Landroid/os/PowerManager;
    const/4 v7, 0x1

    const-string v8, "ReportUploader"

    invoke-virtual {v3, v7, v8}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    .line 459
    .local v6, wakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 461
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-gt v0, v4, :cond_2

    .line 463
    :try_start_0
    sget-object v7, Lcom/htc/reportagent/ReportManager;->sCSUploader:Lcom/htc/reportagent/CSUploader;

    invoke-virtual {v7, p1}, Lcom/htc/reportagent/CSUploader;->putReport(Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-eqz v7, :cond_3

    .line 464
    const/4 v5, 0x1

    .line 469
    :cond_2
    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 473
    if-eqz v5, :cond_0

    .line 474
    invoke-direct {p0}, Lcom/htc/reportagent/ReportManager;->resumeCSCachedReport()V

    goto :goto_0

    .line 461
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 469
    :catchall_0
    move-exception v7

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v7
.end method

.method private uploadErrorReport(Ljava/lang/String;ZJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "tag"
    .parameter "fromDropBox"
    .parameter "time"
    .parameter "file"
    .parameter "msg"
    .parameter "position"

    .prologue
    .line 185
    new-instance v0, Lcom/htc/reportagent/HandsetLogCreator;

    iget-object v1, p0, Lcom/htc/reportagent/ReportManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/htc/reportagent/HandsetLogCreator;-><init>(Landroid/content/Context;)V

    .line 186
    .local v0, logCreator:Lcom/htc/reportagent/HandsetLogCreator;
    invoke-direct {p0, p6, p7}, Lcom/htc/reportagent/ReportManager;->getDeviceInfoStringWithJSONStyle(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 187
    .local v5, deviceInfo:Ljava/lang/String;
    invoke-direct/range {p0 .. p5}, Lcom/htc/reportagent/ReportManager;->readErrorReportFile(Ljava/lang/String;ZJLjava/lang/String;)Lcom/htc/reportagent/io/Buffer;

    move-result-object v6

    .line 188
    .local v6, buf:Lcom/htc/reportagent/io/Buffer;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/htc/reportagent/io/Buffer;->getLength()I

    move-result v1

    if-gtz v1, :cond_1

    .line 189
    :cond_0
    const-string v1, "ReportUploader"

    const-string v2, "There is no external report file found !"

    invoke-static {v1, v2}, Lcom/htc/reportagent/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :goto_0
    return-void

    .line 193
    :cond_1
    const-string v1, "com.htc.feedback"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object v2, p1

    invoke-virtual/range {v0 .. v6}, Lcom/htc/reportagent/HandsetLogCreator;->add(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcom/htc/reportagent/io/Buffer;)V

    .line 194
    invoke-virtual {v6}, Lcom/htc/reportagent/io/Buffer;->release()V

    .line 195
    const/4 v6, 0x0

    .line 196
    const/4 v5, 0x0

    .line 198
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/reportagent/HandsetLogCreator;->toHandsetLog(Z)Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;

    move-result-object v7

    .line 199
    .local v7, envelope:Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;
    const/4 v0, 0x0

    .line 201
    const-string v1, "[uploadErrorReport before upload(envelope, tag)]"

    invoke-static {v1}, Lcom/htc/reportagent/util/Utils;->showAllocateMemory(Ljava/lang/String;)V

    .line 202
    invoke-direct {p0, v7, p1}, Lcom/htc/reportagent/ReportManager;->upload(Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;Ljava/lang/String;)V

    .line 203
    const-string v1, "[uploadErrorReport after upload(envelope, tag)]"

    invoke-static {v1}, Lcom/htc/reportagent/util/Utils;->showAllocateMemory(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private uploadUserProfiling([Ljava/lang/String;[J)V
    .locals 11
    .parameter "tag"
    .parameter "msec"

    .prologue
    .line 339
    iget-object v8, p0, Lcom/htc/reportagent/ReportManager;->mContext:Landroid/content/Context;

    const-string v9, "dropbox"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/DropBoxManager;

    .line 340
    .local v1, dropBoxMgr:Landroid/os/DropBoxManager;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    array-length v8, p1

    if-ge v5, v8, :cond_2

    .line 341
    aget-object v8, p1, v5

    aget-wide v9, p2, v5

    invoke-virtual {v1, v8, v9, v10}, Landroid/os/DropBoxManager;->getNextEntry(Ljava/lang/String;J)Landroid/os/DropBoxManager$Entry;

    move-result-object v3

    .line 342
    .local v3, entry:Landroid/os/DropBoxManager$Entry;
    if-nez v3, :cond_1

    .line 340
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 344
    :cond_1
    const/4 v6, 0x0

    .line 345
    .local v6, is:Ljava/io/InputStream;
    new-instance v7, Lcom/htc/reportagent/HandsetLogCreator;

    iget-object v8, p0, Lcom/htc/reportagent/ReportManager;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Lcom/htc/reportagent/HandsetLogCreator;-><init>(Landroid/content/Context;)V

    .line 347
    .local v7, logCreator:Lcom/htc/reportagent/HandsetLogCreator;
    :try_start_0
    invoke-virtual {v3}, Landroid/os/DropBoxManager$Entry;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    .line 348
    if-eqz v6, :cond_0

    .line 350
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 351
    .local v0, dis:Ljava/io/DataInputStream;
    invoke-static {v0, v7}, Lcom/htc/utils/ulog/SerializableUtil$Reader;->read(Ljava/io/DataInputStream;Lcom/htc/utils/ulog/SerializableUtil$PayloadChainCreator;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 356
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/htc/reportagent/HandsetLogCreator;->toHandsetLog(Z)Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;

    move-result-object v4

    .line 357
    .local v4, envelope:Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;
    aget-object v8, p1, v5

    invoke-direct {p0, v4, v8}, Lcom/htc/reportagent/ReportManager;->upload(Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;Ljava/lang/String;)V

    goto :goto_1

    .line 352
    .end local v0           #dis:Ljava/io/DataInputStream;
    .end local v4           #envelope:Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;
    :catch_0
    move-exception v2

    .line 353
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 359
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #entry:Landroid/os/DropBoxManager$Entry;
    .end local v6           #is:Ljava/io/InputStream;
    .end local v7           #logCreator:Lcom/htc/reportagent/HandsetLogCreator;
    :cond_2
    return-void
.end method

.method private uploadUserProfilingEx([Ljava/lang/String;[J)V
    .locals 22
    .parameter "tag"
    .parameter "msec"

    .prologue
    .line 367
    const-wide/16 v16, 0x0

    .line 368
    .local v16, totalSize:J
    const/4 v10, 0x0

    .line 369
    .local v10, logCreator:Lcom/htc/reportagent/HandsetLogCreator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/reportagent/ReportManager;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const-string v19, "dropbox"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/DropBoxManager;

    .line 370
    .local v3, dropBoxMgr:Landroid/os/DropBoxManager;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v7, v0, :cond_e

    .line 371
    aget-object v18, p1, v7

    aget-wide v19, p2, v7

    move-object/from16 v0, v18

    move-wide/from16 v1, v19

    invoke-virtual {v3, v0, v1, v2}, Landroid/os/DropBoxManager;->getNextEntry(Ljava/lang/String;J)Landroid/os/DropBoxManager$Entry;

    move-result-object v5

    .line 372
    .local v5, entry:Landroid/os/DropBoxManager$Entry;
    if-nez v5, :cond_1

    .line 370
    :cond_0
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 374
    :cond_1
    const/4 v8, 0x0

    .local v8, is:Ljava/io/InputStream;
    const/4 v15, 0x0

    .line 375
    .local v15, tmpIS:Ljava/io/InputStream;
    const/4 v11, 0x0

    .line 376
    .local v11, posIS:Lcom/htc/reportagent/io/PositionRetrievingInputStream;
    if-nez v10, :cond_2

    .line 377
    new-instance v10, Lcom/htc/reportagent/HandsetLogCreator;

    .end local v10           #logCreator:Lcom/htc/reportagent/HandsetLogCreator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/reportagent/ReportManager;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v10, v0}, Lcom/htc/reportagent/HandsetLogCreator;-><init>(Landroid/content/Context;)V

    .line 378
    .restart local v10       #logCreator:Lcom/htc/reportagent/HandsetLogCreator;
    :cond_2
    const/4 v14, 0x0

    .line 380
    .local v14, success:Z
    :try_start_0
    invoke-virtual {v5}, Landroid/os/DropBoxManager$Entry;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    .line 381
    invoke-static {v8}, Lcom/htc/utils/ulog/io/LogStream;->isLogStream(Ljava/io/InputStream;)Z

    move-result v9

    .line 382
    .local v9, isLogStream:Z
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 383
    const/4 v8, 0x0

    .line 384
    invoke-virtual {v5}, Landroid/os/DropBoxManager$Entry;->close()V

    .line 385
    const/4 v5, 0x0

    .line 388
    aget-object v18, p1, v7

    aget-wide v19, p2, v7

    move-object/from16 v0, v18

    move-wide/from16 v1, v19

    invoke-virtual {v3, v0, v1, v2}, Landroid/os/DropBoxManager;->getNextEntry(Ljava/lang/String;J)Landroid/os/DropBoxManager$Entry;

    move-result-object v5

    .line 389
    if-eqz v5, :cond_3

    .line 390
    invoke-virtual {v5}, Landroid/os/DropBoxManager$Entry;->getInputStream()Ljava/io/InputStream;

    move-result-object v15

    .line 391
    if-eqz v9, :cond_7

    .line 392
    sget-object v18, Lcom/htc/reportagent/Common;->SEED_GETTER:Lcom/htc/utils/ulog/io/LogStream$SeedGetter;

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Lcom/htc/utils/ulog/io/LogStream;->concatenateInputStream(Ljava/io/InputStream;Lcom/htc/utils/ulog/io/LogStream$SeedGetter;)Ljava/io/InputStream;

    move-result-object v8

    .line 396
    :goto_2
    new-instance v12, Lcom/htc/reportagent/io/PositionRetrievingInputStream;

    invoke-direct {v12, v8}, Lcom/htc/reportagent/io/PositionRetrievingInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_4

    .line 397
    .end local v11           #posIS:Lcom/htc/reportagent/io/PositionRetrievingInputStream;
    .local v12, posIS:Lcom/htc/reportagent/io/PositionRetrievingInputStream;
    :try_start_1
    invoke-static {v12, v10}, Lcom/htc/utils/ulog/SerializableUtil$Reader;->readEx(Ljava/io/InputStream;Lcom/htc/utils/ulog/SerializableUtil$PayloadChainCreator;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_b

    move-result v14

    move-object v11, v12

    .line 408
    .end local v12           #posIS:Lcom/htc/reportagent/io/PositionRetrievingInputStream;
    .restart local v11       #posIS:Lcom/htc/reportagent/io/PositionRetrievingInputStream;
    :cond_3
    if-eqz v11, :cond_4

    .line 409
    :try_start_2
    invoke-virtual {v11}, Lcom/htc/reportagent/io/PositionRetrievingInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    .line 410
    :cond_4
    if-eqz v5, :cond_5

    .line 411
    :try_start_3
    invoke-virtual {v5}, Landroid/os/DropBoxManager$Entry;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8

    .line 417
    .end local v9           #isLogStream:Z
    :cond_5
    :goto_3
    if-eqz v14, :cond_0

    .line 420
    invoke-virtual {v11}, Lcom/htc/reportagent/io/PositionRetrievingInputStream;->getPosition()I

    move-result v13

    .line 422
    .local v13, size:I
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    if-ge v7, v0, :cond_6

    int-to-long v0, v13

    move-wide/from16 v18, v0

    add-long v18, v18, v16

    const-wide/32 v20, 0xc0000

    cmp-long v18, v18, v20

    if-ltz v18, :cond_d

    .line 423
    :cond_6
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Lcom/htc/reportagent/HandsetLogCreator;->toHandsetLog(Z)Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;

    move-result-object v6

    .line 424
    .local v6, envelope:Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;
    const/4 v10, 0x0

    .line 425
    const-string v18, "ReportUploader"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "file size: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v6}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->getSerializedSize()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/htc/reportagent/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    aget-object v18, p1, v7

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v6, v1}, Lcom/htc/reportagent/ReportManager;->upload(Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;Ljava/lang/String;)V

    .line 427
    const-wide/16 v16, 0x0

    .line 428
    goto/16 :goto_1

    .line 394
    .end local v6           #envelope:Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;
    .end local v13           #size:I
    .restart local v9       #isLogStream:Z
    :cond_7
    move-object v8, v15

    goto :goto_2

    .line 399
    .end local v9           #isLogStream:Z
    :catch_0
    move-exception v4

    .line 400
    .local v4, e:Ljava/io/IOException;
    :goto_4
    :try_start_4
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 408
    if-eqz v11, :cond_8

    .line 409
    :try_start_5
    invoke-virtual {v11}, Lcom/htc/reportagent/io/PositionRetrievingInputStream;->close()V

    .line 410
    :cond_8
    if-eqz v5, :cond_5

    .line 411
    invoke-virtual {v5}, Landroid/os/DropBoxManager$Entry;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_3

    .line 412
    :catch_1
    move-exception v4

    .line 413
    :goto_5
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 401
    .end local v4           #e:Ljava/io/IOException;
    :catch_2
    move-exception v4

    .line 402
    .local v4, e:Ljava/security/GeneralSecurityException;
    :goto_6
    :try_start_6
    invoke-virtual {v4}, Ljava/security/GeneralSecurityException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 408
    if-eqz v11, :cond_9

    .line 409
    :try_start_7
    invoke-virtual {v11}, Lcom/htc/reportagent/io/PositionRetrievingInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_a

    .line 410
    :cond_9
    if-eqz v5, :cond_5

    .line 411
    :try_start_8
    invoke-virtual {v5}, Landroid/os/DropBoxManager$Entry;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_3

    .line 412
    :catch_3
    move-exception v4

    goto :goto_5

    .line 403
    .end local v4           #e:Ljava/security/GeneralSecurityException;
    :catch_4
    move-exception v4

    .line 404
    .local v4, e:Ljava/lang/NullPointerException;
    :goto_7
    :try_start_9
    invoke-virtual {v4}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 408
    if-eqz v11, :cond_a

    .line 409
    :try_start_a
    invoke-virtual {v11}, Lcom/htc/reportagent/io/PositionRetrievingInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9

    .line 410
    :cond_a
    if-eqz v5, :cond_5

    .line 411
    :try_start_b
    invoke-virtual {v5}, Landroid/os/DropBoxManager$Entry;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    goto/16 :goto_3

    .line 412
    :catch_5
    move-exception v4

    goto :goto_5

    .line 407
    .end local v4           #e:Ljava/lang/NullPointerException;
    :catchall_0
    move-exception v18

    .line 408
    :goto_8
    if-eqz v11, :cond_b

    .line 409
    :try_start_c
    invoke-virtual {v11}, Lcom/htc/reportagent/io/PositionRetrievingInputStream;->close()V

    .line 410
    :cond_b
    if-eqz v5, :cond_c

    .line 411
    invoke-virtual {v5}, Landroid/os/DropBoxManager$Entry;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    .line 407
    :cond_c
    :goto_9
    throw v18

    .line 430
    .restart local v13       #size:I
    :cond_d
    int-to-long v0, v13

    move-wide/from16 v18, v0

    add-long v16, v16, v18

    .line 431
    goto/16 :goto_1

    .line 434
    .end local v5           #entry:Landroid/os/DropBoxManager$Entry;
    .end local v8           #is:Ljava/io/InputStream;
    .end local v11           #posIS:Lcom/htc/reportagent/io/PositionRetrievingInputStream;
    .end local v13           #size:I
    .end local v14           #success:Z
    .end local v15           #tmpIS:Ljava/io/InputStream;
    :cond_e
    return-void

    .line 412
    .restart local v5       #entry:Landroid/os/DropBoxManager$Entry;
    .restart local v8       #is:Ljava/io/InputStream;
    .restart local v11       #posIS:Lcom/htc/reportagent/io/PositionRetrievingInputStream;
    .restart local v14       #success:Z
    .restart local v15       #tmpIS:Ljava/io/InputStream;
    :catch_6
    move-exception v4

    .line 413
    .local v4, e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 412
    .end local v4           #e:Ljava/io/IOException;
    .restart local v9       #isLogStream:Z
    :catch_7
    move-exception v4

    goto :goto_5

    :catch_8
    move-exception v4

    goto :goto_5

    .end local v9           #isLogStream:Z
    .local v4, e:Ljava/lang/NullPointerException;
    :catch_9
    move-exception v4

    goto :goto_5

    .local v4, e:Ljava/security/GeneralSecurityException;
    :catch_a
    move-exception v4

    goto :goto_5

    .line 407
    .end local v4           #e:Ljava/security/GeneralSecurityException;
    .end local v11           #posIS:Lcom/htc/reportagent/io/PositionRetrievingInputStream;
    .restart local v9       #isLogStream:Z
    .restart local v12       #posIS:Lcom/htc/reportagent/io/PositionRetrievingInputStream;
    :catchall_1
    move-exception v18

    move-object v11, v12

    .end local v12           #posIS:Lcom/htc/reportagent/io/PositionRetrievingInputStream;
    .restart local v11       #posIS:Lcom/htc/reportagent/io/PositionRetrievingInputStream;
    goto :goto_8

    .line 403
    .end local v11           #posIS:Lcom/htc/reportagent/io/PositionRetrievingInputStream;
    .restart local v12       #posIS:Lcom/htc/reportagent/io/PositionRetrievingInputStream;
    :catch_b
    move-exception v4

    move-object v11, v12

    .end local v12           #posIS:Lcom/htc/reportagent/io/PositionRetrievingInputStream;
    .restart local v11       #posIS:Lcom/htc/reportagent/io/PositionRetrievingInputStream;
    goto :goto_7

    .line 401
    .end local v11           #posIS:Lcom/htc/reportagent/io/PositionRetrievingInputStream;
    .restart local v12       #posIS:Lcom/htc/reportagent/io/PositionRetrievingInputStream;
    :catch_c
    move-exception v4

    move-object v11, v12

    .end local v12           #posIS:Lcom/htc/reportagent/io/PositionRetrievingInputStream;
    .restart local v11       #posIS:Lcom/htc/reportagent/io/PositionRetrievingInputStream;
    goto :goto_6

    .line 399
    .end local v11           #posIS:Lcom/htc/reportagent/io/PositionRetrievingInputStream;
    .restart local v12       #posIS:Lcom/htc/reportagent/io/PositionRetrievingInputStream;
    :catch_d
    move-exception v4

    move-object v11, v12

    .end local v12           #posIS:Lcom/htc/reportagent/io/PositionRetrievingInputStream;
    .restart local v11       #posIS:Lcom/htc/reportagent/io/PositionRetrievingInputStream;
    goto :goto_4
.end method


# virtual methods
.method public onPowerConnectedChanged()Z
    .locals 3

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/htc/reportagent/ReportManager;->resumeCSCachedReport()V

    .line 70
    invoke-static {}, Lcom/htc/reportagent/cache/LogCacheManager;->getInstance()Lcom/htc/reportagent/cache/LogCacheManager;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/reportagent/ReportManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/htc/reportagent/cache/LogCacheManager;->getFiles(Landroid/content/Context;)[Lcom/htc/reportagent/cache/EntryFile;

    move-result-object v0

    .line 71
    .local v0, fileList:[Lcom/htc/reportagent/cache/EntryFile;
    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_1

    .line 72
    :cond_0
    const/4 v1, 0x1

    .line 74
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onUpload(Landroid/content/Intent;)V
    .locals 25
    .parameter "intent"

    .prologue
    .line 78
    if-nez p1, :cond_1

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    .line 81
    .local v11, action:Ljava/lang/String;
    const-string v3, "com.htc.intent.action.BUGREPORT"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 82
    const-wide/16 v6, 0x0

    .line 83
    .local v6, time:J
    const-string v3, "tag"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 84
    .local v4, tag:Ljava/lang/String;
    const/4 v12, 0x0

    .line 85
    .local v12, appId:Ljava/lang/String;
    const-string v3, "cruiser_main"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 86
    const-string v3, "app_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 87
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 88
    invoke-static {v12, v4}, Lcom/htc/utils/ulog/UPolicy;->canLogUserProfiling(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 89
    const-string v3, "ReportUploader"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "[onUpload] tag: \'"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", appId: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\' isn\'t in policy list or setting is disabled!"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-static {v3, v0}, Lcom/htc/reportagent/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 94
    :cond_2
    const-string v3, "ReportUploader"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "[onUpload] tag: \'"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\' has no app_id!"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-static {v3, v0}, Lcom/htc/reportagent/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 99
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/reportagent/ReportManager;->mFeedbackPolicy:Lcom/htc/utils/ulog/UPolicy;

    invoke-virtual {v3, v4}, Lcom/htc/utils/ulog/UPolicy;->canLogErrorReport(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 100
    const-string v3, "ReportUploader"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "[onUpload] tag: \'"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\' isn\'t in policy list or setting is disabled!"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-static {v3, v0}, Lcom/htc/reportagent/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 105
    :cond_4
    const-string v3, "msg"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 106
    .local v9, msg:Ljava/lang/String;
    const-string v3, "fromDropBox"

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 107
    .local v5, fromDropBox:Z
    if-eqz v5, :cond_5

    .line 108
    const-string v3, "time"

    const-wide/16 v21, -0x1

    move-object/from16 v0, p1

    move-wide/from16 v1, v21

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 109
    :cond_5
    const-string v3, "file"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 110
    .local v8, file:Ljava/lang/String;
    const-string v3, "radio"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 111
    .local v10, position:Ljava/lang/String;
    if-nez v10, :cond_6

    const-string v10, ""

    .line 112
    :cond_6
    const/16 v17, 0x0

    .line 116
    .local v17, logStr:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "[onUpload] tag: "

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v21, ", fromDropBox: "

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v21, ", time: "

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v21, ", file: "

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 117
    const-string v3, "ReportUploader"

    move-object/from16 v0, v17

    invoke-static {v3, v0}, Lcom/htc/reportagent/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v3, p0

    .line 120
    :try_start_0
    invoke-direct/range {v3 .. v10}, Lcom/htc/reportagent/ReportManager;->uploadErrorReport(Ljava/lang/String;ZJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 121
    :catch_0
    move-exception v15

    .line 122
    .local v15, e:Ljava/lang/OutOfMemoryError;
    invoke-virtual {v15}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto/16 :goto_0

    .line 125
    .end local v4           #tag:Ljava/lang/String;
    .end local v5           #fromDropBox:Z
    .end local v6           #time:J
    .end local v8           #file:Ljava/lang/String;
    .end local v9           #msg:Ljava/lang/String;
    .end local v10           #position:Ljava/lang/String;
    .end local v12           #appId:Ljava/lang/String;
    .end local v15           #e:Ljava/lang/OutOfMemoryError;
    .end local v17           #logStr:Ljava/lang/String;
    :cond_7
    const-string v3, "com.htc.intent.action.USER_PROFILING"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 127
    invoke-static {}, Lcom/htc/utils/ulog/Util;->supportUserProfiling()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 132
    const/16 v20, 0x0

    .line 133
    .local v20, times:[J
    const-string v3, "tag"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 135
    .local v19, tags:[Ljava/lang/String;
    const-string v3, "fromDropBox"

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 136
    .restart local v5       #fromDropBox:Z
    if-eqz v5, :cond_8

    .line 137
    const-string v3, "time"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v20

    .line 140
    :cond_8
    if-eqz v19, :cond_a

    if-eqz v20, :cond_a

    move-object/from16 v0, v19

    array-length v3, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ne v3, v0, :cond_a

    .line 141
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    .line 142
    .local v18, sb:Ljava/lang/StringBuilder;
    const-string v3, "[onUpload] "

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    const/16 v16, 0x0

    .local v16, i:I
    :goto_1
    move-object/from16 v0, v19

    array-length v3, v0

    move/from16 v0, v16

    if-ge v0, v3, :cond_9

    .line 144
    const-string v3, "tag: "

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v21, v19, v16

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v21, ", time: "

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-wide v21, v20, v16

    move-wide/from16 v0, v21

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v21, " "

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 146
    :cond_9
    const-string v3, "ReportUploader"

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-static {v3, v0}, Lcom/htc/reportagent/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    .end local v16           #i:I
    .end local v18           #sb:Ljava/lang/StringBuilder;
    :cond_a
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/htc/reportagent/ReportManager;->uploadUserProfilingEx([Ljava/lang/String;[J)V

    goto/16 :goto_0

    .line 171
    .end local v5           #fromDropBox:Z
    .end local v19           #tags:[Ljava/lang/String;
    .end local v20           #times:[J
    :cond_b
    const-string v3, "com.htc.reportagent.action.POLICY_SETTING_CHANGE"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 173
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    .line 174
    .local v13, currentTime:J
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Tell Htc Setting changed, last time: "

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-wide v21, Lcom/htc/reportagent/ReportManager;->sLastTimeTellHtcSettingChanged:J

    move-wide/from16 v0, v21

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v21, ", current time: "

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v21, ", min interval: "

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-wide/32 v21, 0x1b7740

    move-wide/from16 v0, v21

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/reportagent/util/Log;->d(Ljava/lang/String;)I

    .line 176
    sget-wide v21, Lcom/htc/reportagent/ReportManager;->sLastTimeTellHtcSettingChanged:J

    const-wide/16 v23, -0x1

    cmp-long v3, v21, v23

    if-eqz v3, :cond_c

    sget-wide v21, Lcom/htc/reportagent/ReportManager;->sLastTimeTellHtcSettingChanged:J

    sub-long v21, v13, v21

    const-wide/32 v23, 0x1b7740

    cmp-long v3, v21, v23

    if-lez v3, :cond_0

    .line 177
    :cond_c
    sput-wide v13, Lcom/htc/reportagent/ReportManager;->sLastTimeTellHtcSettingChanged:J

    .line 178
    invoke-direct/range {p0 .. p0}, Lcom/htc/reportagent/ReportManager;->resumeCSCachedReport()V

    goto/16 :goto_0
.end method

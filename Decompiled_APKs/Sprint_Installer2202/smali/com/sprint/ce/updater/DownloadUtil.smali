.class public Lcom/sprint/ce/updater/DownloadUtil;
.super Ljava/lang/Object;
.source "DownloadUtil.java"


# static fields
.field public static final CONNECTION_TIMEOUT:I = 0xea60

.field public static DEBUG:Z = false

.field public static EMULATOR:Z = false

.field private static final NETWORK_CHECK_INTERVAL:I = 0x3e8

.field private static final NETWORK_MAX_WAIT:I = 0x61a8

.field public static final RFC_822_DATE_FORMATS:[Ljava/text/SimpleDateFormat; = null

.field public static final SOCKET_READ_TIMEOUT:I = 0xea60

.field public static TAG:Ljava/lang/String; = null

.field public static final TRUSTEDSOURCE:Ljava/lang/String; = "https://deviceselfservice.sprint.com/upgrd/trustedsource.xml"

.field public static final TRUSTEDSOURCE_CERT:Ljava/lang/String; = "http://sebu.pcslab.com/szone/saitest/trustedsource.xml"

.field public static final UPDATE_URL_SLOT0_PREFIX:Ljava/lang/String; = "http://dsa.spcsdns.net/upgrd"

.field public static final UPDATE_URL_SLOT0_PREFIX_CERT:Ljava/lang/String; = "http://dsa.spcsdns.net/upgrd/certification"

.field public static final UPDATE_URL_SLOT1_PREFIX:Ljava/lang/String; = "http://deviceselfservice.sprint.com/upgrd"

.field public static final UPDATE_URL_SLOT1_PREFIX_CERT:Ljava/lang/String; = "http://sebu.pcslab.com/szone"

.field public static final UPDATE_URL_SUFFIX:Ljava/lang/String; = "sprint-installer.json"

.field public static allowBrowserJsonHttp:Z

.field public static allowFromRoot:Z

.field public static allowTestInstall:Z

.field public static mAppContext:Landroid/content/Context;

.field public static useCertificationUrl:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 40
    const-string v0, "SprintUpdater"

    sput-object v0, Lcom/sprint/ce/updater/DownloadUtil;->TAG:Ljava/lang/String;

    .line 63
    sput-boolean v3, Lcom/sprint/ce/updater/DownloadUtil;->DEBUG:Z

    .line 64
    sput-boolean v3, Lcom/sprint/ce/updater/DownloadUtil;->useCertificationUrl:Z

    .line 65
    sput-boolean v3, Lcom/sprint/ce/updater/DownloadUtil;->allowBrowserJsonHttp:Z

    .line 66
    sput-boolean v3, Lcom/sprint/ce/updater/DownloadUtil;->allowTestInstall:Z

    .line 67
    sput-boolean v3, Lcom/sprint/ce/updater/DownloadUtil;->allowFromRoot:Z

    .line 68
    sput-boolean v3, Lcom/sprint/ce/updater/DownloadUtil;->EMULATOR:Z

    .line 193
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/text/SimpleDateFormat;

    .line 194
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "EEE, d MMM yyyy HH:mm:ss z"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v3

    const/4 v1, 0x1

    .line 195
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "EEE, d MMM yyyy HH:mm:ss Z"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 196
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "EEE, d MMM yyyy HH:mm z"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 197
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "EEE, d MMM yyyy HH:mm Z"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 198
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "EEE, d MMM yyyy hh:mm:ss a z"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 199
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "EEE, d MMM yyyy hh:mm:ss a Z"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 200
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "EEE, d MMM yyyy hh:mm a z"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 201
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "EEE, d MMM yyyy hh:mm a Z"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 202
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "d MMM yyyy HH:mm z"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 203
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "d MMM yyyy HH:mm:ss z"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 192
    sput-object v0, Lcom/sprint/ce/updater/DownloadUtil;->RFC_822_DATE_FORMATS:[Ljava/text/SimpleDateFormat;

    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkForDeviceSpace(I)Z
    .locals 8
    .parameter "length"

    .prologue
    .line 374
    new-instance v3, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 375
    .local v3, stat:Landroid/os/StatFs;
    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v6, v6

    mul-long v0, v4, v6

    .line 377
    .local v0, bytesAvailable:J
    const/high16 v4, 0x320

    add-int v2, p0, v4

    .line 378
    .local v2, spaceNeeded:I
    sget-boolean v4, Lcom/sprint/ce/updater/DownloadUtil;->DEBUG:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/sprint/ce/updater/DownloadUtil;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Path: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Space available: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " space needed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    :cond_0
    int-to-long v4, v2

    cmp-long v4, v4, v0

    if-ltz v4, :cond_1

    .line 380
    const/4 v4, 0x0

    .line 382
    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public static checkForUpdate(Landroid/content/Context;Ljava/lang/String;Z)Lcom/sprint/ce/updater/Response;
    .locals 21
    .parameter "context"
    .parameter "altUrl"
    .parameter "useSlot0"

    .prologue
    .line 84
    move-object/from16 v17, p1

    .line 85
    .local v17, url:Ljava/lang/String;
    const/4 v13, 0x0

    .line 87
    .local v13, rootUrl:Ljava/lang/String;
    if-nez v17, :cond_0

    .line 88
    sget-object v8, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 89
    .local v8, make:Ljava/lang/String;
    sget-object v9, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 91
    .local v9, model:Ljava/lang/String;
    if-eqz p2, :cond_6

    .line 92
    sget-boolean v18, Lcom/sprint/ce/updater/DownloadUtil;->useCertificationUrl:Z

    if-eqz v18, :cond_5

    const-string v10, "http://dsa.spcsdns.net/upgrd/certification"

    .line 96
    .local v10, prefixUrl:Ljava/lang/String;
    :goto_0
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, "/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "sprint-installer.json"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 98
    sget-boolean v18, Lcom/sprint/ce/updater/DownloadUtil;->allowFromRoot:Z

    if-eqz v18, :cond_0

    .line 99
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, "/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "sprint-installer.json"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 103
    .end local v8           #make:Ljava/lang/String;
    .end local v9           #model:Ljava/lang/String;
    .end local v10           #prefixUrl:Ljava/lang/String;
    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/sprint/ce/updater/DownloadUtil;->getHttpClient(Landroid/content/Context;Ljava/lang/String;)Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v4

    .line 104
    .local v4, client:Lorg/apache/http/impl/client/DefaultHttpClient;
    sget-boolean v18, Lcom/sprint/ce/updater/DownloadUtil;->DEBUG:Z

    if-eqz v18, :cond_1

    sget-object v18, Lcom/sprint/ce/updater/DownloadUtil;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "Opening URL: "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_1
    new-instance v7, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, v17

    invoke-direct {v7, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 107
    .local v7, get:Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {v4, v7}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v12

    .line 108
    .local v12, resp:Lorg/apache/http/HttpResponse;
    const/16 v16, 0x0

    .line 109
    .local v16, success:Z
    invoke-interface {v12}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v15

    .line 111
    .local v15, status:I
    sget-boolean v18, Lcom/sprint/ce/updater/DownloadUtil;->DEBUG:Z

    if-eqz v18, :cond_2

    sget-object v18, Lcom/sprint/ce/updater/DownloadUtil;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "server response: "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v12}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_2
    const/16 v18, 0xc8

    move/from16 v0, v18

    if-ne v15, v0, :cond_8

    .line 113
    const/16 v16, 0x1

    .line 131
    :cond_3
    :goto_1
    if-eqz v16, :cond_c

    .line 132
    sget-boolean v18, Lcom/sprint/ce/updater/DownloadUtil;->DEBUG:Z

    if-eqz v18, :cond_4

    sget-object v18, Lcom/sprint/ce/updater/DownloadUtil;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "server says: "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v12}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_4
    invoke-interface {v12}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v5

    .line 134
    .local v5, content:Ljava/io/InputStream;
    const/16 v18, 0x1000

    move/from16 v0, v18

    new-array v2, v0, [B

    .line 136
    .local v2, buffer:[B
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    .local v14, sb:Ljava/lang/StringBuilder;
    :goto_2
    const/16 v18, -0x1

    invoke-virtual {v5, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .local v3, c:I
    move/from16 v0, v18

    if-ne v0, v3, :cond_b

    .line 140
    new-instance v11, Lcom/sprint/ce/updater/Response;

    invoke-direct {v11}, Lcom/sprint/ce/updater/Response;-><init>()V

    .line 141
    .local v11, r:Lcom/sprint/ce/updater/Response;
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lcom/sprint/ce/updater/Response;->parseJson(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    .end local v2           #buffer:[B
    .end local v3           #c:I
    .end local v4           #client:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v5           #content:Ljava/io/InputStream;
    .end local v7           #get:Lorg/apache/http/client/methods/HttpGet;
    .end local v11           #r:Lcom/sprint/ce/updater/Response;
    .end local v12           #resp:Lorg/apache/http/HttpResponse;
    .end local v14           #sb:Ljava/lang/StringBuilder;
    .end local v15           #status:I
    .end local v16           #success:Z
    :goto_3
    return-object v11

    .line 92
    .restart local v8       #make:Ljava/lang/String;
    .restart local v9       #model:Ljava/lang/String;
    :cond_5
    const-string v10, "http://dsa.spcsdns.net/upgrd"

    goto/16 :goto_0

    .line 94
    :cond_6
    sget-boolean v18, Lcom/sprint/ce/updater/DownloadUtil;->useCertificationUrl:Z

    if-eqz v18, :cond_7

    const-string v10, "http://sebu.pcslab.com/szone"

    .restart local v10       #prefixUrl:Ljava/lang/String;
    :goto_4
    goto/16 :goto_0

    .end local v10           #prefixUrl:Ljava/lang/String;
    :cond_7
    const-string v10, "http://deviceselfservice.sprint.com/upgrd"

    goto :goto_4

    .line 114
    .end local v8           #make:Ljava/lang/String;
    .end local v9           #model:Ljava/lang/String;
    .restart local v4       #client:Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v7       #get:Lorg/apache/http/client/methods/HttpGet;
    .restart local v12       #resp:Lorg/apache/http/HttpResponse;
    .restart local v15       #status:I
    .restart local v16       #success:Z
    :cond_8
    const/16 v18, 0x194

    move/from16 v0, v18

    if-ne v15, v0, :cond_3

    .line 115
    if-nez p1, :cond_3

    if-eqz v13, :cond_3

    .line 117
    :try_start_1
    new-instance v7, Lorg/apache/http/client/methods/HttpGet;

    .end local v7           #get:Lorg/apache/http/client/methods/HttpGet;
    invoke-direct {v7, v13}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 118
    .restart local v7       #get:Lorg/apache/http/client/methods/HttpGet;
    sget-boolean v18, Lcom/sprint/ce/updater/DownloadUtil;->DEBUG:Z

    if-eqz v18, :cond_9

    sget-object v18, Lcom/sprint/ce/updater/DownloadUtil;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "Try again using URL: "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_9
    invoke-virtual {v4, v7}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v12

    .line 120
    invoke-interface {v12}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v15

    .line 121
    sget-boolean v18, Lcom/sprint/ce/updater/DownloadUtil;->DEBUG:Z

    if-eqz v18, :cond_a

    sget-object v18, Lcom/sprint/ce/updater/DownloadUtil;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "server response (rootUrl): "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v12}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_a
    const/16 v18, 0xc8

    move/from16 v0, v18

    if-ne v15, v0, :cond_3

    .line 123
    const/16 v16, 0x1

    goto/16 :goto_1

    .line 138
    .restart local v2       #buffer:[B
    .restart local v3       #c:I
    .restart local v5       #content:Ljava/io/InputStream;
    .restart local v14       #sb:Ljava/lang/StringBuilder;
    :cond_b
    new-instance v18, Ljava/lang/String;

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v0, v2, v1, v3}, Ljava/lang/String;-><init>([BII)V

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 145
    .end local v2           #buffer:[B
    .end local v3           #c:I
    .end local v4           #client:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v5           #content:Ljava/io/InputStream;
    .end local v7           #get:Lorg/apache/http/client/methods/HttpGet;
    .end local v12           #resp:Lorg/apache/http/HttpResponse;
    .end local v14           #sb:Ljava/lang/StringBuilder;
    .end local v15           #status:I
    .end local v16           #success:Z
    :catch_0
    move-exception v6

    .line 146
    .local v6, e:Ljava/lang/Exception;
    sget-object v18, Lcom/sprint/ce/updater/DownloadUtil;->TAG:Ljava/lang/String;

    const-string v19, "Error"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 147
    new-instance v11, Lcom/sprint/ce/updater/Response;

    invoke-direct {v11}, Lcom/sprint/ce/updater/Response;-><init>()V

    .line 148
    .restart local v11       #r:Lcom/sprint/ce/updater/Response;
    invoke-virtual {v11, v6}, Lcom/sprint/ce/updater/Response;->setError(Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 144
    .end local v6           #e:Ljava/lang/Exception;
    .end local v11           #r:Lcom/sprint/ce/updater/Response;
    .restart local v4       #client:Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v7       #get:Lorg/apache/http/client/methods/HttpGet;
    .restart local v12       #resp:Lorg/apache/http/HttpResponse;
    .restart local v15       #status:I
    .restart local v16       #success:Z
    :cond_c
    const/4 v11, 0x0

    goto/16 :goto_3
.end method

.method public static downloadUpdate(Landroid/content/Context;Ljava/lang/String;Ljava/io/FileOutputStream;)V
    .locals 25
    .parameter "context"
    .parameter "url"
    .parameter "fos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 238
    const/4 v15, 0x0

    .line 239
    .local v15, inputStream:Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 240
    .local v5, bos:Ljava/io/BufferedOutputStream;
    const/4 v3, 0x0

    .line 243
    .local v3, bis:Ljava/io/BufferedInputStream;
    :try_start_0
    invoke-static/range {p0 .. p1}, Lcom/sprint/ce/updater/DownloadUtil;->getHttpClient(Landroid/content/Context;Ljava/lang/String;)Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v14

    .line 244
    .local v14, httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    new-instance v11, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 245
    .local v11, get:Lorg/apache/http/client/methods/HttpGet;
    sget-boolean v21, Lcom/sprint/ce/updater/DownloadUtil;->DEBUG:Z

    if-eqz v21, :cond_0

    sget-object v21, Lcom/sprint/ce/updater/DownloadUtil;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "Download APK Url: "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 249
    .local v18, time:J
    invoke-virtual {v14, v11}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v17

    .line 250
    .local v17, resp:Lorg/apache/http/HttpResponse;
    const/16 v21, 0xc8

    invoke-interface/range {v17 .. v17}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_4

    .line 251
    new-instance v21, Ljava/io/IOException;

    invoke-interface/range {v17 .. v17}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v21
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 282
    .end local v11           #get:Lorg/apache/http/client/methods/HttpGet;
    .end local v14           #httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v17           #resp:Lorg/apache/http/HttpResponse;
    .end local v18           #time:J
    :catchall_0
    move-exception v21

    .line 283
    :goto_0
    if-eqz v5, :cond_1

    .line 285
    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->flush()V

    .line 286
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 290
    :cond_1
    :goto_1
    if-eqz v3, :cond_2

    .line 292
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 296
    :cond_2
    :goto_2
    if-eqz v15, :cond_3

    .line 298
    :try_start_3
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 299
    const/4 v15, 0x0

    .line 302
    :cond_3
    :goto_3
    throw v21

    .line 253
    .restart local v11       #get:Lorg/apache/http/client/methods/HttpGet;
    .restart local v14       #httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v17       #resp:Lorg/apache/http/HttpResponse;
    .restart local v18       #time:J
    :cond_4
    :try_start_4
    const-string v21, "content-length"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v12

    .line 254
    .local v12, headLength:Lorg/apache/http/Header;
    const/16 v16, -0x1

    .line 255
    .local v16, length:I
    if-eqz v12, :cond_5

    .line 257
    :try_start_5
    invoke-interface {v12}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 258
    sget-boolean v21, Lcom/sprint/ce/updater/DownloadUtil;->DEBUG:Z

    if-eqz v21, :cond_5

    sget-object v21, Lcom/sprint/ce/updater/DownloadUtil;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "Reported file size="

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_6

    .line 261
    :cond_5
    :goto_4
    :try_start_6
    const-string v21, "content-type"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v13

    .line 262
    .local v13, headerType:Lorg/apache/http/Header;
    if-eqz v13, :cond_6

    .line 263
    sget-boolean v21, Lcom/sprint/ce/updater/DownloadUtil;->DEBUG:Z

    if-eqz v21, :cond_6

    sget-object v21, Lcom/sprint/ce/updater/DownloadUtil;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "Content type: "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v13}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " value: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-interface {v13}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :cond_6
    invoke-interface/range {v17 .. v17}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v15

    .line 266
    const/16 v2, 0x1000

    .line 267
    .local v2, BUFFER_SIZE:I
    new-instance v4, Ljava/io/BufferedInputStream;

    const/16 v21, 0x1000

    move/from16 v0, v21

    invoke-direct {v4, v15, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 268
    .end local v3           #bis:Ljava/io/BufferedInputStream;
    .local v4, bis:Ljava/io/BufferedInputStream;
    :try_start_7
    new-instance v6, Ljava/io/BufferedOutputStream;

    const/16 v21, 0x1000

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-direct {v6, v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 269
    .end local v5           #bos:Ljava/io/BufferedOutputStream;
    .local v6, bos:Ljava/io/BufferedOutputStream;
    const/16 v21, 0x1000

    :try_start_8
    move/from16 v0, v21

    new-array v7, v0, [B

    .line 270
    .local v7, buffer:[B
    const/16 v20, 0x0

    .line 272
    .local v20, totalSize:I
    :goto_5
    const/16 v21, -0x1

    invoke-virtual {v4, v7}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v8

    .local v8, c:I
    move/from16 v0, v21

    if-ne v0, v8, :cond_c

    .line 277
    move/from16 v0, v16

    move/from16 v1, v20

    if-eq v0, v1, :cond_7

    .line 278
    sget-object v21, Lcom/sprint/ce/updater/DownloadUtil;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "APK file size different - totalSize: "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    sub-long v21, v21, v18

    const-wide/16 v23, 0x3e8

    div-long v9, v21, v23

    .line 281
    .local v9, diff:J
    sget-boolean v21, Lcom/sprint/ce/updater/DownloadUtil;->DEBUG:Z

    if-eqz v21, :cond_8

    sget-object v21, Lcom/sprint/ce/updater/DownloadUtil;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "Finish download time: "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 283
    :cond_8
    if-eqz v6, :cond_9

    .line 285
    :try_start_9
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->flush()V

    .line 286
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 290
    :cond_9
    :goto_6
    if-eqz v4, :cond_a

    .line 292
    :try_start_a
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    .line 296
    :cond_a
    :goto_7
    if-eqz v15, :cond_b

    .line 298
    :try_start_b
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    .line 299
    const/4 v15, 0x0

    .line 303
    :cond_b
    :goto_8
    return-void

    .line 273
    .end local v9           #diff:J
    :cond_c
    add-int v20, v20, v8

    .line 274
    const/16 v21, 0x0

    :try_start_c
    move/from16 v0, v21

    invoke-virtual {v6, v7, v0, v8}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto :goto_5

    .line 282
    .end local v7           #buffer:[B
    .end local v8           #c:I
    .end local v20           #totalSize:I
    :catchall_1
    move-exception v21

    move-object v3, v4

    .end local v4           #bis:Ljava/io/BufferedInputStream;
    .restart local v3       #bis:Ljava/io/BufferedInputStream;
    move-object v5, v6

    .end local v6           #bos:Ljava/io/BufferedOutputStream;
    .restart local v5       #bos:Ljava/io/BufferedOutputStream;
    goto/16 :goto_0

    .line 293
    .end local v2           #BUFFER_SIZE:I
    .end local v11           #get:Lorg/apache/http/client/methods/HttpGet;
    .end local v12           #headLength:Lorg/apache/http/Header;
    .end local v13           #headerType:Lorg/apache/http/Header;
    .end local v14           #httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v16           #length:I
    .end local v17           #resp:Lorg/apache/http/HttpResponse;
    .end local v18           #time:J
    :catch_0
    move-exception v22

    goto/16 :goto_2

    .line 300
    :catch_1
    move-exception v22

    goto/16 :goto_3

    .line 293
    .end local v3           #bis:Ljava/io/BufferedInputStream;
    .end local v5           #bos:Ljava/io/BufferedOutputStream;
    .restart local v2       #BUFFER_SIZE:I
    .restart local v4       #bis:Ljava/io/BufferedInputStream;
    .restart local v6       #bos:Ljava/io/BufferedOutputStream;
    .restart local v7       #buffer:[B
    .restart local v8       #c:I
    .restart local v9       #diff:J
    .restart local v11       #get:Lorg/apache/http/client/methods/HttpGet;
    .restart local v12       #headLength:Lorg/apache/http/Header;
    .restart local v13       #headerType:Lorg/apache/http/Header;
    .restart local v14       #httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v16       #length:I
    .restart local v17       #resp:Lorg/apache/http/HttpResponse;
    .restart local v18       #time:J
    .restart local v20       #totalSize:I
    :catch_2
    move-exception v21

    goto :goto_7

    .line 300
    :catch_3
    move-exception v21

    goto :goto_8

    .line 287
    :catch_4
    move-exception v21

    goto :goto_6

    .end local v2           #BUFFER_SIZE:I
    .end local v4           #bis:Ljava/io/BufferedInputStream;
    .end local v6           #bos:Ljava/io/BufferedOutputStream;
    .end local v7           #buffer:[B
    .end local v8           #c:I
    .end local v9           #diff:J
    .end local v11           #get:Lorg/apache/http/client/methods/HttpGet;
    .end local v12           #headLength:Lorg/apache/http/Header;
    .end local v13           #headerType:Lorg/apache/http/Header;
    .end local v14           #httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v16           #length:I
    .end local v17           #resp:Lorg/apache/http/HttpResponse;
    .end local v18           #time:J
    .end local v20           #totalSize:I
    .restart local v3       #bis:Ljava/io/BufferedInputStream;
    .restart local v5       #bos:Ljava/io/BufferedOutputStream;
    :catch_5
    move-exception v22

    goto/16 :goto_1

    .line 282
    .end local v3           #bis:Ljava/io/BufferedInputStream;
    .restart local v2       #BUFFER_SIZE:I
    .restart local v4       #bis:Ljava/io/BufferedInputStream;
    .restart local v11       #get:Lorg/apache/http/client/methods/HttpGet;
    .restart local v12       #headLength:Lorg/apache/http/Header;
    .restart local v13       #headerType:Lorg/apache/http/Header;
    .restart local v14       #httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v16       #length:I
    .restart local v17       #resp:Lorg/apache/http/HttpResponse;
    .restart local v18       #time:J
    :catchall_2
    move-exception v21

    move-object v3, v4

    .end local v4           #bis:Ljava/io/BufferedInputStream;
    .restart local v3       #bis:Ljava/io/BufferedInputStream;
    goto/16 :goto_0

    .line 259
    .end local v2           #BUFFER_SIZE:I
    .end local v13           #headerType:Lorg/apache/http/Header;
    :catch_6
    move-exception v21

    goto/16 :goto_4
.end method

.method public static getApplicationContext()Landroid/content/Context;
    .locals 2

    .prologue
    .line 77
    sget-object v0, Lcom/sprint/ce/updater/DownloadUtil;->mAppContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 78
    sget-object v0, Lcom/sprint/ce/updater/DownloadUtil;->TAG:Ljava/lang/String;

    const-string v1, "getApplicationContext() == null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_0
    sget-object v0, Lcom/sprint/ce/updater/DownloadUtil;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getHttpClient(Landroid/content/Context;Ljava/lang/String;)Lorg/apache/http/impl/client/DefaultHttpClient;
    .locals 8
    .parameter "context"
    .parameter "Url"

    .prologue
    const v7, 0xea60

    const/4 v6, -0x1

    .line 209
    const/4 v3, 0x0

    .line 210
    .local v3, proxyHost:Ljava/lang/String;
    const/16 v4, 0x50

    .line 212
    .local v4, proxyPort:I
    const-string v5, "stic"

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-le v5, v6, :cond_2

    .line 213
    const-string v3, "10.31.172.173"

    .line 214
    const/16 v4, 0x50

    .line 220
    :cond_0
    :goto_0
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 221
    .local v1, client:Lorg/apache/http/impl/client/DefaultHttpClient;
    new-instance v0, Lorg/apache/http/params/HttpConnectionParamBean;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v5

    invoke-direct {v0, v5}, Lorg/apache/http/params/HttpConnectionParamBean;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 222
    .local v0, bean:Lorg/apache/http/params/HttpConnectionParamBean;
    invoke-virtual {v0, v7}, Lorg/apache/http/params/HttpConnectionParamBean;->setSoTimeout(I)V

    .line 223
    invoke-virtual {v0, v7}, Lorg/apache/http/params/HttpConnectionParamBean;->setConnectionTimeout(I)V

    .line 225
    if-eqz v3, :cond_3

    .line 226
    new-instance v2, Lorg/apache/http/HttpHost;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    .line 227
    .local v2, proxy:Lorg/apache/http/HttpHost;
    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v5

    .line 228
    const-string v6, "http.route.default-proxy"

    invoke-interface {v5, v6, v2}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 229
    sget-boolean v5, Lcom/sprint/ce/updater/DownloadUtil;->DEBUG:Z

    if-eqz v5, :cond_1

    sget-object v5, Lcom/sprint/ce/updater/DownloadUtil;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Using HTTP proxy: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    .end local v2           #proxy:Lorg/apache/http/HttpHost;
    :cond_1
    :goto_1
    return-object v1

    .line 215
    .end local v0           #bean:Lorg/apache/http/params/HttpConnectionParamBean;
    .end local v1           #client:Lorg/apache/http/impl/client/DefaultHttpClient;
    :cond_2
    const-string v5, "dsa.spcsdns.net"

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-le v5, v6, :cond_0

    .line 216
    invoke-static {p0}, Lcom/sprint/ce/updater/DownloadUtil;->getProxyHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 217
    invoke-static {p0}, Lcom/sprint/ce/updater/DownloadUtil;->getProxyPort(Landroid/content/Context;)I

    move-result v4

    goto :goto_0

    .line 231
    .restart local v0       #bean:Lorg/apache/http/params/HttpConnectionParamBean;
    .restart local v1       #client:Lorg/apache/http/impl/client/DefaultHttpClient;
    :cond_3
    sget-boolean v5, Lcom/sprint/ce/updater/DownloadUtil;->DEBUG:Z

    if-eqz v5, :cond_1

    sget-object v5, Lcom/sprint/ce/updater/DownloadUtil;->TAG:Ljava/lang/String;

    const-string v6, "Not using HTTP proxy"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected static getProxyHost(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 328
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 329
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v1, "proxy_host"

    const v2, 0x7f050036

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected static getProxyPort(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    .line 333
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 335
    .local v1, sp:Landroid/content/SharedPreferences;
    :try_start_0
    const-string v2, "proxy_port"

    const v3, 0x7f05003a

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 337
    :goto_0
    return v2

    .line 336
    :catch_0
    move-exception v0

    .line 337
    .local v0, e:Ljava/lang/NumberFormatException;
    const/16 v2, 0x50

    goto :goto_0
.end method

.method protected static handleIntervalChanges(Landroid/content/Context;JJI)V
    .locals 15
    .parameter "context"
    .parameter "newTtl"
    .parameter "newRetryInterval"
    .parameter "newMaxRetryCount"

    .prologue
    .line 155
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 156
    .local v10, sp:Landroid/content/SharedPreferences;
    const-string v11, "update_interval"

    const-wide v12, 0x9a7ec800L

    invoke-interface {v10, v11, v12, v13}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 157
    .local v1, interval:J
    const-wide/16 v11, 0x3c

    mul-long v11, v11, p1

    const-wide/16 v13, 0x3e8

    mul-long v4, v11, v13

    .line 158
    .local v4, newInterval:J
    cmp-long v11, v1, v4

    if-eqz v11, :cond_0

    .line 159
    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    .line 160
    const-string v12, "update_interval"

    invoke-interface {v11, v12, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    .line 161
    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 163
    :cond_0
    const-string v11, "retry_interval"

    const-wide/32 v12, 0x5265c00

    invoke-interface {v10, v11, v12, v13}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    .line 164
    .local v8, oldRetryInterval:J
    const-wide/16 v11, 0x3c

    mul-long v11, v11, p3

    const-wide/16 v13, 0x3e8

    mul-long v6, v11, v13

    .line 165
    .local v6, newRetryIntervalMillis:J
    cmp-long v11, v8, v6

    if-eqz v11, :cond_1

    .line 166
    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    .line 167
    const-string v12, "retry_interval"

    invoke-interface {v11, v12, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    .line 168
    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 171
    :cond_1
    const-string v11, "max_retry_count"

    const/4 v12, 0x3

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 172
    .local v3, maxRetryCount:I
    if-ltz p5, :cond_2

    move/from16 v0, p5

    if-eq v0, v3, :cond_2

    .line 173
    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    .line 174
    const-string v12, "max_retry_count"

    move/from16 v0, p5

    invoke-interface {v11, v12, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    .line 175
    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 177
    :cond_2
    return-void
.end method

.method private static isNetworkAvailable(Landroid/content/Context;I)Z
    .locals 6
    .parameter "context"
    .parameter "networkType"

    .prologue
    const/4 v3, 0x0

    .line 359
    const/4 v1, 0x0

    .line 361
    .local v1, info:Landroid/net/NetworkInfo;
    :try_start_0
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 362
    .local v2, mCM:Landroid/net/ConnectivityManager;
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 366
    .end local v2           #mCM:Landroid/net/ConnectivityManager;
    :goto_0
    if-nez v1, :cond_1

    .line 370
    :cond_0
    :goto_1
    return v3

    .line 363
    :catch_0
    move-exception v0

    .line 364
    .local v0, e:Ljava/lang/Exception;
    sget-object v4, Lcom/sprint/ce/updater/DownloadUtil;->TAG:Ljava/lang/String;

    const-string v5, "isNetworkAvailable"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 367
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    if-ne v4, p1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v4, v5, :cond_0

    .line 370
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    goto :goto_1
.end method

.method protected static isUsingProxy(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 323
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 324
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v1, "use_proxy"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method protected static isUsingSlot0(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 318
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 319
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v1, "use_slot0"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static parseInternetDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 3
    .parameter "dateString"

    .prologue
    .line 180
    const/4 v0, 0x0

    .line 181
    .local v0, date:Ljava/util/Date;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v2, Lcom/sprint/ce/updater/DownloadUtil;->RFC_822_DATE_FORMATS:[Ljava/text/SimpleDateFormat;

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 189
    :goto_1
    return-object v0

    .line 183
    :cond_0
    :try_start_0
    sget-object v2, Lcom/sprint/ce/updater/DownloadUtil;->RFC_822_DATE_FORMATS:[Ljava/text/SimpleDateFormat;

    aget-object v2, v2, v1

    invoke-virtual {v2, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    .line 185
    :catch_0
    move-exception v2

    .line 181
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static releaseDataSession(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 313
    sget-boolean v0, Lcom/sprint/ce/updater/DownloadUtil;->EMULATOR:Z

    if-nez v0, :cond_0

    .line 314
    invoke-static {p0}, Lcom/sprint/ce/updater/DeviceUtil;->releaseDataSession(Landroid/content/Context;)V

    .line 315
    :cond_0
    return-void
.end method

.method public static requestDataSession(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 306
    sget-boolean v0, Lcom/sprint/ce/updater/DownloadUtil;->EMULATOR:Z

    if-eqz v0, :cond_0

    .line 307
    invoke-static {p0}, Lcom/sprint/ce/updater/DownloadUtil;->waitForNetwork(Landroid/content/Context;)Z

    move-result v0

    .line 309
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/sprint/ce/updater/DeviceUtil;->requestDataSession(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0
.end method

.method public static setApplicationContext(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 72
    sput-object p0, Lcom/sprint/ce/updater/DownloadUtil;->mAppContext:Landroid/content/Context;

    .line 73
    return-void
.end method

.method public static waitForNetwork(Landroid/content/Context;)Z
    .locals 6
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 343
    const/16 v1, 0x61a8

    .local v1, i:I
    :goto_0
    if-gtz v1, :cond_0

    .line 354
    :goto_1
    return v2

    .line 344
    :cond_0
    const/4 v3, 0x0

    :try_start_0
    invoke-static {p0, v3}, Lcom/sprint/ce/updater/DownloadUtil;->isNetworkAvailable(Landroid/content/Context;I)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x59d8

    if-le v1, v3, :cond_2

    .line 345
    :cond_1
    const-wide/16 v3, 0x3e8

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 346
    const-string v3, "WAITING"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Waiting for Network = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    rsub-int v5, v1, 0x61a8

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 343
    add-int/lit16 v1, v1, -0x3e8

    goto :goto_0

    .line 349
    :cond_2
    const/4 v2, 0x1

    goto :goto_1

    .line 351
    :catch_0
    move-exception v0

    .line 352
    .local v0, e:Ljava/lang/Exception;
    sget-object v3, Lcom/sprint/ce/updater/DownloadUtil;->TAG:Ljava/lang/String;

    const-string v4, "isNetworkAvailable:wait"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

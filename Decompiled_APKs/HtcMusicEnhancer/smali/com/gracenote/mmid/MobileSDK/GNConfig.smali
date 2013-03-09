.class public Lcom/gracenote/mmid/MobileSDK/GNConfig;
.super Ljava/lang/Object;
.source "GNConfig.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final NET_PREFS_NAME:Ljava/lang/String; = "Gracenote Network Preferences"

.field static final WEB_SERVICE_USER_ID_FLAG:Ljava/lang/String; = "Gracenote Web Service User ID"

.field private static defaultConfig:Lcom/gracenote/mmid/MobileSDK/GNConfig;

.field private static defaultCoverArtSizePreference:Ljava/lang/String;

.field private static foundCachedUserId:Z

.field private static registerInvalidClientIdFailure:Z

.field private static registerNeeded:Z

.field private static registerResultPending:Z


# instance fields
.field private context:Landroid/content/Context;

.field private opQueue:Lcom/gracenote/mmid/MobileSDK/GNOperationQueue;

.field private protectedProperties:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private publicProperties:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 183
    const/4 v0, 0x0

    sput-object v0, Lcom/gracenote/mmid/MobileSDK/GNConfig;->defaultConfig:Lcom/gracenote/mmid/MobileSDK/GNConfig;

    .line 195
    const/4 v0, 0x1

    sput-boolean v0, Lcom/gracenote/mmid/MobileSDK/GNConfig;->registerNeeded:Z

    .line 196
    sput-boolean v1, Lcom/gracenote/mmid/MobileSDK/GNConfig;->registerResultPending:Z

    .line 197
    sput-boolean v1, Lcom/gracenote/mmid/MobileSDK/GNConfig;->foundCachedUserId:Z

    .line 198
    sput-boolean v1, Lcom/gracenote/mmid/MobileSDK/GNConfig;->registerInvalidClientIdFailure:Z

    .line 200
    const-string v0, "SMALL,MEDIUM,THUMBNAIL,LARGE,XLARGE"

    sput-object v0, Lcom/gracenote/mmid/MobileSDK/GNConfig;->defaultCoverArtSizePreference:Ljava/lang/String;

    .line 181
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 8
    .parameter "clientId"
    .parameter "inContext"

    .prologue
    const/4 v7, 0x0

    .line 202
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 203
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/gracenote/mmid/MobileSDK/GNConfig;->publicProperties:Ljava/util/HashMap;

    .line 204
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/gracenote/mmid/MobileSDK/GNConfig;->protectedProperties:Ljava/util/HashMap;

    .line 206
    iget-object v4, p0, Lcom/gracenote/mmid/MobileSDK/GNConfig;->publicProperties:Ljava/util/HashMap;

    const-string v5, "clientId"

    invoke-virtual {v4, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    iget-object v4, p0, Lcom/gracenote/mmid/MobileSDK/GNConfig;->protectedProperties:Ljava/util/HashMap;

    const-string v5, "userId"

    invoke-virtual {v4, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    iget-object v4, p0, Lcom/gracenote/mmid/MobileSDK/GNConfig;->publicProperties:Ljava/util/HashMap;

    const-string v5, "lang"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    iget-object v4, p0, Lcom/gracenote/mmid/MobileSDK/GNConfig;->publicProperties:Ljava/util/HashMap;

    const-string v5, "debugLog"

    const-string v6, "/sdcard/gracenote"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    iget-object v4, p0, Lcom/gracenote/mmid/MobileSDK/GNConfig;->publicProperties:Ljava/util/HashMap;

    const-string v5, "debugEnabled"

    const-string v6, "0"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    const-string v2, "c%s.web.cddbp.net"

    .line 219
    .local v2, webservicesHostnameFormat:Ljava/lang/String;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 220
    invoke-virtual {p0, p1}, Lcom/gracenote/mmid/MobileSDK/GNConfig;->getClientIdShortForm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 219
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 222
    .local v1, webservicesHostname:Ljava/lang/String;
    const/4 v0, 0x0

    .line 228
    .local v0, useTestServer:Z
    iget-object v4, p0, Lcom/gracenote/mmid/MobileSDK/GNConfig;->protectedProperties:Ljava/util/HashMap;

    const-string v5, "webservices.hostname"

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    const-string v3, "/webapi/xml/1.0/"

    .line 236
    .local v3, webservicesPath:Ljava/lang/String;
    iget-object v4, p0, Lcom/gracenote/mmid/MobileSDK/GNConfig;->protectedProperties:Ljava/util/HashMap;

    const-string v5, "webservices.path"

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    iget-object v4, p0, Lcom/gracenote/mmid/MobileSDK/GNConfig;->publicProperties:Ljava/util/HashMap;

    const-string v5, "version"

    const-string v6, "2.4.0.8"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    iget-object v4, p0, Lcom/gracenote/mmid/MobileSDK/GNConfig;->publicProperties:Ljava/util/HashMap;

    const-string v5, "webservices.httpsEnabled"

    const-string v6, "1"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    iget-object v4, p0, Lcom/gracenote/mmid/MobileSDK/GNConfig;->publicProperties:Ljava/util/HashMap;

    const-string v5, "webservices.gzipEnabled"

    const-string v6, "1"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    iget-object v4, p0, Lcom/gracenote/mmid/MobileSDK/GNConfig;->publicProperties:Ljava/util/HashMap;

    const-string v5, "isGenreCoverArtEnabled"

    const-string v6, "1"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    iget-object v4, p0, Lcom/gracenote/mmid/MobileSDK/GNConfig;->publicProperties:Ljava/util/HashMap;

    const-string v5, "webservices.isInlineCoverArtEnabled"

    const-string v6, "1"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    iget-object v4, p0, Lcom/gracenote/mmid/MobileSDK/GNConfig;->publicProperties:Ljava/util/HashMap;

    const-string v5, "webservices.coverArtSizePreference"

    sget-object v6, Lcom/gracenote/mmid/MobileSDK/GNConfig;->defaultCoverArtSizePreference:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    iget-object v4, p0, Lcom/gracenote/mmid/MobileSDK/GNConfig;->publicProperties:Ljava/util/HashMap;

    const-string v5, "preferredLinkSource"

    invoke-virtual {v4, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    iget-object v4, p0, Lcom/gracenote/mmid/MobileSDK/GNConfig;->publicProperties:Ljava/util/HashMap;

    const-string v5, "noiseDetectionOverridden"

    const-string v6, "1"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    iget-object v4, p0, Lcom/gracenote/mmid/MobileSDK/GNConfig;->publicProperties:Ljava/util/HashMap;

    const-string v5, "silenceDetectionOverridden"

    const-string v6, "1"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    iget-object v4, p0, Lcom/gracenote/mmid/MobileSDK/GNConfig;->publicProperties:Ljava/util/HashMap;

    const-string v5, "requiredFingerprintBlock"

    const-string v6, "2"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    iget-object v4, p0, Lcom/gracenote/mmid/MobileSDK/GNConfig;->publicProperties:Ljava/util/HashMap;

    const-string v5, "Content.contributor.biography"

    const-string v6, "0"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    iget-object v4, p0, Lcom/gracenote/mmid/MobileSDK/GNConfig;->publicProperties:Ljava/util/HashMap;

    const-string v5, "Content.review"

    const-string v6, "0"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    iget-object v4, p0, Lcom/gracenote/mmid/MobileSDK/GNConfig;->publicProperties:Ljava/util/HashMap;

    const-string v5, "Content.contributor.images"

    const-string v6, "0"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    iput-object p2, p0, Lcom/gracenote/mmid/MobileSDK/GNConfig;->context:Landroid/content/Context;

    .line 267
    new-instance v4, Lcom/gracenote/mmid/MobileSDK/GNOperationQueue;

    invoke-direct {v4, p0}, Lcom/gracenote/mmid/MobileSDK/GNOperationQueue;-><init>(Lcom/gracenote/mmid/MobileSDK/GNConfig;)V

    iput-object v4, p0, Lcom/gracenote/mmid/MobileSDK/GNConfig;->opQueue:Lcom/gracenote/mmid/MobileSDK/GNOperationQueue;

    .line 275
    return-void
.end method

.method public static init(Ljava/lang/String;Landroid/content/Context;)Lcom/gracenote/mmid/MobileSDK/GNConfig;
    .locals 4
    .parameter "inClientId"
    .parameter "inContext"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 300
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 301
    new-instance v0, Ljava/lang/RuntimeException;

    .line 302
    const-string v1, "GNConfig.init() should not be invoked with an Activity reference"

    .line 301
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 304
    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    move v0, v1

    :goto_0
    const-string v3, "invalid clientId"

    invoke-static {v0, v3}, Lcom/gracenote/mmid/MobileSDK/GNAssert;->Assert(ZLjava/lang/String;)V

    .line 305
    if-eqz p1, :cond_2

    :goto_1
    const-string v0, "invalid application"

    invoke-static {v1, v0}, Lcom/gracenote/mmid/MobileSDK/GNAssert;->Assert(ZLjava/lang/String;)V

    .line 306
    sget-object v0, Lcom/gracenote/mmid/MobileSDK/GNConfig;->defaultConfig:Lcom/gracenote/mmid/MobileSDK/GNConfig;

    if-eqz v0, :cond_5

    .line 307
    sget-object v0, Lcom/gracenote/mmid/MobileSDK/GNConfig;->defaultConfig:Lcom/gracenote/mmid/MobileSDK/GNConfig;

    const-string v1, "clientId"

    invoke-virtual {v0, v1}, Lcom/gracenote/mmid/MobileSDK/GNConfig;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 309
    new-instance v0, Ljava/lang/RuntimeException;

    .line 310
    const-string v1, "clientId can\'t change after first invocation of GNConfig.init()"

    .line 309
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v0, v2

    .line 304
    goto :goto_0

    :cond_2
    move v1, v2

    .line 305
    goto :goto_1

    .line 312
    :cond_3
    sget-object v0, Lcom/gracenote/mmid/MobileSDK/GNConfig;->defaultConfig:Lcom/gracenote/mmid/MobileSDK/GNConfig;

    invoke-virtual {v0}, Lcom/gracenote/mmid/MobileSDK/GNConfig;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eq v0, p1, :cond_4

    .line 314
    new-instance v0, Ljava/lang/RuntimeException;

    .line 315
    const-string v1, "application reference does not match first invocation of GNConfig.init()"

    .line 314
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 317
    :cond_4
    sget-object v0, Lcom/gracenote/mmid/MobileSDK/GNConfig;->defaultConfig:Lcom/gracenote/mmid/MobileSDK/GNConfig;

    .line 320
    :goto_2
    return-object v0

    .line 319
    :cond_5
    new-instance v0, Lcom/gracenote/mmid/MobileSDK/GNConfig;

    invoke-direct {v0, p0, p1}, Lcom/gracenote/mmid/MobileSDK/GNConfig;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    sput-object v0, Lcom/gracenote/mmid/MobileSDK/GNConfig;->defaultConfig:Lcom/gracenote/mmid/MobileSDK/GNConfig;

    .line 320
    sget-object v0, Lcom/gracenote/mmid/MobileSDK/GNConfig;->defaultConfig:Lcom/gracenote/mmid/MobileSDK/GNConfig;

    goto :goto_2
.end method


# virtual methods
.method declared-synchronized appendToDebugLog(Ljava/lang/String;)V
    .locals 10
    .parameter "msg"

    .prologue
    const/16 v9, 0xa

    .line 647
    monitor-enter p0

    if-nez p1, :cond_1

    .line 683
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 650
    :cond_1
    :try_start_0
    const-string v7, "debugEnabled"

    invoke-virtual {p0, v7}, Lcom/gracenote/mmid/MobileSDK/GNConfig;->getBooleanProperty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 655
    const-string v0, "Gracenote MobileSDK"

    .line 657
    .local v0, LOG_TAG:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "debugLog"

    invoke-virtual {p0, v8}, Lcom/gracenote/mmid/MobileSDK/GNConfig;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "/debug.log"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 658
    .local v2, debugLog:Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 661
    .local v3, debugLogFile:Ljava/io/File;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    .line 662
    .local v5, parentDir:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_2

    .line 663
    invoke-virtual {v5}, Ljava/io/File;->mkdir()Z

    .line 665
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v7, v9, :cond_3

    .line 666
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 667
    .local v1, builder:Ljava/lang/StringBuilder;
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 668
    const/16 v7, 0xa

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 669
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 671
    .end local v1           #builder:Ljava/lang/StringBuilder;
    :cond_3
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 674
    invoke-static {v2, p1}, Lcom/gracenote/mmid/MobileSDK/GNUtil;->appendUTF8(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .line 675
    .local v6, worked:Z
    const-string v7, "append to log failed"

    invoke-static {v6, v7}, Lcom/gracenote/mmid/MobileSDK/GNAssert;->Assert(ZLjava/lang/String;)V

    .line 678
    .end local v6           #worked:Z
    :cond_4
    const-string v7, "Gracenote MobileSDK"

    invoke-static {v7, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 680
    .end local v5           #parentDir:Ljava/io/File;
    :catch_0
    move-exception v4

    .line 681
    .local v4, e:Ljava/lang/Exception;
    :try_start_2
    const-string v7, "Gracenote MobileSDK"

    const-string v8, "Can\'t write to log file."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 647
    .end local v0           #LOG_TAG:Ljava/lang/String;
    .end local v2           #debugLog:Ljava/lang/String;
    .end local v3           #debugLogFile:Ljava/io/File;
    .end local v4           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method protected clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 332
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gracenote/mmid/MobileSDK/GNConfig;

    .line 340
    .local v0, clone:Lcom/gracenote/mmid/MobileSDK/GNConfig;
    iget-object v1, p0, Lcom/gracenote/mmid/MobileSDK/GNConfig;->publicProperties:Ljava/util/HashMap;

    iput-object v1, v0, Lcom/gracenote/mmid/MobileSDK/GNConfig;->publicProperties:Ljava/util/HashMap;

    .line 341
    iget-object v1, p0, Lcom/gracenote/mmid/MobileSDK/GNConfig;->protectedProperties:Ljava/util/HashMap;

    iput-object v1, v0, Lcom/gracenote/mmid/MobileSDK/GNConfig;->protectedProperties:Ljava/util/HashMap;

    .line 343
    iget-object v1, p0, Lcom/gracenote/mmid/MobileSDK/GNConfig;->context:Landroid/content/Context;

    iput-object v1, v0, Lcom/gracenote/mmid/MobileSDK/GNConfig;->context:Landroid/content/Context;

    .line 344
    iget-object v1, p0, Lcom/gracenote/mmid/MobileSDK/GNConfig;->opQueue:Lcom/gracenote/mmid/MobileSDK/GNOperationQueue;

    iput-object v1, v0, Lcom/gracenote/mmid/MobileSDK/GNConfig;->opQueue:Lcom/gracenote/mmid/MobileSDK/GNOperationQueue;

    .line 346
    return-object v0
.end method

.method public getBooleanProperty(Ljava/lang/String;)Z
    .locals 5
    .parameter "key"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 408
    invoke-virtual {p0, p1}, Lcom/gracenote/mmid/MobileSDK/GNConfig;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 409
    .local v0, value:Ljava/lang/String;
    if-eqz v0, :cond_2

    move v1, v2

    :goto_0
    const-string v4, "property is null"

    invoke-static {v1, v4}, Lcom/gracenote/mmid/MobileSDK/GNAssert;->Assert(ZLjava/lang/String;)V

    .line 410
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "True"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    move v3, v2

    .line 413
    :cond_1
    return v3

    :cond_2
    move v1, v3

    .line 409
    goto :goto_0

    .line 412
    :cond_3
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "False"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 415
    new-instance v1, Ljava/lang/RuntimeException;

    .line 416
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getBooleanProperty can not be used to get non-Boolean property "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 417
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Use getProperty instead."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 416
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 415
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method getClientIdShortForm(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "clientId"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 457
    const/16 v3, 0x2d

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 458
    .local v0, dashIndex:I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    if-eqz v0, :cond_0

    move v3, v4

    :goto_0
    const-string v6, "invalid clientId"

    invoke-static {v3, v6}, Lcom/gracenote/mmid/MobileSDK/GNAssert;->Assert(ZLjava/lang/String;)V

    .line 459
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v3, "-"

    invoke-direct {v2, p1, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    .local v2, st:Ljava/util/StringTokenizer;
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 461
    .local v1, shortClientId:Ljava/lang/String;
    if-eqz v1, :cond_1

    :goto_1
    const-string v3, "no short client id"

    invoke-static {v4, v3}, Lcom/gracenote/mmid/MobileSDK/GNAssert;->Assert(ZLjava/lang/String;)V

    .line 462
    return-object v1

    .end local v1           #shortClientId:Ljava/lang/String;
    .end local v2           #st:Ljava/util/StringTokenizer;
    :cond_0
    move v3, v5

    .line 458
    goto :goto_0

    .restart local v1       #shortClientId:Ljava/lang/String;
    .restart local v2       #st:Ljava/util/StringTokenizer;
    :cond_1
    move v4, v5

    .line 461
    goto :goto_1
.end method

.method getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNConfig;->context:Landroid/content/Context;

    return-object v0
.end method

.method getOpQueue()Lcom/gracenote/mmid/MobileSDK/GNOperationQueue;
    .locals 1

    .prologue
    .line 565
    iget-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNConfig;->opQueue:Lcom/gracenote/mmid/MobileSDK/GNOperationQueue;

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "key"

    .prologue
    .line 390
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "key is null"

    invoke-static {v0, v1}, Lcom/gracenote/mmid/MobileSDK/GNAssert;->Assert(ZLjava/lang/String;)V

    .line 392
    iget-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNConfig;->publicProperties:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "table does not contain key \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gracenote/mmid/MobileSDK/GNAssert;->Assert(ZLjava/lang/String;)V

    .line 393
    iget-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNConfig;->publicProperties:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 390
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getProtectedProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "key"

    .prologue
    .line 435
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "key is null"

    invoke-static {v0, v1}, Lcom/gracenote/mmid/MobileSDK/GNAssert;->Assert(ZLjava/lang/String;)V

    .line 436
    const-string v0, "userId"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 437
    invoke-virtual {p0}, Lcom/gracenote/mmid/MobileSDK/GNConfig;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 439
    :goto_1
    return-object v0

    .line 435
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 439
    :cond_1
    iget-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNConfig;->protectedProperties:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_1
.end method

.method getUserId()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 479
    iget-object v3, p0, Lcom/gracenote/mmid/MobileSDK/GNConfig;->context:Landroid/content/Context;

    const-string v4, "Gracenote Network Preferences"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 480
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v3, "Gracenote Web Service User ID"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 481
    .local v1, userId:Ljava/lang/String;
    if-nez v1, :cond_0

    move-object v1, v2

    .line 484
    .end local v1           #userId:Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method isNetworkConnected()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 507
    iget-object v5, p0, Lcom/gracenote/mmid/MobileSDK/GNConfig;->context:Landroid/content/Context;

    const-string v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 508
    .local v0, connec:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    .line 510
    .local v1, connectionState:Landroid/net/NetworkInfo$State;
    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v1, v5, :cond_1

    move v2, v3

    .line 511
    .local v2, isConnected:Z
    :goto_0
    if-nez v2, :cond_0

    .line 512
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    .line 513
    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v1, v5, :cond_2

    move v2, v3

    .line 515
    :cond_0
    :goto_1
    return v2

    .end local v2           #isConnected:Z
    :cond_1
    move v2, v4

    .line 510
    goto :goto_0

    .restart local v2       #isConnected:Z
    :cond_2
    move v2, v4

    .line 513
    goto :goto_1
.end method

.method isRegisterInvalidClientIdFailure()Z
    .locals 1

    .prologue
    .line 549
    sget-boolean v0, Lcom/gracenote/mmid/MobileSDK/GNConfig;->registerInvalidClientIdFailure:Z

    return v0
.end method

.method isRegisterNeeded()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 526
    sget-boolean v2, Lcom/gracenote/mmid/MobileSDK/GNConfig;->registerInvalidClientIdFailure:Z

    if-eqz v2, :cond_1

    .line 545
    :cond_0
    :goto_0
    return v1

    .line 530
    :cond_1
    sget-boolean v2, Lcom/gracenote/mmid/MobileSDK/GNConfig;->registerResultPending:Z

    if-nez v2, :cond_0

    .line 537
    sget-boolean v2, Lcom/gracenote/mmid/MobileSDK/GNConfig;->foundCachedUserId:Z

    if-nez v2, :cond_2

    .line 538
    invoke-virtual {p0}, Lcom/gracenote/mmid/MobileSDK/GNConfig;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 539
    .local v0, userId:Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 540
    sput-boolean v1, Lcom/gracenote/mmid/MobileSDK/GNConfig;->registerNeeded:Z

    .line 541
    const/4 v1, 0x1

    sput-boolean v1, Lcom/gracenote/mmid/MobileSDK/GNConfig;->foundCachedUserId:Z

    .line 545
    .end local v0           #userId:Ljava/lang/String;
    :cond_2
    sget-boolean v1, Lcom/gracenote/mmid/MobileSDK/GNConfig;->registerNeeded:Z

    goto :goto_0
.end method

.method isRegisterResultPending()Z
    .locals 1

    .prologue
    .line 557
    sget-boolean v0, Lcom/gracenote/mmid/MobileSDK/GNConfig;->registerResultPending:Z

    return v0
.end method

.method postSetCoverArtSizePreference()V
    .locals 9

    .prologue
    .line 603
    const/4 v2, 0x0

    .line 604
    .local v2, isInvalid:Z
    const/4 v5, 0x0

    .line 606
    .local v5, tokenCount:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 608
    .local v0, builder:Ljava/lang/StringBuilder;
    const-string v6, "webservices.coverArtSizePreference"

    invoke-virtual {p0, v6}, Lcom/gracenote/mmid/MobileSDK/GNConfig;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 610
    .local v1, coverArtSize:Ljava/lang/String;
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v6, ","

    invoke-direct {v3, v1, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    .local v3, st:Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-nez v6, :cond_0

    .line 627
    if-nez v5, :cond_3

    .line 628
    const/4 v2, 0x1

    .line 633
    :goto_1
    if-eqz v2, :cond_4

    .line 635
    iget-object v6, p0, Lcom/gracenote/mmid/MobileSDK/GNConfig;->publicProperties:Ljava/util/HashMap;

    const-string v7, "webservices.coverArtSizePreference"

    sget-object v8, Lcom/gracenote/mmid/MobileSDK/GNConfig;->defaultCoverArtSizePreference:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 639
    :goto_2
    return-void

    .line 613
    :cond_0
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 614
    .local v4, token:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 615
    const-string v6, "LARGE"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 616
    const-string v6, "XLARGE"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 617
    const-string v6, "SMALL"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 618
    const-string v6, "MEDIUM"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 619
    const-string v6, "THUMBNAIL"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 620
    :cond_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 621
    const-string v6, ","

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 622
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 624
    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    .line 630
    .end local v4           #token:Ljava/lang/String;
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_1

    .line 637
    :cond_4
    iget-object v6, p0, Lcom/gracenote/mmid/MobileSDK/GNConfig;->publicProperties:Ljava/util/HashMap;

    const-string v7, "webservices.coverArtSizePreference"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method postSetDebugLogEnabled()V
    .locals 7

    .prologue
    .line 573
    sget-object v5, Lcom/gracenote/mmid/MobileSDK/GNConfig;->defaultConfig:Lcom/gracenote/mmid/MobileSDK/GNConfig;

    if-eq p0, v5, :cond_0

    .line 574
    new-instance v5, Ljava/lang/RuntimeException;

    .line 575
    const-string v6, "can\'t set debugLogEnabled property on non-default GNConfig"

    .line 574
    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 578
    :cond_0
    const-string v5, "debugEnabled"

    invoke-virtual {p0, v5}, Lcom/gracenote/mmid/MobileSDK/GNConfig;->getBooleanProperty(Ljava/lang/String;)Z

    move-result v4

    .line 579
    .local v4, isEnabled:Z
    if-nez v4, :cond_2

    .line 583
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "debugLog"

    invoke-virtual {p0, v6}, Lcom/gracenote/mmid/MobileSDK/GNConfig;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/debug.log"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 584
    .local v0, debugLog:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 585
    .local v1, debugLogFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 586
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 589
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "debugLog"

    invoke-virtual {p0, v6}, Lcom/gracenote/mmid/MobileSDK/GNConfig;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/recorded.pcm"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 590
    .local v2, debugPcm:Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 591
    .local v3, debugPcmFile:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 592
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 595
    .end local v0           #debugLog:Ljava/lang/String;
    .end local v1           #debugLogFile:Ljava/io/File;
    .end local v2           #debugPcm:Ljava/lang/String;
    .end local v3           #debugPcmFile:Ljava/io/File;
    :cond_2
    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "key"
    .parameter "value"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 362
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    move v0, v1

    :goto_0
    const-string v3, "key is null"

    invoke-static {v0, v3}, Lcom/gracenote/mmid/MobileSDK/GNAssert;->Assert(ZLjava/lang/String;)V

    .line 364
    const-string v0, "clientId"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    :goto_1
    const-string v3, "can\'t set clientId"

    invoke-static {v0, v3}, Lcom/gracenote/mmid/MobileSDK/GNAssert;->Assert(ZLjava/lang/String;)V

    .line 366
    const-string v0, "version"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :goto_2
    const-string v0, "can\'t set version"

    invoke-static {v2, v0}, Lcom/gracenote/mmid/MobileSDK/GNAssert;->Assert(ZLjava/lang/String;)V

    .line 368
    iget-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNConfig;->publicProperties:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Property \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" is not supported by this version of GNConfig"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gracenote/mmid/MobileSDK/GNAssert;->Assert(ZLjava/lang/String;)V

    .line 370
    iget-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNConfig;->publicProperties:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNConfig;->publicProperties:Ljava/util/HashMap;

    .line 371
    iget-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNConfig;->publicProperties:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    const-string v0, "debugEnabled"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 375
    invoke-virtual {p0}, Lcom/gracenote/mmid/MobileSDK/GNConfig;->postSetDebugLogEnabled()V

    .line 377
    :cond_0
    const-string v0, "webservices.coverArtSizePreference"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 378
    invoke-virtual {p0}, Lcom/gracenote/mmid/MobileSDK/GNConfig;->postSetCoverArtSizePreference()V

    .line 380
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 362
    goto :goto_0

    :cond_3
    move v0, v1

    .line 364
    goto :goto_1

    :cond_4
    move v2, v1

    .line 366
    goto :goto_2
.end method

.method setProtectedProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "key"
    .parameter "value"

    .prologue
    .line 443
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "key is null"

    invoke-static {v0, v1}, Lcom/gracenote/mmid/MobileSDK/GNAssert;->Assert(ZLjava/lang/String;)V

    .line 444
    iget-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNConfig;->protectedProperties:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "table does not contain key \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gracenote/mmid/MobileSDK/GNAssert;->Assert(ZLjava/lang/String;)V

    .line 446
    iget-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNConfig;->protectedProperties:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNConfig;->protectedProperties:Ljava/util/HashMap;

    .line 447
    iget-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNConfig;->protectedProperties:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    return-void

    .line 443
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setRegisterInvalidClientIdFailure(Z)V
    .locals 0
    .parameter "inValue"

    .prologue
    .line 553
    sput-boolean p1, Lcom/gracenote/mmid/MobileSDK/GNConfig;->registerInvalidClientIdFailure:Z

    .line 554
    return-void
.end method

.method setRegisterResultPending(Z)V
    .locals 0
    .parameter "inValue"

    .prologue
    .line 561
    sput-boolean p1, Lcom/gracenote/mmid/MobileSDK/GNConfig;->registerResultPending:Z

    .line 562
    return-void
.end method

.method declared-synchronized setUserId(Ljava/lang/String;)V
    .locals 5
    .parameter "userId"

    .prologue
    const/4 v2, 0x0

    .line 492
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    const-string v3, "userId is the empty string"

    invoke-static {v2, v3}, Lcom/gracenote/mmid/MobileSDK/GNAssert;->Assert(ZLjava/lang/String;)V

    .line 493
    iget-object v2, p0, Lcom/gracenote/mmid/MobileSDK/GNConfig;->context:Landroid/content/Context;

    const-string v3, "Gracenote Network Preferences"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 494
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 495
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "Gracenote Web Service User ID"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 496
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 497
    monitor-exit p0

    return-void

    .line 492
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #prefs:Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

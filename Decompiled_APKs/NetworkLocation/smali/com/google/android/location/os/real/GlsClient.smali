.class public Lcom/google/android/location/os/real/GlsClient;
.super Ljava/lang/Object;
.source "GlsClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/location/os/real/GlsClient$RequestListener;
    }
.end annotation


# static fields
.field private static USE_GSERVICES:Z

.field private static applicationVersion:Ljava/lang/String;

.field private static cacheDir:Ljava/io/File;

.field private static platformBuild:Ljava/lang/String;

.field private static platformKey:Ljava/lang/String;


# instance fields
.field private final callbackRunner:Lcom/google/android/location/os/real/CallbackRunner;

.field private final context:Landroid/content/Context;

.field private mDeviceRestart:Z

.field private final queryListener:Lcom/google/android/location/os/real/GlsClient$RequestListener;

.field private final uploadListener:Lcom/google/android/location/os/real/GlsClient$RequestListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/android/location/os/real/GlsClient;->USE_GSERVICES:Z

    .line 79
    const-string v0, ""

    sput-object v0, Lcom/google/android/location/os/real/GlsClient;->applicationVersion:Ljava/lang/String;

    .line 85
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/location/os/real/GlsClient;->platformBuild:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/location/os/real/CallbackRunner;)V
    .locals 2
    .parameter "context"
    .parameter "callbackRunner"

    .prologue
    const/4 v1, 0x1

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-boolean v1, p0, Lcom/google/android/location/os/real/GlsClient;->mDeviceRestart:Z

    .line 104
    new-instance v0, Lcom/google/android/location/os/real/GlsClient$RequestListener;

    invoke-direct {v0, p0, v1}, Lcom/google/android/location/os/real/GlsClient$RequestListener;-><init>(Lcom/google/android/location/os/real/GlsClient;Z)V

    iput-object v0, p0, Lcom/google/android/location/os/real/GlsClient;->queryListener:Lcom/google/android/location/os/real/GlsClient$RequestListener;

    .line 105
    new-instance v0, Lcom/google/android/location/os/real/GlsClient$RequestListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/location/os/real/GlsClient$RequestListener;-><init>(Lcom/google/android/location/os/real/GlsClient;Z)V

    iput-object v0, p0, Lcom/google/android/location/os/real/GlsClient;->uploadListener:Lcom/google/android/location/os/real/GlsClient$RequestListener;

    .line 157
    iput-object p1, p0, Lcom/google/android/location/os/real/GlsClient;->context:Landroid/content/Context;

    .line 158
    iput-object p2, p0, Lcom/google/android/location/os/real/GlsClient;->callbackRunner:Lcom/google/android/location/os/real/CallbackRunner;

    .line 159
    invoke-static {p1}, Lcom/google/android/location/os/real/GlsClient;->init(Landroid/content/Context;)V

    .line 160
    return-void
.end method

.method static synthetic access$000(Ljava/util/Locale;Lcom/google/common/io/protocol/ProtoBuf;)Lcom/google/common/io/protocol/ProtoBuf;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-static {p0, p1}, Lcom/google/android/location/os/real/GlsClient;->createPlatformProfile(Ljava/util/Locale;Lcom/google/common/io/protocol/ProtoBuf;)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/location/os/real/GlsClient;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/google/android/location/os/real/GlsClient;->generateDebugInfo()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/google/android/location/os/real/GlsClient;Lcom/google/common/io/protocol/ProtoBuf;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/google/android/location/os/real/GlsClient;->updateDebugProfileLocked(Lcom/google/common/io/protocol/ProtoBuf;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/location/os/real/GlsClient;)Lcom/google/android/location/os/real/CallbackRunner;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/location/os/real/GlsClient;->callbackRunner:Lcom/google/android/location/os/real/CallbackRunner;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/common/io/protocol/ProtoBuf;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-static {p0}, Lcom/google/android/location/os/real/GlsClient;->extractPlatformKey(Lcom/google/common/io/protocol/ProtoBuf;)V

    return-void
.end method

.method private static createPlatformProfile(Ljava/util/Locale;Lcom/google/common/io/protocol/ProtoBuf;)Lcom/google/common/io/protocol/ProtoBuf;
    .locals 4
    .parameter "locale"
    .parameter "gCellularPlatformProfile"

    .prologue
    .line 245
    new-instance v1, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v2, Lcom/google/android/location/protocol/LocserverMessageTypes;->GPLATFORM_PROFILE:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 246
    .local v1, platformProfile:Lcom/google/common/io/protocol/ProtoBuf;
    const/4 v2, 0x1

    sget-object v3, Lcom/google/android/location/os/real/GlsClient;->applicationVersion:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 247
    const/4 v2, 0x2

    sget-object v3, Lcom/google/android/location/os/real/GlsClient;->platformBuild:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 250
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 251
    const/4 v2, 0x5

    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 255
    :cond_0
    invoke-static {}, Lcom/google/android/location/os/real/GlsClient;->getPlatformKey()Ljava/lang/String;

    move-result-object v0

    .line 256
    .local v0, platformKey:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 257
    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 261
    :cond_1
    const/4 v2, 0x6

    invoke-virtual {v1, v2, p1}, Lcom/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 264
    return-object v1
.end method

.method public static declared-synchronized deletePlatformKey()V
    .locals 6

    .prologue
    .line 183
    const-class v3, Lcom/google/android/location/os/real/GlsClient;

    monitor-enter v3

    :try_start_0
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/google/android/location/os/real/GlsClient;->cacheDir:Ljava/io/File;

    const-string v4, "nlp_GlsPlatformKey"

    invoke-direct {v1, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    .local v1, file:Ljava/io/File;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 189
    :goto_0
    monitor-exit v3

    return-void

    .line 186
    :catch_0
    move-exception v0

    .line 187
    .local v0, e:Ljava/lang/SecurityException;
    :try_start_2
    const-string v2, "GlsClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to delete "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v0}, Lcom/google/android/location/os/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 183
    .end local v0           #e:Ljava/lang/SecurityException;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private static extractPlatformKey(Lcom/google/common/io/protocol/ProtoBuf;)V
    .locals 3
    .parameter "response"

    .prologue
    const/4 v2, 0x3

    .line 234
    if-eqz p0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 237
    invoke-virtual {p0, v2}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 238
    .local v0, platformKey:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 239
    invoke-static {v0}, Lcom/google/android/location/os/real/GlsClient;->setPlatformKey(Ljava/lang/String;)V

    .line 242
    .end local v0           #platformKey:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static forwardGeocode(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;DDDDILjava/util/List;)V
    .locals 27
    .parameter "locale"
    .parameter "appPackageName"
    .parameter "locationString"
    .parameter "lowerLeftLatitude"
    .parameter "lowerLeftLongitude"
    .parameter "upperRightLatitude"
    .parameter "upperRightLongitude"
    .parameter "maxResults"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Locale;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "DDDDI",
            "Ljava/util/List",
            "<",
            "Landroid/location/Address;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 541
    .local p12, addrs:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    new-instance v18, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v24, Lcom/google/android/location/protocol/LocserverMessageTypes;->GLOC_REQUEST_ELEMENT:Lcom/google/common/io/protocol/ProtoBufType;

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 543
    .local v18, requestElement:Lcom/google/common/io/protocol/ProtoBuf;
    new-instance v9, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v24, Lcom/google/android/location/protocol/LocserverMessageTypes;->GLOCATION:Lcom/google/common/io/protocol/ProtoBufType;

    move-object/from16 v0, v24

    invoke-direct {v9, v0}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 544
    .local v9, locationElement:Lcom/google/common/io/protocol/ProtoBuf;
    const/16 v24, 0x6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v25

    move/from16 v0, v24

    move-wide/from16 v1, v25

    invoke-virtual {v9, v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setLong(IJ)V

    .line 545
    const/16 v24, 0xf

    move/from16 v0, v24

    move-object/from16 v1, p2

    invoke-virtual {v9, v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 546
    const/16 v24, 0x3

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1, v9}, Lcom/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 548
    new-instance v6, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v24, Lcom/google/android/location/protocol/LocserverMessageTypes;->GGEOCODE_REQUEST:Lcom/google/common/io/protocol/ProtoBufType;

    move-object/from16 v0, v24

    invoke-direct {v6, v0}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 550
    .local v6, geocodeElement:Lcom/google/common/io/protocol/ProtoBuf;
    const/16 v24, 0x1

    move/from16 v0, v24

    move/from16 v1, p11

    invoke-virtual {v6, v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 552
    const-wide/16 v24, 0x0

    cmpl-double v24, p3, v24

    if-eqz v24, :cond_0

    const-wide/16 v24, 0x0

    cmpl-double v24, p5, v24

    if-eqz v24, :cond_0

    const-wide/16 v24, 0x0

    cmpl-double v24, p7, v24

    if-eqz v24, :cond_0

    const-wide/16 v24, 0x0

    cmpl-double v24, p9, v24

    if-eqz v24, :cond_0

    .line 554
    new-instance v10, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v24, Lcom/google/android/location/protocol/LocserverMessageTypes;->GLAT_LNG:Lcom/google/common/io/protocol/ProtoBufType;

    move-object/from16 v0, v24

    invoke-direct {v10, v0}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 555
    .local v10, lowerLeft:Lcom/google/common/io/protocol/ProtoBuf;
    const/16 v24, 0x1

    const-wide v25, 0x416312d000000000L

    mul-double v25, v25, p3

    move-wide/from16 v0, v25

    double-to-int v0, v0

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v10, v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 556
    const/16 v24, 0x2

    const-wide v25, 0x416312d000000000L

    mul-double v25, v25, p5

    move-wide/from16 v0, v25

    double-to-int v0, v0

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v10, v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 558
    new-instance v23, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v24, Lcom/google/android/location/protocol/LocserverMessageTypes;->GLAT_LNG:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct/range {v23 .. v24}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 559
    .local v23, upperRight:Lcom/google/common/io/protocol/ProtoBuf;
    const/16 v24, 0x1

    const-wide v25, 0x416312d000000000L

    mul-double v25, v25, p7

    move-wide/from16 v0, v25

    double-to-int v0, v0

    move/from16 v25, v0

    invoke-virtual/range {v23 .. v25}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 560
    const/16 v24, 0x2

    const-wide v25, 0x416312d000000000L

    mul-double v25, v25, p9

    move-wide/from16 v0, v25

    double-to-int v0, v0

    move/from16 v25, v0

    invoke-virtual/range {v23 .. v25}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 562
    new-instance v4, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v24, Lcom/google/android/location/protocol/LocserverMessageTypes;->GRECTANGLE:Lcom/google/common/io/protocol/ProtoBufType;

    move-object/from16 v0, v24

    invoke-direct {v4, v0}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 563
    .local v4, boundingBox:Lcom/google/common/io/protocol/ProtoBuf;
    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-virtual {v4, v0, v10}, Lcom/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 564
    const/16 v24, 0x2

    move/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v4, v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 565
    const/16 v24, 0x3

    move/from16 v0, v24

    invoke-virtual {v6, v0, v4}, Lcom/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 567
    .end local v4           #boundingBox:Lcom/google/common/io/protocol/ProtoBuf;
    .end local v10           #lowerLeft:Lcom/google/common/io/protocol/ProtoBuf;
    .end local v23           #upperRight:Lcom/google/common/io/protocol/ProtoBuf;
    :cond_0
    const/16 v24, 0x4

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1, v6}, Lcom/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 570
    new-instance v17, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v24, Lcom/google/android/location/protocol/LocserverMessageTypes;->GLOC_REQUEST:Lcom/google/common/io/protocol/ProtoBufType;

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 571
    .local v17, request:Lcom/google/common/io/protocol/ProtoBuf;
    const/16 v24, 0x4

    move-object/from16 v0, v17

    move/from16 v1, v24

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 574
    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/google/android/location/os/real/GlsClient;->createPlatformProfile(Ljava/util/Locale;Lcom/google/common/io/protocol/ProtoBuf;)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v14

    .line 575
    .local v14, platformProfile:Lcom/google/common/io/protocol/ProtoBuf;
    const/16 v24, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1, v14}, Lcom/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 578
    if-eqz p1, :cond_1

    .line 579
    new-instance v3, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v24, Lcom/google/android/location/protocol/LocserverMessageTypes;->GAPP_PROFILE:Lcom/google/common/io/protocol/ProtoBufType;

    move-object/from16 v0, v24

    invoke-direct {v3, v0}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 580
    .local v3, appProfile:Lcom/google/common/io/protocol/ProtoBuf;
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v3, v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 581
    const/16 v24, 0x2

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1, v3}, Lcom/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 584
    .end local v3           #appProfile:Lcom/google/common/io/protocol/ProtoBuf;
    :cond_1
    new-instance v11, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v11}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 586
    .local v11, payload:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Lcom/google/common/io/protocol/ProtoBuf;->outputTo(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 593
    new-instance v15, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v24, Lcom/google/android/location/protocol/LocserverMessageTypes;->GLOC_REPLY:Lcom/google/common/io/protocol/ProtoBufType;

    move-object/from16 v0, v24

    invoke-direct {v15, v0}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 594
    .local v15, reply:Lcom/google/common/io/protocol/ProtoBuf;
    new-instance v12, Lcom/google/masf/protocol/PlainRequest;

    const-string v24, "g:loc/ql"

    const/16 v25, 0x0

    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v26

    move-object/from16 v0, v24

    move/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v12, v0, v1, v2}, Lcom/google/masf/protocol/PlainRequest;-><init>(Ljava/lang/String;I[B)V

    .line 596
    .local v12, plainRequest:Lcom/google/masf/protocol/Request;
    new-instance v7, Lcom/google/android/location/os/real/ProtoRequestListener;

    const/16 v24, 0x0

    move-object/from16 v0, v24

    invoke-direct {v7, v15, v0}, Lcom/google/android/location/os/real/ProtoRequestListener;-><init>(Lcom/google/common/io/protocol/ProtoBuf;Lcom/google/masf/ServiceCallback;)V

    .line 597
    .local v7, listener:Lcom/google/android/location/os/real/ProtoRequestListener;
    invoke-virtual {v12, v7}, Lcom/google/masf/protocol/Request;->setListener(Lcom/google/masf/protocol/Request$Listener;)V

    .line 600
    invoke-static {}, Lcom/google/masf/MobileServiceMux;->getSingleton()Lcom/google/masf/MobileServiceMux;

    move-result-object v20

    .line 601
    .local v20, serviceMux:Lcom/google/masf/MobileServiceMux;
    const/16 v24, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v12, v1}, Lcom/google/masf/MobileServiceMux;->submitRequest(Lcom/google/masf/protocol/Request;Z)V

    .line 604
    :try_start_1
    invoke-virtual {v7}, Lcom/google/android/location/os/real/ProtoRequestListener;->getAsyncResult()Lcom/google/masf/services/AsyncResult;

    move-result-object v24

    const-wide/16 v25, 0x1388

    invoke-virtual/range {v24 .. v26}, Lcom/google/masf/services/AsyncResult;->get(J)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/google/common/io/protocol/ProtoBuf;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 610
    .local v19, response:Lcom/google/common/io/protocol/ProtoBuf;
    if-nez v19, :cond_2

    .line 611
    new-instance v24, Ljava/io/IOException;

    const-string v25, "Unable to parse response from server"

    invoke-direct/range {v24 .. v25}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 587
    .end local v7           #listener:Lcom/google/android/location/os/real/ProtoRequestListener;
    .end local v12           #plainRequest:Lcom/google/masf/protocol/Request;
    .end local v15           #reply:Lcom/google/common/io/protocol/ProtoBuf;
    .end local v19           #response:Lcom/google/common/io/protocol/ProtoBuf;
    .end local v20           #serviceMux:Lcom/google/masf/MobileServiceMux;
    :catch_0
    move-exception v5

    .line 588
    .local v5, e:Ljava/io/IOException;
    const-string v24, "GlsClient"

    const-string v25, "forwardGeocode(): unable to write request to payload"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    throw v5

    .line 605
    .end local v5           #e:Ljava/io/IOException;
    .restart local v7       #listener:Lcom/google/android/location/os/real/ProtoRequestListener;
    .restart local v12       #plainRequest:Lcom/google/masf/protocol/Request;
    .restart local v15       #reply:Lcom/google/common/io/protocol/ProtoBuf;
    .restart local v20       #serviceMux:Lcom/google/masf/MobileServiceMux;
    :catch_1
    move-exception v5

    .line 606
    .local v5, e:Ljava/lang/InterruptedException;
    const-string v24, "GlsClient"

    const-string v25, "forwardGeocode(): response timeout"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    new-instance v24, Ljava/io/IOException;

    const-string v25, "response time-out"

    invoke-direct/range {v24 .. v25}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 615
    .end local v5           #e:Ljava/lang/InterruptedException;
    .restart local v19       #response:Lcom/google/common/io/protocol/ProtoBuf;
    :cond_2
    const/16 v24, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v21

    .line 616
    .local v21, status1:I
    if-eqz v21, :cond_3

    .line 617
    const-string v24, "GlsClient"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "forwardGeocode(): RPC failed with status "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    new-instance v24, Ljava/io/IOException;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "RPC failed with status "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 621
    :cond_3
    const/16 v24, 0x3

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v24

    if-eqz v24, :cond_4

    .line 622
    const/16 v24, 0x3

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 623
    .local v13, platformKey:Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_4

    .line 624
    invoke-static {v13}, Lcom/google/android/location/os/real/GlsClient;->setPlatformKey(Ljava/lang/String;)V

    .line 628
    .end local v13           #platformKey:Ljava/lang/String;
    :cond_4
    const/16 v24, 0x2

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v24

    if-nez v24, :cond_5

    .line 629
    const-string v24, "GlsClient"

    const-string v25, "forwardGeocode(): no ReplyElement"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    :goto_0
    return-void

    .line 632
    :cond_5
    const/16 v24, 0x2

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v16

    .line 634
    .local v16, replyElement:Lcom/google/common/io/protocol/ProtoBuf;
    const/16 v24, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v22

    .line 635
    .local v22, status2:I
    if-eqz v22, :cond_6

    .line 636
    const-string v24, "GlsClient"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "forwardGeocode(): GLS failed with status "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 640
    :cond_6
    const/16 v24, 0x2

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v24

    if-nez v24, :cond_7

    .line 641
    const-string v24, "GlsClient"

    const-string v25, "forwardGeocode(): no location in ReplyElement"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 645
    :cond_7
    const/16 v24, 0x2

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v8

    .line 646
    .local v8, location:Lcom/google/common/io/protocol/ProtoBuf;
    const/16 v24, 0x5

    move/from16 v0, v24

    invoke-virtual {v8, v0}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v24

    if-nez v24, :cond_8

    .line 647
    const-string v24, "GlsClient"

    const-string v25, "forwardGeocode(): no feature in GLocation"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 651
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, p12

    invoke-static {v8, v0, v1}, Lcom/google/android/location/os/real/GlsClient;->getAddressFromProtoBuf(Lcom/google/common/io/protocol/ProtoBuf;Ljava/util/Locale;Ljava/util/List;)V

    goto :goto_0
.end method

.method private generateDebugInfo()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 273
    sget-boolean v1, Lcom/google/android/location/os/real/GlsClient;->USE_GSERVICES:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/location/os/real/GlsClient;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "network_location_provider_debug"

    invoke-static {v1, v2, v0}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 275
    .local v0, debug:Ljava/lang/String;
    :cond_0
    const-string v1, "verbose"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getAddressFromProtoBuf(Lcom/google/common/io/protocol/ProtoBuf;Ljava/util/Locale;Ljava/util/List;)V
    .locals 21
    .parameter "location"
    .parameter "locale"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/io/protocol/ProtoBuf;",
            "Ljava/util/Locale;",
            "Ljava/util/List",
            "<",
            "Landroid/location/Address;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 656
    .local p2, addrs:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    const-wide/high16 v8, -0x4010

    .line 657
    .local v8, lat:D
    const-wide/high16 v12, -0x4010

    .line 659
    .local v12, lng:D
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 660
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v10

    .line 661
    .local v10, latlng:Lcom/google/common/io/protocol/ProtoBuf;
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v17

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    const-wide v19, 0x416312d000000000L

    div-double v8, v17, v19

    .line 662
    const/16 v17, 0x2

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v17

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    const-wide v19, 0x416312d000000000L

    div-double v12, v17, v19

    .line 665
    .end local v10           #latlng:Lcom/google/common/io/protocol/ProtoBuf;
    :cond_0
    const/4 v2, 0x0

    .local v2, a:I
    :goto_0
    const/16 v17, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v17

    move/from16 v0, v17

    if-ge v2, v0, :cond_5

    .line 667
    new-instance v15, Landroid/location/Address;

    move-object/from16 v0, p1

    invoke-direct {v15, v0}, Landroid/location/Address;-><init>(Ljava/util/Locale;)V

    .line 669
    .local v15, output:Landroid/location/Address;
    const/16 v17, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v6

    .line 670
    .local v6, feature:Lcom/google/common/io/protocol/ProtoBuf;
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/location/Address;->setFeatureName(Ljava/lang/String;)V

    .line 672
    const/16 v17, 0x5

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 673
    const/16 v17, 0x5

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v4

    .line 674
    .local v4, center:Lcom/google/common/io/protocol/ProtoBuf;
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v17

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    const-wide v19, 0x416312d000000000L

    div-double v17, v17, v19

    move-wide/from16 v0, v17

    invoke-virtual {v15, v0, v1}, Landroid/location/Address;->setLatitude(D)V

    .line 675
    const/16 v17, 0x2

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v17

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    const-wide v19, 0x416312d000000000L

    div-double v17, v17, v19

    move-wide/from16 v0, v17

    invoke-virtual {v15, v0, v1}, Landroid/location/Address;->setLongitude(D)V

    .line 682
    .end local v4           #center:Lcom/google/common/io/protocol/ProtoBuf;
    :cond_1
    :goto_1
    const/16 v17, 0x3

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v3

    .line 684
    .local v3, address:Lcom/google/common/io/protocol/ProtoBuf;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_2
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v17

    move/from16 v0, v17

    if-ge v7, v0, :cond_3

    .line 685
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v3, v0, v7}, Lcom/google/common/io/protocol/ProtoBuf;->getString(II)Ljava/lang/String;

    move-result-object v11

    .line 686
    .local v11, line:Ljava/lang/String;
    invoke-virtual {v15, v7, v11}, Landroid/location/Address;->setAddressLine(ILjava/lang/String;)V

    .line 684
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 677
    .end local v3           #address:Lcom/google/common/io/protocol/ProtoBuf;
    .end local v7           #i:I
    .end local v11           #line:Ljava/lang/String;
    :cond_2
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 678
    invoke-virtual {v15, v8, v9}, Landroid/location/Address;->setLatitude(D)V

    .line 679
    invoke-virtual {v15, v12, v13}, Landroid/location/Address;->setLongitude(D)V

    goto :goto_1

    .line 689
    .restart local v3       #address:Lcom/google/common/io/protocol/ProtoBuf;
    .restart local v7       #i:I
    :cond_3
    const/4 v7, 0x0

    :goto_3
    const/16 v17, 0x2

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v17

    move/from16 v0, v17

    if-ge v7, v0, :cond_4

    .line 690
    const/16 v17, 0x2

    move/from16 v0, v17

    invoke-virtual {v3, v0, v7}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v5

    .line 691
    .local v5, component:Lcom/google/common/io/protocol/ProtoBuf;
    const/16 v17, 0x2

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v16

    .line 692
    .local v16, type:I
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 694
    .local v14, name:Ljava/lang/String;
    packed-switch v16, :pswitch_data_0

    .line 689
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 696
    :pswitch_0
    invoke-virtual {v15, v14}, Landroid/location/Address;->setAdminArea(Ljava/lang/String;)V

    goto :goto_4

    .line 700
    :pswitch_1
    invoke-virtual {v15, v14}, Landroid/location/Address;->setSubAdminArea(Ljava/lang/String;)V

    goto :goto_4

    .line 704
    :pswitch_2
    invoke-virtual {v15, v14}, Landroid/location/Address;->setLocality(Ljava/lang/String;)V

    goto :goto_4

    .line 708
    :pswitch_3
    invoke-virtual {v15, v14}, Landroid/location/Address;->setSubLocality(Ljava/lang/String;)V

    goto :goto_4

    .line 712
    :pswitch_4
    invoke-virtual {v15, v14}, Landroid/location/Address;->setThoroughfare(Ljava/lang/String;)V

    goto :goto_4

    .line 716
    :pswitch_5
    invoke-virtual {v15, v14}, Landroid/location/Address;->setSubThoroughfare(Ljava/lang/String;)V

    goto :goto_4

    .line 720
    :pswitch_6
    invoke-virtual {v15, v14}, Landroid/location/Address;->setPremises(Ljava/lang/String;)V

    goto :goto_4

    .line 724
    :pswitch_7
    invoke-virtual {v15, v14}, Landroid/location/Address;->setPostalCode(Ljava/lang/String;)V

    goto :goto_4

    .line 728
    :pswitch_8
    invoke-virtual {v15, v14}, Landroid/location/Address;->setCountryName(Ljava/lang/String;)V

    goto :goto_4

    .line 732
    :pswitch_9
    invoke-virtual {v15, v14}, Landroid/location/Address;->setCountryCode(Ljava/lang/String;)V

    goto :goto_4

    .line 740
    .end local v5           #component:Lcom/google/common/io/protocol/ProtoBuf;
    .end local v14           #name:Ljava/lang/String;
    .end local v16           #type:I
    :cond_4
    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 665
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 742
    .end local v3           #address:Lcom/google/common/io/protocol/ProtoBuf;
    .end local v6           #feature:Lcom/google/common/io/protocol/ProtoBuf;
    .end local v7           #i:I
    .end local v15           #output:Landroid/location/Address;
    :cond_5
    return-void

    .line 694
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_4
        :pswitch_5
        :pswitch_7
    .end packed-switch
.end method

.method private static declared-synchronized getPlatformKey()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 192
    const-class v6, Lcom/google/android/location/os/real/GlsClient;

    monitor-enter v6

    :try_start_0
    sget-object v7, Lcom/google/android/location/os/real/GlsClient;->platformKey:Ljava/lang/String;

    if-eqz v7, :cond_0

    .line 193
    sget-object v5, Lcom/google/android/location/os/real/GlsClient;->platformKey:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    .local v2, file:Ljava/io/File;
    :goto_0
    monitor-exit v6

    return-object v5

    .line 196
    .end local v2           #file:Ljava/io/File;
    :cond_0
    :try_start_1
    new-instance v2, Ljava/io/File;

    sget-object v7, Lcom/google/android/location/os/real/GlsClient;->cacheDir:Ljava/io/File;

    const-string v8, "nlp_GlsPlatformKey"

    invoke-direct {v2, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 197
    .restart local v2       #file:Ljava/io/File;
    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 198
    .local v3, istream:Ljava/io/BufferedInputStream;
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 199
    .local v0, dataInput:Ljava/io/DataInputStream;
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    .line 200
    .local v4, newPlatformKey:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    .line 201
    sput-object v4, Lcom/google/android/location/os/real/GlsClient;->platformKey:Ljava/lang/String;

    .line 202
    sget-object v5, Lcom/google/android/location/os/real/GlsClient;->platformKey:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 203
    .end local v0           #dataInput:Ljava/io/DataInputStream;
    .end local v3           #istream:Ljava/io/BufferedInputStream;
    .end local v4           #newPlatformKey:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 205
    .local v1, e:Ljava/io/FileNotFoundException;
    goto :goto_0

    .line 206
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 208
    .local v1, e:Ljava/io/IOException;
    goto :goto_0

    .line 192
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method public static declared-synchronized init(Landroid/content/Context;)V
    .locals 12
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    .line 112
    const-class v9, Lcom/google/android/location/os/real/GlsClient;

    monitor-enter v9

    :try_start_0
    invoke-static {}, Lcom/google/masf/MobileServiceMux;->getSingleton()Lcom/google/masf/MobileServiceMux;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 113
    .local v4, mux:Lcom/google/masf/MobileServiceMux;
    if-eqz v4, :cond_0

    .line 151
    :goto_0
    monitor-exit v9

    return-void

    .line 118
    :cond_0
    :try_start_1
    sget-object v0, Lcom/google/android/location/internal/NlpVersionInfo$NlpApk;->ANDROID:Lcom/google/android/location/internal/NlpVersionInfo$NlpApk;

    .line 119
    .local v0, apk:Lcom/google/android/location/internal/NlpVersionInfo$NlpApk;
    invoke-static {v0, p0}, Lcom/google/android/location/internal/NlpVersionInfo;->getNlpVersionInfo(Lcom/google/android/location/internal/NlpVersionInfo$NlpApk;Landroid/content/Context;)Lcom/google/android/location/internal/NlpVersionInfo;

    move-result-object v7

    .line 120
    .local v7, version:Lcom/google/android/location/internal/NlpVersionInfo;
    iget v8, v7, Lcom/google/android/location/internal/NlpVersionInfo;->releaseVersion:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcom/google/android/location/os/real/GlsClient;->applicationVersion:Ljava/lang/String;

    .line 123
    new-instance v1, Lcom/google/common/android/AndroidConfig;

    invoke-direct {v1, p0}, Lcom/google/common/android/AndroidConfig;-><init>(Landroid/content/Context;)V

    .line 124
    .local v1, config:Lcom/google/common/android/AndroidConfig;
    invoke-static {v1}, Lcom/google/common/Config;->setConfig(Lcom/google/common/Config;)V

    .line 126
    const-string v2, "https://www.google.com/loc/m/api"

    .line 127
    .local v2, masfAddress:Ljava/lang/String;
    sget-boolean v8, Lcom/google/android/location/os/real/GlsClient;->USE_GSERVICES:Z

    if-eqz v8, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v10, "url:google_location_server"

    const/4 v11, 0x0

    invoke-static {v8, v10, v11}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 129
    .local v5, rewriteRule:Ljava/lang/String;
    :cond_1
    if-eqz v5, :cond_2

    .line 130
    const-string v8, " "

    const/4 v10, 0x4

    invoke-virtual {v5, v8, v10}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    .line 131
    .local v6, rule:[Ljava/lang/String;
    array-length v8, v6

    const/4 v10, 0x3

    if-ne v8, v10, :cond_2

    const/4 v8, 0x0

    aget-object v8, v6, v8

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v8, 0x1

    aget-object v8, v6, v8

    const-string v10, "rewrite"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 132
    const/4 v8, 0x2

    aget-object v2, v6, v8

    .line 133
    const-string v8, "GlsClient"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "using "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/google/android/location/os/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    .end local v6           #rule:[Ljava/lang/String;
    :cond_2
    new-instance v3, Lcom/google/masf/MobileServiceMux$Configuration;

    invoke-direct {v3}, Lcom/google/masf/MobileServiceMux$Configuration;-><init>()V

    .line 137
    .local v3, masfConfig:Lcom/google/masf/MobileServiceMux$Configuration;
    invoke-virtual {v3, v2}, Lcom/google/masf/MobileServiceMux$Configuration;->setServerUri(Ljava/lang/String;)V

    .line 138
    const-string v8, "location"

    invoke-virtual {v3, v8}, Lcom/google/masf/MobileServiceMux$Configuration;->setApplicationName(Ljava/lang/String;)V

    .line 139
    sget-object v8, Lcom/google/android/location/os/real/GlsClient;->applicationVersion:Ljava/lang/String;

    invoke-virtual {v3, v8}, Lcom/google/masf/MobileServiceMux$Configuration;->setApplicationVersion(Ljava/lang/String;)V

    .line 140
    const-string v8, "android"

    invoke-virtual {v3, v8}, Lcom/google/masf/MobileServiceMux$Configuration;->setPlatformId(Ljava/lang/String;)V

    .line 141
    const-string v8, "android"

    invoke-virtual {v3, v8}, Lcom/google/masf/MobileServiceMux$Configuration;->setDistributionChannel(Ljava/lang/String;)V

    .line 142
    invoke-static {v3}, Lcom/google/masf/MobileServiceMux;->initialize(Lcom/google/masf/MobileServiceMux$Configuration;)V

    .line 144
    sget-object v8, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    if-eqz v8, :cond_3

    .line 145
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "android/"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v10, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcom/google/android/location/os/real/GlsClient;->platformBuild:Ljava/lang/String;

    .line 150
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v8

    sput-object v8, Lcom/google/android/location/os/real/GlsClient;->cacheDir:Ljava/io/File;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 112
    .end local v0           #apk:Lcom/google/android/location/internal/NlpVersionInfo$NlpApk;
    .end local v1           #config:Lcom/google/common/android/AndroidConfig;
    .end local v2           #masfAddress:Ljava/lang/String;
    .end local v3           #masfConfig:Lcom/google/masf/MobileServiceMux$Configuration;
    .end local v4           #mux:Lcom/google/masf/MobileServiceMux;
    .end local v5           #rewriteRule:Ljava/lang/String;
    .end local v7           #version:Lcom/google/android/location/internal/NlpVersionInfo;
    :catchall_0
    move-exception v8

    monitor-exit v9

    throw v8

    .line 147
    .restart local v0       #apk:Lcom/google/android/location/internal/NlpVersionInfo$NlpApk;
    .restart local v1       #config:Lcom/google/common/android/AndroidConfig;
    .restart local v2       #masfAddress:Ljava/lang/String;
    .restart local v3       #masfConfig:Lcom/google/masf/MobileServiceMux$Configuration;
    .restart local v4       #mux:Lcom/google/masf/MobileServiceMux;
    .restart local v5       #rewriteRule:Ljava/lang/String;
    .restart local v7       #version:Lcom/google/android/location/internal/NlpVersionInfo;
    :cond_3
    :try_start_2
    const-string v8, "android"

    sput-object v8, Lcom/google/android/location/os/real/GlsClient;->platformBuild:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public static reverseGeocode(Ljava/util/Locale;Ljava/lang/String;DDILjava/util/List;)V
    .locals 25
    .parameter "locale"
    .parameter "appPackageName"
    .parameter "lat"
    .parameter "lng"
    .parameter "maxResults"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Locale;",
            "Ljava/lang/String;",
            "DDI",
            "Ljava/util/List",
            "<",
            "Landroid/location/Address;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 417
    .local p7, addrs:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    new-instance v17, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v22, Lcom/google/android/location/protocol/LocserverMessageTypes;->GLOC_REQUEST_ELEMENT:Lcom/google/common/io/protocol/ProtoBufType;

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 419
    .local v17, requestElement:Lcom/google/common/io/protocol/ProtoBuf;
    new-instance v6, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v22, Lcom/google/android/location/protocol/LocserverMessageTypes;->GLAT_LNG:Lcom/google/common/io/protocol/ProtoBufType;

    move-object/from16 v0, v22

    invoke-direct {v6, v0}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 420
    .local v6, latlngElement:Lcom/google/common/io/protocol/ProtoBuf;
    const/16 v22, 0x1

    const-wide v23, 0x416312d000000000L

    mul-double v23, v23, p2

    move-wide/from16 v0, v23

    double-to-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v6, v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 421
    const/16 v22, 0x2

    const-wide v23, 0x416312d000000000L

    mul-double v23, v23, p4

    move-wide/from16 v0, v23

    double-to-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v6, v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 423
    new-instance v9, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v22, Lcom/google/android/location/protocol/LocserverMessageTypes;->GLOCATION:Lcom/google/common/io/protocol/ProtoBufType;

    move-object/from16 v0, v22

    invoke-direct {v9, v0}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 424
    .local v9, locationElement:Lcom/google/common/io/protocol/ProtoBuf;
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v9, v0, v6}, Lcom/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 425
    const/16 v22, 0x6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v23

    move/from16 v0, v22

    move-wide/from16 v1, v23

    invoke-virtual {v9, v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setLong(IJ)V

    .line 426
    const/16 v22, 0x3

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1, v9}, Lcom/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 428
    new-instance v5, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v22, Lcom/google/android/location/protocol/LocserverMessageTypes;->GGEOCODE_REQUEST:Lcom/google/common/io/protocol/ProtoBufType;

    move-object/from16 v0, v22

    invoke-direct {v5, v0}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 430
    .local v5, geocodeElement:Lcom/google/common/io/protocol/ProtoBuf;
    const/16 v22, 0x1

    move/from16 v0, v22

    move/from16 v1, p6

    invoke-virtual {v5, v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 431
    const/16 v22, 0x4

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1, v5}, Lcom/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 434
    new-instance v16, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v22, Lcom/google/android/location/protocol/LocserverMessageTypes;->GLOC_REQUEST:Lcom/google/common/io/protocol/ProtoBufType;

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 435
    .local v16, request:Lcom/google/common/io/protocol/ProtoBuf;
    const/16 v22, 0x4

    move-object/from16 v0, v16

    move/from16 v1, v22

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 438
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/google/android/location/os/real/GlsClient;->createPlatformProfile(Ljava/util/Locale;Lcom/google/common/io/protocol/ProtoBuf;)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v13

    .line 439
    .local v13, platformProfile:Lcom/google/common/io/protocol/ProtoBuf;
    const/16 v22, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1, v13}, Lcom/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 442
    if-eqz p1, :cond_0

    .line 443
    new-instance v3, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v22, Lcom/google/android/location/protocol/LocserverMessageTypes;->GAPP_PROFILE:Lcom/google/common/io/protocol/ProtoBufType;

    move-object/from16 v0, v22

    invoke-direct {v3, v0}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 444
    .local v3, appProfile:Lcom/google/common/io/protocol/ProtoBuf;
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v3, v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 445
    const/16 v22, 0x2

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1, v3}, Lcom/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 448
    .end local v3           #appProfile:Lcom/google/common/io/protocol/ProtoBuf;
    :cond_0
    new-instance v10, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v10}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 450
    .local v10, payload:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Lcom/google/common/io/protocol/ProtoBuf;->outputTo(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 457
    new-instance v14, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v22, Lcom/google/android/location/protocol/LocserverMessageTypes;->GLOC_REPLY:Lcom/google/common/io/protocol/ProtoBufType;

    move-object/from16 v0, v22

    invoke-direct {v14, v0}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 458
    .local v14, reply:Lcom/google/common/io/protocol/ProtoBuf;
    new-instance v11, Lcom/google/masf/protocol/PlainRequest;

    const-string v22, "g:loc/ql"

    const/16 v23, 0x0

    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v24

    move-object/from16 v0, v22

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v11, v0, v1, v2}, Lcom/google/masf/protocol/PlainRequest;-><init>(Ljava/lang/String;I[B)V

    .line 460
    .local v11, plainRequest:Lcom/google/masf/protocol/Request;
    new-instance v7, Lcom/google/android/location/os/real/ProtoRequestListener;

    const/16 v22, 0x0

    move-object/from16 v0, v22

    invoke-direct {v7, v14, v0}, Lcom/google/android/location/os/real/ProtoRequestListener;-><init>(Lcom/google/common/io/protocol/ProtoBuf;Lcom/google/masf/ServiceCallback;)V

    .line 461
    .local v7, listener:Lcom/google/android/location/os/real/ProtoRequestListener;
    invoke-virtual {v11, v7}, Lcom/google/masf/protocol/Request;->setListener(Lcom/google/masf/protocol/Request$Listener;)V

    .line 464
    invoke-static {}, Lcom/google/masf/MobileServiceMux;->getSingleton()Lcom/google/masf/MobileServiceMux;

    move-result-object v19

    .line 465
    .local v19, serviceMux:Lcom/google/masf/MobileServiceMux;
    const/16 v22, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v11, v1}, Lcom/google/masf/MobileServiceMux;->submitRequest(Lcom/google/masf/protocol/Request;Z)V

    .line 468
    :try_start_1
    invoke-virtual {v7}, Lcom/google/android/location/os/real/ProtoRequestListener;->getAsyncResult()Lcom/google/masf/services/AsyncResult;

    move-result-object v22

    const-wide/16 v23, 0x1388

    invoke-virtual/range {v22 .. v24}, Lcom/google/masf/services/AsyncResult;->get(J)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/google/common/io/protocol/ProtoBuf;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 474
    .local v18, response:Lcom/google/common/io/protocol/ProtoBuf;
    if-nez v18, :cond_1

    .line 475
    new-instance v22, Ljava/io/IOException;

    const-string v23, "Unable to parse response from server"

    invoke-direct/range {v22 .. v23}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 451
    .end local v7           #listener:Lcom/google/android/location/os/real/ProtoRequestListener;
    .end local v11           #plainRequest:Lcom/google/masf/protocol/Request;
    .end local v14           #reply:Lcom/google/common/io/protocol/ProtoBuf;
    .end local v18           #response:Lcom/google/common/io/protocol/ProtoBuf;
    .end local v19           #serviceMux:Lcom/google/masf/MobileServiceMux;
    :catch_0
    move-exception v4

    .line 452
    .local v4, e:Ljava/io/IOException;
    const-string v22, "GlsClient"

    const-string v23, "reverseGeocode(): unable to write request to payload"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    throw v4

    .line 469
    .end local v4           #e:Ljava/io/IOException;
    .restart local v7       #listener:Lcom/google/android/location/os/real/ProtoRequestListener;
    .restart local v11       #plainRequest:Lcom/google/masf/protocol/Request;
    .restart local v14       #reply:Lcom/google/common/io/protocol/ProtoBuf;
    .restart local v19       #serviceMux:Lcom/google/masf/MobileServiceMux;
    :catch_1
    move-exception v4

    .line 470
    .local v4, e:Ljava/lang/InterruptedException;
    const-string v22, "GlsClient"

    const-string v23, "reverseGeocode(): response timeout"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    new-instance v22, Ljava/io/IOException;

    const-string v23, "response time-out"

    invoke-direct/range {v22 .. v23}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 479
    .end local v4           #e:Ljava/lang/InterruptedException;
    .restart local v18       #response:Lcom/google/common/io/protocol/ProtoBuf;
    :cond_1
    const/16 v22, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v20

    .line 480
    .local v20, status1:I
    if-eqz v20, :cond_2

    .line 481
    const-string v22, "GlsClient"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "reverseGeocode(): RPC failed with status "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    new-instance v22, Ljava/io/IOException;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "RPC failed with status "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 485
    :cond_2
    const/16 v22, 0x3

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v22

    if-eqz v22, :cond_3

    .line 486
    const/16 v22, 0x3

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 487
    .local v12, platformKey:Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_3

    .line 488
    invoke-static {v12}, Lcom/google/android/location/os/real/GlsClient;->setPlatformKey(Ljava/lang/String;)V

    .line 492
    .end local v12           #platformKey:Ljava/lang/String;
    :cond_3
    const/16 v22, 0x2

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v22

    if-nez v22, :cond_4

    .line 493
    const-string v22, "GlsClient"

    const-string v23, "reverseGeocode(): no ReplyElement"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    :goto_0
    return-void

    .line 496
    :cond_4
    const/16 v22, 0x2

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v15

    .line 498
    .local v15, replyElement:Lcom/google/common/io/protocol/ProtoBuf;
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v15, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v21

    .line 499
    .local v21, status2:I
    if-eqz v21, :cond_5

    .line 500
    const-string v22, "GlsClient"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "reverseGeocode(): GLS failed with status "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 504
    :cond_5
    const/16 v22, 0x2

    move/from16 v0, v22

    invoke-virtual {v15, v0}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v22

    if-nez v22, :cond_6

    .line 505
    const-string v22, "GlsClient"

    const-string v23, "reverseGeocode(): no location in ReplyElement"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 509
    :cond_6
    const/16 v22, 0x2

    move/from16 v0, v22

    invoke-virtual {v15, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v8

    .line 510
    .local v8, location:Lcom/google/common/io/protocol/ProtoBuf;
    const/16 v22, 0x5

    move/from16 v0, v22

    invoke-virtual {v8, v0}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v22

    if-nez v22, :cond_7

    .line 511
    const-string v22, "GlsClient"

    const-string v23, "reverseGeocode(): no feature in GLocation"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 515
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-static {v8, v0, v1}, Lcom/google/android/location/os/real/GlsClient;->getAddressFromProtoBuf(Lcom/google/common/io/protocol/ProtoBuf;Ljava/util/Locale;Ljava/util/List;)V

    goto :goto_0
.end method

.method private static declared-synchronized setPlatformKey(Ljava/lang/String;)V
    .locals 7
    .parameter "platformKey"

    .prologue
    .line 213
    const-class v5, Lcom/google/android/location/os/real/GlsClient;

    monitor-enter v5

    :try_start_0
    sget-object v4, Lcom/google/android/location/os/real/GlsClient;->cacheDir:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 214
    sget-object v4, Lcom/google/android/location/os/real/GlsClient;->cacheDir:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_0

    .line 215
    const-string v4, "GlsClient"

    const-string v6, "setPlatformKey(): couldn\'t create directory"

    invoke-static {v4, v6}, Lcom/google/android/location/os/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    :goto_0
    monitor-exit v5

    return-void

    .line 220
    :cond_0
    :try_start_1
    new-instance v2, Ljava/io/File;

    sget-object v4, Lcom/google/android/location/os/real/GlsClient;->cacheDir:Ljava/io/File;

    const-string v6, "nlp_GlsPlatformKey"

    invoke-direct {v2, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 221
    .local v2, file:Ljava/io/File;
    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 222
    .local v3, ostream:Ljava/io/BufferedOutputStream;
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 223
    .local v0, dataOut:Ljava/io/DataOutputStream;
    invoke-virtual {v0, p0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 224
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 225
    sput-object p0, Lcom/google/android/location/os/real/GlsClient;->platformKey:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 226
    .end local v0           #dataOut:Ljava/io/DataOutputStream;
    .end local v2           #file:Ljava/io/File;
    .end local v3           #ostream:Ljava/io/BufferedOutputStream;
    :catch_0
    move-exception v1

    .line 227
    .local v1, e:Ljava/io/FileNotFoundException;
    :try_start_2
    const-string v4, "GlsClient"

    const-string v6, "setPlatformKey(): unable to create platform key file"

    invoke-static {v4, v6}, Lcom/google/android/location/os/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 213
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 228
    :catch_1
    move-exception v1

    .line 229
    .local v1, e:Ljava/io/IOException;
    :try_start_3
    const-string v4, "GlsClient"

    const-string v6, "setPlatformKey(): unable to write to platform key"

    invoke-static {v4, v6}, Lcom/google/android/location/os/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method private updateDebugProfileLocked(Lcom/google/common/io/protocol/ProtoBuf;)V
    .locals 9
    .parameter "debugProfile"

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x0

    .line 290
    iget-boolean v6, p0, Lcom/google/android/location/os/real/GlsClient;->mDeviceRestart:Z

    if-eqz v6, :cond_0

    .line 291
    const/4 v6, 0x4

    const/4 v7, 0x1

    invoke-virtual {p1, v6, v7}, Lcom/google/common/io/protocol/ProtoBuf;->setBool(IZ)V

    .line 292
    iput-boolean v8, p0, Lcom/google/android/location/os/real/GlsClient;->mDeviceRestart:Z

    .line 295
    :cond_0
    sget-boolean v6, Lcom/google/android/location/os/real/GlsClient;->USE_GSERVICES:Z

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/google/android/location/os/real/GlsClient;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "network_location_provider_debug"

    invoke-static {v6, v7, v3}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 297
    .local v3, debug:Ljava/lang/String;
    :cond_1
    if-eqz v3, :cond_2

    .line 298
    const/4 v6, 0x6

    invoke-virtual {p1, v6, v8}, Lcom/google/common/io/protocol/ProtoBuf;->setBool(IZ)V

    .line 299
    iget-object v6, p0, Lcom/google/android/location/os/real/GlsClient;->context:Landroid/content/Context;

    invoke-static {v6}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 300
    .local v1, am:Landroid/accounts/AccountManager;
    const-string v6, "com.google"

    invoke-virtual {v1, v6}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    .local v2, arr$:[Landroid/accounts/Account;
    array-length v5, v2

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v0, v2, v4

    .line 301
    .local v0, a:Landroid/accounts/Account;
    const/4 v6, 0x5

    iget-object v7, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p1, v6, v7}, Lcom/google/common/io/protocol/ProtoBuf;->addString(ILjava/lang/String;)V

    .line 302
    const-string v6, "GlsClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "adding account "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/google/android/location/os/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 305
    .end local v0           #a:Landroid/accounts/Account;
    .end local v1           #am:Landroid/accounts/AccountManager;
    .end local v2           #arr$:[Landroid/accounts/Account;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_2
    return-void
.end method


# virtual methods
.method public query(Lcom/google/common/io/protocol/ProtoBuf;Lcom/google/common/io/protocol/ProtoBuf;)V
    .locals 1
    .parameter "request"
    .parameter "cellularPlatformProfile"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/google/android/location/os/real/GlsClient;->queryListener:Lcom/google/android/location/os/real/GlsClient$RequestListener;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/location/os/real/GlsClient$RequestListener;->sendRpc(Lcom/google/common/io/protocol/ProtoBuf;Lcom/google/common/io/protocol/ProtoBuf;)V

    .line 170
    return-void
.end method

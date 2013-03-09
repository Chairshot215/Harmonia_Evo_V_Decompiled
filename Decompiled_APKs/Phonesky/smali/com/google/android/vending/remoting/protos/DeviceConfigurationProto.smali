.class public final Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "DeviceConfigurationProto.java"


# instance fields
.field private cachedSize:I

.field private deviceClass_:I

.field private glEsVersion_:I

.field private glExtension_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private hasDeviceClass:Z

.field private hasFiveWayNavigation_:Z

.field private hasGlEsVersion:Z

.field private hasHardKeyboard_:Z

.field private hasHasFiveWayNavigation:Z

.field private hasHasHardKeyboard:Z

.field private hasKeyboard:Z

.field private hasMaxApkDownloadSizeMb:Z

.field private hasNavigation:Z

.field private hasScreenDensity:Z

.field private hasScreenHeight:Z

.field private hasScreenLayout:Z

.field private hasScreenWidth:Z

.field private hasTouchScreen:Z

.field private keyboard_:I

.field private maxApkDownloadSizeMb_:I

.field private nativePlatform_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private navigation_:I

.field private screenDensity_:I

.field private screenHeight_:I

.field private screenLayout_:I

.field private screenWidth_:I

.field private systemAvailableFeature_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private systemSharedLibrary_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private systemSupportedLocale_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private touchScreen_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 8
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 46
    iput v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->touchScreen_:I

    .line 63
    iput v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->keyboard_:I

    .line 80
    iput v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->navigation_:I

    .line 97
    iput v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->screenLayout_:I

    .line 114
    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->hasHardKeyboard_:Z

    .line 131
    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->hasFiveWayNavigation_:Z

    .line 148
    iput v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->screenDensity_:I

    .line 165
    iput v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->screenWidth_:I

    .line 182
    iput v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->screenHeight_:I

    .line 199
    iput v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->glEsVersion_:I

    .line 215
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->systemSharedLibrary_:Ljava/util/List;

    .line 248
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->systemAvailableFeature_:Ljava/util/List;

    .line 281
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->nativePlatform_:Ljava/util/List;

    .line 314
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->systemSupportedLocale_:Ljava/util/List;

    .line 347
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->glExtension_:Ljava/util/List;

    .line 381
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->deviceClass_:I

    .line 398
    const/16 v0, 0x32

    iput v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->maxApkDownloadSizeMb_:I

    .line 502
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->cachedSize:I

    .line 8
    return-void
.end method


# virtual methods
.method public addGlExtension(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 364
    if-nez p1, :cond_0

    .line 365
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 367
    :cond_0
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->glExtension_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 368
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->glExtension_:Ljava/util/List;

    .line 370
    :cond_1
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->glExtension_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 371
    return-object p0
.end method

.method public addNativePlatform(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 298
    if-nez p1, :cond_0

    .line 299
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->nativePlatform_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 302
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->nativePlatform_:Ljava/util/List;

    .line 304
    :cond_1
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->nativePlatform_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 305
    return-object p0
.end method

.method public addSystemAvailableFeature(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 265
    if-nez p1, :cond_0

    .line 266
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->systemAvailableFeature_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 269
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->systemAvailableFeature_:Ljava/util/List;

    .line 271
    :cond_1
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->systemAvailableFeature_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    return-object p0
.end method

.method public addSystemSharedLibrary(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 232
    if-nez p1, :cond_0

    .line 233
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->systemSharedLibrary_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 236
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->systemSharedLibrary_:Ljava/util/List;

    .line 238
    :cond_1
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->systemSharedLibrary_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    return-object p0
.end method

.method public addSystemSupportedLocale(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 331
    if-nez p1, :cond_0

    .line 332
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->systemSupportedLocale_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 335
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->systemSupportedLocale_:Ljava/util/List;

    .line 337
    :cond_1
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->systemSupportedLocale_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 338
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 505
    iget v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->cachedSize:I

    if-gez v0, :cond_0

    .line 507
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->getSerializedSize()I

    .line 509
    :cond_0
    iget v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->cachedSize:I

    return v0
.end method

.method public getDeviceClass()I
    .locals 1

    .prologue
    .line 383
    iget v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->deviceClass_:I

    return v0
.end method

.method public getGlEsVersion()I
    .locals 1

    .prologue
    .line 200
    iget v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->glEsVersion_:I

    return v0
.end method

.method public getGlExtensionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 350
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->glExtension_:Ljava/util/List;

    return-object v0
.end method

.method public getHasFiveWayNavigation()Z
    .locals 1

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->hasFiveWayNavigation_:Z

    return v0
.end method

.method public getHasHardKeyboard()Z
    .locals 1

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->hasHardKeyboard_:Z

    return v0
.end method

.method public getKeyboard()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->keyboard_:I

    return v0
.end method

.method public getMaxApkDownloadSizeMb()I
    .locals 1

    .prologue
    .line 399
    iget v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->maxApkDownloadSizeMb_:I

    return v0
.end method

.method public getNativePlatformList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 284
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->nativePlatform_:Ljava/util/List;

    return-object v0
.end method

.method public getNavigation()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->navigation_:I

    return v0
.end method

.method public getScreenDensity()I
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->screenDensity_:I

    return v0
.end method

.method public getScreenHeight()I
    .locals 1

    .prologue
    .line 183
    iget v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->screenHeight_:I

    return v0
.end method

.method public getScreenLayout()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->screenLayout_:I

    return v0
.end method

.method public getScreenWidth()I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->screenWidth_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    .line 514
    const/4 v3, 0x0

    .line 515
    .local v3, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->hasTouchScreen()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 516
    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->getTouchScreen()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 519
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->hasKeyboard()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 520
    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->getKeyboard()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 523
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->hasNavigation()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 524
    const/4 v4, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->getNavigation()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 527
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->hasScreenLayout()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 528
    const/4 v4, 0x4

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->getScreenLayout()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 531
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->hasHasHardKeyboard()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 532
    const/4 v4, 0x5

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->getHasHardKeyboard()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v3, v4

    .line 535
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->hasHasFiveWayNavigation()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 536
    const/4 v4, 0x6

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->getHasFiveWayNavigation()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v3, v4

    .line 539
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->hasScreenDensity()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 540
    const/4 v4, 0x7

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->getScreenDensity()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 543
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->hasGlEsVersion()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 544
    const/16 v4, 0x8

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->getGlEsVersion()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 548
    :cond_7
    const/4 v0, 0x0

    .line 549
    .local v0, dataSize:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->getSystemSharedLibraryList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 550
    .local v1, element:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_0

    .line 553
    .end local v1           #element:Ljava/lang/String;
    :cond_8
    add-int/2addr v3, v0

    .line 554
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->getSystemSharedLibraryList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 557
    const/4 v0, 0x0

    .line 558
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->getSystemAvailableFeatureList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 559
    .restart local v1       #element:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_1

    .line 562
    .end local v1           #element:Ljava/lang/String;
    :cond_9
    add-int/2addr v3, v0

    .line 563
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->getSystemAvailableFeatureList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 566
    const/4 v0, 0x0

    .line 567
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->getNativePlatformList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 568
    .restart local v1       #element:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_2

    .line 571
    .end local v1           #element:Ljava/lang/String;
    :cond_a
    add-int/2addr v3, v0

    .line 572
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->getNativePlatformList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 574
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->hasScreenWidth()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 575
    const/16 v4, 0xc

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->getScreenWidth()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 578
    :cond_b
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->hasScreenHeight()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 579
    const/16 v4, 0xd

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->getScreenHeight()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 583
    :cond_c
    const/4 v0, 0x0

    .line 584
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->getSystemSupportedLocaleList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 585
    .restart local v1       #element:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_3

    .line 588
    .end local v1           #element:Ljava/lang/String;
    :cond_d
    add-int/2addr v3, v0

    .line 589
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->getSystemSupportedLocaleList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 592
    const/4 v0, 0x0

    .line 593
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->getGlExtensionList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 594
    .restart local v1       #element:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_4

    .line 597
    .end local v1           #element:Ljava/lang/String;
    :cond_e
    add-int/2addr v3, v0

    .line 598
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->getGlExtensionList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 600
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->hasDeviceClass()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 601
    const/16 v4, 0x10

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->getDeviceClass()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 604
    :cond_f
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->hasMaxApkDownloadSizeMb()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 605
    const/16 v4, 0x11

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->getMaxApkDownloadSizeMb()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 608
    :cond_10
    iput v3, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->cachedSize:I

    .line 609
    return v3
.end method

.method public getSystemAvailableFeatureList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 251
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->systemAvailableFeature_:Ljava/util/List;

    return-object v0
.end method

.method public getSystemSharedLibraryList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 218
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->systemSharedLibrary_:Ljava/util/List;

    return-object v0
.end method

.method public getSystemSupportedLocaleList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 317
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->systemSupportedLocale_:Ljava/util/List;

    return-object v0
.end method

.method public getTouchScreen()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->touchScreen_:I

    return v0
.end method

.method public hasDeviceClass()Z
    .locals 1

    .prologue
    .line 382
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->hasDeviceClass:Z

    return v0
.end method

.method public hasGlEsVersion()Z
    .locals 1

    .prologue
    .line 201
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->hasGlEsVersion:Z

    return v0
.end method

.method public hasHasFiveWayNavigation()Z
    .locals 1

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->hasHasFiveWayNavigation:Z

    return v0
.end method

.method public hasHasHardKeyboard()Z
    .locals 1

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->hasHasHardKeyboard:Z

    return v0
.end method

.method public hasKeyboard()Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->hasKeyboard:Z

    return v0
.end method

.method public hasMaxApkDownloadSizeMb()Z
    .locals 1

    .prologue
    .line 400
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->hasMaxApkDownloadSizeMb:Z

    return v0
.end method

.method public hasNavigation()Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->hasNavigation:Z

    return v0
.end method

.method public hasScreenDensity()Z
    .locals 1

    .prologue
    .line 150
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->hasScreenDensity:Z

    return v0
.end method

.method public hasScreenHeight()Z
    .locals 1

    .prologue
    .line 184
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->hasScreenHeight:Z

    return v0
.end method

.method public hasScreenLayout()Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->hasScreenLayout:Z

    return v0
.end method

.method public hasScreenWidth()Z
    .locals 1

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->hasScreenWidth:Z

    return v0
.end method

.method public hasTouchScreen()Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->hasTouchScreen:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 617
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 618
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 622
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 623
    :sswitch_0
    return-object p0

    .line 628
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->setTouchScreen(I)Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;

    goto :goto_0

    .line 632
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->setKeyboard(I)Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;

    goto :goto_0

    .line 636
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->setNavigation(I)Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;

    goto :goto_0

    .line 640
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->setScreenLayout(I)Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;

    goto :goto_0

    .line 644
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->setHasHardKeyboard(Z)Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;

    goto :goto_0

    .line 648
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->setHasFiveWayNavigation(Z)Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;

    goto :goto_0

    .line 652
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->setScreenDensity(I)Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;

    goto :goto_0

    .line 656
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->setGlEsVersion(I)Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;

    goto :goto_0

    .line 660
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->addSystemSharedLibrary(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;

    goto :goto_0

    .line 664
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->addSystemAvailableFeature(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;

    goto :goto_0

    .line 668
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->addNativePlatform(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;

    goto :goto_0

    .line 672
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->setScreenWidth(I)Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;

    goto :goto_0

    .line 676
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->setScreenHeight(I)Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;

    goto :goto_0

    .line 680
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->addSystemSupportedLocale(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;

    goto :goto_0

    .line 684
    :sswitch_f
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->addGlExtension(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;

    goto/16 :goto_0

    .line 688
    :sswitch_10
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->setDeviceClass(I)Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;

    goto/16 :goto_0

    .line 692
    :sswitch_11
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->setMaxApkDownloadSizeMb(I)Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;

    goto/16 :goto_0

    .line 618
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
        0x4a -> :sswitch_9
        0x52 -> :sswitch_a
        0x5a -> :sswitch_b
        0x60 -> :sswitch_c
        0x68 -> :sswitch_d
        0x72 -> :sswitch_e
        0x7a -> :sswitch_f
        0x80 -> :sswitch_10
        0x88 -> :sswitch_11
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/protobuf/micro/MessageMicro;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;

    move-result-object v0

    return-object v0
.end method

.method public setDeviceClass(I)Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 385
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->hasDeviceClass:Z

    .line 386
    iput p1, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->deviceClass_:I

    .line 387
    return-object p0
.end method

.method public setGlEsVersion(I)Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 203
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->hasGlEsVersion:Z

    .line 204
    iput p1, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->glEsVersion_:I

    .line 205
    return-object p0
.end method

.method public setHasFiveWayNavigation(Z)Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 135
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->hasHasFiveWayNavigation:Z

    .line 136
    iput-boolean p1, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->hasFiveWayNavigation_:Z

    .line 137
    return-object p0
.end method

.method public setHasHardKeyboard(Z)Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 118
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->hasHasHardKeyboard:Z

    .line 119
    iput-boolean p1, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->hasHardKeyboard_:Z

    .line 120
    return-object p0
.end method

.method public setKeyboard(I)Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->hasKeyboard:Z

    .line 68
    iput p1, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->keyboard_:I

    .line 69
    return-object p0
.end method

.method public setMaxApkDownloadSizeMb(I)Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 402
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->hasMaxApkDownloadSizeMb:Z

    .line 403
    iput p1, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->maxApkDownloadSizeMb_:I

    .line 404
    return-object p0
.end method

.method public setNavigation(I)Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->hasNavigation:Z

    .line 85
    iput p1, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->navigation_:I

    .line 86
    return-object p0
.end method

.method public setScreenDensity(I)Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 152
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->hasScreenDensity:Z

    .line 153
    iput p1, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->screenDensity_:I

    .line 154
    return-object p0
.end method

.method public setScreenHeight(I)Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 186
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->hasScreenHeight:Z

    .line 187
    iput p1, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->screenHeight_:I

    .line 188
    return-object p0
.end method

.method public setScreenLayout(I)Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->hasScreenLayout:Z

    .line 102
    iput p1, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->screenLayout_:I

    .line 103
    return-object p0
.end method

.method public setScreenWidth(I)Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 169
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->hasScreenWidth:Z

    .line 170
    iput p1, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->screenWidth_:I

    .line 171
    return-object p0
.end method

.method public setTouchScreen(I)Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->hasTouchScreen:Z

    .line 51
    iput p1, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->touchScreen_:I

    .line 52
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 4
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 449
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->hasTouchScreen()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 450
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->getTouchScreen()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 452
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->hasKeyboard()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 453
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->getKeyboard()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 455
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->hasNavigation()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 456
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->getNavigation()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 458
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->hasScreenLayout()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 459
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->getScreenLayout()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 461
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->hasHasHardKeyboard()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 462
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->getHasHardKeyboard()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 464
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->hasHasFiveWayNavigation()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 465
    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->getHasFiveWayNavigation()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 467
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->hasScreenDensity()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 468
    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->getScreenDensity()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 470
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->hasGlEsVersion()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 471
    const/16 v2, 0x8

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->getGlEsVersion()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 473
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->getSystemSharedLibraryList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 474
    .local v0, element:Ljava/lang/String;
    const/16 v2, 0x9

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_0

    .line 476
    .end local v0           #element:Ljava/lang/String;
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->getSystemAvailableFeatureList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 477
    .restart local v0       #element:Ljava/lang/String;
    const/16 v2, 0xa

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_1

    .line 479
    .end local v0           #element:Ljava/lang/String;
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->getNativePlatformList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 480
    .restart local v0       #element:Ljava/lang/String;
    const/16 v2, 0xb

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_2

    .line 482
    .end local v0           #element:Ljava/lang/String;
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->hasScreenWidth()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 483
    const/16 v2, 0xc

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->getScreenWidth()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 485
    :cond_b
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->hasScreenHeight()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 486
    const/16 v2, 0xd

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->getScreenHeight()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 488
    :cond_c
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->getSystemSupportedLocaleList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 489
    .restart local v0       #element:Ljava/lang/String;
    const/16 v2, 0xe

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_3

    .line 491
    .end local v0           #element:Ljava/lang/String;
    :cond_d
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->getGlExtensionList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 492
    .restart local v0       #element:Ljava/lang/String;
    const/16 v2, 0xf

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_4

    .line 494
    .end local v0           #element:Ljava/lang/String;
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->hasDeviceClass()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 495
    const/16 v2, 0x10

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->getDeviceClass()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 497
    :cond_f
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->hasMaxApkDownloadSizeMb()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 498
    const/16 v2, 0x11

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->getMaxApkDownloadSizeMb()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 500
    :cond_10
    return-void
.end method

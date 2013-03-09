.class public final Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "DeviceConfigurationProto.java"


# instance fields
.field private cachedSize:I

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

    .line 39
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->touchScreen_:I

    .line 56
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->keyboard_:I

    .line 73
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->navigation_:I

    .line 90
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->screenLayout_:I

    .line 107
    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->hasHardKeyboard_:Z

    .line 124
    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->hasFiveWayNavigation_:Z

    .line 141
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->screenDensity_:I

    .line 158
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->screenWidth_:I

    .line 175
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->screenHeight_:I

    .line 192
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->glEsVersion_:I

    .line 208
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->systemSharedLibrary_:Ljava/util/List;

    .line 241
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->systemAvailableFeature_:Ljava/util/List;

    .line 274
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->nativePlatform_:Ljava/util/List;

    .line 307
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->systemSupportedLocale_:Ljava/util/List;

    .line 340
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->glExtension_:Ljava/util/List;

    .line 374
    const/16 v0, 0x32

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->maxApkDownloadSizeMb_:I

    .line 474
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->cachedSize:I

    .line 8
    return-void
.end method


# virtual methods
.method public addGlExtension(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 357
    if-nez p1, :cond_0

    .line 358
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->glExtension_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 361
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->glExtension_:Ljava/util/List;

    .line 363
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->glExtension_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 364
    return-object p0
.end method

.method public addNativePlatform(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 291
    if-nez p1, :cond_0

    .line 292
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->nativePlatform_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 295
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->nativePlatform_:Ljava/util/List;

    .line 297
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->nativePlatform_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 298
    return-object p0
.end method

.method public addSystemAvailableFeature(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 258
    if-nez p1, :cond_0

    .line 259
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->systemAvailableFeature_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 262
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->systemAvailableFeature_:Ljava/util/List;

    .line 264
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->systemAvailableFeature_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    return-object p0
.end method

.method public addSystemSharedLibrary(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 225
    if-nez p1, :cond_0

    .line 226
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->systemSharedLibrary_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 229
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->systemSharedLibrary_:Ljava/util/List;

    .line 231
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->systemSharedLibrary_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    return-object p0
.end method

.method public addSystemSupportedLocale(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 324
    if-nez p1, :cond_0

    .line 325
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->systemSupportedLocale_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 328
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->systemSupportedLocale_:Ljava/util/List;

    .line 330
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->systemSupportedLocale_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 331
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 477
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->cachedSize:I

    if-gez v0, :cond_0

    .line 479
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->getSerializedSize()I

    .line 481
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->cachedSize:I

    return v0
.end method

.method public getGlEsVersion()I
    .locals 1

    .prologue
    .line 193
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->glEsVersion_:I

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
    .line 343
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->glExtension_:Ljava/util/List;

    return-object v0
.end method

.method public getHasFiveWayNavigation()Z
    .locals 1

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->hasFiveWayNavigation_:Z

    return v0
.end method

.method public getHasHardKeyboard()Z
    .locals 1

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->hasHardKeyboard_:Z

    return v0
.end method

.method public getKeyboard()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->keyboard_:I

    return v0
.end method

.method public getMaxApkDownloadSizeMb()I
    .locals 1

    .prologue
    .line 375
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->maxApkDownloadSizeMb_:I

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
    .line 277
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->nativePlatform_:Ljava/util/List;

    return-object v0
.end method

.method public getNavigation()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->navigation_:I

    return v0
.end method

.method public getScreenDensity()I
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->screenDensity_:I

    return v0
.end method

.method public getScreenHeight()I
    .locals 1

    .prologue
    .line 176
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->screenHeight_:I

    return v0
.end method

.method public getScreenLayout()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->screenLayout_:I

    return v0
.end method

.method public getScreenWidth()I
    .locals 1

    .prologue
    .line 159
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->screenWidth_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    .line 486
    const/4 v3, 0x0

    .line 487
    .local v3, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->hasTouchScreen()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 488
    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->getTouchScreen()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 491
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->hasKeyboard()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 492
    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->getKeyboard()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 495
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->hasNavigation()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 496
    const/4 v4, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->getNavigation()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 499
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->hasScreenLayout()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 500
    const/4 v4, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->getScreenLayout()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 503
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->hasHasHardKeyboard()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 504
    const/4 v4, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->getHasHardKeyboard()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v3, v4

    .line 507
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->hasHasFiveWayNavigation()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 508
    const/4 v4, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->getHasFiveWayNavigation()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v3, v4

    .line 511
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->hasScreenDensity()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 512
    const/4 v4, 0x7

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->getScreenDensity()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 515
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->hasGlEsVersion()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 516
    const/16 v4, 0x8

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->getGlEsVersion()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 520
    :cond_7
    const/4 v0, 0x0

    .line 521
    .local v0, dataSize:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->getSystemSharedLibraryList()Ljava/util/List;

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

    .line 522
    .local v1, element:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_0

    .line 525
    .end local v1           #element:Ljava/lang/String;
    :cond_8
    add-int/2addr v3, v0

    .line 526
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->getSystemSharedLibraryList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 529
    const/4 v0, 0x0

    .line 530
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->getSystemAvailableFeatureList()Ljava/util/List;

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

    .line 531
    .restart local v1       #element:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_1

    .line 534
    .end local v1           #element:Ljava/lang/String;
    :cond_9
    add-int/2addr v3, v0

    .line 535
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->getSystemAvailableFeatureList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 538
    const/4 v0, 0x0

    .line 539
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->getNativePlatformList()Ljava/util/List;

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

    .line 540
    .restart local v1       #element:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_2

    .line 543
    .end local v1           #element:Ljava/lang/String;
    :cond_a
    add-int/2addr v3, v0

    .line 544
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->getNativePlatformList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 546
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->hasScreenWidth()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 547
    const/16 v4, 0xc

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->getScreenWidth()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 550
    :cond_b
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->hasScreenHeight()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 551
    const/16 v4, 0xd

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->getScreenHeight()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 555
    :cond_c
    const/4 v0, 0x0

    .line 556
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->getSystemSupportedLocaleList()Ljava/util/List;

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

    .line 557
    .restart local v1       #element:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_3

    .line 560
    .end local v1           #element:Ljava/lang/String;
    :cond_d
    add-int/2addr v3, v0

    .line 561
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->getSystemSupportedLocaleList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 564
    const/4 v0, 0x0

    .line 565
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->getGlExtensionList()Ljava/util/List;

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

    .line 566
    .restart local v1       #element:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_4

    .line 569
    .end local v1           #element:Ljava/lang/String;
    :cond_e
    add-int/2addr v3, v0

    .line 570
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->getGlExtensionList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 572
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->hasMaxApkDownloadSizeMb()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 573
    const/16 v4, 0x11

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->getMaxApkDownloadSizeMb()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 576
    :cond_f
    iput v3, p0, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->cachedSize:I

    .line 577
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
    .line 244
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->systemAvailableFeature_:Ljava/util/List;

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
    .line 211
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->systemSharedLibrary_:Ljava/util/List;

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
    .line 310
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->systemSupportedLocale_:Ljava/util/List;

    return-object v0
.end method

.method public getTouchScreen()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->touchScreen_:I

    return v0
.end method

.method public hasGlEsVersion()Z
    .locals 1

    .prologue
    .line 194
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->hasGlEsVersion:Z

    return v0
.end method

.method public hasHasFiveWayNavigation()Z
    .locals 1

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->hasHasFiveWayNavigation:Z

    return v0
.end method

.method public hasHasHardKeyboard()Z
    .locals 1

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->hasHasHardKeyboard:Z

    return v0
.end method

.method public hasKeyboard()Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->hasKeyboard:Z

    return v0
.end method

.method public hasMaxApkDownloadSizeMb()Z
    .locals 1

    .prologue
    .line 376
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->hasMaxApkDownloadSizeMb:Z

    return v0
.end method

.method public hasNavigation()Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->hasNavigation:Z

    return v0
.end method

.method public hasScreenDensity()Z
    .locals 1

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->hasScreenDensity:Z

    return v0
.end method

.method public hasScreenHeight()Z
    .locals 1

    .prologue
    .line 177
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->hasScreenHeight:Z

    return v0
.end method

.method public hasScreenLayout()Z
    .locals 1

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->hasScreenLayout:Z

    return v0
.end method

.method public hasScreenWidth()Z
    .locals 1

    .prologue
    .line 160
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->hasScreenWidth:Z

    return v0
.end method

.method public hasTouchScreen()Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->hasTouchScreen:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 585
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 586
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 590
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 591
    :sswitch_0
    return-object p0

    .line 596
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->setTouchScreen(I)Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;

    goto :goto_0

    .line 600
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->setKeyboard(I)Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;

    goto :goto_0

    .line 604
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->setNavigation(I)Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;

    goto :goto_0

    .line 608
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->setScreenLayout(I)Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;

    goto :goto_0

    .line 612
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->setHasHardKeyboard(Z)Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;

    goto :goto_0

    .line 616
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->setHasFiveWayNavigation(Z)Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;

    goto :goto_0

    .line 620
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->setScreenDensity(I)Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;

    goto :goto_0

    .line 624
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->setGlEsVersion(I)Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;

    goto :goto_0

    .line 628
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->addSystemSharedLibrary(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;

    goto :goto_0

    .line 632
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->addSystemAvailableFeature(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;

    goto :goto_0

    .line 636
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->addNativePlatform(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;

    goto :goto_0

    .line 640
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->setScreenWidth(I)Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;

    goto :goto_0

    .line 644
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->setScreenHeight(I)Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;

    goto :goto_0

    .line 648
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->addSystemSupportedLocale(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;

    goto :goto_0

    .line 652
    :sswitch_f
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->addGlExtension(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;

    goto/16 :goto_0

    .line 656
    :sswitch_10
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->setMaxApkDownloadSizeMb(I)Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;

    goto/16 :goto_0

    .line 586
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
        0x88 -> :sswitch_10
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
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;

    move-result-object v0

    return-object v0
.end method

.method public setGlEsVersion(I)Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 196
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->hasGlEsVersion:Z

    .line 197
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->glEsVersion_:I

    .line 198
    return-object p0
.end method

.method public setHasFiveWayNavigation(Z)Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->hasHasFiveWayNavigation:Z

    .line 129
    iput-boolean p1, p0, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->hasFiveWayNavigation_:Z

    .line 130
    return-object p0
.end method

.method public setHasHardKeyboard(Z)Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->hasHasHardKeyboard:Z

    .line 112
    iput-boolean p1, p0, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->hasHardKeyboard_:Z

    .line 113
    return-object p0
.end method

.method public setKeyboard(I)Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->hasKeyboard:Z

    .line 61
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->keyboard_:I

    .line 62
    return-object p0
.end method

.method public setMaxApkDownloadSizeMb(I)Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 378
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->hasMaxApkDownloadSizeMb:Z

    .line 379
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->maxApkDownloadSizeMb_:I

    .line 380
    return-object p0
.end method

.method public setNavigation(I)Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->hasNavigation:Z

    .line 78
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->navigation_:I

    .line 79
    return-object p0
.end method

.method public setScreenDensity(I)Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 145
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->hasScreenDensity:Z

    .line 146
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->screenDensity_:I

    .line 147
    return-object p0
.end method

.method public setScreenHeight(I)Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 179
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->hasScreenHeight:Z

    .line 180
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->screenHeight_:I

    .line 181
    return-object p0
.end method

.method public setScreenLayout(I)Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->hasScreenLayout:Z

    .line 95
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->screenLayout_:I

    .line 96
    return-object p0
.end method

.method public setScreenWidth(I)Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 162
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->hasScreenWidth:Z

    .line 163
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->screenWidth_:I

    .line 164
    return-object p0
.end method

.method public setTouchScreen(I)Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->hasTouchScreen:Z

    .line 44
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->touchScreen_:I

    .line 45
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
    .line 424
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->hasTouchScreen()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 425
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->getTouchScreen()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 427
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->hasKeyboard()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 428
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->getKeyboard()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 430
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->hasNavigation()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 431
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->getNavigation()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 433
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->hasScreenLayout()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 434
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->getScreenLayout()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 436
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->hasHasHardKeyboard()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 437
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->getHasHardKeyboard()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 439
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->hasHasFiveWayNavigation()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 440
    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->getHasFiveWayNavigation()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 442
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->hasScreenDensity()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 443
    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->getScreenDensity()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 445
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->hasGlEsVersion()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 446
    const/16 v2, 0x8

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->getGlEsVersion()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 448
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->getSystemSharedLibraryList()Ljava/util/List;

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

    .line 449
    .local v0, element:Ljava/lang/String;
    const/16 v2, 0x9

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_0

    .line 451
    .end local v0           #element:Ljava/lang/String;
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->getSystemAvailableFeatureList()Ljava/util/List;

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

    .line 452
    .restart local v0       #element:Ljava/lang/String;
    const/16 v2, 0xa

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_1

    .line 454
    .end local v0           #element:Ljava/lang/String;
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->getNativePlatformList()Ljava/util/List;

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

    .line 455
    .restart local v0       #element:Ljava/lang/String;
    const/16 v2, 0xb

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_2

    .line 457
    .end local v0           #element:Ljava/lang/String;
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->hasScreenWidth()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 458
    const/16 v2, 0xc

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->getScreenWidth()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 460
    :cond_b
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->hasScreenHeight()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 461
    const/16 v2, 0xd

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->getScreenHeight()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 463
    :cond_c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->getSystemSupportedLocaleList()Ljava/util/List;

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

    .line 464
    .restart local v0       #element:Ljava/lang/String;
    const/16 v2, 0xe

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_3

    .line 466
    .end local v0           #element:Ljava/lang/String;
    :cond_d
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->getGlExtensionList()Ljava/util/List;

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

    .line 467
    .restart local v0       #element:Ljava/lang/String;
    const/16 v2, 0xf

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_4

    .line 469
    .end local v0           #element:Ljava/lang/String;
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->hasMaxApkDownloadSizeMb()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 470
    const/16 v2, 0x11

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->getMaxApkDownloadSizeMb()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 472
    :cond_f
    return-void
.end method

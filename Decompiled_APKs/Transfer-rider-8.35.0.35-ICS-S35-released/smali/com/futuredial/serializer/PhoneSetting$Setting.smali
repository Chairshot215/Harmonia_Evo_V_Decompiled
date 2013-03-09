.class public final Lcom/futuredial/serializer/PhoneSetting$Setting;
.super Lcom/google/protobuf/GeneratedMessage;
.source "PhoneSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/futuredial/serializer/PhoneSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Setting"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;
    }
.end annotation


# static fields
.field public static final SETTING_TYPES_FIELD_NUMBER:I = 0x2

.field public static final TYPE_MAP_TO_INDEX_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/futuredial/serializer/PhoneSetting$Setting;


# instance fields
.field private hasTypeMapToIndex:Z

.field private memoizedSerializedSize:I

.field private settingTypes_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/futuredial/serializer/PhoneSetting$SettingType;",
            ">;"
        }
    .end annotation
.end field

.field private typeMapToIndex_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1629
    new-instance v0, Lcom/futuredial/serializer/PhoneSetting$Setting;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/futuredial/serializer/PhoneSetting$Setting;-><init>(Z)V

    sput-object v0, Lcom/futuredial/serializer/PhoneSetting$Setting;->defaultInstance:Lcom/futuredial/serializer/PhoneSetting$Setting;

    .line 1630
    invoke-static {}, Lcom/futuredial/serializer/PhoneSetting;->internalForceInit()V

    .line 1631
    sget-object v0, Lcom/futuredial/serializer/PhoneSetting$Setting;->defaultInstance:Lcom/futuredial/serializer/PhoneSetting$Setting;

    invoke-direct {v0}, Lcom/futuredial/serializer/PhoneSetting$Setting;->initFields()V

    .line 1632
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1263
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 1290
    const-string v0, ""

    iput-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$Setting;->typeMapToIndex_:Ljava/lang/String;

    .line 1296
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$Setting;->settingTypes_:Ljava/util/List;

    .line 1328
    const/4 v0, -0x1

    iput v0, p0, Lcom/futuredial/serializer/PhoneSetting$Setting;->memoizedSerializedSize:I

    .line 1264
    invoke-direct {p0}, Lcom/futuredial/serializer/PhoneSetting$Setting;->initFields()V

    .line 1265
    return-void
.end method

.method synthetic constructor <init>(Lcom/futuredial/serializer/PhoneSetting$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1260
    invoke-direct {p0}, Lcom/futuredial/serializer/PhoneSetting$Setting;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    .line 1266
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 1290
    const-string v0, ""

    iput-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$Setting;->typeMapToIndex_:Ljava/lang/String;

    .line 1296
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$Setting;->settingTypes_:Ljava/util/List;

    .line 1328
    const/4 v0, -0x1

    iput v0, p0, Lcom/futuredial/serializer/PhoneSetting$Setting;->memoizedSerializedSize:I

    .line 1266
    return-void
.end method

.method static synthetic access$4000(Lcom/futuredial/serializer/PhoneSetting$Setting;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1260
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$Setting;->settingTypes_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$4002(Lcom/futuredial/serializer/PhoneSetting$Setting;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1260
    iput-object p1, p0, Lcom/futuredial/serializer/PhoneSetting$Setting;->settingTypes_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$4102(Lcom/futuredial/serializer/PhoneSetting$Setting;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1260
    iput-boolean p1, p0, Lcom/futuredial/serializer/PhoneSetting$Setting;->hasTypeMapToIndex:Z

    return p1
.end method

.method static synthetic access$4202(Lcom/futuredial/serializer/PhoneSetting$Setting;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1260
    iput-object p1, p0, Lcom/futuredial/serializer/PhoneSetting$Setting;->typeMapToIndex_:Ljava/lang/String;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/futuredial/serializer/PhoneSetting$Setting;
    .locals 1

    .prologue
    .line 1270
    sget-object v0, Lcom/futuredial/serializer/PhoneSetting$Setting;->defaultInstance:Lcom/futuredial/serializer/PhoneSetting$Setting;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1279
    invoke-static {}, Lcom/futuredial/serializer/PhoneSetting;->access$3500()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 0

    .prologue
    .line 1307
    return-void
.end method

.method public static newBuilder()Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;
    .locals 1

    .prologue
    .line 1414
    #calls: Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;->create()Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;
    invoke-static {}, Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;->access$3800()Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/futuredial/serializer/PhoneSetting$Setting;)Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 1417
    invoke-static {}, Lcom/futuredial/serializer/PhoneSetting$Setting;->newBuilder()Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;->mergeFrom(Lcom/futuredial/serializer/PhoneSetting$Setting;)Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/futuredial/serializer/PhoneSetting$Setting;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1383
    invoke-static {}, Lcom/futuredial/serializer/PhoneSetting$Setting;->newBuilder()Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;

    move-result-object v0

    .line 1384
    .local v0, builder:Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;
    invoke-virtual {v0, p0}, Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1385
    #calls: Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;->buildParsed()Lcom/futuredial/serializer/PhoneSetting$Setting;
    invoke-static {v0}, Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;->access$3700(Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;)Lcom/futuredial/serializer/PhoneSetting$Setting;

    move-result-object v1

    .line 1387
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/futuredial/serializer/PhoneSetting$Setting;
    .locals 2
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1394
    invoke-static {}, Lcom/futuredial/serializer/PhoneSetting$Setting;->newBuilder()Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;

    move-result-object v0

    .line 1395
    .local v0, builder:Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1396
    #calls: Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;->buildParsed()Lcom/futuredial/serializer/PhoneSetting$Setting;
    invoke-static {v0}, Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;->access$3700(Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;)Lcom/futuredial/serializer/PhoneSetting$Setting;

    move-result-object v1

    .line 1398
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/futuredial/serializer/PhoneSetting$Setting;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1350
    invoke-static {}, Lcom/futuredial/serializer/PhoneSetting$Setting;->newBuilder()Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;

    #calls: Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;->buildParsed()Lcom/futuredial/serializer/PhoneSetting$Setting;
    invoke-static {v0}, Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;->access$3700(Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;)Lcom/futuredial/serializer/PhoneSetting$Setting;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/futuredial/serializer/PhoneSetting$Setting;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1356
    invoke-static {}, Lcom/futuredial/serializer/PhoneSetting$Setting;->newBuilder()Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;

    #calls: Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;->buildParsed()Lcom/futuredial/serializer/PhoneSetting$Setting;
    invoke-static {v0}, Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;->access$3700(Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;)Lcom/futuredial/serializer/PhoneSetting$Setting;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/futuredial/serializer/PhoneSetting$Setting;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1404
    invoke-static {}, Lcom/futuredial/serializer/PhoneSetting$Setting;->newBuilder()Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;

    #calls: Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;->buildParsed()Lcom/futuredial/serializer/PhoneSetting$Setting;
    invoke-static {v0}, Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;->access$3700(Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;)Lcom/futuredial/serializer/PhoneSetting$Setting;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/futuredial/serializer/PhoneSetting$Setting;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1410
    invoke-static {}, Lcom/futuredial/serializer/PhoneSetting$Setting;->newBuilder()Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;

    move-result-object v0

    #calls: Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;->buildParsed()Lcom/futuredial/serializer/PhoneSetting$Setting;
    invoke-static {v0}, Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;->access$3700(Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;)Lcom/futuredial/serializer/PhoneSetting$Setting;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/futuredial/serializer/PhoneSetting$Setting;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1372
    invoke-static {}, Lcom/futuredial/serializer/PhoneSetting$Setting;->newBuilder()Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;

    #calls: Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;->buildParsed()Lcom/futuredial/serializer/PhoneSetting$Setting;
    invoke-static {v0}, Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;->access$3700(Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;)Lcom/futuredial/serializer/PhoneSetting$Setting;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/futuredial/serializer/PhoneSetting$Setting;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1378
    invoke-static {}, Lcom/futuredial/serializer/PhoneSetting$Setting;->newBuilder()Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;

    #calls: Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;->buildParsed()Lcom/futuredial/serializer/PhoneSetting$Setting;
    invoke-static {v0}, Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;->access$3700(Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;)Lcom/futuredial/serializer/PhoneSetting$Setting;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/futuredial/serializer/PhoneSetting$Setting;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1361
    invoke-static {}, Lcom/futuredial/serializer/PhoneSetting$Setting;->newBuilder()Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;

    #calls: Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;->buildParsed()Lcom/futuredial/serializer/PhoneSetting$Setting;
    invoke-static {v0}, Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;->access$3700(Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;)Lcom/futuredial/serializer/PhoneSetting$Setting;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/futuredial/serializer/PhoneSetting$Setting;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1367
    invoke-static {}, Lcom/futuredial/serializer/PhoneSetting$Setting;->newBuilder()Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;

    #calls: Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;->buildParsed()Lcom/futuredial/serializer/PhoneSetting$Setting;
    invoke-static {v0}, Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;->access$3700(Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;)Lcom/futuredial/serializer/PhoneSetting$Setting;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/futuredial/serializer/PhoneSetting$Setting;
    .locals 1

    .prologue
    .line 1274
    sget-object v0, Lcom/futuredial/serializer/PhoneSetting$Setting;->defaultInstance:Lcom/futuredial/serializer/PhoneSetting$Setting;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1260
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$Setting;->getDefaultInstanceForType()Lcom/futuredial/serializer/PhoneSetting$Setting;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1260
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$Setting;->getDefaultInstanceForType()Lcom/futuredial/serializer/PhoneSetting$Setting;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    .line 1330
    iget v2, p0, Lcom/futuredial/serializer/PhoneSetting$Setting;->memoizedSerializedSize:I

    .line 1331
    .local v2, size:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    move v3, v2

    .line 1344
    .end local v2           #size:I
    .local v3, size:I
    :goto_0
    return v3

    .line 1333
    .end local v3           #size:I
    .restart local v2       #size:I
    :cond_0
    const/4 v2, 0x0

    .line 1334
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$Setting;->hasTypeMapToIndex()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1335
    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$Setting;->getTypeMapToIndex()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    .line 1338
    :cond_1
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$Setting;->getSettingTypesList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/futuredial/serializer/PhoneSetting$SettingType;

    .line 1339
    .local v0, element:Lcom/futuredial/serializer/PhoneSetting$SettingType;
    const/4 v4, 0x2

    invoke-static {v4, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_1

    .line 1342
    .end local v0           #element:Lcom/futuredial/serializer/PhoneSetting$SettingType;
    :cond_2
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$Setting;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v4

    add-int/2addr v2, v4

    .line 1343
    iput v2, p0, Lcom/futuredial/serializer/PhoneSetting$Setting;->memoizedSerializedSize:I

    move v3, v2

    .line 1344
    .end local v2           #size:I
    .restart local v3       #size:I
    goto :goto_0
.end method

.method public getSettingTypes(I)Lcom/futuredial/serializer/PhoneSetting$SettingType;
    .locals 1
    .parameter "index"

    .prologue
    .line 1303
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$Setting;->settingTypes_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/futuredial/serializer/PhoneSetting$SettingType;

    return-object v0
.end method

.method public getSettingTypesCount()I
    .locals 1

    .prologue
    .line 1301
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$Setting;->settingTypes_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSettingTypesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/futuredial/serializer/PhoneSetting$SettingType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1299
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$Setting;->settingTypes_:Ljava/util/List;

    return-object v0
.end method

.method public getTypeMapToIndex()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1292
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$Setting;->typeMapToIndex_:Ljava/lang/String;

    return-object v0
.end method

.method public hasTypeMapToIndex()Z
    .locals 1

    .prologue
    .line 1291
    iget-boolean v0, p0, Lcom/futuredial/serializer/PhoneSetting$Setting;->hasTypeMapToIndex:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 1284
    invoke-static {}, Lcom/futuredial/serializer/PhoneSetting;->access$3600()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1309
    iget-boolean v3, p0, Lcom/futuredial/serializer/PhoneSetting$Setting;->hasTypeMapToIndex:Z

    if-nez v3, :cond_0

    .line 1313
    :goto_0
    return v2

    .line 1310
    :cond_0
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$Setting;->getSettingTypesList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/futuredial/serializer/PhoneSetting$SettingType;

    .line 1311
    .local v0, element:Lcom/futuredial/serializer/PhoneSetting$SettingType;
    invoke-virtual {v0}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 1313
    .end local v0           #element:Lcom/futuredial/serializer/PhoneSetting$SettingType;
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;
    .locals 1

    .prologue
    .line 1415
    invoke-static {}, Lcom/futuredial/serializer/PhoneSetting$Setting;->newBuilder()Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1260
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$Setting;->newBuilderForType()Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1260
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$Setting;->newBuilderForType()Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;
    .locals 1

    .prologue
    .line 1419
    invoke-static {p0}, Lcom/futuredial/serializer/PhoneSetting$Setting;->newBuilder(Lcom/futuredial/serializer/PhoneSetting$Setting;)Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1260
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$Setting;->toBuilder()Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1260
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$Setting;->toBuilder()Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 4
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1318
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$Setting;->getSerializedSize()I

    .line 1319
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$Setting;->hasTypeMapToIndex()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1320
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$Setting;->getTypeMapToIndex()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 1322
    :cond_0
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$Setting;->getSettingTypesList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/futuredial/serializer/PhoneSetting$SettingType;

    .line 1323
    .local v0, element:Lcom/futuredial/serializer/PhoneSetting$SettingType;
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    goto :goto_0

    .line 1325
    .end local v0           #element:Lcom/futuredial/serializer/PhoneSetting$SettingType;
    :cond_1
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$Setting;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 1326
    return-void
.end method

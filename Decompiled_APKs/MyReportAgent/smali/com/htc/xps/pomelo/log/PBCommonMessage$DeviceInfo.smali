.class public final Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;
.super Lcom/htc/protobuf/GeneratedMessage;
.source "PBCommonMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/xps/pomelo/log/PBCommonMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DeviceInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;
    }
.end annotation


# static fields
.field public static final CID_FIELD_NUMBER:I = 0x7

.field public static final CITY_FIELD_NUMBER:I = 0x2

.field public static final DEVICE_ID_FIELD_NUMBER:I = 0x5

.field public static final DEVICE_SN_FIELD_NUMBER:I = 0x6

.field public static final MODEL_ID_FIELD_NUMBER:I = 0x4

.field public static final PRIVACY_STATEMENT_VERSION_FIELD_NUMBER:I = 0xa

.field public static final REGION_FIELD_NUMBER:I = 0x1

.field public static final ROM_VERSION_FIELD_NUMBER:I = 0x8

.field public static final SENSE_VERSION_FIELD_NUMBER:I = 0x9

.field public static final TIME_ZONE_FIELD_NUMBER:I = 0x3

.field private static final defaultInstance:Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;


# instance fields
.field private cid_:Ljava/lang/String;

.field private city_:Ljava/lang/String;

.field private deviceId_:Ljava/lang/String;

.field private deviceSN_:Ljava/lang/String;

.field private hasCid:Z

.field private hasCity:Z

.field private hasDeviceId:Z

.field private hasDeviceSN:Z

.field private hasModelId:Z

.field private hasPrivacyStatementVersion:Z

.field private hasRegion:Z

.field private hasRomVersion:Z

.field private hasSenseVersion:Z

.field private hasTimeZone:Z

.field private memoizedSerializedSize:I

.field private modelId_:Ljava/lang/String;

.field private privacyStatementVersion_:Ljava/lang/String;

.field private region_:Ljava/lang/String;

.field private romVersion_:Ljava/lang/String;

.field private senseVersion_:Ljava/lang/String;

.field private timeZone_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    invoke-direct {v0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;-><init>()V

    sput-object v0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->defaultInstance:Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    .line 647
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBCommonMessage;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 651
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBCommonMessage;->internalForceInit()V

    .line 652
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage;-><init>()V

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->region_:Ljava/lang/String;

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->city_:Ljava/lang/String;

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->timeZone_:I

    .line 58
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->modelId_:Ljava/lang/String;

    .line 65
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->deviceId_:Ljava/lang/String;

    .line 72
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->deviceSN_:Ljava/lang/String;

    .line 79
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->cid_:Ljava/lang/String;

    .line 86
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->romVersion_:Ljava/lang/String;

    .line 93
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->senseVersion_:Ljava/lang/String;

    .line 100
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->privacyStatementVersion_:Ljava/lang/String;

    .line 143
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->memoizedSerializedSize:I

    .line 13
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/xps/pomelo/log/PBCommonMessage$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;-><init>()V

    return-void
.end method

.method static synthetic access$1002(Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10
    iput p1, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->timeZone_:I

    return p1
.end method

.method static synthetic access$1102(Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10
    iput-boolean p1, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->hasModelId:Z

    return p1
.end method

.method static synthetic access$1202(Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10
    iput-object p1, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->modelId_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10
    iput-boolean p1, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->hasDeviceId:Z

    return p1
.end method

.method static synthetic access$1402(Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10
    iput-object p1, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->deviceId_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1502(Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10
    iput-boolean p1, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->hasDeviceSN:Z

    return p1
.end method

.method static synthetic access$1602(Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10
    iput-object p1, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->deviceSN_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1702(Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10
    iput-boolean p1, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->hasCid:Z

    return p1
.end method

.method static synthetic access$1802(Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10
    iput-object p1, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->cid_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1902(Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10
    iput-boolean p1, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->hasRomVersion:Z

    return p1
.end method

.method static synthetic access$2002(Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10
    iput-object p1, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->romVersion_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2102(Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10
    iput-boolean p1, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->hasSenseVersion:Z

    return p1
.end method

.method static synthetic access$2202(Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10
    iput-object p1, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->senseVersion_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2302(Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10
    iput-boolean p1, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->hasPrivacyStatementVersion:Z

    return p1
.end method

.method static synthetic access$2402(Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10
    iput-object p1, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->privacyStatementVersion_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10
    iput-boolean p1, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->hasRegion:Z

    return p1
.end method

.method static synthetic access$602(Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10
    iput-object p1, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->region_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$702(Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10
    iput-boolean p1, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->hasCity:Z

    return p1
.end method

.method static synthetic access$802(Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10
    iput-object p1, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->city_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$902(Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10
    iput-boolean p1, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->hasTimeZone:Z

    return p1
.end method

.method public static getDefaultInstance()Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->defaultInstance:Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 26
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBCommonMessage;->access$000()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;
    .locals 1

    .prologue
    .line 252
    #calls: Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->create()Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->access$300()Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 255
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->newBuilder()Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->mergeFrom(Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 230
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->newBuilder()Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;

    #calls: Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->buildParsed()Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;
    invoke-static {v0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->access$200(Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 236
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->newBuilder()Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;

    #calls: Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->buildParsed()Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;
    invoke-static {v0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->access$200(Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 197
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->newBuilder()Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;

    #calls: Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->buildParsed()Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;
    invoke-static {v0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->access$200(Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 203
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->newBuilder()Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;

    #calls: Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->buildParsed()Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;
    invoke-static {v0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->access$200(Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 242
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->newBuilder()Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;

    #calls: Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->buildParsed()Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;
    invoke-static {v0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->access$200(Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 248
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->newBuilder()Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;

    move-result-object v0

    #calls: Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->buildParsed()Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;
    invoke-static {v0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->access$200(Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 219
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->newBuilder()Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;

    #calls: Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->buildParsed()Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;
    invoke-static {v0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->access$200(Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 225
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->newBuilder()Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;

    #calls: Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->buildParsed()Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;
    invoke-static {v0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->access$200(Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 208
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->newBuilder()Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;

    #calls: Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->buildParsed()Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;
    invoke-static {v0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->access$200(Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 214
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->newBuilder()Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;

    #calls: Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->buildParsed()Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;
    invoke-static {v0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->access$200(Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->cid_:Ljava/lang/String;

    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->city_:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 10
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->getDefaultInstanceForType()Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 10
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->getDefaultInstanceForType()Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->defaultInstance:Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->deviceId_:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceSN()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->deviceSN_:Ljava/lang/String;

    return-object v0
.end method

.method public getModelId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->modelId_:Ljava/lang/String;

    return-object v0
.end method

.method public getPrivacyStatementVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->privacyStatementVersion_:Ljava/lang/String;

    return-object v0
.end method

.method public getRegion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->region_:Ljava/lang/String;

    return-object v0
.end method

.method public getRomVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->romVersion_:Ljava/lang/String;

    return-object v0
.end method

.method public getSenseVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->senseVersion_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 145
    iget v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->memoizedSerializedSize:I

    .line 146
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 191
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 148
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 149
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->hasRegion()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 150
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->getRegion()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 153
    :cond_1
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->hasCity()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 154
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->getCity()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 157
    :cond_2
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->hasTimeZone()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 158
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->getTimeZone()I

    move-result v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeSInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 161
    :cond_3
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->hasModelId()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 162
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->getModelId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 165
    :cond_4
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->hasDeviceId()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 166
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 169
    :cond_5
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->hasDeviceSN()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 170
    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->getDeviceSN()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 173
    :cond_6
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->hasCid()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 174
    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->getCid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 177
    :cond_7
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->hasRomVersion()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 178
    const/16 v2, 0x8

    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->getRomVersion()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 181
    :cond_8
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->hasSenseVersion()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 182
    const/16 v2, 0x9

    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->getSenseVersion()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 185
    :cond_9
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->hasPrivacyStatementVersion()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 186
    const/16 v2, 0xa

    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->getPrivacyStatementVersion()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 189
    :cond_a
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 190
    iput v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->memoizedSerializedSize:I

    move v1, v0

    .line 191
    .end local v0           #size:I
    .restart local v1       #size:I
    goto/16 :goto_0
.end method

.method public getTimeZone()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->timeZone_:I

    return v0
.end method

.method public hasCid()Z
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->hasCid:Z

    return v0
.end method

.method public hasCity()Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->hasCity:Z

    return v0
.end method

.method public hasDeviceId()Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->hasDeviceId:Z

    return v0
.end method

.method public hasDeviceSN()Z
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->hasDeviceSN:Z

    return v0
.end method

.method public hasModelId()Z
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->hasModelId:Z

    return v0
.end method

.method public hasPrivacyStatementVersion()Z
    .locals 1

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->hasPrivacyStatementVersion:Z

    return v0
.end method

.method public hasRegion()Z
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->hasRegion:Z

    return v0
.end method

.method public hasRomVersion()Z
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->hasRomVersion:Z

    return v0
.end method

.method public hasSenseVersion()Z
    .locals 1

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->hasSenseVersion:Z

    return v0
.end method

.method public hasTimeZone()Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->hasTimeZone:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 31
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBCommonMessage;->access$100()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 10
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->newBuilderForType()Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 10
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->newBuilderForType()Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;
    .locals 1

    .prologue
    .line 253
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->newBuilder()Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 10
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->toBuilder()Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 10
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->toBuilder()Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;
    .locals 1

    .prologue
    .line 257
    invoke-static {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->newBuilder(Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/htc/protobuf/CodedOutputStream;)V
    .locals 2
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->hasRegion()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->getRegion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 113
    :cond_0
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->hasCity()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->getCity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 116
    :cond_1
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->hasTimeZone()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 117
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->getTimeZone()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeSInt32(II)V

    .line 119
    :cond_2
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->hasModelId()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 120
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->getModelId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 122
    :cond_3
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->hasDeviceId()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 123
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 125
    :cond_4
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->hasDeviceSN()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 126
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->getDeviceSN()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 128
    :cond_5
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->hasCid()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 129
    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->getCid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 131
    :cond_6
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->hasRomVersion()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 132
    const/16 v0, 0x8

    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->getRomVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 134
    :cond_7
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->hasSenseVersion()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 135
    const/16 v0, 0x9

    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->getSenseVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 137
    :cond_8
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->hasPrivacyStatementVersion()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 138
    const/16 v0, 0xa

    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->getPrivacyStatementVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 140
    :cond_9
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    .line 141
    return-void
.end method

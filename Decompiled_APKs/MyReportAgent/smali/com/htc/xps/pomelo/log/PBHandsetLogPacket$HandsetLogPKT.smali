.class public final Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;
.super Lcom/htc/protobuf/GeneratedMessage;
.source "PBHandsetLogPacket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/xps/pomelo/log/PBHandsetLogPacket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HandsetLogPKT"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;
    }
.end annotation


# static fields
.field public static final CHECK_SUM_FIELD_NUMBER:I = 0x16

.field public static final DEVICE_INFO_FIELD_NUMBER:I = 0x2

.field public static final LOOKUP_FIELD_NUMBER:I = 0x15

.field public static final PAYLOAD_FIELD_NUMBER:I = 0xb

.field public static final VERSION_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;


# instance fields
.field private checkSum_:I

.field private deviceInfo_:Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

.field private hasCheckSum:Z

.field private hasDeviceInfo:Z

.field private hasLookup:Z

.field private hasVersion:Z

.field private lookup_:I

.field private memoizedSerializedSize:I

.field private payload_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;",
            ">;"
        }
    .end annotation
.end field

.field private version_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;

    invoke-direct {v0}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;-><init>()V

    sput-object v0, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->defaultInstance:Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;

    .line 499
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 503
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket;->internalForceInit()V

    .line 504
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage;-><init>()V

    .line 37
    const-string v0, "1.0"

    iput-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->version_:Ljava/lang/String;

    .line 44
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->getDefaultInstance()Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->deviceInfo_:Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    .line 50
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->payload_:Ljava/util/List;

    .line 63
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->lookup_:I

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->checkSum_:I

    .line 98
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->memoizedSerializedSize:I

    .line 13
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;-><init>()V

    return-void
.end method

.method static synthetic access$1002(Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10
    iput-boolean p1, p0, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->hasLookup:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10
    iput p1, p0, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->lookup_:I

    return p1
.end method

.method static synthetic access$1202(Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10
    iput-boolean p1, p0, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->hasCheckSum:Z

    return p1
.end method

.method static synthetic access$1302(Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10
    iput p1, p0, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->checkSum_:I

    return p1
.end method

.method static synthetic access$500(Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 10
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->payload_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$502(Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10
    iput-object p1, p0, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->payload_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$602(Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10
    iput-boolean p1, p0, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->hasVersion:Z

    return p1
.end method

.method static synthetic access$702(Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10
    iput-object p1, p0, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->version_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$802(Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10
    iput-boolean p1, p0, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->hasDeviceInfo:Z

    return p1
.end method

.method static synthetic access$900(Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 10
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->deviceInfo_:Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    return-object v0
.end method

.method static synthetic access$902(Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10
    iput-object p1, p0, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->deviceInfo_:Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->defaultInstance:Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 26
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket;->access$000()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;
    .locals 1

    .prologue
    .line 187
    #calls: Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->create()Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->access$300()Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;)Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 190
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->newBuilder()Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->mergeFrom(Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;)Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 165
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->newBuilder()Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;

    #calls: Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->buildParsed()Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;
    invoke-static {v0}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->access$200(Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;)Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 171
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->newBuilder()Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;

    #calls: Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->buildParsed()Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;
    invoke-static {v0}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->access$200(Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;)Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 132
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->newBuilder()Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;

    #calls: Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->buildParsed()Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;
    invoke-static {v0}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->access$200(Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;)Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 138
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->newBuilder()Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;

    #calls: Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->buildParsed()Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;
    invoke-static {v0}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->access$200(Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;)Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 177
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->newBuilder()Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;

    #calls: Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->buildParsed()Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;
    invoke-static {v0}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->access$200(Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;)Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 183
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->newBuilder()Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;

    move-result-object v0

    #calls: Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->buildParsed()Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;
    invoke-static {v0}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->access$200(Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;)Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 154
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->newBuilder()Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;

    #calls: Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->buildParsed()Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;
    invoke-static {v0}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->access$200(Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;)Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 160
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->newBuilder()Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;

    #calls: Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->buildParsed()Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;
    invoke-static {v0}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->access$200(Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;)Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 143
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->newBuilder()Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;

    #calls: Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->buildParsed()Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;
    invoke-static {v0}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->access$200(Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;)Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 149
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->newBuilder()Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;

    #calls: Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->buildParsed()Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;
    invoke-static {v0}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->access$200(Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;)Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCheckSum()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->checkSum_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 10
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->getDefaultInstanceForType()Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 10
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->getDefaultInstanceForType()Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->defaultInstance:Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;

    return-object v0
.end method

.method public getDeviceInfo()Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->deviceInfo_:Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    return-object v0
.end method

.method public getLookup()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->lookup_:I

    return v0
.end method

.method public getPayload(I)Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;
    .locals 1
    .parameter "index"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->payload_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;

    return-object v0
.end method

.method public getPayloadCount()I
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->payload_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPayloadList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->payload_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    .line 100
    iget v2, p0, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->memoizedSerializedSize:I

    .line 101
    .local v2, size:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    move v3, v2

    .line 126
    .end local v2           #size:I
    .local v3, size:I
    :goto_0
    return v3

    .line 103
    .end local v3           #size:I
    .restart local v2       #size:I
    :cond_0
    const/4 v2, 0x0

    .line 104
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->hasVersion()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 105
    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->getVersion()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    .line 108
    :cond_1
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->hasDeviceInfo()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 109
    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->getDeviceInfo()Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    .line 112
    :cond_2
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->getPayloadList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;

    .line 113
    .local v0, element:Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;
    const/16 v4, 0xb

    invoke-static {v4, v0}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_1

    .line 116
    .end local v0           #element:Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;
    :cond_3
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->hasLookup()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 117
    const/16 v4, 0x15

    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->getLookup()I

    move-result v5

    invoke-static {v4, v5}, Lcom/htc/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 120
    :cond_4
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->hasCheckSum()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 121
    const/16 v4, 0x16

    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->getCheckSum()I

    move-result v5

    invoke-static {v4, v5}, Lcom/htc/protobuf/CodedOutputStream;->computeSInt32Size(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 124
    :cond_5
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v4

    add-int/2addr v2, v4

    .line 125
    iput v2, p0, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->memoizedSerializedSize:I

    move v3, v2

    .line 126
    .end local v2           #size:I
    .restart local v3       #size:I
    goto :goto_0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->version_:Ljava/lang/String;

    return-object v0
.end method

.method public hasCheckSum()Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->hasCheckSum:Z

    return v0
.end method

.method public hasDeviceInfo()Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->hasDeviceInfo:Z

    return v0
.end method

.method public hasLookup()Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->hasLookup:Z

    return v0
.end method

.method public hasVersion()Z
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->hasVersion:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 31
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket;->access$100()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 10
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->newBuilderForType()Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 10
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->newBuilderForType()Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;
    .locals 1

    .prologue
    .line 188
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->newBuilder()Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 10
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->toBuilder()Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 10
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->toBuilder()Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;
    .locals 1

    .prologue
    .line 192
    invoke-static {p0}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->newBuilder(Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;)Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/htc/protobuf/CodedOutputStream;)V
    .locals 4
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->hasVersion()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 81
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 83
    :cond_0
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->hasDeviceInfo()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 84
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->getDeviceInfo()Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 86
    :cond_1
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->getPayloadList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;

    .line 87
    .local v0, element:Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;
    const/16 v2, 0xb

    invoke-virtual {p1, v2, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    goto :goto_0

    .line 89
    .end local v0           #element:Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;
    :cond_2
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->hasLookup()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 90
    const/16 v2, 0x15

    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->getLookup()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 92
    :cond_3
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->hasCheckSum()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 93
    const/16 v2, 0x16

    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->getCheckSum()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->writeSInt32(II)V

    .line 95
    :cond_4
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    .line 96
    return-void
.end method

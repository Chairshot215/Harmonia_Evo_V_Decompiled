.class public final Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;
.super Lcom/htc/protobuf/GeneratedMessage;
.source "PBCommonMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/xps/pomelo/log/PBCommonMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LogPayload"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;
    }
.end annotation


# static fields
.field public static final APP_ID_FIELD_NUMBER:I = 0x1

.field public static final ATTACHMENT_FIELD_NUMBER:I = 0xc

.field public static final CATEGORY_FIELD_NUMBER:I = 0x2

.field public static final DATA_FIELD_NUMBER:I = 0xb

.field public static final TIMESTAMP_FIELD_NUMBER:I = 0x3

.field private static final defaultInstance:Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;


# instance fields
.field private appId_:Ljava/lang/String;

.field private attachment_:Lcom/htc/protobuf/ByteString;

.field private category_:Ljava/lang/String;

.field private data_:Ljava/lang/String;

.field private hasAppId:Z

.field private hasAttachment:Z

.field private hasCategory:Z

.field private hasData:Z

.field private hasTimestamp:Z

.field private memoizedSerializedSize:I

.field private timestamp_:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 972
    new-instance v0, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;

    invoke-direct {v0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;-><init>()V

    sput-object v0, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->defaultInstance:Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;

    .line 1394
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBCommonMessage;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 1398
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBCommonMessage;->internalForceInit()V

    .line 1399
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 970
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage;-><init>()V

    .line 994
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->appId_:Ljava/lang/String;

    .line 1001
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->category_:Ljava/lang/String;

    .line 1008
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->timestamp_:J

    .line 1015
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->data_:Ljava/lang/String;

    .line 1022
    sget-object v0, Lcom/htc/protobuf/ByteString;->EMPTY:Lcom/htc/protobuf/ByteString;

    iput-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->attachment_:Lcom/htc/protobuf/ByteString;

    .line 1050
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->memoizedSerializedSize:I

    .line 970
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/xps/pomelo/log/PBCommonMessage$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 967
    invoke-direct {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;-><init>()V

    return-void
.end method

.method static synthetic access$3902(Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 967
    iput-boolean p1, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->hasAppId:Z

    return p1
.end method

.method static synthetic access$4002(Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 967
    iput-object p1, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->appId_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4102(Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 967
    iput-boolean p1, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->hasCategory:Z

    return p1
.end method

.method static synthetic access$4202(Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 967
    iput-object p1, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->category_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4302(Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 967
    iput-boolean p1, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->hasTimestamp:Z

    return p1
.end method

.method static synthetic access$4402(Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 967
    iput-wide p1, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->timestamp_:J

    return-wide p1
.end method

.method static synthetic access$4502(Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 967
    iput-boolean p1, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->hasData:Z

    return p1
.end method

.method static synthetic access$4602(Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 967
    iput-object p1, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->data_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4702(Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 967
    iput-boolean p1, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->hasAttachment:Z

    return p1
.end method

.method static synthetic access$4802(Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/ByteString;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 967
    iput-object p1, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->attachment_:Lcom/htc/protobuf/ByteString;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;
    .locals 1

    .prologue
    .line 974
    sget-object v0, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->defaultInstance:Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 983
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBCommonMessage;->access$3400()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;
    .locals 1

    .prologue
    .line 1139
    #calls: Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->create()Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->access$3700()Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;)Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 1142
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->newBuilder()Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->mergeFrom(Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;)Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1117
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->newBuilder()Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;

    #calls: Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->buildParsed()Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;
    invoke-static {v0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->access$3600(Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;)Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1123
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->newBuilder()Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;

    #calls: Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->buildParsed()Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;
    invoke-static {v0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->access$3600(Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;)Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1084
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->newBuilder()Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;

    #calls: Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->buildParsed()Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;
    invoke-static {v0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->access$3600(Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;)Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1090
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->newBuilder()Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;

    #calls: Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->buildParsed()Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;
    invoke-static {v0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->access$3600(Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;)Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1129
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->newBuilder()Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;

    #calls: Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->buildParsed()Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;
    invoke-static {v0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->access$3600(Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;)Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1135
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->newBuilder()Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;

    move-result-object v0

    #calls: Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->buildParsed()Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;
    invoke-static {v0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->access$3600(Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;)Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1106
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->newBuilder()Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;

    #calls: Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->buildParsed()Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;
    invoke-static {v0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->access$3600(Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;)Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1112
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->newBuilder()Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;

    #calls: Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->buildParsed()Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;
    invoke-static {v0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->access$3600(Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;)Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1095
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->newBuilder()Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;

    #calls: Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->buildParsed()Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;
    invoke-static {v0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->access$3600(Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;)Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1101
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->newBuilder()Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;

    #calls: Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->buildParsed()Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;
    invoke-static {v0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->access$3600(Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;)Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 996
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->appId_:Ljava/lang/String;

    return-object v0
.end method

.method public getAttachment()Lcom/htc/protobuf/ByteString;
    .locals 1

    .prologue
    .line 1024
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->attachment_:Lcom/htc/protobuf/ByteString;

    return-object v0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1003
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->category_:Ljava/lang/String;

    return-object v0
.end method

.method public getData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1017
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->data_:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 967
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->getDefaultInstanceForType()Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 967
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->getDefaultInstanceForType()Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;
    .locals 1

    .prologue
    .line 978
    sget-object v0, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->defaultInstance:Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 1052
    iget v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->memoizedSerializedSize:I

    .line 1053
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 1078
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 1055
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 1056
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->hasAppId()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1057
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1060
    :cond_1
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->hasCategory()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1061
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->getCategory()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1064
    :cond_2
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->hasTimestamp()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1065
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->getTimestamp()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/htc/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 1068
    :cond_3
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->hasData()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1069
    const/16 v2, 0xb

    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->getData()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1072
    :cond_4
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->hasAttachment()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1073
    const/16 v2, 0xc

    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->getAttachment()Lcom/htc/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeBytesSize(ILcom/htc/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1076
    :cond_5
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 1077
    iput v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->memoizedSerializedSize:I

    move v1, v0

    .line 1078
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 1010
    iget-wide v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->timestamp_:J

    return-wide v0
.end method

.method public hasAppId()Z
    .locals 1

    .prologue
    .line 995
    iget-boolean v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->hasAppId:Z

    return v0
.end method

.method public hasAttachment()Z
    .locals 1

    .prologue
    .line 1023
    iget-boolean v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->hasAttachment:Z

    return v0
.end method

.method public hasCategory()Z
    .locals 1

    .prologue
    .line 1002
    iget-boolean v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->hasCategory:Z

    return v0
.end method

.method public hasData()Z
    .locals 1

    .prologue
    .line 1016
    iget-boolean v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->hasData:Z

    return v0
.end method

.method public hasTimestamp()Z
    .locals 1

    .prologue
    .line 1009
    iget-boolean v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->hasTimestamp:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 988
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBCommonMessage;->access$3500()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 1027
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 967
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->newBuilderForType()Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 967
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->newBuilderForType()Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;
    .locals 1

    .prologue
    .line 1140
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->newBuilder()Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 967
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->toBuilder()Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 967
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->toBuilder()Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;
    .locals 1

    .prologue
    .line 1144
    invoke-static {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->newBuilder(Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;)Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/htc/protobuf/CodedOutputStream;)V
    .locals 3
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1032
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->hasAppId()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1033
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 1035
    :cond_0
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->hasCategory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1036
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->getCategory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 1038
    :cond_1
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1039
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->getTimestamp()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/htc/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 1041
    :cond_2
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->hasData()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1042
    const/16 v0, 0xb

    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 1044
    :cond_3
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->hasAttachment()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1045
    const/16 v0, 0xc

    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->getAttachment()Lcom/htc/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeBytes(ILcom/htc/protobuf/ByteString;)V

    .line 1047
    :cond_4
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    .line 1048
    return-void
.end method

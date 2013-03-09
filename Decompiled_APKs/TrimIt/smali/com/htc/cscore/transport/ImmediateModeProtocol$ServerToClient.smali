.class public final Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;
.super Lcom/htc/protobuf/GeneratedMessage;
.source "ImmediateModeProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/ImmediateModeProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ServerToClient"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;,
        Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$MessageType;
    }
.end annotation


# static fields
.field public static final MAXIMUMINTERVAL_FIELD_NUMBER:I = 0x3

.field public static final MINIMUMINTERVAL_FIELD_NUMBER:I = 0x2

.field public static final QUEUESWITHDATA_FIELD_NUMBER:I = 0x5

.field public static final SERVERTIME_FIELD_NUMBER:I = 0x4

.field public static final TYPE_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;


# instance fields
.field private hasMaximumInterval:Z

.field private hasMinimumInterval:Z

.field private hasServerTime:Z

.field private hasType:Z

.field private maximumInterval_:I

.field private memoizedSerializedSize:I

.field private minimumInterval_:I

.field private queuesWithData_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/cscore/transport/ImmediateModeProtocol$QueueIdentifier;",
            ">;"
        }
    .end annotation
.end field

.field private serverTime_:J

.field private type_:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$MessageType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    new-instance v0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    invoke-direct {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;-><init>()V

    sput-object v0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->defaultInstance:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    .line 618
    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 622
    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol;->internalForceInit()V

    .line 623
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage;-><init>()V

    .line 175
    sget-object v0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$MessageType;->Nop:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$MessageType;

    iput-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->type_:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$MessageType;

    .line 182
    iput v1, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->minimumInterval_:I

    .line 189
    iput v1, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->maximumInterval_:I

    .line 196
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->serverTime_:J

    .line 202
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->queuesWithData_:Ljava/util/List;

    .line 237
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->memoizedSerializedSize:I

    .line 80
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/cscore/transport/ImmediateModeProtocol$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;-><init>()V

    return-void
.end method

.method static synthetic access$1002(Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->hasMaximumInterval:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput p1, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->maximumInterval_:I

    return p1
.end method

.method static synthetic access$1202(Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->hasServerTime:Z

    return p1
.end method

.method static synthetic access$1302(Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput-wide p1, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->serverTime_:J

    return-wide p1
.end method

.method static synthetic access$500(Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->queuesWithData_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$502(Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->queuesWithData_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$602(Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->hasType:Z

    return p1
.end method

.method static synthetic access$702(Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$MessageType;)Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$MessageType;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->type_:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$MessageType;

    return-object p1
.end method

.method static synthetic access$802(Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->hasMinimumInterval:Z

    return p1
.end method

.method static synthetic access$902(Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput p1, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->minimumInterval_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->defaultInstance:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol;->access$000()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;
    .locals 1

    .prologue
    .line 331
    #calls: Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->create()Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;
    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->access$300()Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;)Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 334
    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->newBuilder()Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->mergeFrom(Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;)Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 309
    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->newBuilder()Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;

    #calls: Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->buildParsed()Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;
    invoke-static {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->access$200(Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;)Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 315
    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->newBuilder()Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;

    #calls: Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->buildParsed()Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;
    invoke-static {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->access$200(Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;)Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 276
    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->newBuilder()Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;

    #calls: Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->buildParsed()Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;
    invoke-static {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->access$200(Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;)Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 282
    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->newBuilder()Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;

    #calls: Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->buildParsed()Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;
    invoke-static {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->access$200(Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;)Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 321
    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->newBuilder()Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;

    #calls: Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->buildParsed()Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;
    invoke-static {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->access$200(Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;)Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 327
    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->newBuilder()Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;

    move-result-object v0

    #calls: Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->buildParsed()Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;
    invoke-static {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->access$200(Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;)Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 298
    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->newBuilder()Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;

    #calls: Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->buildParsed()Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;
    invoke-static {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->access$200(Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;)Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 304
    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->newBuilder()Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;

    #calls: Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->buildParsed()Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;
    invoke-static {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->access$200(Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;)Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 287
    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->newBuilder()Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;

    #calls: Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->buildParsed()Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;
    invoke-static {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->access$200(Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;)Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 293
    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->newBuilder()Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;

    #calls: Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->buildParsed()Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;
    invoke-static {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->access$200(Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;)Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->defaultInstance:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->getDefaultInstanceForType()Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->getDefaultInstanceForType()Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    move-result-object v0

    return-object v0
.end method

.method public getMaximumInterval()I
    .locals 1

    .prologue
    .line 191
    iget v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->maximumInterval_:I

    return v0
.end method

.method public getMinimumInterval()I
    .locals 1

    .prologue
    .line 184
    iget v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->minimumInterval_:I

    return v0
.end method

.method public getQueuesWithData(I)Lcom/htc/cscore/transport/ImmediateModeProtocol$QueueIdentifier;
    .locals 1
    .parameter "index"

    .prologue
    .line 209
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->queuesWithData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/ImmediateModeProtocol$QueueIdentifier;

    return-object v0
.end method

.method public getQueuesWithDataCount()I
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->queuesWithData_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getQueuesWithDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/cscore/transport/ImmediateModeProtocol$QueueIdentifier;",
            ">;"
        }
    .end annotation

    .prologue
    .line 205
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->queuesWithData_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 8

    .prologue
    .line 239
    iget v3, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->memoizedSerializedSize:I

    .line 240
    .local v3, size:I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_0

    move v4, v3

    .line 270
    .end local v3           #size:I
    .local v4, size:I
    :goto_0
    return v4

    .line 242
    .end local v4           #size:I
    .restart local v3       #size:I
    :cond_0
    const/4 v3, 0x0

    .line 243
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->hasType()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 244
    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->getType()Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$MessageType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$MessageType;->getNumber()I

    move-result v6

    invoke-static {v5, v6}, Lcom/htc/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v5

    add-int/2addr v3, v5

    .line 247
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->hasMinimumInterval()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 248
    const/4 v5, 0x2

    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->getMinimumInterval()I

    move-result v6

    invoke-static {v5, v6}, Lcom/htc/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v5

    add-int/2addr v3, v5

    .line 251
    :cond_2
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->hasMaximumInterval()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 252
    const/4 v5, 0x3

    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->getMaximumInterval()I

    move-result v6

    invoke-static {v5, v6}, Lcom/htc/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v5

    add-int/2addr v3, v5

    .line 255
    :cond_3
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->hasServerTime()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 256
    const/4 v5, 0x4

    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->getServerTime()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lcom/htc/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v5

    add-int/2addr v3, v5

    .line 260
    :cond_4
    const/4 v0, 0x0

    .line 261
    .local v0, dataSize:I
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->getQueuesWithDataList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/cscore/transport/ImmediateModeProtocol$QueueIdentifier;

    .line 262
    .local v1, element:Lcom/htc/cscore/transport/ImmediateModeProtocol$QueueIdentifier;
    invoke-virtual {v1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$QueueIdentifier;->getNumber()I

    move-result v5

    invoke-static {v5}, Lcom/htc/protobuf/CodedOutputStream;->computeEnumSizeNoTag(I)I

    move-result v5

    add-int/2addr v0, v5

    goto :goto_1

    .line 265
    .end local v1           #element:Lcom/htc/cscore/transport/ImmediateModeProtocol$QueueIdentifier;
    :cond_5
    add-int/2addr v3, v0

    .line 266
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->getQueuesWithDataList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    mul-int/lit8 v5, v5, 0x1

    add-int/2addr v3, v5

    .line 268
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v5

    add-int/2addr v3, v5

    .line 269
    iput v3, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->memoizedSerializedSize:I

    move v4, v3

    .line 270
    .end local v3           #size:I
    .restart local v4       #size:I
    goto :goto_0
.end method

.method public getServerTime()J
    .locals 2

    .prologue
    .line 198
    iget-wide v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->serverTime_:J

    return-wide v0
.end method

.method public getType()Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$MessageType;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->type_:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$MessageType;

    return-object v0
.end method

.method public hasMaximumInterval()Z
    .locals 1

    .prologue
    .line 190
    iget-boolean v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->hasMaximumInterval:Z

    return v0
.end method

.method public hasMinimumInterval()Z
    .locals 1

    .prologue
    .line 183
    iget-boolean v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->hasMinimumInterval:Z

    return v0
.end method

.method public hasServerTime()Z
    .locals 1

    .prologue
    .line 197
    iget-boolean v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->hasServerTime:Z

    return v0
.end method

.method public hasType()Z
    .locals 1

    .prologue
    .line 176
    iget-boolean v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->hasType:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 98
    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol;->access$100()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 213
    iget-boolean v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->hasType:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 214
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;
    .locals 1

    .prologue
    .line 332
    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->newBuilder()Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->newBuilderForType()Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->newBuilderForType()Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;
    .locals 1

    .prologue
    .line 336
    invoke-static {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->newBuilder(Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;)Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->toBuilder()Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->toBuilder()Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/htc/protobuf/CodedOutputStream;)V
    .locals 5
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 219
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->hasType()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 220
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->getType()Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$MessageType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$MessageType;->getNumber()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 222
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->hasMinimumInterval()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 223
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->getMinimumInterval()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 225
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->hasMaximumInterval()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 226
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->getMaximumInterval()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 228
    :cond_2
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->hasServerTime()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 229
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->getServerTime()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/htc/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 231
    :cond_3
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->getQueuesWithDataList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/ImmediateModeProtocol$QueueIdentifier;

    .line 232
    .local v0, element:Lcom/htc/cscore/transport/ImmediateModeProtocol$QueueIdentifier;
    const/4 v2, 0x5

    invoke-virtual {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$QueueIdentifier;->getNumber()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->writeEnum(II)V

    goto :goto_0

    .line 234
    .end local v0           #element:Lcom/htc/cscore/transport/ImmediateModeProtocol$QueueIdentifier;
    :cond_4
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    .line 235
    return-void
.end method

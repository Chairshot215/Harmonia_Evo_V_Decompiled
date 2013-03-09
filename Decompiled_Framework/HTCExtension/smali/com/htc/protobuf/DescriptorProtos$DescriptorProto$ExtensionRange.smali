.class public final Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;
.super Lcom/htc/protobuf/GeneratedMessage;
.source "DescriptorProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ExtensionRange"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;
    }
.end annotation


# static fields
.field public static final END_FIELD_NUMBER:I = 0x2

.field public static final START_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;


# instance fields
.field private end_:I

.field private hasEnd:Z

.field private hasStart:Z

.field private memoizedSerializedSize:I

.field private start_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;

    invoke-direct {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;-><init>()V

    sput-object v0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->defaultInstance:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos;->internalForceInit()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage;-><init>()V

    iput v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->start_:I

    iput v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->end_:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->memoizedSerializedSize:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/protobuf/DescriptorProtos$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;-><init>()V

    return-void
.end method

.method static synthetic access$2902(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->hasStart:Z

    return p1
.end method

.method static synthetic access$3002(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;I)I
    .locals 0

    iput p1, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->start_:I

    return p1
.end method

.method static synthetic access$3102(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->hasEnd:Z

    return p1
.end method

.method static synthetic access$3202(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;I)I
    .locals 0

    iput p1, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->end_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;
    .locals 1

    sget-object v0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->defaultInstance:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos;->access$2400()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;
    .locals 1

    #calls: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->create()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->access$2700()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;
    .locals 1

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->mergeFrom(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->access$2600(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->access$2600(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->access$2600(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->access$2600(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->access$2600(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;

    move-result-object v0

    #calls: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->access$2600(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->access$2600(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->access$2600(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->access$2600(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->access$2600(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;
    .locals 1

    sget-object v0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->defaultInstance:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->getDefaultInstanceForType()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->getDefaultInstanceForType()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;

    move-result-object v0

    return-object v0
.end method

.method public getEnd()I
    .locals 1

    iget v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->end_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 4

    iget v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->memoizedSerializedSize:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    :goto_0
    return v1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->hasStart()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->getStart()I

    move-result v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    :cond_1
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->hasEnd()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->getEnd()I

    move-result v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    :cond_2
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    iput v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->memoizedSerializedSize:I

    move v1, v0

    goto :goto_0
.end method

.method public getStart()I
    .locals 1

    iget v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->start_:I

    return v0
.end method

.method public hasEnd()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->hasEnd:Z

    return v0
.end method

.method public hasStart()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->hasStart:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos;->access$2500()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public newBuilderForType()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;
    .locals 1

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->newBuilderForType()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->newBuilderForType()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;
    .locals 1

    invoke-static {p0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->newBuilder(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->toBuilder()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->toBuilder()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/htc/protobuf/CodedOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->hasStart()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->getStart()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_0
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->hasEnd()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->getEnd()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_1
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    return-void
.end method

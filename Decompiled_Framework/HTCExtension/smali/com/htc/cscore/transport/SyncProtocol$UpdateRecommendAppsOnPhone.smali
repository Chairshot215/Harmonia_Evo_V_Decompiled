.class public final Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;
.super Lcom/htc/protobuf/GeneratedMessage;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UpdateRecommendAppsOnPhone"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;
    }
.end annotation


# static fields
.field public static final RECOMMENDAPPSONPHONE_FIELD_NUMBER:I = 0x3d8

.field private static final defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;


# instance fields
.field private hasRecommendAppsOnPhone:Z

.field private memoizedSerializedSize:I

.field private recommendAppsOnPhone_:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;-><init>()V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->internalForceInit()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage;-><init>()V

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;->recommendAppsOnPhone_:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;->memoizedSerializedSize:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;-><init>()V

    return-void
.end method

.method static synthetic access$105402(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;->hasRecommendAppsOnPhone:Z

    return p1
.end method

.method static synthetic access$105500(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;->recommendAppsOnPhone_:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    return-object v0
.end method

.method static synthetic access$105502(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;
    .locals 0

    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;->recommendAppsOnPhone_:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;
    .locals 1

    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$104900()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;
    .locals 1

    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;->access$105200()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;
    .locals 1

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;->access$105100(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;->access$105100(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;->access$105100(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;->access$105100(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;->access$105100(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;

    move-result-object v0

    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;->access$105100(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;->access$105100(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;->access$105100(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;->access$105100(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;->access$105100(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;
    .locals 1

    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;

    move-result-object v0

    return-object v0
.end method

.method public getRecommendAppsOnPhone()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;->recommendAppsOnPhone_:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;->memoizedSerializedSize:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    :goto_0
    return v1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;->hasRecommendAppsOnPhone()Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x3d8

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;->getRecommendAppsOnPhone()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;->memoizedSerializedSize:I

    move v1, v0

    goto :goto_0
.end method

.method public hasRecommendAppsOnPhone()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;->hasRecommendAppsOnPhone:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$105000()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;->hasRecommendAppsOnPhone:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;->getRecommendAppsOnPhone()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;
    .locals 1

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;
    .locals 1

    invoke-static {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;

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

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;->hasRecommendAppsOnPhone()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x3d8

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;->getRecommendAppsOnPhone()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    return-void
.end method

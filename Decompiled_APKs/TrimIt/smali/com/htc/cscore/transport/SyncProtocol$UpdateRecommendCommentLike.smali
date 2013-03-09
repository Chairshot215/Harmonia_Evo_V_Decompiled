.class public final Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;
.super Lcom/htc/protobuf/GeneratedMessage;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UpdateRecommendCommentLike"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike$Builder;
    }
.end annotation


# static fields
.field public static final RECOMMEND_FIELD_NUMBER:I = 0x10e

.field private static final defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;


# instance fields
.field private hasRecommend:Z

.field private memoizedSerializedSize:I

.field private recommend_:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36404
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;-><init>()V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;

    .line 36684
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 36688
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->internalForceInit()V

    .line 36689
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 36402
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage;-><init>()V

    .line 36426
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;->recommend_:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    .line 36444
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;->memoizedSerializedSize:I

    .line 36402
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36399
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;-><init>()V

    return-void
.end method

.method static synthetic access$106102(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36399
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;->hasRecommend:Z

    return p1
.end method

.method static synthetic access$106200(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36399
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;->recommend_:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    return-object v0
.end method

.method static synthetic access$106202(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36399
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;->recommend_:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;
    .locals 1

    .prologue
    .line 36406
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 36415
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$105600()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike$Builder;
    .locals 1

    .prologue
    .line 36517
    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike$Builder;
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike$Builder;->access$105900()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 36520
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36495
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike$Builder;->access$105800(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36501
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike$Builder;->access$105800(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 36462
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike$Builder;->access$105800(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 36468
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike$Builder;->access$105800(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36507
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike$Builder;->access$105800(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36513
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike$Builder;

    move-result-object v0

    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike$Builder;->access$105800(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36484
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike$Builder;->access$105800(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36490
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike$Builder;->access$105800(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 36473
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike$Builder;->access$105800(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 36479
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike$Builder;->access$105800(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;
    .locals 1

    .prologue
    .line 36410
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 36399
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 36399
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public getRecommend()Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;
    .locals 1

    .prologue
    .line 36428
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;->recommend_:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 36446
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;->memoizedSerializedSize:I

    .line 36447
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 36456
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 36449
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 36450
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;->hasRecommend()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 36451
    const/16 v2, 0x10e

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;->getRecommend()Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 36454
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 36455
    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;->memoizedSerializedSize:I

    move v1, v0

    .line 36456
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public hasRecommend()Z
    .locals 1

    .prologue
    .line 36427
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;->hasRecommend:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 36420
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$105700()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 36431
    iget-boolean v1, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;->hasRecommend:Z

    if-nez v1, :cond_1

    .line 36433
    :cond_0
    :goto_0
    return v0

    .line 36432
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;->getRecommend()Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 36433
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike$Builder;
    .locals 1

    .prologue
    .line 36518
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 36399
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 36399
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike$Builder;
    .locals 1

    .prologue
    .line 36522
    invoke-static {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 36399
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 36399
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike$Builder;

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
    .line 36438
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;->hasRecommend()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36439
    const/16 v0, 0x10e

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;->getRecommend()Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 36441
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    .line 36442
    return-void
.end method

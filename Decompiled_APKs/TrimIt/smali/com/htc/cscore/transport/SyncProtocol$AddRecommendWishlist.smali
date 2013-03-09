.class public final Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;
.super Lcom/htc/protobuf/GeneratedMessage;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AddRecommendWishlist"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;
    }
.end annotation


# static fields
.field public static final WISHLIST_FIELD_NUMBER:I = 0x6cf

.field private static final defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;


# instance fields
.field private hasWishlist:Z

.field private memoizedSerializedSize:I

.field private wishlist_:Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33056
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;-><init>()V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;

    .line 33336
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 33340
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->internalForceInit()V

    .line 33341
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 33054
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage;-><init>()V

    .line 33078
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;->wishlist_:Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    .line 33096
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;->memoizedSerializedSize:I

    .line 33054
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 33051
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;-><init>()V

    return-void
.end method

.method static synthetic access$96302(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33051
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;->hasWishlist:Z

    return p1
.end method

.method static synthetic access$96400(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33051
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;->wishlist_:Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    return-object v0
.end method

.method static synthetic access$96402(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33051
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;->wishlist_:Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;
    .locals 1

    .prologue
    .line 33058
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 33067
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$95800()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;
    .locals 1

    .prologue
    .line 33169
    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->access$96100()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 33172
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33147
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->access$96000(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33153
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->access$96000(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 33114
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->access$96000(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 33120
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->access$96000(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33159
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->access$96000(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33165
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;

    move-result-object v0

    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->access$96000(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33136
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->access$96000(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33142
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->access$96000(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 33125
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->access$96000(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 33131
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->access$96000(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;
    .locals 1

    .prologue
    .line 33062
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 33051
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 33051
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 33098
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;->memoizedSerializedSize:I

    .line 33099
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 33108
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 33101
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 33102
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;->hasWishlist()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 33103
    const/16 v2, 0x6cf

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;->getWishlist()Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 33106
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 33107
    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;->memoizedSerializedSize:I

    move v1, v0

    .line 33108
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public getWishlist()Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;
    .locals 1

    .prologue
    .line 33080
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;->wishlist_:Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    return-object v0
.end method

.method public hasWishlist()Z
    .locals 1

    .prologue
    .line 33079
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;->hasWishlist:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 33072
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$95900()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 33083
    iget-boolean v1, p0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;->hasWishlist:Z

    if-nez v1, :cond_1

    .line 33085
    :cond_0
    :goto_0
    return v0

    .line 33084
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;->getWishlist()Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 33085
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;
    .locals 1

    .prologue
    .line 33170
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 33051
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 33051
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;
    .locals 1

    .prologue
    .line 33174
    invoke-static {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 33051
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 33051
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;

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
    .line 33090
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;->hasWishlist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33091
    const/16 v0, 0x6cf

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;->getWishlist()Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 33093
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    .line 33094
    return-void
.end method

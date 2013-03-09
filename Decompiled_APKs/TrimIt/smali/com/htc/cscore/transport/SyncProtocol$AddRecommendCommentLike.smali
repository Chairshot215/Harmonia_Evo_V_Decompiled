.class public final Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;
.super Lcom/htc/protobuf/GeneratedMessage;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AddRecommendCommentLike"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;
    }
.end annotation


# static fields
.field public static final ISLIKE_FIELD_NUMBER:I = 0x625

.field public static final RECOMMEND_FIELD_NUMBER:I = 0x10e

.field private static final defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;


# instance fields
.field private hasIsLike:Z

.field private hasRecommend:Z

.field private isLike_:Z

.field private memoizedSerializedSize:I

.field private recommend_:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32723
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;-><init>()V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;

    .line 33043
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 33047
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->internalForceInit()V

    .line 33048
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 32721
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage;-><init>()V

    .line 32745
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;->recommend_:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    .line 32752
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;->isLike_:Z

    .line 32774
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;->memoizedSerializedSize:I

    .line 32721
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32718
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;-><init>()V

    return-void
.end method

.method static synthetic access$95402(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32718
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;->hasRecommend:Z

    return p1
.end method

.method static synthetic access$95500(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32718
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;->recommend_:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    return-object v0
.end method

.method static synthetic access$95502(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32718
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;->recommend_:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    return-object p1
.end method

.method static synthetic access$95602(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32718
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;->hasIsLike:Z

    return p1
.end method

.method static synthetic access$95702(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32718
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;->isLike_:Z

    return p1
.end method

.method public static getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;
    .locals 1

    .prologue
    .line 32725
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 32734
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$94900()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;
    .locals 1

    .prologue
    .line 32851
    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;->access$95200()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 32854
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32829
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;->access$95100(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32835
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;->access$95100(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 32796
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;->access$95100(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 32802
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;->access$95100(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32841
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;->access$95100(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32847
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;

    move-result-object v0

    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;->access$95100(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32818
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;->access$95100(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32824
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;->access$95100(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 32807
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;->access$95100(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 32813
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;->access$95100(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;
    .locals 1

    .prologue
    .line 32729
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 32718
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 32718
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public getIsLike()Z
    .locals 1

    .prologue
    .line 32754
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;->isLike_:Z

    return v0
.end method

.method public getRecommend()Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;
    .locals 1

    .prologue
    .line 32747
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;->recommend_:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 32776
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;->memoizedSerializedSize:I

    .line 32777
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 32790
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 32779
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 32780
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;->hasRecommend()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 32781
    const/16 v2, 0x10e

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;->getRecommend()Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 32784
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;->hasIsLike()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 32785
    const/16 v2, 0x625

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;->getIsLike()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 32788
    :cond_2
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 32789
    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;->memoizedSerializedSize:I

    move v1, v0

    .line 32790
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public hasIsLike()Z
    .locals 1

    .prologue
    .line 32753
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;->hasIsLike:Z

    return v0
.end method

.method public hasRecommend()Z
    .locals 1

    .prologue
    .line 32746
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;->hasRecommend:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 32739
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$95000()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 32757
    iget-boolean v1, p0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;->hasRecommend:Z

    if-nez v1, :cond_1

    .line 32760
    :cond_0
    :goto_0
    return v0

    .line 32758
    :cond_1
    iget-boolean v1, p0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;->hasIsLike:Z

    if-eqz v1, :cond_0

    .line 32759
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;->getRecommend()Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 32760
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;
    .locals 1

    .prologue
    .line 32852
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 32718
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 32718
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;
    .locals 1

    .prologue
    .line 32856
    invoke-static {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 32718
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 32718
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;

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
    .line 32765
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;->hasRecommend()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32766
    const/16 v0, 0x10e

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;->getRecommend()Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 32768
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;->hasIsLike()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 32769
    const/16 v0, 0x625

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;->getIsLike()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 32771
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    .line 32772
    return-void
.end method

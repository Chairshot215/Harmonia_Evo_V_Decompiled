.class public final Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;
.super Lcom/htc/protobuf/GeneratedMessage;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DeleteRecommendCommentLike"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;
    }
.end annotation


# static fields
.field public static final APPID_FIELD_NUMBER:I = 0x631

.field public static final APPTYPE_FIELD_NUMBER:I = 0x78a

.field public static final ISLIKE_FIELD_NUMBER:I = 0x625

.field private static final defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;


# instance fields
.field private appId_:Ljava/lang/String;

.field private appType_:Ljava/lang/String;

.field private hasAppId:Z

.field private hasAppType:Z

.field private hasIsLike:Z

.field private isLike_:Z

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33642
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;-><init>()V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    .line 33983
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 33987
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->internalForceInit()V

    .line 33988
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 33640
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage;-><init>()V

    .line 33664
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->appId_:Ljava/lang/String;

    .line 33671
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->appType_:Ljava/lang/String;

    .line 33678
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->isLike_:Z

    .line 33703
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->memoizedSerializedSize:I

    .line 33640
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 33637
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;-><init>()V

    return-void
.end method

.method static synthetic access$97702(Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33637
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->hasAppId:Z

    return p1
.end method

.method static synthetic access$97802(Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33637
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->appId_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$97902(Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33637
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->hasAppType:Z

    return p1
.end method

.method static synthetic access$98002(Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33637
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->appType_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$98102(Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33637
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->hasIsLike:Z

    return p1
.end method

.method static synthetic access$98202(Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33637
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->isLike_:Z

    return p1
.end method

.method public static getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;
    .locals 1

    .prologue
    .line 33644
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 33653
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$97200()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;
    .locals 1

    .prologue
    .line 33784
    #calls: Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->access$97500()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 33787
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33762
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->access$97400(Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33768
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->access$97400(Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 33729
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->access$97400(Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 33735
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->access$97400(Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33774
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->access$97400(Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33780
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;

    move-result-object v0

    #calls: Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->access$97400(Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33751
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->access$97400(Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33757
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->access$97400(Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 33740
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->access$97400(Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 33746
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->access$97400(Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33666
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->appId_:Ljava/lang/String;

    return-object v0
.end method

.method public getAppType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33673
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->appType_:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;
    .locals 1

    .prologue
    .line 33648
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 33637
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 33637
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public getIsLike()Z
    .locals 1

    .prologue
    .line 33680
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->isLike_:Z

    return v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 33705
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->memoizedSerializedSize:I

    .line 33706
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 33723
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 33708
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 33709
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->hasIsLike()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 33710
    const/16 v2, 0x625

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->getIsLike()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 33713
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->hasAppId()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 33714
    const/16 v2, 0x631

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 33717
    :cond_2
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->hasAppType()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 33718
    const/16 v2, 0x78a

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->getAppType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 33721
    :cond_3
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 33722
    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->memoizedSerializedSize:I

    move v1, v0

    .line 33723
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public hasAppId()Z
    .locals 1

    .prologue
    .line 33665
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->hasAppId:Z

    return v0
.end method

.method public hasAppType()Z
    .locals 1

    .prologue
    .line 33672
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->hasAppType:Z

    return v0
.end method

.method public hasIsLike()Z
    .locals 1

    .prologue
    .line 33679
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->hasIsLike:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 33658
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$97300()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 33683
    iget-boolean v1, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->hasAppId:Z

    if-nez v1, :cond_1

    .line 33686
    :cond_0
    :goto_0
    return v0

    .line 33684
    :cond_1
    iget-boolean v1, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->hasAppType:Z

    if-eqz v1, :cond_0

    .line 33685
    iget-boolean v1, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->hasIsLike:Z

    if-eqz v1, :cond_0

    .line 33686
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;
    .locals 1

    .prologue
    .line 33785
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 33637
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 33637
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;
    .locals 1

    .prologue
    .line 33789
    invoke-static {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 33637
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 33637
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;

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
    .line 33691
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->hasIsLike()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33692
    const/16 v0, 0x625

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->getIsLike()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 33694
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->hasAppId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 33695
    const/16 v0, 0x631

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 33697
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->hasAppType()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 33698
    const/16 v0, 0x78a

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->getAppType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 33700
    :cond_2
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    .line 33701
    return-void
.end method

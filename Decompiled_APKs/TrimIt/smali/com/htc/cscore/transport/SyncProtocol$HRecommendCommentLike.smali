.class public final Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;
.super Lcom/htc/protobuf/GeneratedMessage;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HRecommendCommentLike"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;,
        Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$HRecommendAppTypes;
    }
.end annotation


# static fields
.field public static final APPID_FIELD_NUMBER:I = 0x75f

.field public static final APPTYPE_FIELD_NUMBER:I = 0x248

.field public static final COMMENTCREATEDATE_FIELD_NUMBER:I = 0x3ea

.field public static final COMMENT_FIELD_NUMBER:I = 0x544

.field public static final ID_FIELD_NUMBER:I = 0x512

.field public static final ISLIKE_FIELD_NUMBER:I = 0x540

.field public static final LIKECREATEDATE_FIELD_NUMBER:I = 0x6a7

.field public static final TIMESTAMP_FIELD_NUMBER:I = 0x211

.field private static final defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;


# instance fields
.field private appId_:Ljava/lang/String;

.field private appType_:Ljava/lang/String;

.field private commentCreateDate_:J

.field private comment_:Ljava/lang/String;

.field private hasAppId:Z

.field private hasAppType:Z

.field private hasComment:Z

.field private hasCommentCreateDate:Z

.field private hasId:Z

.field private hasIsLike:Z

.field private hasLikeCreateDate:Z

.field private hasTimestamp:Z

.field private id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

.field private isLike_:Z

.field private likeCreateDate_:J

.field private memoizedSerializedSize:I

.field private timestamp_:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31787
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;-><init>()V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    .line 32417
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 32421
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->internalForceInit()V

    .line 32422
    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 31785
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage;-><init>()V

    .line 31876
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->appId_:Ljava/lang/String;

    .line 31883
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->appType_:Ljava/lang/String;

    .line 31890
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->comment_:Ljava/lang/String;

    .line 31897
    iput-wide v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->commentCreateDate_:J

    .line 31904
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 31911
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->isLike_:Z

    .line 31918
    iput-wide v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->likeCreateDate_:J

    .line 31925
    iput-wide v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->timestamp_:J

    .line 31965
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->memoizedSerializedSize:I

    .line 31785
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31782
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;-><init>()V

    return-void
.end method

.method static synthetic access$92602(Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31782
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->hasAppId:Z

    return p1
.end method

.method static synthetic access$92702(Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31782
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->appId_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$92802(Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31782
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->hasAppType:Z

    return p1
.end method

.method static synthetic access$92902(Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31782
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->appType_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$93002(Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31782
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->hasComment:Z

    return p1
.end method

.method static synthetic access$93102(Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31782
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->comment_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$93202(Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31782
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->hasCommentCreateDate:Z

    return p1
.end method

.method static synthetic access$93302(Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31782
    iput-wide p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->commentCreateDate_:J

    return-wide p1
.end method

.method static synthetic access$93402(Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31782
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->hasId:Z

    return p1
.end method

.method static synthetic access$93500(Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31782
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method static synthetic access$93502(Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31782
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object p1
.end method

.method static synthetic access$93602(Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31782
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->hasIsLike:Z

    return p1
.end method

.method static synthetic access$93702(Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31782
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->isLike_:Z

    return p1
.end method

.method static synthetic access$93802(Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31782
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->hasLikeCreateDate:Z

    return p1
.end method

.method static synthetic access$93902(Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31782
    iput-wide p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->likeCreateDate_:J

    return-wide p1
.end method

.method static synthetic access$94002(Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31782
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->hasTimestamp:Z

    return p1
.end method

.method static synthetic access$94102(Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31782
    iput-wide p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->timestamp_:J

    return-wide p1
.end method

.method public static getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;
    .locals 1

    .prologue
    .line 31789
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 31798
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$92100()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;
    .locals 1

    .prologue
    .line 32066
    #calls: Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->access$92400()Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 32069
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32044
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->access$92300(Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32050
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->access$92300(Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 32011
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->access$92300(Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 32017
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->access$92300(Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32056
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->access$92300(Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32062
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;

    move-result-object v0

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->access$92300(Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32033
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->access$92300(Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32039
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->access$92300(Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 32022
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->access$92300(Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 32028
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->access$92300(Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31878
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->appId_:Ljava/lang/String;

    return-object v0
.end method

.method public getAppType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31885
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->appType_:Ljava/lang/String;

    return-object v0
.end method

.method public getComment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31892
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->comment_:Ljava/lang/String;

    return-object v0
.end method

.method public getCommentCreateDate()J
    .locals 2

    .prologue
    .line 31899
    iget-wide v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->commentCreateDate_:J

    return-wide v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;
    .locals 1

    .prologue
    .line 31793
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 31782
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 31782
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 31906
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method public getIsLike()Z
    .locals 1

    .prologue
    .line 31913
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->isLike_:Z

    return v0
.end method

.method public getLikeCreateDate()J
    .locals 2

    .prologue
    .line 31920
    iget-wide v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->likeCreateDate_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 31967
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->memoizedSerializedSize:I

    .line 31968
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 32005
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 31970
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 31971
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->hasTimestamp()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 31972
    const/16 v2, 0x211

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->getTimestamp()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/htc/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 31975
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->hasAppType()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 31976
    const/16 v2, 0x248

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->getAppType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 31979
    :cond_2
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->hasCommentCreateDate()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 31980
    const/16 v2, 0x3ea

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->getCommentCreateDate()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/htc/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 31983
    :cond_3
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->hasId()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 31984
    const/16 v2, 0x512

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 31987
    :cond_4
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->hasIsLike()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 31988
    const/16 v2, 0x540

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->getIsLike()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 31991
    :cond_5
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->hasComment()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 31992
    const/16 v2, 0x544

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->getComment()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 31995
    :cond_6
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->hasLikeCreateDate()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 31996
    const/16 v2, 0x6a7

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->getLikeCreateDate()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/htc/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 31999
    :cond_7
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->hasAppId()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 32000
    const/16 v2, 0x75f

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 32003
    :cond_8
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 32004
    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->memoizedSerializedSize:I

    move v1, v0

    .line 32005
    .end local v0           #size:I
    .restart local v1       #size:I
    goto/16 :goto_0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 31927
    iget-wide v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->timestamp_:J

    return-wide v0
.end method

.method public hasAppId()Z
    .locals 1

    .prologue
    .line 31877
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->hasAppId:Z

    return v0
.end method

.method public hasAppType()Z
    .locals 1

    .prologue
    .line 31884
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->hasAppType:Z

    return v0
.end method

.method public hasComment()Z
    .locals 1

    .prologue
    .line 31891
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->hasComment:Z

    return v0
.end method

.method public hasCommentCreateDate()Z
    .locals 1

    .prologue
    .line 31898
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->hasCommentCreateDate:Z

    return v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 31905
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->hasId:Z

    return v0
.end method

.method public hasIsLike()Z
    .locals 1

    .prologue
    .line 31912
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->hasIsLike:Z

    return v0
.end method

.method public hasLikeCreateDate()Z
    .locals 1

    .prologue
    .line 31919
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->hasLikeCreateDate:Z

    return v0
.end method

.method public hasTimestamp()Z
    .locals 1

    .prologue
    .line 31926
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->hasTimestamp:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 31803
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$92200()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 31930
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->hasId()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31931
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 31933
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;
    .locals 1

    .prologue
    .line 32067
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 31782
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 31782
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;
    .locals 1

    .prologue
    .line 32071
    invoke-static {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 31782
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 31782
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;

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
    .line 31938
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31939
    const/16 v0, 0x211

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->getTimestamp()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/htc/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 31941
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->hasAppType()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 31942
    const/16 v0, 0x248

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->getAppType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 31944
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->hasCommentCreateDate()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 31945
    const/16 v0, 0x3ea

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->getCommentCreateDate()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/htc/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 31947
    :cond_2
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->hasId()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 31948
    const/16 v0, 0x512

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 31950
    :cond_3
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->hasIsLike()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 31951
    const/16 v0, 0x540

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->getIsLike()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 31953
    :cond_4
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->hasComment()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 31954
    const/16 v0, 0x544

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->getComment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 31956
    :cond_5
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->hasLikeCreateDate()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 31957
    const/16 v0, 0x6a7

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->getLikeCreateDate()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/htc/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 31959
    :cond_6
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->hasAppId()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 31960
    const/16 v0, 0x75f

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 31962
    :cond_7
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    .line 31963
    return-void
.end method

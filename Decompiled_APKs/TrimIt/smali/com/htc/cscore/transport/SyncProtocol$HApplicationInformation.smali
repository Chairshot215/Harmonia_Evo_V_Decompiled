.class public final Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;
.super Lcom/htc/protobuf/GeneratedMessage;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HApplicationInformation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;
    }
.end annotation


# static fields
.field public static final APPID_FIELD_NUMBER:I = 0x75f

.field public static final APPTYPE_FIELD_NUMBER:I = 0x248

.field public static final COMMENTCOUNT_FIELD_NUMBER:I = 0x4bf

.field public static final COMMENT_FIELD_NUMBER:I = 0x544

.field public static final FRIENDSCOMMENTCOUNT_FIELD_NUMBER:I = 0x61d

.field public static final FRIENDSLIKECOUNT_FIELD_NUMBER:I = 0x4da

.field public static final LIKECOUNT_FIELD_NUMBER:I = 0x44

.field public static final LIKED_FIELD_NUMBER:I = 0x433

.field public static final POPULARCOUNT_FIELD_NUMBER:I = 0x5fd

.field private static final defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;


# instance fields
.field private appId_:Ljava/lang/String;

.field private appType_:Ljava/lang/String;

.field private commentCount_:I

.field private comment_:Ljava/lang/String;

.field private friendsCommentCount_:I

.field private friendsLikeCount_:I

.field private hasAppId:Z

.field private hasAppType:Z

.field private hasComment:Z

.field private hasCommentCount:Z

.field private hasFriendsCommentCount:Z

.field private hasFriendsLikeCount:Z

.field private hasLikeCount:Z

.field private hasLiked:Z

.field private hasPopularCount:Z

.field private likeCount_:I

.field private liked_:Z

.field private memoizedSerializedSize:I

.field private popularCount_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 4266
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;-><init>()V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    .line 4841
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 4845
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->internalForceInit()V

    .line 4846
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4264
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage;-><init>()V

    .line 4288
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->appId_:Ljava/lang/String;

    .line 4295
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->appType_:Ljava/lang/String;

    .line 4302
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->comment_:Ljava/lang/String;

    .line 4309
    iput v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->commentCount_:I

    .line 4316
    iput v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->friendsCommentCount_:I

    .line 4323
    iput v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->friendsLikeCount_:I

    .line 4330
    iput v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->likeCount_:I

    .line 4337
    iput-boolean v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->liked_:Z

    .line 4344
    iput v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->popularCount_:I

    .line 4384
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->memoizedSerializedSize:I

    .line 4264
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 4261
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;-><init>()V

    return-void
.end method

.method static synthetic access$11802(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4261
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->hasAppId:Z

    return p1
.end method

.method static synthetic access$11902(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4261
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->appId_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$12002(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4261
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->hasAppType:Z

    return p1
.end method

.method static synthetic access$12102(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4261
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->appType_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$12202(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4261
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->hasComment:Z

    return p1
.end method

.method static synthetic access$12302(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4261
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->comment_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$12402(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4261
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->hasCommentCount:Z

    return p1
.end method

.method static synthetic access$12502(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4261
    iput p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->commentCount_:I

    return p1
.end method

.method static synthetic access$12602(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4261
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->hasFriendsCommentCount:Z

    return p1
.end method

.method static synthetic access$12702(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4261
    iput p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->friendsCommentCount_:I

    return p1
.end method

.method static synthetic access$12802(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4261
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->hasFriendsLikeCount:Z

    return p1
.end method

.method static synthetic access$12902(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4261
    iput p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->friendsLikeCount_:I

    return p1
.end method

.method static synthetic access$13002(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4261
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->hasLikeCount:Z

    return p1
.end method

.method static synthetic access$13102(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4261
    iput p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->likeCount_:I

    return p1
.end method

.method static synthetic access$13202(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4261
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->hasLiked:Z

    return p1
.end method

.method static synthetic access$13302(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4261
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->liked_:Z

    return p1
.end method

.method static synthetic access$13402(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4261
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->hasPopularCount:Z

    return p1
.end method

.method static synthetic access$13502(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4261
    iput p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->popularCount_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;
    .locals 1

    .prologue
    .line 4268
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 4277
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$11300()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;
    .locals 1

    .prologue
    .line 4489
    #calls: Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->access$11600()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;)Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 4492
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;)Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4467
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->access$11500(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4473
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->access$11500(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4434
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->access$11500(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4440
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->access$11500(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4479
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->access$11500(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4485
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;

    move-result-object v0

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->access$11500(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4456
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->access$11500(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4462
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->access$11500(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4445
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->access$11500(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4451
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->access$11500(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4290
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->appId_:Ljava/lang/String;

    return-object v0
.end method

.method public getAppType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4297
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->appType_:Ljava/lang/String;

    return-object v0
.end method

.method public getComment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4304
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->comment_:Ljava/lang/String;

    return-object v0
.end method

.method public getCommentCount()I
    .locals 1

    .prologue
    .line 4311
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->commentCount_:I

    return v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;
    .locals 1

    .prologue
    .line 4272
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 4261
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4261
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    move-result-object v0

    return-object v0
.end method

.method public getFriendsCommentCount()I
    .locals 1

    .prologue
    .line 4318
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->friendsCommentCount_:I

    return v0
.end method

.method public getFriendsLikeCount()I
    .locals 1

    .prologue
    .line 4325
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->friendsLikeCount_:I

    return v0
.end method

.method public getLikeCount()I
    .locals 1

    .prologue
    .line 4332
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->likeCount_:I

    return v0
.end method

.method public getLiked()Z
    .locals 1

    .prologue
    .line 4339
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->liked_:Z

    return v0
.end method

.method public getPopularCount()I
    .locals 1

    .prologue
    .line 4346
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->popularCount_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 4386
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->memoizedSerializedSize:I

    .line 4387
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 4428
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 4389
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 4390
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->hasLikeCount()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4391
    const/16 v2, 0x44

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->getLikeCount()I

    move-result v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 4394
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->hasAppType()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4395
    const/16 v2, 0x248

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->getAppType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 4398
    :cond_2
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->hasLiked()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4399
    const/16 v2, 0x433

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->getLiked()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 4402
    :cond_3
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->hasCommentCount()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 4403
    const/16 v2, 0x4bf

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->getCommentCount()I

    move-result v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 4406
    :cond_4
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->hasFriendsLikeCount()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 4407
    const/16 v2, 0x4da

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->getFriendsLikeCount()I

    move-result v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 4410
    :cond_5
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->hasComment()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 4411
    const/16 v2, 0x544

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->getComment()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 4414
    :cond_6
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->hasPopularCount()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 4415
    const/16 v2, 0x5fd

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->getPopularCount()I

    move-result v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 4418
    :cond_7
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->hasFriendsCommentCount()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 4419
    const/16 v2, 0x61d

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->getFriendsCommentCount()I

    move-result v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 4422
    :cond_8
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->hasAppId()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 4423
    const/16 v2, 0x75f

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 4426
    :cond_9
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 4427
    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->memoizedSerializedSize:I

    move v1, v0

    .line 4428
    .end local v0           #size:I
    .restart local v1       #size:I
    goto/16 :goto_0
.end method

.method public hasAppId()Z
    .locals 1

    .prologue
    .line 4289
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->hasAppId:Z

    return v0
.end method

.method public hasAppType()Z
    .locals 1

    .prologue
    .line 4296
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->hasAppType:Z

    return v0
.end method

.method public hasComment()Z
    .locals 1

    .prologue
    .line 4303
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->hasComment:Z

    return v0
.end method

.method public hasCommentCount()Z
    .locals 1

    .prologue
    .line 4310
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->hasCommentCount:Z

    return v0
.end method

.method public hasFriendsCommentCount()Z
    .locals 1

    .prologue
    .line 4317
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->hasFriendsCommentCount:Z

    return v0
.end method

.method public hasFriendsLikeCount()Z
    .locals 1

    .prologue
    .line 4324
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->hasFriendsLikeCount:Z

    return v0
.end method

.method public hasLikeCount()Z
    .locals 1

    .prologue
    .line 4331
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->hasLikeCount:Z

    return v0
.end method

.method public hasLiked()Z
    .locals 1

    .prologue
    .line 4338
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->hasLiked:Z

    return v0
.end method

.method public hasPopularCount()Z
    .locals 1

    .prologue
    .line 4345
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->hasPopularCount:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 4282
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$11400()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 4349
    const/4 v0, 0x1

    return v0
.end method

.method public newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;
    .locals 1

    .prologue
    .line 4490
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 4261
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 4261
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;
    .locals 1

    .prologue
    .line 4494
    invoke-static {p0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;)Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 4261
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 4261
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;

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
    .line 4354
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->hasLikeCount()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4355
    const/16 v0, 0x44

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->getLikeCount()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 4357
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->hasAppType()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4358
    const/16 v0, 0x248

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->getAppType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 4360
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->hasLiked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4361
    const/16 v0, 0x433

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->getLiked()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 4363
    :cond_2
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->hasCommentCount()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4364
    const/16 v0, 0x4bf

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->getCommentCount()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 4366
    :cond_3
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->hasFriendsLikeCount()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4367
    const/16 v0, 0x4da

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->getFriendsLikeCount()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 4369
    :cond_4
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->hasComment()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4370
    const/16 v0, 0x544

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->getComment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 4372
    :cond_5
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->hasPopularCount()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4373
    const/16 v0, 0x5fd

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->getPopularCount()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 4375
    :cond_6
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->hasFriendsCommentCount()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4376
    const/16 v0, 0x61d

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->getFriendsCommentCount()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 4378
    :cond_7
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->hasAppId()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 4379
    const/16 v0, 0x75f

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 4381
    :cond_8
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    .line 4382
    return-void
.end method

.class public final Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Sync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AuthenticateResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;


# instance fields
.field private hasUser:Z

.field private memoizedSerializedSize:I

.field private user_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 8227
    new-instance v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;-><init>(Z)V

    sput-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;->defaultInstance:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;

    .line 8228
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync;->internalForceInit()V

    .line 8229
    sget-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;->defaultInstance:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;

    invoke-direct {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;->initFields()V

    .line 8230
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 7958
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 7997
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;->memoizedSerializedSize:I

    .line 7959
    invoke-direct {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;->initFields()V

    .line 7960
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 7955
    invoke-direct {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    .line 7961
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 7997
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;->memoizedSerializedSize:I

    .line 7961
    return-void
.end method

.method static synthetic access$20602(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7955
    iput-boolean p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;->hasUser:Z

    return p1
.end method

.method static synthetic access$20700(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;
    .locals 1
    .parameter "x0"

    .prologue
    .line 7955
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;->user_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;

    return-object v0
.end method

.method static synthetic access$20702(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7955
    iput-object p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;->user_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;
    .locals 1

    .prologue
    .line 7965
    sget-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;->defaultInstance:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 7980
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;->getDefaultInstance()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;->user_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;

    .line 7981
    return-void
.end method

.method public static newBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse$Builder;
    .locals 1

    .prologue
    .line 8078
    #calls: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse$Builder;->create()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse$Builder;
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse$Builder;->access$20400()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 8081
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;->newBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse$Builder;->mergeFrom(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;
    .locals 1

    .prologue
    .line 7969
    sget-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;->defaultInstance:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 7955
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;->getDefaultInstanceForType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 7999
    iget v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;->memoizedSerializedSize:I

    .line 8000
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 8008
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 8002
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 8003
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;->hasUser()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8004
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;->getUser()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 8007
    :cond_1
    iput v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;->memoizedSerializedSize:I

    move v1, v0

    .line 8008
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public getUser()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;
    .locals 1

    .prologue
    .line 7977
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;->user_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;

    return-object v0
.end method

.method public hasUser()Z
    .locals 1

    .prologue
    .line 7976
    iget-boolean v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;->hasUser:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 7983
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;->hasUser()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7984
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;->getUser()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 7986
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse$Builder;
    .locals 1

    .prologue
    .line 8079
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;->newBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 7955
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;->newBuilderForType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse$Builder;
    .locals 1

    .prologue
    .line 8083
    invoke-static {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;->newBuilder(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 7955
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;->toBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 2
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7991
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;->getSerializedSize()I

    .line 7992
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;->hasUser()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7993
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;->getUser()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 7995
    :cond_0
    return-void
.end method

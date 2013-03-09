.class public final Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Sync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AuthenticateMessage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage;


# instance fields
.field private authToken_:Ljava/lang/String;

.field private hasAuthToken:Z

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 4406
    new-instance v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage;-><init>(Z)V

    sput-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage;->defaultInstance:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage;

    .line 4407
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync;->internalForceInit()V

    .line 4408
    sget-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage;->defaultInstance:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage;

    invoke-direct {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage;->initFields()V

    .line 4409
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 4161
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 4178
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage;->authToken_:Ljava/lang/String;

    .line 4197
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage;->memoizedSerializedSize:I

    .line 4162
    invoke-direct {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage;->initFields()V

    .line 4163
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 4158
    invoke-direct {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    .line 4164
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 4178
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage;->authToken_:Ljava/lang/String;

    .line 4197
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage;->memoizedSerializedSize:I

    .line 4164
    return-void
.end method

.method static synthetic access$12102(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4158
    iput-boolean p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage;->hasAuthToken:Z

    return p1
.end method

.method static synthetic access$12202(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4158
    iput-object p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage;->authToken_:Ljava/lang/String;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage;
    .locals 1

    .prologue
    .line 4168
    sget-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage;->defaultInstance:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage;

    return-object v0
.end method

.method private initFields()V
    .locals 0

    .prologue
    .line 4183
    return-void
.end method

.method public static newBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage$Builder;
    .locals 1

    .prologue
    .line 4278
    #calls: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage$Builder;->create()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage$Builder;
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage$Builder;->access$11900()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 4281
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage;->newBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage$Builder;->mergeFrom(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAuthToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4180
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage;->authToken_:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage;
    .locals 1

    .prologue
    .line 4172
    sget-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage;->defaultInstance:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4158
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage;->getDefaultInstanceForType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 4199
    iget v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage;->memoizedSerializedSize:I

    .line 4200
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 4208
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 4202
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 4203
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage;->hasAuthToken()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4204
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage;->getAuthToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 4207
    :cond_1
    iput v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage;->memoizedSerializedSize:I

    move v1, v0

    .line 4208
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public hasAuthToken()Z
    .locals 1

    .prologue
    .line 4179
    iget-boolean v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage;->hasAuthToken:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 4185
    iget-boolean v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage;->hasAuthToken:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 4186
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage$Builder;
    .locals 1

    .prologue
    .line 4279
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage;->newBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 4158
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage;->newBuilderForType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage$Builder;
    .locals 1

    .prologue
    .line 4283
    invoke-static {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage;->newBuilder(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 4158
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage;->toBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage$Builder;

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
    .line 4191
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage;->getSerializedSize()I

    .line 4192
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage;->hasAuthToken()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4193
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage;->getAuthToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 4195
    :cond_0
    return-void
.end method

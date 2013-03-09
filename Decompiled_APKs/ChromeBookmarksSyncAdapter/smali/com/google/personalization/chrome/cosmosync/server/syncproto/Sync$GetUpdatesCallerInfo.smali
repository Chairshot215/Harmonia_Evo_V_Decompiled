.class public final Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Sync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GetUpdatesCallerInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$Builder;,
        Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$GetUpdatesSource;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;


# instance fields
.field private hasNotificationsEnabled:Z

.field private hasSource:Z

.field private memoizedSerializedSize:I

.field private notificationsEnabled_:Z

.field private source_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$GetUpdatesSource;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 3186
    new-instance v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;-><init>(Z)V

    sput-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;->defaultInstance:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;

    .line 3187
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync;->internalForceInit()V

    .line 3188
    sget-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;->defaultInstance:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;

    invoke-direct {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;->initFields()V

    .line 3189
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 2848
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2921
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;->notificationsEnabled_:Z

    .line 2944
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;->memoizedSerializedSize:I

    .line 2849
    invoke-direct {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;->initFields()V

    .line 2850
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2845
    invoke-direct {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    .line 2851
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2921
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;->notificationsEnabled_:Z

    .line 2944
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;->memoizedSerializedSize:I

    .line 2851
    return-void
.end method

.method static synthetic access$8702(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2845
    iput-boolean p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;->hasSource:Z

    return p1
.end method

.method static synthetic access$8802(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$GetUpdatesSource;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$GetUpdatesSource;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2845
    iput-object p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;->source_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$GetUpdatesSource;

    return-object p1
.end method

.method static synthetic access$8902(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2845
    iput-boolean p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;->hasNotificationsEnabled:Z

    return p1
.end method

.method static synthetic access$9002(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2845
    iput-boolean p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;->notificationsEnabled_:Z

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;
    .locals 1

    .prologue
    .line 2855
    sget-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;->defaultInstance:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 2926
    sget-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$GetUpdatesSource;->UNKNOWN:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$GetUpdatesSource;

    iput-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;->source_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$GetUpdatesSource;

    .line 2927
    return-void
.end method

.method public static newBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$Builder;
    .locals 1

    .prologue
    .line 3029
    #calls: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$Builder;->create()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$Builder;
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$Builder;->access$8500()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 3032
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;->newBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$Builder;->mergeFrom(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;
    .locals 1

    .prologue
    .line 2859
    sget-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;->defaultInstance:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2845
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;->getDefaultInstanceForType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;

    move-result-object v0

    return-object v0
.end method

.method public getNotificationsEnabled()Z
    .locals 1

    .prologue
    .line 2923
    iget-boolean v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;->notificationsEnabled_:Z

    return v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 2946
    iget v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;->memoizedSerializedSize:I

    .line 2947
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 2959
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 2949
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 2950
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;->hasSource()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2951
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;->getSource()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$GetUpdatesSource;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$GetUpdatesSource;->getNumber()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 2954
    :cond_1
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;->hasNotificationsEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2955
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;->getNotificationsEnabled()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 2958
    :cond_2
    iput v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;->memoizedSerializedSize:I

    move v1, v0

    .line 2959
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public getSource()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$GetUpdatesSource;
    .locals 1

    .prologue
    .line 2916
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;->source_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$GetUpdatesSource;

    return-object v0
.end method

.method public hasNotificationsEnabled()Z
    .locals 1

    .prologue
    .line 2922
    iget-boolean v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;->hasNotificationsEnabled:Z

    return v0
.end method

.method public hasSource()Z
    .locals 1

    .prologue
    .line 2915
    iget-boolean v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;->hasSource:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 2929
    iget-boolean v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;->hasSource:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2930
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$Builder;
    .locals 1

    .prologue
    .line 3030
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;->newBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2845
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;->newBuilderForType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$Builder;
    .locals 1

    .prologue
    .line 3034
    invoke-static {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;->newBuilder(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2845
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;->toBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$Builder;

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
    .line 2935
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;->getSerializedSize()I

    .line 2936
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;->hasSource()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2937
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;->getSource()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$GetUpdatesSource;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo$GetUpdatesSource;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 2939
    :cond_0
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;->hasNotificationsEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2940
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesCallerInfo;->getNotificationsEnabled()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 2942
    :cond_1
    return-void
.end method

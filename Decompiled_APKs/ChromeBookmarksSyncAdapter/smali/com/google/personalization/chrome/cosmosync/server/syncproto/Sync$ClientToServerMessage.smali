.class public final Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Sync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClientToServerMessage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;,
        Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Contents;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;


# instance fields
.field private authenticate_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage;

.field private clearUserData_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage;

.field private commit_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;

.field private getUpdates_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;

.field private hasAuthenticate:Z

.field private hasClearUserData:Z

.field private hasCommit:Z

.field private hasGetUpdates:Z

.field private hasMessageContents:Z

.field private hasProtocolVersion:Z

.field private hasShare:Z

.field private hasStoreBirthday:Z

.field private hasSyncProblemDetected:Z

.field private memoizedSerializedSize:I

.field private messageContents_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Contents;

.field private protocolVersion_:I

.field private share_:Ljava/lang/String;

.field private storeBirthday_:Ljava/lang/String;

.field private syncProblemDetected_:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 5564
    new-instance v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;-><init>(Z)V

    sput-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->defaultInstance:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;

    .line 5565
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync;->internalForceInit()V

    .line 5566
    sget-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->defaultInstance:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;

    invoke-direct {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->initFields()V

    .line 5567
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 4843
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 4903
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->share_:Ljava/lang/String;

    .line 4910
    const/16 v0, 0x1a

    iput v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->protocolVersion_:I

    .line 4952
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->storeBirthday_:Ljava/lang/String;

    .line 4959
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->syncProblemDetected_:Z

    .line 5017
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->memoizedSerializedSize:I

    .line 4844
    invoke-direct {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->initFields()V

    .line 4845
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 4840
    invoke-direct {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    .line 4846
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 4903
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->share_:Ljava/lang/String;

    .line 4910
    const/16 v0, 0x1a

    iput v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->protocolVersion_:I

    .line 4952
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->storeBirthday_:Ljava/lang/String;

    .line 4959
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->syncProblemDetected_:Z

    .line 5017
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->memoizedSerializedSize:I

    .line 4846
    return-void
.end method

.method static synthetic access$13202(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4840
    iput-boolean p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->hasShare:Z

    return p1
.end method

.method static synthetic access$13302(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4840
    iput-object p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->share_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$13402(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4840
    iput-boolean p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->hasProtocolVersion:Z

    return p1
.end method

.method static synthetic access$13502(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4840
    iput p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->protocolVersion_:I

    return p1
.end method

.method static synthetic access$13602(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4840
    iput-boolean p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->hasMessageContents:Z

    return p1
.end method

.method static synthetic access$13702(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Contents;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Contents;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4840
    iput-object p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->messageContents_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Contents;

    return-object p1
.end method

.method static synthetic access$13802(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4840
    iput-boolean p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->hasCommit:Z

    return p1
.end method

.method static synthetic access$13900(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4840
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->commit_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;

    return-object v0
.end method

.method static synthetic access$13902(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4840
    iput-object p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->commit_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;

    return-object p1
.end method

.method static synthetic access$14002(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4840
    iput-boolean p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->hasGetUpdates:Z

    return p1
.end method

.method static synthetic access$14100(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4840
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->getUpdates_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;

    return-object v0
.end method

.method static synthetic access$14102(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4840
    iput-object p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->getUpdates_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;

    return-object p1
.end method

.method static synthetic access$14202(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4840
    iput-boolean p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->hasAuthenticate:Z

    return p1
.end method

.method static synthetic access$14300(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4840
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->authenticate_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage;

    return-object v0
.end method

.method static synthetic access$14302(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4840
    iput-object p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->authenticate_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage;

    return-object p1
.end method

.method static synthetic access$14402(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4840
    iput-boolean p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->hasClearUserData:Z

    return p1
.end method

.method static synthetic access$14500(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4840
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->clearUserData_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage;

    return-object v0
.end method

.method static synthetic access$14502(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4840
    iput-object p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->clearUserData_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage;

    return-object p1
.end method

.method static synthetic access$14602(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4840
    iput-boolean p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->hasStoreBirthday:Z

    return p1
.end method

.method static synthetic access$14702(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4840
    iput-object p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->storeBirthday_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$14802(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4840
    iput-boolean p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->hasSyncProblemDetected:Z

    return p1
.end method

.method static synthetic access$14902(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4840
    iput-boolean p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->syncProblemDetected_:Z

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;
    .locals 1

    .prologue
    .line 4850
    sget-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->defaultInstance:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 4964
    sget-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Contents;->COMMIT:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Contents;

    iput-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->messageContents_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Contents;

    .line 4965
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;->getDefaultInstance()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->commit_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;

    .line 4966
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->getDefaultInstance()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->getUpdates_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;

    .line 4967
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage;->getDefaultInstance()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->authenticate_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage;

    .line 4968
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage;->getDefaultInstance()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->clearUserData_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage;

    .line 4969
    return-void
.end method

.method public static newBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;
    .locals 1

    .prologue
    .line 5130
    #calls: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;->create()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;->access$13000()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 5133
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->newBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;->mergeFrom(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAuthenticate()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage;
    .locals 1

    .prologue
    .line 4940
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->authenticate_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage;

    return-object v0
.end method

.method public getClearUserData()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage;
    .locals 1

    .prologue
    .line 4947
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->clearUserData_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage;

    return-object v0
.end method

.method public getCommit()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;
    .locals 1

    .prologue
    .line 4926
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->commit_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;
    .locals 1

    .prologue
    .line 4854
    sget-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->defaultInstance:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4840
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->getDefaultInstanceForType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;

    move-result-object v0

    return-object v0
.end method

.method public getGetUpdates()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;
    .locals 1

    .prologue
    .line 4933
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->getUpdates_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;

    return-object v0
.end method

.method public getMessageContents()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Contents;
    .locals 1

    .prologue
    .line 4919
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->messageContents_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Contents;

    return-object v0
.end method

.method public getProtocolVersion()I
    .locals 1

    .prologue
    .line 4912
    iget v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->protocolVersion_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 5019
    iget v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->memoizedSerializedSize:I

    .line 5020
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 5060
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 5022
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 5023
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->hasShare()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5024
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->getShare()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 5027
    :cond_1
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->hasProtocolVersion()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5028
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->getProtocolVersion()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 5031
    :cond_2
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->hasMessageContents()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 5032
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->getMessageContents()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Contents;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Contents;->getNumber()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 5035
    :cond_3
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->hasCommit()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 5036
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->getCommit()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 5039
    :cond_4
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->hasGetUpdates()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 5040
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->getGetUpdates()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 5043
    :cond_5
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->hasAuthenticate()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 5044
    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->getAuthenticate()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 5047
    :cond_6
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->hasStoreBirthday()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 5048
    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->getStoreBirthday()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 5051
    :cond_7
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->hasSyncProblemDetected()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 5052
    const/16 v2, 0x8

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->getSyncProblemDetected()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 5055
    :cond_8
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->hasClearUserData()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 5056
    const/16 v2, 0x9

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->getClearUserData()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 5059
    :cond_9
    iput v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->memoizedSerializedSize:I

    move v1, v0

    .line 5060
    .end local v0           #size:I
    .restart local v1       #size:I
    goto/16 :goto_0
.end method

.method public getShare()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4905
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->share_:Ljava/lang/String;

    return-object v0
.end method

.method public getStoreBirthday()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4954
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->storeBirthday_:Ljava/lang/String;

    return-object v0
.end method

.method public getSyncProblemDetected()Z
    .locals 1

    .prologue
    .line 4961
    iget-boolean v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->syncProblemDetected_:Z

    return v0
.end method

.method public hasAuthenticate()Z
    .locals 1

    .prologue
    .line 4939
    iget-boolean v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->hasAuthenticate:Z

    return v0
.end method

.method public hasClearUserData()Z
    .locals 1

    .prologue
    .line 4946
    iget-boolean v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->hasClearUserData:Z

    return v0
.end method

.method public hasCommit()Z
    .locals 1

    .prologue
    .line 4925
    iget-boolean v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->hasCommit:Z

    return v0
.end method

.method public hasGetUpdates()Z
    .locals 1

    .prologue
    .line 4932
    iget-boolean v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->hasGetUpdates:Z

    return v0
.end method

.method public hasMessageContents()Z
    .locals 1

    .prologue
    .line 4918
    iget-boolean v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->hasMessageContents:Z

    return v0
.end method

.method public hasProtocolVersion()Z
    .locals 1

    .prologue
    .line 4911
    iget-boolean v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->hasProtocolVersion:Z

    return v0
.end method

.method public hasShare()Z
    .locals 1

    .prologue
    .line 4904
    iget-boolean v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->hasShare:Z

    return v0
.end method

.method public hasStoreBirthday()Z
    .locals 1

    .prologue
    .line 4953
    iget-boolean v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->hasStoreBirthday:Z

    return v0
.end method

.method public hasSyncProblemDetected()Z
    .locals 1

    .prologue
    .line 4960
    iget-boolean v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->hasSyncProblemDetected:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 4971
    iget-boolean v1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->hasShare:Z

    if-nez v1, :cond_1

    .line 4982
    :cond_0
    :goto_0
    return v0

    .line 4972
    :cond_1
    iget-boolean v1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->hasMessageContents:Z

    if-eqz v1, :cond_0

    .line 4973
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->hasCommit()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4974
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->getCommit()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4976
    :cond_2
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->hasGetUpdates()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4977
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->getGetUpdates()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4979
    :cond_3
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->hasAuthenticate()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4980
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->getAuthenticate()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4982
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;
    .locals 1

    .prologue
    .line 5131
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->newBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 4840
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->newBuilderForType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;
    .locals 1

    .prologue
    .line 5135
    invoke-static {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->newBuilder(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 4840
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->toBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;

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
    .line 4987
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->getSerializedSize()I

    .line 4988
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->hasShare()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4989
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->getShare()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 4991
    :cond_0
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->hasProtocolVersion()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4992
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->getProtocolVersion()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 4994
    :cond_1
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->hasMessageContents()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4995
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->getMessageContents()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Contents;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Contents;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 4997
    :cond_2
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->hasCommit()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4998
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->getCommit()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 5000
    :cond_3
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->hasGetUpdates()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5001
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->getGetUpdates()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 5003
    :cond_4
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->hasAuthenticate()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5004
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->getAuthenticate()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 5006
    :cond_5
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->hasStoreBirthday()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 5007
    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->getStoreBirthday()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 5009
    :cond_6
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->hasSyncProblemDetected()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 5010
    const/16 v0, 0x8

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->getSyncProblemDetected()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 5012
    :cond_7
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->hasClearUserData()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 5013
    const/16 v0, 0x9

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->getClearUserData()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 5015
    :cond_8
    return-void
.end method

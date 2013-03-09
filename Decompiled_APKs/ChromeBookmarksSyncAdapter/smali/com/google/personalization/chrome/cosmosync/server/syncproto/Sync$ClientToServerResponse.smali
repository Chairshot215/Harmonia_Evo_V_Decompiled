.class public final Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Sync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClientToServerResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;,
        Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;


# instance fields
.field private authenticate_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;

.field private clearUserData_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataResponse;

.field private clientCommand_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;

.field private commit_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;

.field private errorCode_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;

.field private errorMessage_:Ljava/lang/String;

.field private getUpdates_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;

.field private hasAuthenticate:Z

.field private hasClearUserData:Z

.field private hasClientCommand:Z

.field private hasCommit:Z

.field private hasErrorCode:Z

.field private hasErrorMessage:Z

.field private hasGetUpdates:Z

.field private hasProfilingData:Z

.field private hasStoreBirthday:Z

.field private hasStreamData:Z

.field private hasStreamMetadata:Z

.field private memoizedSerializedSize:I

.field private migratedDataTypeId_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private profilingData_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;

.field private storeBirthday_:Ljava/lang/String;

.field private streamData_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;

.field private streamMetadata_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 9976
    new-instance v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;-><init>(Z)V

    sput-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->defaultInstance:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    .line 9977
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync;->internalForceInit()V

    .line 9978
    sget-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->defaultInstance:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    invoke-direct {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->initFields()V

    .line 9979
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 8981
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 9104
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->errorMessage_:Ljava/lang/String;

    .line 9111
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->storeBirthday_:Ljava/lang/String;

    .line 9131
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->migratedDataTypeId_:Ljava/util/List;

    .line 9209
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->memoizedSerializedSize:I

    .line 8982
    invoke-direct {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->initFields()V

    .line 8983
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 8978
    invoke-direct {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    .line 8984
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 9104
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->errorMessage_:Ljava/lang/String;

    .line 9111
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->storeBirthday_:Ljava/lang/String;

    .line 9131
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->migratedDataTypeId_:Ljava/util/List;

    .line 9209
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->memoizedSerializedSize:I

    .line 8984
    return-void
.end method

.method static synthetic access$23300(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 8978
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->migratedDataTypeId_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$23302(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8978
    iput-object p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->migratedDataTypeId_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$23402(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8978
    iput-boolean p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->hasCommit:Z

    return p1
.end method

.method static synthetic access$23500(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;
    .locals 1
    .parameter "x0"

    .prologue
    .line 8978
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->commit_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;

    return-object v0
.end method

.method static synthetic access$23502(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8978
    iput-object p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->commit_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;

    return-object p1
.end method

.method static synthetic access$23602(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8978
    iput-boolean p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->hasGetUpdates:Z

    return p1
.end method

.method static synthetic access$23700(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;
    .locals 1
    .parameter "x0"

    .prologue
    .line 8978
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->getUpdates_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;

    return-object v0
.end method

.method static synthetic access$23702(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8978
    iput-object p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->getUpdates_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;

    return-object p1
.end method

.method static synthetic access$23802(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8978
    iput-boolean p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->hasAuthenticate:Z

    return p1
.end method

.method static synthetic access$23900(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;
    .locals 1
    .parameter "x0"

    .prologue
    .line 8978
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->authenticate_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;

    return-object v0
.end method

.method static synthetic access$23902(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8978
    iput-object p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->authenticate_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;

    return-object p1
.end method

.method static synthetic access$24002(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8978
    iput-boolean p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->hasClearUserData:Z

    return p1
.end method

.method static synthetic access$24100(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataResponse;
    .locals 1
    .parameter "x0"

    .prologue
    .line 8978
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->clearUserData_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataResponse;

    return-object v0
.end method

.method static synthetic access$24102(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataResponse;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8978
    iput-object p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->clearUserData_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataResponse;

    return-object p1
.end method

.method static synthetic access$24202(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8978
    iput-boolean p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->hasStreamMetadata:Z

    return p1
.end method

.method static synthetic access$24300(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;
    .locals 1
    .parameter "x0"

    .prologue
    .line 8978
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->streamMetadata_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;

    return-object v0
.end method

.method static synthetic access$24302(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8978
    iput-object p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->streamMetadata_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;

    return-object p1
.end method

.method static synthetic access$24402(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8978
    iput-boolean p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->hasStreamData:Z

    return p1
.end method

.method static synthetic access$24500(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;
    .locals 1
    .parameter "x0"

    .prologue
    .line 8978
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->streamData_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;

    return-object v0
.end method

.method static synthetic access$24502(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8978
    iput-object p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->streamData_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;

    return-object p1
.end method

.method static synthetic access$24602(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8978
    iput-boolean p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->hasErrorCode:Z

    return p1
.end method

.method static synthetic access$24702(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8978
    iput-object p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->errorCode_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;

    return-object p1
.end method

.method static synthetic access$24802(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8978
    iput-boolean p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->hasErrorMessage:Z

    return p1
.end method

.method static synthetic access$24902(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8978
    iput-object p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->errorMessage_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$25002(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8978
    iput-boolean p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->hasStoreBirthday:Z

    return p1
.end method

.method static synthetic access$25102(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8978
    iput-object p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->storeBirthday_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$25202(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8978
    iput-boolean p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->hasClientCommand:Z

    return p1
.end method

.method static synthetic access$25300(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;
    .locals 1
    .parameter "x0"

    .prologue
    .line 8978
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->clientCommand_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;

    return-object v0
.end method

.method static synthetic access$25302(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8978
    iput-object p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->clientCommand_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;

    return-object p1
.end method

.method static synthetic access$25402(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8978
    iput-boolean p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->hasProfilingData:Z

    return p1
.end method

.method static synthetic access$25500(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;
    .locals 1
    .parameter "x0"

    .prologue
    .line 8978
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->profilingData_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;

    return-object v0
.end method

.method static synthetic access$25502(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8978
    iput-object p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->profilingData_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;
    .locals 1

    .prologue
    .line 8988
    sget-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->defaultInstance:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 9142
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;->getDefaultInstance()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->commit_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;

    .line 9143
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->getDefaultInstance()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->getUpdates_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;

    .line 9144
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;->getDefaultInstance()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->authenticate_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;

    .line 9145
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataResponse;->getDefaultInstance()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->clearUserData_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataResponse;

    .line 9146
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;->getDefaultInstance()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->streamMetadata_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;

    .line 9147
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;->getDefaultInstance()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->streamData_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;

    .line 9148
    sget-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;->UNKNOWN:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;

    iput-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->errorCode_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;

    .line 9149
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;->getDefaultInstance()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->clientCommand_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;

    .line 9150
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;->getDefaultInstance()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->profilingData_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;

    .line 9151
    return-void
.end method

.method public static newBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;
    .locals 1

    .prologue
    .line 9339
    #calls: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->create()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->access$23100()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 9342
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->newBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->mergeFrom(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9297
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->newBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;

    #calls: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->buildParsed()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;
    invoke-static {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->access$23000(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9303
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->newBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;

    #calls: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->buildParsed()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;
    invoke-static {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->access$23000(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAuthenticate()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;
    .locals 1

    .prologue
    .line 9071
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->authenticate_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;

    return-object v0
.end method

.method public getClearUserData()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataResponse;
    .locals 1

    .prologue
    .line 9078
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->clearUserData_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataResponse;

    return-object v0
.end method

.method public getClientCommand()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;
    .locals 1

    .prologue
    .line 9120
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->clientCommand_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;

    return-object v0
.end method

.method public getCommit()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;
    .locals 1

    .prologue
    .line 9057
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->commit_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;
    .locals 1

    .prologue
    .line 8992
    sget-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->defaultInstance:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 8978
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->getDefaultInstanceForType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    move-result-object v0

    return-object v0
.end method

.method public getErrorCode()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;
    .locals 1

    .prologue
    .line 9099
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->errorCode_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;

    return-object v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9106
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->errorMessage_:Ljava/lang/String;

    return-object v0
.end method

.method public getGetUpdates()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;
    .locals 1

    .prologue
    .line 9064
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->getUpdates_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;

    return-object v0
.end method

.method public getMigratedDataTypeIdList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 9134
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->migratedDataTypeId_:Ljava/util/List;

    return-object v0
.end method

.method public getProfilingData()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;
    .locals 1

    .prologue
    .line 9127
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->profilingData_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    .line 9211
    iget v3, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->memoizedSerializedSize:I

    .line 9212
    .local v3, size:I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_0

    move v4, v3

    .line 9269
    .end local v3           #size:I
    .local v4, size:I
    :goto_0
    return v4

    .line 9214
    .end local v4           #size:I
    .restart local v3       #size:I
    :cond_0
    const/4 v3, 0x0

    .line 9215
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->hasCommit()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 9216
    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->getCommit()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v5

    add-int/2addr v3, v5

    .line 9219
    :cond_1
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->hasGetUpdates()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 9220
    const/4 v5, 0x2

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->getGetUpdates()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v5

    add-int/2addr v3, v5

    .line 9223
    :cond_2
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->hasAuthenticate()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 9224
    const/4 v5, 0x3

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->getAuthenticate()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v5

    add-int/2addr v3, v5

    .line 9227
    :cond_3
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->hasErrorCode()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 9228
    const/4 v5, 0x4

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->getErrorCode()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;->getNumber()I

    move-result v6

    invoke-static {v5, v6}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v5

    add-int/2addr v3, v5

    .line 9231
    :cond_4
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->hasErrorMessage()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 9232
    const/4 v5, 0x5

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->getErrorMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v3, v5

    .line 9235
    :cond_5
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->hasStoreBirthday()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 9236
    const/4 v5, 0x6

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->getStoreBirthday()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v3, v5

    .line 9239
    :cond_6
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->hasClientCommand()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 9240
    const/4 v5, 0x7

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->getClientCommand()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v5

    add-int/2addr v3, v5

    .line 9243
    :cond_7
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->hasProfilingData()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 9244
    const/16 v5, 0x8

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->getProfilingData()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v5

    add-int/2addr v3, v5

    .line 9247
    :cond_8
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->hasClearUserData()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 9248
    const/16 v5, 0x9

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->getClearUserData()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataResponse;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v5

    add-int/2addr v3, v5

    .line 9251
    :cond_9
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->hasStreamMetadata()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 9252
    const/16 v5, 0xa

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->getStreamMetadata()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v5

    add-int/2addr v3, v5

    .line 9255
    :cond_a
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->hasStreamData()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 9256
    const/16 v5, 0xb

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->getStreamData()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v5

    add-int/2addr v3, v5

    .line 9260
    :cond_b
    const/4 v0, 0x0

    .line 9261
    .local v0, dataSize:I
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->getMigratedDataTypeIdList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 9262
    .local v1, element:I
    invoke-static {v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v5

    add-int/2addr v0, v5

    goto :goto_1

    .line 9265
    .end local v1           #element:I
    :cond_c
    add-int/2addr v3, v0

    .line 9266
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->getMigratedDataTypeIdList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    mul-int/lit8 v5, v5, 0x1

    add-int/2addr v3, v5

    .line 9268
    iput v3, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->memoizedSerializedSize:I

    move v4, v3

    .line 9269
    .end local v3           #size:I
    .restart local v4       #size:I
    goto/16 :goto_0
.end method

.method public getStoreBirthday()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9113
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->storeBirthday_:Ljava/lang/String;

    return-object v0
.end method

.method public getStreamData()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;
    .locals 1

    .prologue
    .line 9092
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->streamData_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;

    return-object v0
.end method

.method public getStreamMetadata()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;
    .locals 1

    .prologue
    .line 9085
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->streamMetadata_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;

    return-object v0
.end method

.method public hasAuthenticate()Z
    .locals 1

    .prologue
    .line 9070
    iget-boolean v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->hasAuthenticate:Z

    return v0
.end method

.method public hasClearUserData()Z
    .locals 1

    .prologue
    .line 9077
    iget-boolean v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->hasClearUserData:Z

    return v0
.end method

.method public hasClientCommand()Z
    .locals 1

    .prologue
    .line 9119
    iget-boolean v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->hasClientCommand:Z

    return v0
.end method

.method public hasCommit()Z
    .locals 1

    .prologue
    .line 9056
    iget-boolean v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->hasCommit:Z

    return v0
.end method

.method public hasErrorCode()Z
    .locals 1

    .prologue
    .line 9098
    iget-boolean v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->hasErrorCode:Z

    return v0
.end method

.method public hasErrorMessage()Z
    .locals 1

    .prologue
    .line 9105
    iget-boolean v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->hasErrorMessage:Z

    return v0
.end method

.method public hasGetUpdates()Z
    .locals 1

    .prologue
    .line 9063
    iget-boolean v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->hasGetUpdates:Z

    return v0
.end method

.method public hasProfilingData()Z
    .locals 1

    .prologue
    .line 9126
    iget-boolean v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->hasProfilingData:Z

    return v0
.end method

.method public hasStoreBirthday()Z
    .locals 1

    .prologue
    .line 9112
    iget-boolean v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->hasStoreBirthday:Z

    return v0
.end method

.method public hasStreamData()Z
    .locals 1

    .prologue
    .line 9091
    iget-boolean v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->hasStreamData:Z

    return v0
.end method

.method public hasStreamMetadata()Z
    .locals 1

    .prologue
    .line 9084
    iget-boolean v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->hasStreamMetadata:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 9153
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->hasCommit()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9154
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->getCommit()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_1

    .line 9165
    :cond_0
    :goto_0
    return v0

    .line 9156
    :cond_1
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->hasGetUpdates()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 9157
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->getGetUpdates()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9159
    :cond_2
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->hasAuthenticate()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 9160
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->getAuthenticate()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9162
    :cond_3
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->hasStreamData()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 9163
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->getStreamData()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9165
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;
    .locals 1

    .prologue
    .line 9340
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->newBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 8978
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->newBuilderForType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;
    .locals 1

    .prologue
    .line 9344
    invoke-static {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->newBuilder(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 8978
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->toBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 4
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9170
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->getSerializedSize()I

    .line 9171
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->hasCommit()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 9172
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->getCommit()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 9174
    :cond_0
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->hasGetUpdates()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 9175
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->getGetUpdates()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 9177
    :cond_1
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->hasAuthenticate()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 9178
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->getAuthenticate()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 9180
    :cond_2
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->hasErrorCode()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 9181
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->getErrorCode()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;->getNumber()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 9183
    :cond_3
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->hasErrorMessage()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 9184
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 9186
    :cond_4
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->hasStoreBirthday()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 9187
    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->getStoreBirthday()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 9189
    :cond_5
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->hasClientCommand()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 9190
    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->getClientCommand()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 9192
    :cond_6
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->hasProfilingData()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 9193
    const/16 v2, 0x8

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->getProfilingData()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 9195
    :cond_7
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->hasClearUserData()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 9196
    const/16 v2, 0x9

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->getClearUserData()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataResponse;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 9198
    :cond_8
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->hasStreamMetadata()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 9199
    const/16 v2, 0xa

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->getStreamMetadata()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 9201
    :cond_9
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->hasStreamData()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 9202
    const/16 v2, 0xb

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->getStreamData()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 9204
    :cond_a
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->getMigratedDataTypeIdList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 9205
    .local v0, element:I
    const/16 v2, 0xc

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    goto :goto_0

    .line 9207
    .end local v0           #element:I
    :cond_b
    return-void
.end method

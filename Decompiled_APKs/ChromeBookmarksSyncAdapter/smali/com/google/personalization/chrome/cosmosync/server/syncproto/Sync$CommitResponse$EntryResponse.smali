.class public final Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Sync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EntryResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;


# instance fields
.field private errorMessage_:Ljava/lang/String;

.field private hasErrorMessage:Z

.field private hasIdString:Z

.field private hasName:Z

.field private hasNonUniqueName:Z

.field private hasParentIdString:Z

.field private hasPositionInParent:Z

.field private hasResponseType:Z

.field private hasVersion:Z

.field private idString_:Ljava/lang/String;

.field private memoizedSerializedSize:I

.field private name_:Ljava/lang/String;

.field private nonUniqueName_:Ljava/lang/String;

.field private parentIdString_:Ljava/lang/String;

.field private positionInParent_:J

.field private responseType_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$ResponseType;

.field private version_:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 6177
    new-instance v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;-><init>(Z)V

    sput-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->defaultInstance:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;

    .line 6178
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync;->internalForceInit()V

    .line 6179
    sget-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->defaultInstance:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;

    invoke-direct {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->initFields()V

    .line 6180
    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 5639
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 5663
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->idString_:Ljava/lang/String;

    .line 5670
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->parentIdString_:Ljava/lang/String;

    .line 5677
    iput-wide v1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->positionInParent_:J

    .line 5684
    iput-wide v1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->version_:J

    .line 5691
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->name_:Ljava/lang/String;

    .line 5698
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->nonUniqueName_:Ljava/lang/String;

    .line 5705
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->errorMessage_:Ljava/lang/String;

    .line 5746
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->memoizedSerializedSize:I

    .line 5640
    invoke-direct {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->initFields()V

    .line 5641
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 5636
    invoke-direct {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 3
    .parameter "noInit"

    .prologue
    const-wide/16 v1, 0x0

    .line 5642
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 5663
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->idString_:Ljava/lang/String;

    .line 5670
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->parentIdString_:Ljava/lang/String;

    .line 5677
    iput-wide v1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->positionInParent_:J

    .line 5684
    iput-wide v1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->version_:J

    .line 5691
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->name_:Ljava/lang/String;

    .line 5698
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->nonUniqueName_:Ljava/lang/String;

    .line 5705
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->errorMessage_:Ljava/lang/String;

    .line 5746
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->memoizedSerializedSize:I

    .line 5642
    return-void
.end method

.method static synthetic access$15302(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5636
    iput-boolean p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->hasResponseType:Z

    return p1
.end method

.method static synthetic access$15402(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$ResponseType;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$ResponseType;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5636
    iput-object p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->responseType_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$ResponseType;

    return-object p1
.end method

.method static synthetic access$15502(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5636
    iput-boolean p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->hasIdString:Z

    return p1
.end method

.method static synthetic access$15602(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5636
    iput-object p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->idString_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$15702(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5636
    iput-boolean p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->hasParentIdString:Z

    return p1
.end method

.method static synthetic access$15802(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5636
    iput-object p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->parentIdString_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$15902(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5636
    iput-boolean p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->hasPositionInParent:Z

    return p1
.end method

.method static synthetic access$16002(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5636
    iput-wide p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->positionInParent_:J

    return-wide p1
.end method

.method static synthetic access$16102(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5636
    iput-boolean p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->hasVersion:Z

    return p1
.end method

.method static synthetic access$16202(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5636
    iput-wide p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->version_:J

    return-wide p1
.end method

.method static synthetic access$16302(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5636
    iput-boolean p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->hasName:Z

    return p1
.end method

.method static synthetic access$16402(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5636
    iput-object p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->name_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$16502(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5636
    iput-boolean p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->hasNonUniqueName:Z

    return p1
.end method

.method static synthetic access$16602(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5636
    iput-object p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->nonUniqueName_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$16702(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5636
    iput-boolean p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->hasErrorMessage:Z

    return p1
.end method

.method static synthetic access$16802(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5636
    iput-object p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->errorMessage_:Ljava/lang/String;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;
    .locals 1

    .prologue
    .line 5646
    sget-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->defaultInstance:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 5710
    sget-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$ResponseType;->SUCCESS:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$ResponseType;

    iput-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->responseType_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$ResponseType;

    .line 5711
    return-void
.end method

.method public static newBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse$Builder;
    .locals 1

    .prologue
    .line 5855
    #calls: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse$Builder;->create()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse$Builder;
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse$Builder;->access$15100()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 5858
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->newBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse$Builder;->mergeFrom(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;
    .locals 1

    .prologue
    .line 5650
    sget-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->defaultInstance:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 5636
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->getDefaultInstanceForType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;

    move-result-object v0

    return-object v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5707
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->errorMessage_:Ljava/lang/String;

    return-object v0
.end method

.method public getIdString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5665
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->idString_:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5693
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getNonUniqueName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5700
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->nonUniqueName_:Ljava/lang/String;

    return-object v0
.end method

.method public getParentIdString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5672
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->parentIdString_:Ljava/lang/String;

    return-object v0
.end method

.method public getPositionInParent()J
    .locals 2

    .prologue
    .line 5679
    iget-wide v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->positionInParent_:J

    return-wide v0
.end method

.method public getResponseType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$ResponseType;
    .locals 1

    .prologue
    .line 5658
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->responseType_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$ResponseType;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 5748
    iget v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->memoizedSerializedSize:I

    .line 5749
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 5785
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 5751
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 5752
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->hasResponseType()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5753
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->getResponseType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$ResponseType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$ResponseType;->getNumber()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 5756
    :cond_1
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->hasIdString()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5757
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->getIdString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 5760
    :cond_2
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->hasParentIdString()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 5761
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->getParentIdString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 5764
    :cond_3
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->hasPositionInParent()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 5765
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->getPositionInParent()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 5768
    :cond_4
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->hasVersion()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 5769
    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->getVersion()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 5772
    :cond_5
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->hasName()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 5773
    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 5776
    :cond_6
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->hasNonUniqueName()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 5777
    const/16 v2, 0x8

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->getNonUniqueName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 5780
    :cond_7
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->hasErrorMessage()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 5781
    const/16 v2, 0x9

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 5784
    :cond_8
    iput v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->memoizedSerializedSize:I

    move v1, v0

    .line 5785
    .end local v0           #size:I
    .restart local v1       #size:I
    goto/16 :goto_0
.end method

.method public getVersion()J
    .locals 2

    .prologue
    .line 5686
    iget-wide v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->version_:J

    return-wide v0
.end method

.method public hasErrorMessage()Z
    .locals 1

    .prologue
    .line 5706
    iget-boolean v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->hasErrorMessage:Z

    return v0
.end method

.method public hasIdString()Z
    .locals 1

    .prologue
    .line 5664
    iget-boolean v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->hasIdString:Z

    return v0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 5692
    iget-boolean v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->hasName:Z

    return v0
.end method

.method public hasNonUniqueName()Z
    .locals 1

    .prologue
    .line 5699
    iget-boolean v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->hasNonUniqueName:Z

    return v0
.end method

.method public hasParentIdString()Z
    .locals 1

    .prologue
    .line 5671
    iget-boolean v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->hasParentIdString:Z

    return v0
.end method

.method public hasPositionInParent()Z
    .locals 1

    .prologue
    .line 5678
    iget-boolean v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->hasPositionInParent:Z

    return v0
.end method

.method public hasResponseType()Z
    .locals 1

    .prologue
    .line 5657
    iget-boolean v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->hasResponseType:Z

    return v0
.end method

.method public hasVersion()Z
    .locals 1

    .prologue
    .line 5685
    iget-boolean v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->hasVersion:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 5713
    iget-boolean v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->hasResponseType:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 5714
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse$Builder;
    .locals 1

    .prologue
    .line 5856
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->newBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 5636
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->newBuilderForType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse$Builder;
    .locals 1

    .prologue
    .line 5860
    invoke-static {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->newBuilder(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 5636
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->toBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 3
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5719
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->getSerializedSize()I

    .line 5720
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->hasResponseType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5721
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->getResponseType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$ResponseType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$ResponseType;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 5723
    :cond_0
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->hasIdString()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5724
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->getIdString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 5726
    :cond_1
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->hasParentIdString()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5727
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->getParentIdString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 5729
    :cond_2
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->hasPositionInParent()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5730
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->getPositionInParent()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 5732
    :cond_3
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->hasVersion()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5733
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->getVersion()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 5735
    :cond_4
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->hasName()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5736
    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 5738
    :cond_5
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->hasNonUniqueName()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 5739
    const/16 v0, 0x8

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->getNonUniqueName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 5741
    :cond_6
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->hasErrorMessage()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 5742
    const/16 v0, 0x9

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 5744
    :cond_7
    return-void
.end method

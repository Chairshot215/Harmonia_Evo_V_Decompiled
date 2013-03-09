.class public final Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Sync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UserIdentification"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;


# instance fields
.field private displayName_:Ljava/lang/String;

.field private email_:Ljava/lang/String;

.field private hasDisplayName:Z

.field private hasEmail:Z

.field private hasObfuscatedId:Z

.field private memoizedSerializedSize:I

.field private obfuscatedId_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 7947
    new-instance v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;-><init>(Z)V

    sput-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;->defaultInstance:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;

    .line 7948
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync;->internalForceInit()V

    .line 7949
    sget-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;->defaultInstance:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;

    invoke-direct {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;->initFields()V

    .line 7950
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 7618
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 7635
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;->email_:Ljava/lang/String;

    .line 7642
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;->displayName_:Ljava/lang/String;

    .line 7649
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;->obfuscatedId_:Ljava/lang/String;

    .line 7674
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;->memoizedSerializedSize:I

    .line 7619
    invoke-direct {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;->initFields()V

    .line 7620
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 7615
    invoke-direct {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    .line 7621
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 7635
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;->email_:Ljava/lang/String;

    .line 7642
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;->displayName_:Ljava/lang/String;

    .line 7649
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;->obfuscatedId_:Ljava/lang/String;

    .line 7674
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;->memoizedSerializedSize:I

    .line 7621
    return-void
.end method

.method static synthetic access$19702(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7615
    iput-boolean p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;->hasEmail:Z

    return p1
.end method

.method static synthetic access$19802(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7615
    iput-object p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;->email_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$19902(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7615
    iput-boolean p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;->hasDisplayName:Z

    return p1
.end method

.method static synthetic access$20002(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7615
    iput-object p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;->displayName_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$20102(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7615
    iput-boolean p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;->hasObfuscatedId:Z

    return p1
.end method

.method static synthetic access$20202(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7615
    iput-object p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;->obfuscatedId_:Ljava/lang/String;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;
    .locals 1

    .prologue
    .line 7625
    sget-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;->defaultInstance:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;

    return-object v0
.end method

.method private initFields()V
    .locals 0

    .prologue
    .line 7654
    return-void
.end method

.method public static newBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification$Builder;
    .locals 1

    .prologue
    .line 7763
    #calls: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification$Builder;->create()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification$Builder;
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification$Builder;->access$19500()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 7766
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;->newBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification$Builder;->mergeFrom(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;
    .locals 1

    .prologue
    .line 7629
    sget-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;->defaultInstance:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 7615
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;->getDefaultInstanceForType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7644
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;->displayName_:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7637
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;->email_:Ljava/lang/String;

    return-object v0
.end method

.method public getObfuscatedId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7651
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;->obfuscatedId_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 7676
    iget v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;->memoizedSerializedSize:I

    .line 7677
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 7693
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 7679
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 7680
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;->hasEmail()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7681
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;->getEmail()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 7684
    :cond_1
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;->hasDisplayName()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7685
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 7688
    :cond_2
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;->hasObfuscatedId()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 7689
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;->getObfuscatedId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 7692
    :cond_3
    iput v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;->memoizedSerializedSize:I

    move v1, v0

    .line 7693
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public hasDisplayName()Z
    .locals 1

    .prologue
    .line 7643
    iget-boolean v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;->hasDisplayName:Z

    return v0
.end method

.method public hasEmail()Z
    .locals 1

    .prologue
    .line 7636
    iget-boolean v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;->hasEmail:Z

    return v0
.end method

.method public hasObfuscatedId()Z
    .locals 1

    .prologue
    .line 7650
    iget-boolean v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;->hasObfuscatedId:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 7656
    iget-boolean v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;->hasEmail:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 7657
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification$Builder;
    .locals 1

    .prologue
    .line 7764
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;->newBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 7615
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;->newBuilderForType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification$Builder;
    .locals 1

    .prologue
    .line 7768
    invoke-static {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;->newBuilder(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 7615
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;->toBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification$Builder;

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
    .line 7662
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;->getSerializedSize()I

    .line 7663
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;->hasEmail()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7664
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 7666
    :cond_0
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;->hasDisplayName()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7667
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 7669
    :cond_1
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;->hasObfuscatedId()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7670
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;->getObfuscatedId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 7672
    :cond_2
    return-void
.end method

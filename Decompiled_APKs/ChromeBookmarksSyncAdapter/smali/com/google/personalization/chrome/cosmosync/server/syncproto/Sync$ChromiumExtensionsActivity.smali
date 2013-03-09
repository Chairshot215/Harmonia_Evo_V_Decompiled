.class public final Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Sync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ChromiumExtensionsActivity"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity;


# instance fields
.field private bookmarkWritesSinceLastCommit_:I

.field private extensionId_:Ljava/lang/String;

.field private hasBookmarkWritesSinceLastCommit:Z

.field private hasExtensionId:Z

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 2407
    new-instance v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity;-><init>(Z)V

    sput-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity;->defaultInstance:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity;

    .line 2408
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync;->internalForceInit()V

    .line 2409
    sget-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity;->defaultInstance:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity;

    invoke-direct {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity;->initFields()V

    .line 2410
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 2124
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2141
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity;->extensionId_:Ljava/lang/String;

    .line 2148
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity;->bookmarkWritesSinceLastCommit_:I

    .line 2169
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity;->memoizedSerializedSize:I

    .line 2125
    invoke-direct {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity;->initFields()V

    .line 2126
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2121
    invoke-direct {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    .line 2127
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2141
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity;->extensionId_:Ljava/lang/String;

    .line 2148
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity;->bookmarkWritesSinceLastCommit_:I

    .line 2169
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity;->memoizedSerializedSize:I

    .line 2127
    return-void
.end method

.method static synthetic access$7302(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2121
    iput-boolean p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity;->hasExtensionId:Z

    return p1
.end method

.method static synthetic access$7402(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2121
    iput-object p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity;->extensionId_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$7502(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2121
    iput-boolean p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity;->hasBookmarkWritesSinceLastCommit:Z

    return p1
.end method

.method static synthetic access$7602(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2121
    iput p1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity;->bookmarkWritesSinceLastCommit_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity;
    .locals 1

    .prologue
    .line 2131
    sget-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity;->defaultInstance:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity;

    return-object v0
.end method

.method private initFields()V
    .locals 0

    .prologue
    .line 2153
    return-void
.end method

.method public static newBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity$Builder;
    .locals 1

    .prologue
    .line 2254
    #calls: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity$Builder;->create()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity$Builder;
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity$Builder;->access$7100()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 2257
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity;->newBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity$Builder;->mergeFrom(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getBookmarkWritesSinceLastCommit()I
    .locals 1

    .prologue
    .line 2150
    iget v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity;->bookmarkWritesSinceLastCommit_:I

    return v0
.end method

.method public getDefaultInstanceForType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity;
    .locals 1

    .prologue
    .line 2135
    sget-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity;->defaultInstance:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2121
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity;->getDefaultInstanceForType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity;

    move-result-object v0

    return-object v0
.end method

.method public getExtensionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2143
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity;->extensionId_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 2171
    iget v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity;->memoizedSerializedSize:I

    .line 2172
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 2184
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 2174
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 2175
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity;->hasExtensionId()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2176
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity;->getExtensionId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 2179
    :cond_1
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity;->hasBookmarkWritesSinceLastCommit()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2180
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity;->getBookmarkWritesSinceLastCommit()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 2183
    :cond_2
    iput v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity;->memoizedSerializedSize:I

    move v1, v0

    .line 2184
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public hasBookmarkWritesSinceLastCommit()Z
    .locals 1

    .prologue
    .line 2149
    iget-boolean v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity;->hasBookmarkWritesSinceLastCommit:Z

    return v0
.end method

.method public hasExtensionId()Z
    .locals 1

    .prologue
    .line 2142
    iget-boolean v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity;->hasExtensionId:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 2155
    const/4 v0, 0x1

    return v0
.end method

.method public newBuilderForType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity$Builder;
    .locals 1

    .prologue
    .line 2255
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity;->newBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2121
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity;->newBuilderForType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity$Builder;
    .locals 1

    .prologue
    .line 2259
    invoke-static {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity;->newBuilder(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2121
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity;->toBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity$Builder;

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
    .line 2160
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity;->getSerializedSize()I

    .line 2161
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity;->hasExtensionId()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2162
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity;->getExtensionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 2164
    :cond_0
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity;->hasBookmarkWritesSinceLastCommit()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2165
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity;->getBookmarkWritesSinceLastCommit()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 2167
    :cond_1
    return-void
.end method

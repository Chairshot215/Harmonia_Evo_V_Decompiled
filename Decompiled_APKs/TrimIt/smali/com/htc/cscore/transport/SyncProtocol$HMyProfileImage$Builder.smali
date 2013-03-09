.class public final Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 19037
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$54200(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 19032
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$54300()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;
    .locals 1

    .prologue
    .line 19032
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 19083
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 19084
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 19087
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;
    .locals 3

    .prologue
    .line 19040
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;-><init>()V

    .line 19041
    .local v0, builder:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;
    new-instance v1, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    .line 19042
    return-object v0
.end method


# virtual methods
.method public build()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;
    .locals 1

    .prologue
    .line 19075
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 19076
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 19078
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 19032
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 19032
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;
    .locals 3

    .prologue
    .line 19091
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    if-nez v1, :cond_0

    .line 19092
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 19095
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    .line 19096
    .local v0, returnMe:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    .line 19097
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 19032
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 19032
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;
    .locals 2

    .prologue
    .line 19050
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    if-nez v0, :cond_0

    .line 19051
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 19054
    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    .line 19055
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 19032
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 19032
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 19032
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearContentType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;
    .locals 2

    .prologue
    .line 19228
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->hasContentType:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->access$54502(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;Z)Z

    .line 19229
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->getContentType()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->contentType_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->access$54602(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;Ljava/lang/String;)Ljava/lang/String;

    .line 19230
    return-object p0
.end method

.method public clearData()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;
    .locals 2

    .prologue
    .line 19249
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->hasData:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->access$54702(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;Z)Z

    .line 19250
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->getData()Lcom/htc/protobuf/ByteString;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->data_:Lcom/htc/protobuf/ByteString;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->access$54802(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/ByteString;

    .line 19251
    return-object p0
.end method

.method public clearFileType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;
    .locals 2

    .prologue
    .line 19270
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->hasFileType:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->access$54902(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;Z)Z

    .line 19271
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->getFileType()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->fileType_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->access$55002(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;Ljava/lang/String;)Ljava/lang/String;

    .line 19272
    return-object p0
.end method

.method public clearId()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;
    .locals 2

    .prologue
    .line 19307
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->access$55102(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;Z)Z

    .line 19308
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->access$55202(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 19309
    return-object p0
.end method

.method public clearMyProfile()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;
    .locals 2

    .prologue
    .line 19344
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->hasMyProfile:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->access$55302(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;Z)Z

    .line 19345
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->myProfile_:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->access$55402(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    .line 19346
    return-object p0
.end method

.method public clearMyProfileId()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;
    .locals 2

    .prologue
    .line 19381
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->hasMyProfileId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->access$55502(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;Z)Z

    .line 19382
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->access$55602(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 19383
    return-object p0
.end method

.method public clearName()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;
    .locals 2

    .prologue
    .line 19402
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->hasName:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->access$55702(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;Z)Z

    .line 19403
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->getName()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->name_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->access$55802(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;Ljava/lang/String;)Ljava/lang/String;

    .line 19404
    return-object p0
.end method

.method public clearTimestamp()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;
    .locals 3

    .prologue
    .line 19420
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->hasTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->access$55902(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;Z)Z

    .line 19421
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    const-wide/16 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->timestamp_:J
    invoke-static {v0, v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->access$56002(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;J)J

    .line 19422
    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;
    .locals 2

    .prologue
    .line 19059
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 19032
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 19032
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 19032
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 19032
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 19032
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 19032
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19217
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->getContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getData()Lcom/htc/protobuf/ByteString;
    .locals 1

    .prologue
    .line 19238
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->getData()Lcom/htc/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;
    .locals 1

    .prologue
    .line 19068
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 19032
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 19032
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 19064
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getFileType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19259
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->getFileType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 19280
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public getMyProfile()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;
    .locals 1

    .prologue
    .line 19317
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->getMyProfile()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    move-result-object v0

    return-object v0
.end method

.method public getMyProfileId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 19354
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->getMyProfileId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19391
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 19412
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->getTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasContentType()Z
    .locals 1

    .prologue
    .line 19214
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->hasContentType()Z

    move-result v0

    return v0
.end method

.method public hasData()Z
    .locals 1

    .prologue
    .line 19235
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->hasData()Z

    move-result v0

    return v0
.end method

.method public hasFileType()Z
    .locals 1

    .prologue
    .line 19256
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->hasFileType()Z

    move-result v0

    return v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 19277
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->hasId()Z

    move-result v0

    return v0
.end method

.method public hasMyProfile()Z
    .locals 1

    .prologue
    .line 19314
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->hasMyProfile()Z

    move-result v0

    return v0
.end method

.method public hasMyProfileId()Z
    .locals 1

    .prologue
    .line 19351
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->hasMyProfileId()Z

    move-result v0

    return v0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 19388
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->hasName()Z

    move-result v0

    return v0
.end method

.method public hasTimestamp()Z
    .locals 1

    .prologue
    .line 19409
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->hasTimestamp()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;
    .locals 1

    .prologue
    .line 19046
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 19032
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 19072
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 19110
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 19136
    :goto_0
    return-object p0

    .line 19111
    :cond_0
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->hasContentType()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 19112
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->getContentType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->setContentType(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;

    .line 19114
    :cond_1
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->hasData()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 19115
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->getData()Lcom/htc/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->setData(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;

    .line 19117
    :cond_2
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->hasFileType()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 19118
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->getFileType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->setFileType(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;

    .line 19120
    :cond_3
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->hasId()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 19121
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->mergeId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;

    .line 19123
    :cond_4
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->hasMyProfile()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 19124
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->getMyProfile()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->mergeMyProfile(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;

    .line 19126
    :cond_5
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->hasMyProfileId()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 19127
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->getMyProfileId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->mergeMyProfileId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;

    .line 19129
    :cond_6
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->hasName()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 19130
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->setName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;

    .line 19132
    :cond_7
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 19133
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;

    .line 19135
    :cond_8
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;
    .locals 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 19143
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 19147
    .local v2, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 19148
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 19153
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 19155
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 19156
    :goto_1
    return-object p0

    .line 19150
    :sswitch_0
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 19161
    :sswitch_1
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->setName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;

    goto :goto_0

    .line 19165
    :sswitch_2
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;

    goto :goto_0

    .line 19169
    :sswitch_3
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->setContentType(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;

    goto :goto_0

    .line 19173
    :sswitch_4
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readBytes()Lcom/htc/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->setData(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;

    goto :goto_0

    .line 19177
    :sswitch_5
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->setFileType(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;

    goto :goto_0

    .line 19181
    :sswitch_6
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v0

    .line 19182
    .local v0, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->hasId()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 19183
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    .line 19185
    :cond_1
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 19186
    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;

    goto :goto_0

    .line 19190
    .end local v0           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    :sswitch_7
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v0

    .line 19191
    .restart local v0       #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->hasMyProfileId()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 19192
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->getMyProfileId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    .line 19194
    :cond_2
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 19195
    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->setMyProfileId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;

    goto :goto_0

    .line 19199
    .end local v0           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    :sswitch_8
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    move-result-object v0

    .line 19200
    .local v0, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->hasMyProfile()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 19201
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->getMyProfile()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    .line 19203
    :cond_3
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 19204
    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->setMyProfile(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;

    goto/16 :goto_0

    .line 19148
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xee2 -> :sswitch_1
        0x1088 -> :sswitch_2
        0x15a2 -> :sswitch_3
        0x1e72 -> :sswitch_4
        0x223a -> :sswitch_5
        0x2892 -> :sswitch_6
        0x2d3a -> :sswitch_7
        0x3f2a -> :sswitch_8
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 19101
    instance-of v0, p1, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    if-eqz v0, :cond_0

    .line 19102
    check-cast p1, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;

    move-result-object p0

    .line 19105
    .end local p0
    :goto_0
    return-object p0

    .line 19104
    .restart local p0
    .restart local p1
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 19032
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19032
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 19032
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 19032
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19032
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 19032
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 19296
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->hasId()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->access$55200(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 19298
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->access$55200(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->access$55202(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 19303
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->access$55102(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;Z)Z

    .line 19304
    return-object p0

    .line 19301
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->access$55202(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    goto :goto_0
.end method

.method public mergeMyProfile(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 19333
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->hasMyProfile()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->myProfile_:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->access$55400(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 19335
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->myProfile_:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->access$55400(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->myProfile_:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->access$55402(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    .line 19340
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->hasMyProfile:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->access$55302(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;Z)Z

    .line 19341
    return-object p0

    .line 19338
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->myProfile_:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->access$55402(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    goto :goto_0
.end method

.method public mergeMyProfileId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 19370
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->hasMyProfileId()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->access$55600(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 19372
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->access$55600(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->access$55602(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 19377
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->hasMyProfileId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->access$55502(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;Z)Z

    .line 19378
    return-object p0

    .line 19375
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->access$55602(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    goto :goto_0
.end method

.method public setContentType(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 19220
    if-nez p1, :cond_0

    .line 19221
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 19223
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->hasContentType:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->access$54502(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;Z)Z

    .line 19224
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->contentType_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->access$54602(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;Ljava/lang/String;)Ljava/lang/String;

    .line 19225
    return-object p0
.end method

.method public setData(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 19241
    if-nez p1, :cond_0

    .line 19242
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 19244
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->hasData:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->access$54702(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;Z)Z

    .line 19245
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->data_:Lcom/htc/protobuf/ByteString;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->access$54802(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/ByteString;

    .line 19246
    return-object p0
.end method

.method public setFileType(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 19262
    if-nez p1, :cond_0

    .line 19263
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 19265
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->hasFileType:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->access$54902(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;Z)Z

    .line 19266
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->fileType_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->access$55002(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;Ljava/lang/String;)Ljava/lang/String;

    .line 19267
    return-object p0
.end method

.method public setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 19291
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->access$55102(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;Z)Z

    .line 19292
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->access$55202(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 19293
    return-object p0
.end method

.method public setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 19283
    if-nez p1, :cond_0

    .line 19284
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 19286
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->access$55102(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;Z)Z

    .line 19287
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->access$55202(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 19288
    return-object p0
.end method

.method public setMyProfile(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 19328
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->hasMyProfile:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->access$55302(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;Z)Z

    .line 19329
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->myProfile_:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->access$55402(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    .line 19330
    return-object p0
.end method

.method public setMyProfile(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 19320
    if-nez p1, :cond_0

    .line 19321
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 19323
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->hasMyProfile:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->access$55302(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;Z)Z

    .line 19324
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->myProfile_:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->access$55402(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    .line 19325
    return-object p0
.end method

.method public setMyProfileId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 19365
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->hasMyProfileId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->access$55502(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;Z)Z

    .line 19366
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->access$55602(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 19367
    return-object p0
.end method

.method public setMyProfileId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 19357
    if-nez p1, :cond_0

    .line 19358
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 19360
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->hasMyProfileId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->access$55502(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;Z)Z

    .line 19361
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->access$55602(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 19362
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 19394
    if-nez p1, :cond_0

    .line 19395
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 19397
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->hasName:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->access$55702(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;Z)Z

    .line 19398
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->name_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->access$55802(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;Ljava/lang/String;)Ljava/lang/String;

    .line 19399
    return-object p0
.end method

.method public setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 19415
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->hasTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->access$55902(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;Z)Z

    .line 19416
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->timestamp_:J
    invoke-static {v0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->access$56002(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;J)J

    .line 19417
    return-object p0
.end method

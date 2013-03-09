.class public final Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "PBCommonMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1151
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$3600(Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;)Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1146
    invoke-direct {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->buildParsed()Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3700()Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;
    .locals 1

    .prologue
    .line 1146
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->create()Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1197
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1198
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->result:Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;

    invoke-static {v0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 1201
    :cond_0
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->buildPartial()Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;
    .locals 3

    .prologue
    .line 1154
    new-instance v0, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;

    invoke-direct {v0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;-><init>()V

    .line 1155
    .local v0, builder:Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;
    new-instance v1, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;-><init>(Lcom/htc/xps/pomelo/log/PBCommonMessage$1;)V

    iput-object v1, v0, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->result:Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;

    .line 1156
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 1146
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->build()Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1146
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->build()Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;
    .locals 1

    .prologue
    .line 1189
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->result:Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1190
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->result:Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;

    invoke-static {v0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 1192
    :cond_0
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->buildPartial()Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 1146
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->buildPartial()Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1146
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->buildPartial()Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;
    .locals 3

    .prologue
    .line 1205
    iget-object v1, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->result:Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;

    if-nez v1, :cond_0

    .line 1206
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1209
    :cond_0
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->result:Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;

    .line 1210
    .local v0, returnMe:Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->result:Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;

    .line 1211
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1146
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->clear()Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1146
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->clear()Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1146
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->clear()Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;
    .locals 2

    .prologue
    .line 1164
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->result:Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;

    if-nez v0, :cond_0

    .line 1165
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1168
    :cond_0
    new-instance v0, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;-><init>(Lcom/htc/xps/pomelo/log/PBCommonMessage$1;)V

    iput-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->result:Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;

    .line 1169
    return-object p0
.end method

.method public clearAppId()Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;
    .locals 2

    .prologue
    .line 1306
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->result:Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;

    const/4 v1, 0x0

    #setter for: Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->hasAppId:Z
    invoke-static {v0, v1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->access$3902(Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;Z)Z

    .line 1307
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->result:Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;

    invoke-static {}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->getDefaultInstance()Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->getAppId()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->appId_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->access$4002(Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;Ljava/lang/String;)Ljava/lang/String;

    .line 1308
    return-object p0
.end method

.method public clearAttachment()Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;
    .locals 2

    .prologue
    .line 1387
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->result:Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;

    const/4 v1, 0x0

    #setter for: Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->hasAttachment:Z
    invoke-static {v0, v1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->access$4702(Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;Z)Z

    .line 1388
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->result:Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;

    invoke-static {}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->getDefaultInstance()Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->getAttachment()Lcom/htc/protobuf/ByteString;

    move-result-object v1

    #setter for: Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->attachment_:Lcom/htc/protobuf/ByteString;
    invoke-static {v0, v1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->access$4802(Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/ByteString;

    .line 1389
    return-object p0
.end method

.method public clearCategory()Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;
    .locals 2

    .prologue
    .line 1327
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->result:Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;

    const/4 v1, 0x0

    #setter for: Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->hasCategory:Z
    invoke-static {v0, v1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->access$4102(Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;Z)Z

    .line 1328
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->result:Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;

    invoke-static {}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->getDefaultInstance()Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->getCategory()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->category_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->access$4202(Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;Ljava/lang/String;)Ljava/lang/String;

    .line 1329
    return-object p0
.end method

.method public clearData()Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;
    .locals 2

    .prologue
    .line 1366
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->result:Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;

    const/4 v1, 0x0

    #setter for: Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->hasData:Z
    invoke-static {v0, v1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->access$4502(Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;Z)Z

    .line 1367
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->result:Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;

    invoke-static {}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->getDefaultInstance()Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->getData()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->data_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->access$4602(Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;Ljava/lang/String;)Ljava/lang/String;

    .line 1368
    return-object p0
.end method

.method public clearTimestamp()Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;
    .locals 3

    .prologue
    .line 1345
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->result:Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;

    const/4 v1, 0x0

    #setter for: Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->hasTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->access$4302(Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;Z)Z

    .line 1346
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->result:Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;

    const-wide/16 v1, 0x0

    #setter for: Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->timestamp_:J
    invoke-static {v0, v1, v2}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->access$4402(Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;J)J

    .line 1347
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1146
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->clone()Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 1146
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->clone()Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1146
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->clone()Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1146
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->clone()Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1146
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->clone()Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;
    .locals 2

    .prologue
    .line 1173
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->create()Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->result:Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;

    invoke-virtual {v0, v1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->mergeFrom(Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;)Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;

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
    .line 1146
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->clone()Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1295
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->result:Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;

    invoke-virtual {v0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->getAppId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAttachment()Lcom/htc/protobuf/ByteString;
    .locals 1

    .prologue
    .line 1376
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->result:Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;

    invoke-virtual {v0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->getAttachment()Lcom/htc/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1316
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->result:Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;

    invoke-virtual {v0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->getCategory()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1355
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->result:Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;

    invoke-virtual {v0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->getData()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 1146
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->getDefaultInstanceForType()Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1146
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->getDefaultInstanceForType()Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;
    .locals 1

    .prologue
    .line 1182
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->getDefaultInstance()Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1178
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 1337
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->result:Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;

    invoke-virtual {v0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->getTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasAppId()Z
    .locals 1

    .prologue
    .line 1292
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->result:Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;

    invoke-virtual {v0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->hasAppId()Z

    move-result v0

    return v0
.end method

.method public hasAttachment()Z
    .locals 1

    .prologue
    .line 1373
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->result:Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;

    invoke-virtual {v0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->hasAttachment()Z

    move-result v0

    return v0
.end method

.method public hasCategory()Z
    .locals 1

    .prologue
    .line 1313
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->result:Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;

    invoke-virtual {v0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->hasCategory()Z

    move-result v0

    return v0
.end method

.method public hasData()Z
    .locals 1

    .prologue
    .line 1352
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->result:Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;

    invoke-virtual {v0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->hasData()Z

    move-result v0

    return v0
.end method

.method public hasTimestamp()Z
    .locals 1

    .prologue
    .line 1334
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->result:Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;

    invoke-virtual {v0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->hasTimestamp()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 1146
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->internalGetResult()Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;
    .locals 1

    .prologue
    .line 1160
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->result:Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 1186
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->result:Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;

    invoke-virtual {v0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->isInitialized()Z

    move-result v0

    return v0
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
    .line 1146
    invoke-virtual {p0, p1, p2}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1146
    invoke-virtual {p0, p1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;

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
    .line 1146
    invoke-virtual {p0, p1, p2}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;

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
    .line 1146
    invoke-virtual {p0, p1, p2}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1146
    invoke-virtual {p0, p1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;

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
    .line 1146
    invoke-virtual {p0, p1, p2}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1248
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v1

    .line 1252
    .local v1, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 1253
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 1258
    invoke-virtual {p0, p1, v1, p2, v0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1260
    invoke-virtual {v1}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 1261
    :goto_1
    return-object p0

    .line 1255
    :sswitch_0
    invoke-virtual {v1}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 1266
    :sswitch_1
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->setAppId(Ljava/lang/String;)Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;

    goto :goto_0

    .line 1270
    :sswitch_2
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->setCategory(Ljava/lang/String;)Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;

    goto :goto_0

    .line 1274
    :sswitch_3
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->setTimestamp(J)Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;

    goto :goto_0

    .line 1278
    :sswitch_4
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->setData(Ljava/lang/String;)Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;

    goto :goto_0

    .line 1282
    :sswitch_5
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readBytes()Lcom/htc/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->setAttachment(Lcom/htc/protobuf/ByteString;)Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;

    goto :goto_0

    .line 1253
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x5a -> :sswitch_4
        0x62 -> :sswitch_5
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 1215
    instance-of v0, p1, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;

    if-eqz v0, :cond_0

    .line 1216
    check-cast p1, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->mergeFrom(Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;)Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;

    move-result-object p0

    .line 1219
    .end local p0
    :goto_0
    return-object p0

    .line 1218
    .restart local p0
    .restart local p1
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;)Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 1224
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->getDefaultInstance()Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 1241
    :goto_0
    return-object p0

    .line 1225
    :cond_0
    invoke-virtual {p1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->hasAppId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1226
    invoke-virtual {p1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->setAppId(Ljava/lang/String;)Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;

    .line 1228
    :cond_1
    invoke-virtual {p1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->hasCategory()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1229
    invoke-virtual {p1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->getCategory()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->setCategory(Ljava/lang/String;)Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;

    .line 1231
    :cond_2
    invoke-virtual {p1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1232
    invoke-virtual {p1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->setTimestamp(J)Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;

    .line 1234
    :cond_3
    invoke-virtual {p1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->hasData()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1235
    invoke-virtual {p1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->setData(Ljava/lang/String;)Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;

    .line 1237
    :cond_4
    invoke-virtual {p1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->hasAttachment()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1238
    invoke-virtual {p1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->getAttachment()Lcom/htc/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->setAttachment(Lcom/htc/protobuf/ByteString;)Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;

    .line 1240
    :cond_5
    invoke-virtual {p1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public setAppId(Ljava/lang/String;)Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1298
    if-nez p1, :cond_0

    .line 1299
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1301
    :cond_0
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->result:Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;

    const/4 v1, 0x1

    #setter for: Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->hasAppId:Z
    invoke-static {v0, v1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->access$3902(Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;Z)Z

    .line 1302
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->result:Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;

    #setter for: Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->appId_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->access$4002(Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;Ljava/lang/String;)Ljava/lang/String;

    .line 1303
    return-object p0
.end method

.method public setAttachment(Lcom/htc/protobuf/ByteString;)Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1379
    if-nez p1, :cond_0

    .line 1380
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1382
    :cond_0
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->result:Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;

    const/4 v1, 0x1

    #setter for: Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->hasAttachment:Z
    invoke-static {v0, v1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->access$4702(Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;Z)Z

    .line 1383
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->result:Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;

    #setter for: Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->attachment_:Lcom/htc/protobuf/ByteString;
    invoke-static {v0, p1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->access$4802(Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/ByteString;

    .line 1384
    return-object p0
.end method

.method public setCategory(Ljava/lang/String;)Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1319
    if-nez p1, :cond_0

    .line 1320
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1322
    :cond_0
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->result:Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;

    const/4 v1, 0x1

    #setter for: Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->hasCategory:Z
    invoke-static {v0, v1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->access$4102(Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;Z)Z

    .line 1323
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->result:Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;

    #setter for: Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->category_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->access$4202(Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;Ljava/lang/String;)Ljava/lang/String;

    .line 1324
    return-object p0
.end method

.method public setData(Ljava/lang/String;)Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1358
    if-nez p1, :cond_0

    .line 1359
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1361
    :cond_0
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->result:Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;

    const/4 v1, 0x1

    #setter for: Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->hasData:Z
    invoke-static {v0, v1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->access$4502(Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;Z)Z

    .line 1362
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->result:Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;

    #setter for: Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->data_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->access$4602(Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;Ljava/lang/String;)Ljava/lang/String;

    .line 1363
    return-object p0
.end method

.method public setTimestamp(J)Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1340
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->result:Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;

    const/4 v1, 0x1

    #setter for: Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->hasTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->access$4302(Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;Z)Z

    .line 1341
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->result:Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;

    #setter for: Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->timestamp_:J
    invoke-static {v0, p1, p2}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->access$4402(Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;J)J

    .line 1342
    return-object p0
.end method

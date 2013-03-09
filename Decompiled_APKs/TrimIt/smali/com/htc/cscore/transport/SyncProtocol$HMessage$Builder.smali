.class public final Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$HMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 11878
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$33000(Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMessage;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 11873
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$33100()Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;
    .locals 1

    .prologue
    .line 11873
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 11924
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 11925
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 11928
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;
    .locals 3

    .prologue
    .line 11881
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;-><init>()V

    .line 11882
    .local v0, builder:Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;
    new-instance v1, Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    .line 11883
    return-object v0
.end method


# virtual methods
.method public addAllMessageAttachments(Ljava/lang/Iterable;)Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;",
            ">;)",
            "Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;"
        }
    .end annotation

    .prologue
    .line 12259
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;>;"
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->messageAttachments_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$33300(Lcom/htc/cscore/transport/SyncProtocol$HMessage;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12260
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->messageAttachments_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$33302(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Ljava/util/List;)Ljava/util/List;

    .line 12262
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->messageAttachments_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$33300(Lcom/htc/cscore/transport/SyncProtocol$HMessage;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/htc/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 12263
    return-object p0
.end method

.method public addAllMessageRecipients(Ljava/lang/Iterable;)Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;",
            ">;)",
            "Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;"
        }
    .end annotation

    .prologue
    .line 12328
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;>;"
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->messageRecipients_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$33400(Lcom/htc/cscore/transport/SyncProtocol$HMessage;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12329
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->messageRecipients_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$33402(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Ljava/util/List;)Ljava/util/List;

    .line 12331
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->messageRecipients_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$33400(Lcom/htc/cscore/transport/SyncProtocol$HMessage;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/htc/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 12332
    return-object p0
.end method

.method public addMessageAttachments(Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 12251
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->messageAttachments_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$33300(Lcom/htc/cscore/transport/SyncProtocol$HMessage;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12252
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->messageAttachments_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$33302(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Ljava/util/List;)Ljava/util/List;

    .line 12254
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->messageAttachments_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$33300(Lcom/htc/cscore/transport/SyncProtocol$HMessage;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12255
    return-object p0
.end method

.method public addMessageAttachments(Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;)Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 12241
    if-nez p1, :cond_0

    .line 12242
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12244
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->messageAttachments_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$33300(Lcom/htc/cscore/transport/SyncProtocol$HMessage;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12245
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->messageAttachments_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$33302(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Ljava/util/List;)Ljava/util/List;

    .line 12247
    :cond_1
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->messageAttachments_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$33300(Lcom/htc/cscore/transport/SyncProtocol$HMessage;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12248
    return-object p0
.end method

.method public addMessageRecipients(Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 12320
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->messageRecipients_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$33400(Lcom/htc/cscore/transport/SyncProtocol$HMessage;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12321
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->messageRecipients_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$33402(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Ljava/util/List;)Ljava/util/List;

    .line 12323
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->messageRecipients_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$33400(Lcom/htc/cscore/transport/SyncProtocol$HMessage;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12324
    return-object p0
.end method

.method public addMessageRecipients(Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;)Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 12310
    if-nez p1, :cond_0

    .line 12311
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12313
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->messageRecipients_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$33400(Lcom/htc/cscore/transport/SyncProtocol$HMessage;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12314
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->messageRecipients_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$33402(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Ljava/util/List;)Ljava/util/List;

    .line 12316
    :cond_1
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->messageRecipients_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$33400(Lcom/htc/cscore/transport/SyncProtocol$HMessage;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12317
    return-object p0
.end method

.method public build()Lcom/htc/cscore/transport/SyncProtocol$HMessage;
    .locals 1

    .prologue
    .line 11916
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 11917
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 11919
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 11873
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 11873
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMessage;
    .locals 3

    .prologue
    .line 11932
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    if-nez v1, :cond_0

    .line 11933
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 11936
    :cond_0
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->messageAttachments_:Ljava/util/List;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$33300(Lcom/htc/cscore/transport/SyncProtocol$HMessage;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_1

    .line 11937
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    iget-object v2, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->messageAttachments_:Ljava/util/List;
    invoke-static {v2}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$33300(Lcom/htc/cscore/transport/SyncProtocol$HMessage;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->messageAttachments_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$33302(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Ljava/util/List;)Ljava/util/List;

    .line 11940
    :cond_1
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->messageRecipients_:Ljava/util/List;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$33400(Lcom/htc/cscore/transport/SyncProtocol$HMessage;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_2

    .line 11941
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    iget-object v2, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->messageRecipients_:Ljava/util/List;
    invoke-static {v2}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$33400(Lcom/htc/cscore/transport/SyncProtocol$HMessage;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->messageRecipients_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$33402(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Ljava/util/List;)Ljava/util/List;

    .line 11944
    :cond_2
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    .line 11945
    .local v0, returnMe:Lcom/htc/cscore/transport/SyncProtocol$HMessage;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    .line 11946
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 11873
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 11873
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;
    .locals 2

    .prologue
    .line 11891
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    if-nez v0, :cond_0

    .line 11892
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11895
    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    .line 11896
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 11873
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 11873
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 11873
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearBody()Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;
    .locals 2

    .prologue
    .line 12141
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasBody:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$33502(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Z)Z

    .line 12142
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->getBody()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->body_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$33602(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Ljava/lang/String;)Ljava/lang/String;

    .line 12143
    return-object p0
.end method

.method public clearCreateDate()Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;
    .locals 3

    .prologue
    .line 12159
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasCreateDate:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$33702(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Z)Z

    .line 12160
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    const-wide/16 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->createDate_:J
    invoke-static {v0, v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$33802(Lcom/htc/cscore/transport/SyncProtocol$HMessage;J)J

    .line 12161
    return-object p0
.end method

.method public clearHasViewed()Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 12177
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasHasViewed:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$33902(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Z)Z

    .line 12178
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasViewed_:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$34002(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Z)Z

    .line 12179
    return-object p0
.end method

.method public clearId()Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;
    .locals 2

    .prologue
    .line 12214
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$34102(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Z)Z

    .line 12215
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$34202(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 12216
    return-object p0
.end method

.method public clearMessageAttachments()Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;
    .locals 2

    .prologue
    .line 12266
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->messageAttachments_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$33302(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Ljava/util/List;)Ljava/util/List;

    .line 12267
    return-object p0
.end method

.method public clearMessageAttachmentsUpdated()Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 12283
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasMessageAttachmentsUpdated:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$34302(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Z)Z

    .line 12284
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->messageAttachmentsUpdated_:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$34402(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Z)Z

    .line 12285
    return-object p0
.end method

.method public clearMessageRecipients()Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;
    .locals 2

    .prologue
    .line 12335
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->messageRecipients_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$33402(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Ljava/util/List;)Ljava/util/List;

    .line 12336
    return-object p0
.end method

.method public clearMessageRecipientsUpdated()Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 12352
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasMessageRecipientsUpdated:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$34502(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Z)Z

    .line 12353
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->messageRecipientsUpdated_:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$34602(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Z)Z

    .line 12354
    return-object p0
.end method

.method public clearMessageType()Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;
    .locals 2

    .prologue
    .line 12373
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasMessageType:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$34702(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Z)Z

    .line 12374
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageSMSType;->MessageUnknownType:Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageSMSType;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->messageType_:Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageSMSType;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$34802(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageSMSType;)Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageSMSType;

    .line 12375
    return-object p0
.end method

.method public clearPudData()Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;
    .locals 2

    .prologue
    .line 12410
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasPudData:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$34902(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Z)Z

    .line 12411
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPudData;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HPudData;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->pudData_:Lcom/htc/cscore/transport/SyncProtocol$HPudData;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$35002(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Lcom/htc/cscore/transport/SyncProtocol$HPudData;)Lcom/htc/cscore/transport/SyncProtocol$HPudData;

    .line 12412
    return-object p0
.end method

.method public clearStatus()Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;
    .locals 2

    .prologue
    .line 12431
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasStatus:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$35102(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Z)Z

    .line 12432
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;->MessageUnknownStatus:Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->status_:Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$35202(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;)Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;

    .line 12433
    return-object p0
.end method

.method public clearSubject()Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;
    .locals 2

    .prologue
    .line 12452
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasSubject:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$35302(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Z)Z

    .line 12453
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->getSubject()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->subject_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$35402(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Ljava/lang/String;)Ljava/lang/String;

    .line 12454
    return-object p0
.end method

.method public clearThreadId()Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;
    .locals 2

    .prologue
    .line 12489
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasThreadId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$35502(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Z)Z

    .line 12490
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->threadId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$35602(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 12491
    return-object p0
.end method

.method public clearTimestamp()Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;
    .locals 3

    .prologue
    .line 12507
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$35702(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Z)Z

    .line 12508
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    const-wide/16 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->timestamp_:J
    invoke-static {v0, v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$35802(Lcom/htc/cscore/transport/SyncProtocol$HMessage;J)J

    .line 12509
    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;
    .locals 2

    .prologue
    .line 11900
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HMessage;)Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 11873
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 11873
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 11873
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 11873
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 11873
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;

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
    .line 11873
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12130
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->getBody()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCreateDate()J
    .locals 2

    .prologue
    .line 12151
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->getCreateDate()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HMessage;
    .locals 1

    .prologue
    .line 11909
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 11873
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 11873
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 11905
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getHasViewed()Z
    .locals 1

    .prologue
    .line 12169
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->getHasViewed()Z

    move-result v0

    return v0
.end method

.method public getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 12187
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public getMessageAttachments(I)Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;
    .locals 1
    .parameter "index"

    .prologue
    .line 12227
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    invoke-virtual {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->getMessageAttachments(I)Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    move-result-object v0

    return-object v0
.end method

.method public getMessageAttachmentsCount()I
    .locals 1

    .prologue
    .line 12224
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->getMessageAttachmentsCount()I

    move-result v0

    return v0
.end method

.method public getMessageAttachmentsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 12221
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->messageAttachments_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$33300(Lcom/htc/cscore/transport/SyncProtocol$HMessage;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMessageAttachmentsUpdated()Z
    .locals 1

    .prologue
    .line 12275
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->getMessageAttachmentsUpdated()Z

    move-result v0

    return v0
.end method

.method public getMessageRecipients(I)Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;
    .locals 1
    .parameter "index"

    .prologue
    .line 12296
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    invoke-virtual {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->getMessageRecipients(I)Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;

    move-result-object v0

    return-object v0
.end method

.method public getMessageRecipientsCount()I
    .locals 1

    .prologue
    .line 12293
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->getMessageRecipientsCount()I

    move-result v0

    return v0
.end method

.method public getMessageRecipientsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;",
            ">;"
        }
    .end annotation

    .prologue
    .line 12290
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->messageRecipients_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$33400(Lcom/htc/cscore/transport/SyncProtocol$HMessage;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMessageRecipientsUpdated()Z
    .locals 1

    .prologue
    .line 12344
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->getMessageRecipientsUpdated()Z

    move-result v0

    return v0
.end method

.method public getMessageType()Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageSMSType;
    .locals 1

    .prologue
    .line 12362
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->getMessageType()Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageSMSType;

    move-result-object v0

    return-object v0
.end method

.method public getPudData()Lcom/htc/cscore/transport/SyncProtocol$HPudData;
    .locals 1

    .prologue
    .line 12383
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->getPudData()Lcom/htc/cscore/transport/SyncProtocol$HPudData;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;
    .locals 1

    .prologue
    .line 12420
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->getStatus()Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;

    move-result-object v0

    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12441
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->getSubject()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getThreadId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 12462
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->getThreadId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 12499
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->getTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasBody()Z
    .locals 1

    .prologue
    .line 12127
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasBody()Z

    move-result v0

    return v0
.end method

.method public hasCreateDate()Z
    .locals 1

    .prologue
    .line 12148
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasCreateDate()Z

    move-result v0

    return v0
.end method

.method public hasHasViewed()Z
    .locals 1

    .prologue
    .line 12166
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasHasViewed()Z

    move-result v0

    return v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 12184
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasId()Z

    move-result v0

    return v0
.end method

.method public hasMessageAttachmentsUpdated()Z
    .locals 1

    .prologue
    .line 12272
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasMessageAttachmentsUpdated()Z

    move-result v0

    return v0
.end method

.method public hasMessageRecipientsUpdated()Z
    .locals 1

    .prologue
    .line 12341
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasMessageRecipientsUpdated()Z

    move-result v0

    return v0
.end method

.method public hasMessageType()Z
    .locals 1

    .prologue
    .line 12359
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasMessageType()Z

    move-result v0

    return v0
.end method

.method public hasPudData()Z
    .locals 1

    .prologue
    .line 12380
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasPudData()Z

    move-result v0

    return v0
.end method

.method public hasStatus()Z
    .locals 1

    .prologue
    .line 12417
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasStatus()Z

    move-result v0

    return v0
.end method

.method public hasSubject()Z
    .locals 1

    .prologue
    .line 12438
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasSubject()Z

    move-result v0

    return v0
.end method

.method public hasThreadId()Z
    .locals 1

    .prologue
    .line 12459
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasThreadId()Z

    move-result v0

    return v0
.end method

.method public hasTimestamp()Z
    .locals 1

    .prologue
    .line 12496
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasTimestamp()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HMessage;
    .locals 1

    .prologue
    .line 11887
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 11873
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 11913
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HMessage;)Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 11959
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 12009
    :goto_0
    return-object p0

    .line 11960
    :cond_0
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasBody()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11961
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->getBody()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->setBody(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;

    .line 11963
    :cond_1
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasCreateDate()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11964
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->getCreateDate()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->setCreateDate(J)Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;

    .line 11966
    :cond_2
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasHasViewed()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 11967
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->getHasViewed()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->setHasViewed(Z)Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;

    .line 11969
    :cond_3
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasId()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 11970
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->mergeId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;

    .line 11972
    :cond_4
    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->messageAttachments_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$33300(Lcom/htc/cscore/transport/SyncProtocol$HMessage;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 11973
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->messageAttachments_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$33300(Lcom/htc/cscore/transport/SyncProtocol$HMessage;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 11974
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->messageAttachments_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$33302(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Ljava/util/List;)Ljava/util/List;

    .line 11976
    :cond_5
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->messageAttachments_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$33300(Lcom/htc/cscore/transport/SyncProtocol$HMessage;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->messageAttachments_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$33300(Lcom/htc/cscore/transport/SyncProtocol$HMessage;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 11978
    :cond_6
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasMessageAttachmentsUpdated()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 11979
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->getMessageAttachmentsUpdated()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->setMessageAttachmentsUpdated(Z)Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;

    .line 11981
    :cond_7
    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->messageRecipients_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$33400(Lcom/htc/cscore/transport/SyncProtocol$HMessage;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 11982
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->messageRecipients_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$33400(Lcom/htc/cscore/transport/SyncProtocol$HMessage;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 11983
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->messageRecipients_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$33402(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Ljava/util/List;)Ljava/util/List;

    .line 11985
    :cond_8
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->messageRecipients_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$33400(Lcom/htc/cscore/transport/SyncProtocol$HMessage;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->messageRecipients_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$33400(Lcom/htc/cscore/transport/SyncProtocol$HMessage;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 11987
    :cond_9
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasMessageRecipientsUpdated()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 11988
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->getMessageRecipientsUpdated()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->setMessageRecipientsUpdated(Z)Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;

    .line 11990
    :cond_a
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasMessageType()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 11991
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->getMessageType()Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageSMSType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->setMessageType(Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageSMSType;)Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;

    .line 11993
    :cond_b
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasPudData()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 11994
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->getPudData()Lcom/htc/cscore/transport/SyncProtocol$HPudData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->mergePudData(Lcom/htc/cscore/transport/SyncProtocol$HPudData;)Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;

    .line 11996
    :cond_c
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasStatus()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 11997
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->getStatus()Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->setStatus(Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;)Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;

    .line 11999
    :cond_d
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasSubject()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 12000
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->getSubject()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->setSubject(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;

    .line 12002
    :cond_e
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasThreadId()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 12003
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->getThreadId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->mergeThreadId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;

    .line 12005
    :cond_f
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 12006
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;

    .line 12008
    :cond_10
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto/16 :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;
    .locals 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12016
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v3

    .line 12020
    .local v3, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 12021
    .local v2, tag:I
    sparse-switch v2, :sswitch_data_0

    .line 12026
    invoke-virtual {p0, p1, v3, p2, v2}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 12028
    invoke-virtual {v3}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 12029
    :goto_1
    return-object p0

    .line 12023
    :sswitch_0
    invoke-virtual {v3}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 12034
    :sswitch_1
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 12035
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageSMSType;->valueOf(I)Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageSMSType;

    move-result-object v4

    .line 12036
    .local v4, value:Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageSMSType;
    if-nez v4, :cond_1

    .line 12037
    const/16 v5, 0x16f

    invoke-virtual {v3, v5, v0}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    goto :goto_0

    .line 12039
    :cond_1
    invoke-virtual {p0, v4}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->setMessageType(Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageSMSType;)Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;

    goto :goto_0

    .line 12044
    .end local v0           #rawValue:I
    .end local v4           #value:Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageSMSType;
    :sswitch_2
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;

    goto :goto_0

    .line 12048
    :sswitch_3
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->setBody(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;

    goto :goto_0

    .line 12052
    :sswitch_4
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readBool()Z

    move-result v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->setMessageAttachmentsUpdated(Z)Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;

    goto :goto_0

    .line 12056
    :sswitch_5
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->setCreateDate(J)Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;

    goto :goto_0

    .line 12060
    :sswitch_6
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;

    move-result-object v1

    .line 12061
    .local v1, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 12062
    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->addMessageAttachments(Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;)Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;

    goto :goto_0

    .line 12066
    .end local v1           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;
    :sswitch_7
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPudData;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;

    move-result-object v1

    .line 12067
    .local v1, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->hasPudData()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 12068
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->getPudData()Lcom/htc/cscore/transport/SyncProtocol$HPudData;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HPudData;)Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;

    .line 12070
    :cond_2
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 12071
    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HPudData;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->setPudData(Lcom/htc/cscore/transport/SyncProtocol$HPudData;)Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;

    goto :goto_0

    .line 12075
    .end local v1           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;
    :sswitch_8
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readBool()Z

    move-result v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->setHasViewed(Z)Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;

    goto/16 :goto_0

    .line 12079
    :sswitch_9
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    .line 12080
    .local v1, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->hasId()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 12081
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    .line 12083
    :cond_3
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 12084
    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;

    goto/16 :goto_0

    .line 12088
    .end local v1           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    :sswitch_a
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    .line 12089
    .restart local v1       #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->hasThreadId()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 12090
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->getThreadId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    .line 12092
    :cond_4
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 12093
    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->setThreadId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;

    goto/16 :goto_0

    .line 12097
    .end local v1           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    :sswitch_b
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;

    move-result-object v1

    .line 12098
    .local v1, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 12099
    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->addMessageRecipients(Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;)Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;

    goto/16 :goto_0

    .line 12103
    .end local v1           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;
    :sswitch_c
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readBool()Z

    move-result v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->setMessageRecipientsUpdated(Z)Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;

    goto/16 :goto_0

    .line 12107
    :sswitch_d
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 12108
    .restart local v0       #rawValue:I
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;->valueOf(I)Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;

    move-result-object v4

    .line 12109
    .local v4, value:Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;
    if-nez v4, :cond_5

    .line 12110
    const/16 v5, 0x692

    invoke-virtual {v3, v5, v0}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    goto/16 :goto_0

    .line 12112
    :cond_5
    invoke-virtual {p0, v4}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->setStatus(Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;)Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;

    goto/16 :goto_0

    .line 12117
    .end local v0           #rawValue:I
    .end local v4           #value:Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;
    :sswitch_e
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->setSubject(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;

    goto/16 :goto_0

    .line 12021
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xb78 -> :sswitch_1
        0x1088 -> :sswitch_2
        0x1362 -> :sswitch_3
        0x15b0 -> :sswitch_4
        0x1ce8 -> :sswitch_5
        0x1e62 -> :sswitch_6
        0x202a -> :sswitch_7
        0x25a0 -> :sswitch_8
        0x2892 -> :sswitch_9
        0x2bd2 -> :sswitch_a
        0x2c7a -> :sswitch_b
        0x3158 -> :sswitch_c
        0x3490 -> :sswitch_d
        0x3b42 -> :sswitch_e
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 11950
    instance-of v0, p1, Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    if-eqz v0, :cond_0

    .line 11951
    check-cast p1, Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HMessage;)Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;

    move-result-object p0

    .line 11954
    .end local p0
    :goto_0
    return-object p0

    .line 11953
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
    .line 11873
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 11873
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;

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
    .line 11873
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;

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
    .line 11873
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 11873
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;

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
    .line 11873
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 12203
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasId()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$34200(Lcom/htc/cscore/transport/SyncProtocol$HMessage;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 12205
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$34200(Lcom/htc/cscore/transport/SyncProtocol$HMessage;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$34202(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 12210
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$34102(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Z)Z

    .line 12211
    return-object p0

    .line 12208
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$34202(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    goto :goto_0
.end method

.method public mergePudData(Lcom/htc/cscore/transport/SyncProtocol$HPudData;)Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 12399
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasPudData()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->pudData_:Lcom/htc/cscore/transport/SyncProtocol$HPudData;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$35000(Lcom/htc/cscore/transport/SyncProtocol$HMessage;)Lcom/htc/cscore/transport/SyncProtocol$HPudData;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPudData;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HPudData;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 12401
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->pudData_:Lcom/htc/cscore/transport/SyncProtocol$HPudData;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$35000(Lcom/htc/cscore/transport/SyncProtocol$HMessage;)Lcom/htc/cscore/transport/SyncProtocol$HPudData;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HPudData;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HPudData;)Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HPudData;)Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HPudData;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->pudData_:Lcom/htc/cscore/transport/SyncProtocol$HPudData;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$35002(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Lcom/htc/cscore/transport/SyncProtocol$HPudData;)Lcom/htc/cscore/transport/SyncProtocol$HPudData;

    .line 12406
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasPudData:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$34902(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Z)Z

    .line 12407
    return-object p0

    .line 12404
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->pudData_:Lcom/htc/cscore/transport/SyncProtocol$HPudData;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$35002(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Lcom/htc/cscore/transport/SyncProtocol$HPudData;)Lcom/htc/cscore/transport/SyncProtocol$HPudData;

    goto :goto_0
.end method

.method public mergeThreadId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 12478
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasThreadId()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->threadId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$35600(Lcom/htc/cscore/transport/SyncProtocol$HMessage;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 12480
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->threadId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$35600(Lcom/htc/cscore/transport/SyncProtocol$HMessage;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->threadId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$35602(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 12485
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasThreadId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$35502(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Z)Z

    .line 12486
    return-object p0

    .line 12483
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->threadId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$35602(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    goto :goto_0
.end method

.method public setBody(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 12133
    if-nez p1, :cond_0

    .line 12134
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12136
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasBody:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$33502(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Z)Z

    .line 12137
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->body_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$33602(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Ljava/lang/String;)Ljava/lang/String;

    .line 12138
    return-object p0
.end method

.method public setCreateDate(J)Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 12154
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasCreateDate:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$33702(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Z)Z

    .line 12155
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->createDate_:J
    invoke-static {v0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$33802(Lcom/htc/cscore/transport/SyncProtocol$HMessage;J)J

    .line 12156
    return-object p0
.end method

.method public setHasViewed(Z)Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 12172
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasHasViewed:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$33902(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Z)Z

    .line 12173
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasViewed_:Z
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$34002(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Z)Z

    .line 12174
    return-object p0
.end method

.method public setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 12198
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$34102(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Z)Z

    .line 12199
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$34202(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 12200
    return-object p0
.end method

.method public setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 12190
    if-nez p1, :cond_0

    .line 12191
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12193
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$34102(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Z)Z

    .line 12194
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$34202(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 12195
    return-object p0
.end method

.method public setMessageAttachments(ILcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 12237
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->messageAttachments_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$33300(Lcom/htc/cscore/transport/SyncProtocol$HMessage;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 12238
    return-object p0
.end method

.method public setMessageAttachments(ILcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;)Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 12230
    if-nez p2, :cond_0

    .line 12231
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12233
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->messageAttachments_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$33300(Lcom/htc/cscore/transport/SyncProtocol$HMessage;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 12234
    return-object p0
.end method

.method public setMessageAttachmentsUpdated(Z)Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 12278
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasMessageAttachmentsUpdated:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$34302(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Z)Z

    .line 12279
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->messageAttachmentsUpdated_:Z
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$34402(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Z)Z

    .line 12280
    return-object p0
.end method

.method public setMessageRecipients(ILcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 12306
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->messageRecipients_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$33400(Lcom/htc/cscore/transport/SyncProtocol$HMessage;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 12307
    return-object p0
.end method

.method public setMessageRecipients(ILcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;)Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 12299
    if-nez p2, :cond_0

    .line 12300
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12302
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->messageRecipients_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$33400(Lcom/htc/cscore/transport/SyncProtocol$HMessage;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 12303
    return-object p0
.end method

.method public setMessageRecipientsUpdated(Z)Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 12347
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasMessageRecipientsUpdated:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$34502(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Z)Z

    .line 12348
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->messageRecipientsUpdated_:Z
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$34602(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Z)Z

    .line 12349
    return-object p0
.end method

.method public setMessageType(Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageSMSType;)Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 12365
    if-nez p1, :cond_0

    .line 12366
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12368
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasMessageType:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$34702(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Z)Z

    .line 12369
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->messageType_:Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageSMSType;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$34802(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageSMSType;)Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageSMSType;

    .line 12370
    return-object p0
.end method

.method public setPudData(Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 12394
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasPudData:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$34902(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Z)Z

    .line 12395
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HPudData;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->pudData_:Lcom/htc/cscore/transport/SyncProtocol$HPudData;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$35002(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Lcom/htc/cscore/transport/SyncProtocol$HPudData;)Lcom/htc/cscore/transport/SyncProtocol$HPudData;

    .line 12396
    return-object p0
.end method

.method public setPudData(Lcom/htc/cscore/transport/SyncProtocol$HPudData;)Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 12386
    if-nez p1, :cond_0

    .line 12387
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12389
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasPudData:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$34902(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Z)Z

    .line 12390
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->pudData_:Lcom/htc/cscore/transport/SyncProtocol$HPudData;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$35002(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Lcom/htc/cscore/transport/SyncProtocol$HPudData;)Lcom/htc/cscore/transport/SyncProtocol$HPudData;

    .line 12391
    return-object p0
.end method

.method public setStatus(Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;)Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 12423
    if-nez p1, :cond_0

    .line 12424
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12426
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasStatus:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$35102(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Z)Z

    .line 12427
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->status_:Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$35202(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;)Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;

    .line 12428
    return-object p0
.end method

.method public setSubject(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 12444
    if-nez p1, :cond_0

    .line 12445
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12447
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasSubject:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$35302(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Z)Z

    .line 12448
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->subject_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$35402(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Ljava/lang/String;)Ljava/lang/String;

    .line 12449
    return-object p0
.end method

.method public setThreadId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 12473
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasThreadId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$35502(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Z)Z

    .line 12474
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->threadId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$35602(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 12475
    return-object p0
.end method

.method public setThreadId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 12465
    if-nez p1, :cond_0

    .line 12466
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12468
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasThreadId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$35502(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Z)Z

    .line 12469
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->threadId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$35602(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 12470
    return-object p0
.end method

.method public setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 12502
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->hasTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$35702(Lcom/htc/cscore/transport/SyncProtocol$HMessage;Z)Z

    .line 12503
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessage;->timestamp_:J
    invoke-static {v0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->access$35802(Lcom/htc/cscore/transport/SyncProtocol$HMessage;J)J

    .line 12504
    return-object p0
.end method

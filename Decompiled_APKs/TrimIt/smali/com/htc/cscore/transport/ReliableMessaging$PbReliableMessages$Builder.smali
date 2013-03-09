.class public final Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "ReliableMessaging.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 626
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$1500(Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;)Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 621
    invoke-direct {p0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;->buildParsed()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;
    .locals 1

    .prologue
    .line 621
    invoke-static {}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;->create()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 672
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 673
    iget-object v0, p0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;->result:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;

    invoke-static {v0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 676
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;->buildPartial()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;
    .locals 3

    .prologue
    .line 629
    new-instance v0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;-><init>()V

    .line 630
    .local v0, builder:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;
    new-instance v1, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;-><init>(Lcom/htc/cscore/transport/ReliableMessaging$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;->result:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;

    .line 631
    return-object v0
.end method


# virtual methods
.method public addAllMessages(Ljava/lang/Iterable;)Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;",
            ">;)",
            "Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;"
        }
    .end annotation

    .prologue
    .line 786
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;>;"
    iget-object v0, p0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;->result:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;

    #getter for: Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;->messages_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;->access$1800(Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 787
    iget-object v0, p0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;->result:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;->messages_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;->access$1802(Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;Ljava/util/List;)Ljava/util/List;

    .line 789
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;->result:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;

    #getter for: Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;->messages_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;->access$1800(Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/htc/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 790
    return-object p0
.end method

.method public addMessages(Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;)Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 778
    iget-object v0, p0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;->result:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;

    #getter for: Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;->messages_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;->access$1800(Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 779
    iget-object v0, p0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;->result:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;->messages_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;->access$1802(Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;Ljava/util/List;)Ljava/util/List;

    .line 781
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;->result:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;

    #getter for: Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;->messages_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;->access$1800(Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;->build()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 782
    return-object p0
.end method

.method public addMessages(Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;)Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 768
    if-nez p1, :cond_0

    .line 769
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 771
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;->result:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;

    #getter for: Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;->messages_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;->access$1800(Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 772
    iget-object v0, p0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;->result:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;->messages_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;->access$1802(Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;Ljava/util/List;)Ljava/util/List;

    .line 774
    :cond_1
    iget-object v0, p0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;->result:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;

    #getter for: Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;->messages_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;->access$1800(Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 775
    return-object p0
.end method

.method public build()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;
    .locals 1

    .prologue
    .line 664
    iget-object v0, p0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;->result:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 665
    iget-object v0, p0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;->result:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;

    invoke-static {v0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 667
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;->buildPartial()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 621
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;->build()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 621
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;->build()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;
    .locals 3

    .prologue
    .line 680
    iget-object v1, p0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;->result:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;

    if-nez v1, :cond_0

    .line 681
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 684
    :cond_0
    iget-object v1, p0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;->result:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;

    #getter for: Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;->messages_:Ljava/util/List;
    invoke-static {v1}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;->access$1800(Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_1

    .line 685
    iget-object v1, p0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;->result:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;

    iget-object v2, p0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;->result:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;

    #getter for: Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;->messages_:Ljava/util/List;
    invoke-static {v2}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;->access$1800(Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;->messages_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;->access$1802(Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;Ljava/util/List;)Ljava/util/List;

    .line 688
    :cond_1
    iget-object v0, p0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;->result:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;

    .line 689
    .local v0, returnMe:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;->result:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;

    .line 690
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 621
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;->buildPartial()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 621
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;->buildPartial()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;
    .locals 2

    .prologue
    .line 639
    iget-object v0, p0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;->result:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;

    if-nez v0, :cond_0

    .line 640
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 643
    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;-><init>(Lcom/htc/cscore/transport/ReliableMessaging$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;->result:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;

    .line 644
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 621
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;->clear()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 621
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;->clear()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 621
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;->clear()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearMessages()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;
    .locals 2

    .prologue
    .line 793
    iget-object v0, p0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;->result:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;->messages_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;->access$1802(Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;Ljava/util/List;)Ljava/util/List;

    .line 794
    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;
    .locals 2

    .prologue
    .line 648
    invoke-static {}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;->create()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;->result:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;->mergeFrom(Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;)Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 621
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;->clone()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 621
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;->clone()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 621
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;->clone()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 621
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;->clone()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 621
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;->clone()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;

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
    .line 621
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;->clone()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;
    .locals 1

    .prologue
    .line 657
    invoke-static {}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;->getDefaultInstance()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 621
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 621
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 653
    invoke-static {}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getMessages(I)Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;
    .locals 1
    .parameter "index"

    .prologue
    .line 754
    iget-object v0, p0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;->result:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;

    invoke-virtual {v0, p1}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;->getMessages(I)Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;

    move-result-object v0

    return-object v0
.end method

.method public getMessagesCount()I
    .locals 1

    .prologue
    .line 751
    iget-object v0, p0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;->result:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;->getMessagesCount()I

    move-result v0

    return v0
.end method

.method public getMessagesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 748
    iget-object v0, p0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;->result:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;

    #getter for: Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;->messages_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;->access$1800(Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;
    .locals 1

    .prologue
    .line 635
    iget-object v0, p0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;->result:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 621
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;->internalGetResult()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 661
    iget-object v0, p0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;->result:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;)Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 703
    invoke-static {}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;->getDefaultInstance()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 711
    :goto_0
    return-object p0

    .line 704
    :cond_0
    #getter for: Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;->messages_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;->access$1800(Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 705
    iget-object v0, p0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;->result:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;

    #getter for: Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;->messages_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;->access$1800(Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 706
    iget-object v0, p0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;->result:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;->messages_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;->access$1802(Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;Ljava/util/List;)Ljava/util/List;

    .line 708
    :cond_1
    iget-object v0, p0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;->result:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;

    #getter for: Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;->messages_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;->access$1800(Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;->messages_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;->access$1800(Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 710
    :cond_2
    invoke-virtual {p1}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 718
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 722
    .local v2, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 723
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 728
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 730
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 731
    :goto_1
    return-object p0

    .line 725
    :sswitch_0
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 736
    :sswitch_1
    invoke-static {}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;->newBuilder()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;

    move-result-object v0

    .line 737
    .local v0, subBuilder:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 738
    invoke-virtual {v0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;->buildPartial()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;->addMessages(Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;)Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;

    goto :goto_0

    .line 723
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 694
    instance-of v0, p1, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;

    if-eqz v0, :cond_0

    .line 695
    check-cast p1, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;->mergeFrom(Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;)Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;

    move-result-object p0

    .line 698
    .end local p0
    :goto_0
    return-object p0

    .line 697
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
    .line 621
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 621
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;

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
    .line 621
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;

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
    .line 621
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 621
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;

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
    .line 621
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setMessages(ILcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;)Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 764
    iget-object v0, p0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;->result:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;

    #getter for: Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;->messages_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;->access$1800(Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;->build()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 765
    return-object p0
.end method

.method public setMessages(ILcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;)Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 757
    if-nez p2, :cond_0

    .line 758
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 760
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;->result:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;

    #getter for: Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;->messages_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;->access$1800(Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 761
    return-object p0
.end method

.class public final Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "PBHandsetPolicyPacket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 608
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$1300(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 603
    invoke-direct {p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;->buildParsed()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;
    .locals 1

    .prologue
    .line 603
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;->create()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 654
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 655
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;

    invoke-static {v0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 658
    :cond_0
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;->buildPartial()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;
    .locals 3

    .prologue
    .line 611
    new-instance v0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;

    invoke-direct {v0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;-><init>()V

    .line 612
    .local v0, builder:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;
    new-instance v1, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;-><init>(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$1;)V

    iput-object v1, v0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;

    .line 613
    return-object v0
.end method


# virtual methods
.method public addAllPolicy(Ljava/lang/Iterable;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;",
            ">;)",
            "Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;"
        }
    .end annotation

    .prologue
    .line 827
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;>;"
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;

    #getter for: Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;->policy_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;->access$1600(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 828
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;->policy_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;->access$1602(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;Ljava/util/List;)Ljava/util/List;

    .line 830
    :cond_0
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;

    #getter for: Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;->policy_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;->access$1600(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/htc/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 831
    return-object p0
.end method

.method public addPolicy(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem$Builder;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 819
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;

    #getter for: Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;->policy_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;->access$1600(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 820
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;->policy_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;->access$1602(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;Ljava/util/List;)Ljava/util/List;

    .line 822
    :cond_0
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;

    #getter for: Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;->policy_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;->access$1600(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem$Builder;->build()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 823
    return-object p0
.end method

.method public addPolicy(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 809
    if-nez p1, :cond_0

    .line 810
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 812
    :cond_0
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;

    #getter for: Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;->policy_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;->access$1600(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 813
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;->policy_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;->access$1602(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;Ljava/util/List;)Ljava/util/List;

    .line 815
    :cond_1
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;

    #getter for: Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;->policy_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;->access$1600(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 816
    return-object p0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 603
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;->build()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 603
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;->build()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;
    .locals 1

    .prologue
    .line 646
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 647
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;

    invoke-static {v0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 649
    :cond_0
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;->buildPartial()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 603
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;->buildPartial()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 603
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;->buildPartial()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;
    .locals 3

    .prologue
    .line 662
    iget-object v1, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;

    if-nez v1, :cond_0

    .line 663
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 666
    :cond_0
    iget-object v1, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;

    #getter for: Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;->policy_:Ljava/util/List;
    invoke-static {v1}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;->access$1600(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_1

    .line 667
    iget-object v1, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;

    iget-object v2, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;

    #getter for: Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;->policy_:Ljava/util/List;
    invoke-static {v2}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;->access$1600(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;->policy_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;->access$1602(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;Ljava/util/List;)Ljava/util/List;

    .line 670
    :cond_1
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;

    .line 671
    .local v0, returnMe:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;

    .line 672
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 603
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;->clear()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 603
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;->clear()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 603
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;->clear()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;
    .locals 2

    .prologue
    .line 621
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;

    if-nez v0, :cond_0

    .line 622
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 625
    :cond_0
    new-instance v0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;-><init>(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$1;)V

    iput-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;

    .line 626
    return-object p0
.end method

.method public clearPolicy()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;
    .locals 2

    .prologue
    .line 834
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    #setter for: Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;->policy_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;->access$1602(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;Ljava/util/List;)Ljava/util/List;

    .line 835
    return-object p0
.end method

.method public clearStatus()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;
    .locals 2

    .prologue
    .line 764
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;

    const/4 v1, 0x0

    #setter for: Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;->hasStatus:Z
    invoke-static {v0, v1}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;->access$1702(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;Z)Z

    .line 765
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;

    sget-object v1, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$PolicyStatus;->NEW_POLICIES:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$PolicyStatus;

    #setter for: Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;->status_:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$PolicyStatus;
    invoke-static {v0, v1}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;->access$1802(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$PolicyStatus;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$PolicyStatus;

    .line 766
    return-object p0
.end method

.method public clearUpdateTimestamp()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;
    .locals 3

    .prologue
    .line 782
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;

    const/4 v1, 0x0

    #setter for: Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;->hasUpdateTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;->access$1902(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;Z)Z

    .line 783
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;

    const-wide/16 v1, 0x0

    #setter for: Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;->updateTimestamp_:J
    invoke-static {v0, v1, v2}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;->access$2002(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;J)J

    .line 784
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 603
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;->clone()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 603
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;->clone()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 603
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;->clone()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 603
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;->clone()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 603
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;->clone()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;
    .locals 2

    .prologue
    .line 630
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;->create()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;

    invoke-virtual {v0, v1}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;->mergeFrom(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;

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
    .line 603
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;->clone()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 603
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;->getDefaultInstanceForType()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 603
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;->getDefaultInstanceForType()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;
    .locals 1

    .prologue
    .line 639
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;->getDefaultInstance()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 635
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getPolicy(I)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;
    .locals 1
    .parameter "index"

    .prologue
    .line 795
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;

    invoke-virtual {v0, p1}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;->getPolicy(I)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;

    move-result-object v0

    return-object v0
.end method

.method public getPolicyCount()I
    .locals 1

    .prologue
    .line 792
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;

    invoke-virtual {v0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;->getPolicyCount()I

    move-result v0

    return v0
.end method

.method public getPolicyList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 789
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;

    #getter for: Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;->policy_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;->access$1600(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$PolicyStatus;
    .locals 1

    .prologue
    .line 753
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;

    invoke-virtual {v0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;->getStatus()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$PolicyStatus;

    move-result-object v0

    return-object v0
.end method

.method public getUpdateTimestamp()J
    .locals 2

    .prologue
    .line 774
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;

    invoke-virtual {v0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;->getUpdateTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasStatus()Z
    .locals 1

    .prologue
    .line 750
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;

    invoke-virtual {v0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;->hasStatus()Z

    move-result v0

    return v0
.end method

.method public hasUpdateTimestamp()Z
    .locals 1

    .prologue
    .line 771
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;

    invoke-virtual {v0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;->hasUpdateTimestamp()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 603
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;->internalGetResult()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;
    .locals 1

    .prologue
    .line 617
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 643
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;

    invoke-virtual {v0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;->isInitialized()Z

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
    .line 603
    invoke-virtual {p0, p1, p2}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 603
    invoke-virtual {p0, p1}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;

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
    .line 603
    invoke-virtual {p0, p1, p2}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;

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
    .line 603
    invoke-virtual {p0, p1, p2}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 603
    invoke-virtual {p0, p1}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;

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
    .line 603
    invoke-virtual {p0, p1, p2}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;
    .locals 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 706
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v3

    .line 710
    .local v3, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 711
    .local v2, tag:I
    sparse-switch v2, :sswitch_data_0

    .line 716
    invoke-virtual {p0, p1, v3, p2, v2}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 718
    invoke-virtual {v3}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 719
    :goto_1
    return-object p0

    .line 713
    :sswitch_0
    invoke-virtual {v3}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 724
    :sswitch_1
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 725
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$PolicyStatus;->valueOf(I)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$PolicyStatus;

    move-result-object v4

    .line 726
    .local v4, value:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$PolicyStatus;
    if-nez v4, :cond_1

    .line 727
    const/4 v5, 0x1

    invoke-virtual {v3, v5, v0}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    goto :goto_0

    .line 729
    :cond_1
    invoke-virtual {p0, v4}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;->setStatus(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$PolicyStatus;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;

    goto :goto_0

    .line 734
    .end local v0           #rawValue:I
    .end local v4           #value:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$PolicyStatus;
    :sswitch_2
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;->setUpdateTimestamp(J)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;

    goto :goto_0

    .line 738
    :sswitch_3
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;->newBuilder()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem$Builder;

    move-result-object v1

    .line 739
    .local v1, subBuilder:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem$Builder;
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 740
    invoke-virtual {v1}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem$Builder;->buildPartial()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;->addPolicy(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;

    goto :goto_0

    .line 711
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x5a -> :sswitch_3
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 676
    instance-of v0, p1, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;

    if-eqz v0, :cond_0

    .line 677
    check-cast p1, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;->mergeFrom(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;

    move-result-object p0

    .line 680
    .end local p0
    :goto_0
    return-object p0

    .line 679
    .restart local p0
    .restart local p1
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 685
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;->getDefaultInstance()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 699
    :goto_0
    return-object p0

    .line 686
    :cond_0
    invoke-virtual {p1}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;->hasStatus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 687
    invoke-virtual {p1}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;->getStatus()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$PolicyStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;->setStatus(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$PolicyStatus;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;

    .line 689
    :cond_1
    invoke-virtual {p1}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;->hasUpdateTimestamp()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 690
    invoke-virtual {p1}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;->getUpdateTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;->setUpdateTimestamp(J)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;

    .line 692
    :cond_2
    #getter for: Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;->policy_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;->access$1600(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 693
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;

    #getter for: Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;->policy_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;->access$1600(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 694
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;->policy_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;->access$1602(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;Ljava/util/List;)Ljava/util/List;

    .line 696
    :cond_3
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;

    #getter for: Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;->policy_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;->access$1600(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;->policy_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;->access$1600(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 698
    :cond_4
    invoke-virtual {p1}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public setPolicy(ILcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem$Builder;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 805
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;

    #getter for: Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;->policy_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;->access$1600(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem$Builder;->build()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 806
    return-object p0
.end method

.method public setPolicy(ILcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 798
    if-nez p2, :cond_0

    .line 799
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 801
    :cond_0
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;

    #getter for: Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;->policy_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;->access$1600(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 802
    return-object p0
.end method

.method public setStatus(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$PolicyStatus;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 756
    if-nez p1, :cond_0

    .line 757
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 759
    :cond_0
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;

    const/4 v1, 0x1

    #setter for: Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;->hasStatus:Z
    invoke-static {v0, v1}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;->access$1702(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;Z)Z

    .line 760
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;

    #setter for: Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;->status_:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$PolicyStatus;
    invoke-static {v0, p1}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;->access$1802(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$PolicyStatus;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$PolicyStatus;

    .line 761
    return-object p0
.end method

.method public setUpdateTimestamp(J)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 777
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;

    const/4 v1, 0x1

    #setter for: Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;->hasUpdateTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;->access$1902(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;Z)Z

    .line 778
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;

    #setter for: Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;->updateTimestamp_:J
    invoke-static {v0, p1, p2}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;->access$2002(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;J)J

    .line 779
    return-object p0
.end method

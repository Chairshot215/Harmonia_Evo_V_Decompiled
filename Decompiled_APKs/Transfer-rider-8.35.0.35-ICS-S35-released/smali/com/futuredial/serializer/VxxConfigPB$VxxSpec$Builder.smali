.class public final Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "VxxConfigPB.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1571
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$4700(Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;)Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1566
    invoke-direct {p0}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->buildParsed()Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4800()Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;
    .locals 1

    .prologue
    .line 1566
    invoke-static {}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->create()Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1617
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1618
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;

    invoke-static {v0}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 1621
    :cond_0
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->buildPartial()Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;
    .locals 3

    .prologue
    .line 1574
    new-instance v0, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;

    invoke-direct {v0}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;-><init>()V

    .line 1575
    .local v0, builder:Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;
    new-instance v1, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;-><init>(Lcom/futuredial/serializer/VxxConfigPB$1;)V

    iput-object v1, v0, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;

    .line 1576
    return-object v0
.end method


# virtual methods
.method public addAllVcalendarPolicy(Ljava/lang/Iterable;)Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;",
            ">;)",
            "Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;"
        }
    .end annotation

    .prologue
    .line 1842
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;>;"
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;

    #getter for: Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->vcalendarPolicy_:Ljava/util/List;
    invoke-static {v0}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->access$5100(Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1843
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->vcalendarPolicy_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->access$5102(Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;Ljava/util/List;)Ljava/util/List;

    .line 1845
    :cond_0
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;

    #getter for: Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->vcalendarPolicy_:Ljava/util/List;
    invoke-static {v0}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->access$5100(Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1846
    return-object p0
.end method

.method public addAllVcardPolicy(Ljava/lang/Iterable;)Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;",
            ">;)",
            "Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;"
        }
    .end annotation

    .prologue
    .line 1791
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;>;"
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;

    #getter for: Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->vcardPolicy_:Ljava/util/List;
    invoke-static {v0}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->access$5000(Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1792
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->vcardPolicy_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->access$5002(Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;Ljava/util/List;)Ljava/util/List;

    .line 1794
    :cond_0
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;

    #getter for: Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->vcardPolicy_:Ljava/util/List;
    invoke-static {v0}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->access$5000(Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1795
    return-object p0
.end method

.method public addAllVmessagePolicy(Ljava/lang/Iterable;)Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;",
            ">;)",
            "Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;"
        }
    .end annotation

    .prologue
    .line 1893
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;>;"
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;

    #getter for: Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->vmessagePolicy_:Ljava/util/List;
    invoke-static {v0}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->access$5200(Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1894
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->vmessagePolicy_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->access$5202(Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;Ljava/util/List;)Ljava/util/List;

    .line 1896
    :cond_0
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;

    #getter for: Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->vmessagePolicy_:Ljava/util/List;
    invoke-static {v0}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->access$5200(Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1897
    return-object p0
.end method

.method public addVcalendarPolicy(Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;)Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 1834
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;

    #getter for: Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->vcalendarPolicy_:Ljava/util/List;
    invoke-static {v0}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->access$5100(Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1835
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->vcalendarPolicy_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->access$5102(Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;Ljava/util/List;)Ljava/util/List;

    .line 1837
    :cond_0
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;

    #getter for: Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->vcalendarPolicy_:Ljava/util/List;
    invoke-static {v0}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->access$5100(Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;->build()Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1838
    return-object p0
.end method

.method public addVcalendarPolicy(Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;)Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1824
    if-nez p1, :cond_0

    .line 1825
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1827
    :cond_0
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;

    #getter for: Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->vcalendarPolicy_:Ljava/util/List;
    invoke-static {v0}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->access$5100(Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1828
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->vcalendarPolicy_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->access$5102(Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;Ljava/util/List;)Ljava/util/List;

    .line 1830
    :cond_1
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;

    #getter for: Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->vcalendarPolicy_:Ljava/util/List;
    invoke-static {v0}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->access$5100(Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1831
    return-object p0
.end method

.method public addVcardPolicy(Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;)Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 1783
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;

    #getter for: Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->vcardPolicy_:Ljava/util/List;
    invoke-static {v0}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->access$5000(Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1784
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->vcardPolicy_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->access$5002(Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;Ljava/util/List;)Ljava/util/List;

    .line 1786
    :cond_0
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;

    #getter for: Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->vcardPolicy_:Ljava/util/List;
    invoke-static {v0}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->access$5000(Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;->build()Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1787
    return-object p0
.end method

.method public addVcardPolicy(Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;)Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1773
    if-nez p1, :cond_0

    .line 1774
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1776
    :cond_0
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;

    #getter for: Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->vcardPolicy_:Ljava/util/List;
    invoke-static {v0}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->access$5000(Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1777
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->vcardPolicy_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->access$5002(Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;Ljava/util/List;)Ljava/util/List;

    .line 1779
    :cond_1
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;

    #getter for: Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->vcardPolicy_:Ljava/util/List;
    invoke-static {v0}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->access$5000(Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1780
    return-object p0
.end method

.method public addVmessagePolicy(Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;)Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 1885
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;

    #getter for: Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->vmessagePolicy_:Ljava/util/List;
    invoke-static {v0}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->access$5200(Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1886
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->vmessagePolicy_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->access$5202(Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;Ljava/util/List;)Ljava/util/List;

    .line 1888
    :cond_0
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;

    #getter for: Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->vmessagePolicy_:Ljava/util/List;
    invoke-static {v0}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->access$5200(Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;->build()Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1889
    return-object p0
.end method

.method public addVmessagePolicy(Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;)Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1875
    if-nez p1, :cond_0

    .line 1876
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1878
    :cond_0
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;

    #getter for: Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->vmessagePolicy_:Ljava/util/List;
    invoke-static {v0}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->access$5200(Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1879
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->vmessagePolicy_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->access$5202(Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;Ljava/util/List;)Ljava/util/List;

    .line 1881
    :cond_1
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;

    #getter for: Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->vmessagePolicy_:Ljava/util/List;
    invoke-static {v0}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->access$5200(Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1882
    return-object p0
.end method

.method public build()Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;
    .locals 1

    .prologue
    .line 1609
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1610
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;

    invoke-static {v0}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 1612
    :cond_0
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->buildPartial()Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1566
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->build()Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1566
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->build()Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;
    .locals 3

    .prologue
    .line 1625
    iget-object v1, p0, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;

    if-nez v1, :cond_0

    .line 1626
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1629
    :cond_0
    iget-object v1, p0, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;

    #getter for: Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->vcardPolicy_:Ljava/util/List;
    invoke-static {v1}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->access$5000(Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_1

    .line 1630
    iget-object v1, p0, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;

    iget-object v2, p0, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;

    #getter for: Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->vcardPolicy_:Ljava/util/List;
    invoke-static {v2}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->access$5000(Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->vcardPolicy_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->access$5002(Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;Ljava/util/List;)Ljava/util/List;

    .line 1633
    :cond_1
    iget-object v1, p0, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;

    #getter for: Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->vcalendarPolicy_:Ljava/util/List;
    invoke-static {v1}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->access$5100(Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_2

    .line 1634
    iget-object v1, p0, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;

    iget-object v2, p0, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;

    #getter for: Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->vcalendarPolicy_:Ljava/util/List;
    invoke-static {v2}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->access$5100(Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->vcalendarPolicy_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->access$5102(Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;Ljava/util/List;)Ljava/util/List;

    .line 1637
    :cond_2
    iget-object v1, p0, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;

    #getter for: Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->vmessagePolicy_:Ljava/util/List;
    invoke-static {v1}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->access$5200(Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_3

    .line 1638
    iget-object v1, p0, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;

    iget-object v2, p0, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;

    #getter for: Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->vmessagePolicy_:Ljava/util/List;
    invoke-static {v2}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->access$5200(Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->vmessagePolicy_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->access$5202(Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;Ljava/util/List;)Ljava/util/List;

    .line 1641
    :cond_3
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;

    .line 1642
    .local v0, returnMe:Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;

    .line 1643
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1566
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->buildPartial()Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1566
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->buildPartial()Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;
    .locals 2

    .prologue
    .line 1584
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;

    if-nez v0, :cond_0

    .line 1585
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1588
    :cond_0
    new-instance v0, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;-><init>(Lcom/futuredial/serializer/VxxConfigPB$1;)V

    iput-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;

    .line 1589
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1566
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->clear()Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1566
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->clear()Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1566
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->clear()Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearVcalendarPolicy()Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;
    .locals 2

    .prologue
    .line 1849
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    #setter for: Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->vcalendarPolicy_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->access$5102(Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;Ljava/util/List;)Ljava/util/List;

    .line 1850
    return-object p0
.end method

.method public clearVcardPolicy()Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;
    .locals 2

    .prologue
    .line 1798
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    #setter for: Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->vcardPolicy_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->access$5002(Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;Ljava/util/List;)Ljava/util/List;

    .line 1799
    return-object p0
.end method

.method public clearVersion()Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;
    .locals 2

    .prologue
    .line 1746
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;

    const/4 v1, 0x0

    #setter for: Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->hasVersion:Z
    invoke-static {v0, v1}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->access$5302(Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;Z)Z

    .line 1747
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;

    invoke-static {}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->getDefaultInstance()Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;

    move-result-object v1

    invoke-virtual {v1}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->getVersion()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->version_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->access$5402(Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;Ljava/lang/String;)Ljava/lang/String;

    .line 1748
    return-object p0
.end method

.method public clearVmessagePolicy()Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;
    .locals 2

    .prologue
    .line 1900
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    #setter for: Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->vmessagePolicy_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->access$5202(Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;Ljava/util/List;)Ljava/util/List;

    .line 1901
    return-object p0
.end method

.method public clone()Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;
    .locals 2

    .prologue
    .line 1593
    invoke-static {}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->create()Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;

    invoke-virtual {v0, v1}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->mergeFrom(Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;)Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1566
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->clone()Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 1566
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->clone()Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1566
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->clone()Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1566
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->clone()Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1566
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->clone()Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;

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
    .line 1566
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->clone()Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;
    .locals 1

    .prologue
    .line 1602
    invoke-static {}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->getDefaultInstance()Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1566
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->getDefaultInstanceForType()Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1566
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->getDefaultInstanceForType()Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1598
    invoke-static {}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getVcalendarPolicy(I)Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;
    .locals 1
    .parameter "index"

    .prologue
    .line 1810
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;

    invoke-virtual {v0, p1}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->getVcalendarPolicy(I)Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;

    move-result-object v0

    return-object v0
.end method

.method public getVcalendarPolicyCount()I
    .locals 1

    .prologue
    .line 1807
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;

    invoke-virtual {v0}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->getVcalendarPolicyCount()I

    move-result v0

    return v0
.end method

.method public getVcalendarPolicyList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1804
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;

    #getter for: Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->vcalendarPolicy_:Ljava/util/List;
    invoke-static {v0}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->access$5100(Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getVcardPolicy(I)Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;
    .locals 1
    .parameter "index"

    .prologue
    .line 1759
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;

    invoke-virtual {v0, p1}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->getVcardPolicy(I)Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;

    move-result-object v0

    return-object v0
.end method

.method public getVcardPolicyCount()I
    .locals 1

    .prologue
    .line 1756
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;

    invoke-virtual {v0}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->getVcardPolicyCount()I

    move-result v0

    return v0
.end method

.method public getVcardPolicyList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1753
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;

    #getter for: Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->vcardPolicy_:Ljava/util/List;
    invoke-static {v0}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->access$5000(Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1735
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;

    invoke-virtual {v0}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVmessagePolicy(I)Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;
    .locals 1
    .parameter "index"

    .prologue
    .line 1861
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;

    invoke-virtual {v0, p1}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->getVmessagePolicy(I)Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;

    move-result-object v0

    return-object v0
.end method

.method public getVmessagePolicyCount()I
    .locals 1

    .prologue
    .line 1858
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;

    invoke-virtual {v0}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->getVmessagePolicyCount()I

    move-result v0

    return v0
.end method

.method public getVmessagePolicyList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1855
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;

    #getter for: Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->vmessagePolicy_:Ljava/util/List;
    invoke-static {v0}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->access$5200(Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasVersion()Z
    .locals 1

    .prologue
    .line 1732
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;

    invoke-virtual {v0}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->hasVersion()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;
    .locals 1

    .prologue
    .line 1580
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 1566
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->internalGetResult()Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 1606
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;

    invoke-virtual {v0}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;)Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 1656
    invoke-static {}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->getDefaultInstance()Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 1679
    :goto_0
    return-object p0

    .line 1657
    :cond_0
    invoke-virtual {p1}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->hasVersion()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1658
    invoke-virtual {p1}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->getVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->setVersion(Ljava/lang/String;)Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;

    .line 1660
    :cond_1
    #getter for: Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->vcardPolicy_:Ljava/util/List;
    invoke-static {p1}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->access$5000(Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1661
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;

    #getter for: Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->vcardPolicy_:Ljava/util/List;
    invoke-static {v0}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->access$5000(Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1662
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->vcardPolicy_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->access$5002(Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;Ljava/util/List;)Ljava/util/List;

    .line 1664
    :cond_2
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;

    #getter for: Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->vcardPolicy_:Ljava/util/List;
    invoke-static {v0}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->access$5000(Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->vcardPolicy_:Ljava/util/List;
    invoke-static {p1}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->access$5000(Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1666
    :cond_3
    #getter for: Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->vcalendarPolicy_:Ljava/util/List;
    invoke-static {p1}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->access$5100(Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1667
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;

    #getter for: Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->vcalendarPolicy_:Ljava/util/List;
    invoke-static {v0}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->access$5100(Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1668
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->vcalendarPolicy_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->access$5102(Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;Ljava/util/List;)Ljava/util/List;

    .line 1670
    :cond_4
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;

    #getter for: Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->vcalendarPolicy_:Ljava/util/List;
    invoke-static {v0}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->access$5100(Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->vcalendarPolicy_:Ljava/util/List;
    invoke-static {p1}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->access$5100(Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1672
    :cond_5
    #getter for: Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->vmessagePolicy_:Ljava/util/List;
    invoke-static {p1}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->access$5200(Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1673
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;

    #getter for: Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->vmessagePolicy_:Ljava/util/List;
    invoke-static {v0}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->access$5200(Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1674
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->vmessagePolicy_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->access$5202(Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;Ljava/util/List;)Ljava/util/List;

    .line 1676
    :cond_6
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;

    #getter for: Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->vmessagePolicy_:Ljava/util/List;
    invoke-static {v0}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->access$5200(Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->vmessagePolicy_:Ljava/util/List;
    invoke-static {p1}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->access$5200(Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1678
    :cond_7
    invoke-virtual {p1}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto/16 :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1686
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 1690
    .local v2, unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 1691
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 1696
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1698
    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 1699
    :goto_1
    return-object p0

    .line 1693
    :sswitch_0
    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 1704
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->setVersion(Ljava/lang/String;)Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;

    goto :goto_0

    .line 1708
    :sswitch_2
    invoke-static {}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->newBuilder()Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;

    move-result-object v0

    .line 1709
    .local v0, subBuilder:Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 1710
    invoke-virtual {v0}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;->buildPartial()Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->addVcardPolicy(Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;)Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;

    goto :goto_0

    .line 1714
    .end local v0           #subBuilder:Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;
    :sswitch_3
    invoke-static {}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->newBuilder()Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;

    move-result-object v0

    .line 1715
    .local v0, subBuilder:Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 1716
    invoke-virtual {v0}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;->buildPartial()Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->addVcalendarPolicy(Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;)Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;

    goto :goto_0

    .line 1720
    .end local v0           #subBuilder:Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;
    :sswitch_4
    invoke-static {}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;->newBuilder()Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;

    move-result-object v0

    .line 1721
    .local v0, subBuilder:Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 1722
    invoke-virtual {v0}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;->buildPartial()Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->addVmessagePolicy(Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;)Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;

    goto :goto_0

    .line 1691
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 1647
    instance-of v0, p1, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;

    if-eqz v0, :cond_0

    .line 1648
    check-cast p1, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->mergeFrom(Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;)Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;

    move-result-object p0

    .line 1651
    .end local p0
    :goto_0
    return-object p0

    .line 1650
    .restart local p0
    .restart local p1
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1566
    invoke-virtual {p0, p1, p2}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1566
    invoke-virtual {p0, p1}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1566
    invoke-virtual {p0, p1, p2}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1566
    invoke-virtual {p0, p1, p2}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1566
    invoke-virtual {p0, p1}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1566
    invoke-virtual {p0, p1, p2}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setVcalendarPolicy(ILcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;)Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 1820
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;

    #getter for: Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->vcalendarPolicy_:Ljava/util/List;
    invoke-static {v0}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->access$5100(Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;->build()Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1821
    return-object p0
.end method

.method public setVcalendarPolicy(ILcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;)Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 1813
    if-nez p2, :cond_0

    .line 1814
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1816
    :cond_0
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;

    #getter for: Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->vcalendarPolicy_:Ljava/util/List;
    invoke-static {v0}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->access$5100(Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1817
    return-object p0
.end method

.method public setVcardPolicy(ILcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;)Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 1769
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;

    #getter for: Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->vcardPolicy_:Ljava/util/List;
    invoke-static {v0}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->access$5000(Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;->build()Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1770
    return-object p0
.end method

.method public setVcardPolicy(ILcom/futuredial/serializer/VxxConfigPB$VCardPolicy;)Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 1762
    if-nez p2, :cond_0

    .line 1763
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1765
    :cond_0
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;

    #getter for: Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->vcardPolicy_:Ljava/util/List;
    invoke-static {v0}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->access$5000(Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1766
    return-object p0
.end method

.method public setVersion(Ljava/lang/String;)Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1738
    if-nez p1, :cond_0

    .line 1739
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1741
    :cond_0
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;

    const/4 v1, 0x1

    #setter for: Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->hasVersion:Z
    invoke-static {v0, v1}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->access$5302(Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;Z)Z

    .line 1742
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;

    #setter for: Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->version_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->access$5402(Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;Ljava/lang/String;)Ljava/lang/String;

    .line 1743
    return-object p0
.end method

.method public setVmessagePolicy(ILcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;)Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 1871
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;

    #getter for: Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->vmessagePolicy_:Ljava/util/List;
    invoke-static {v0}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->access$5200(Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy$Builder;->build()Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1872
    return-object p0
.end method

.method public setVmessagePolicy(ILcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;)Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 1864
    if-nez p2, :cond_0

    .line 1865
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1867
    :cond_0
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;

    #getter for: Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->vmessagePolicy_:Ljava/util/List;
    invoke-static {v0}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->access$5200(Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1868
    return-object p0
.end method

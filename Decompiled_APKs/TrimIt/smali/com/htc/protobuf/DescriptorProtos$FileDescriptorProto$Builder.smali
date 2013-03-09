.class public final Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "DescriptorProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 598
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$800(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 593
    invoke-direct {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 1

    .prologue
    .line 593
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->create()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 644
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 645
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 648
    :cond_0
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 3

    .prologue
    .line 601
    new-instance v0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    invoke-direct {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;-><init>()V

    .line 602
    .local v0, builder:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    new-instance v1, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;-><init>(Lcom/htc/protobuf/DescriptorProtos$1;)V

    iput-object v1, v0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    .line 603
    return-object v0
.end method


# virtual methods
.method public addAllDependency(Ljava/lang/Iterable;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;"
        }
    .end annotation

    .prologue
    .line 877
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->dependency_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1100(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 878
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->dependency_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1102(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 880
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->dependency_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1100(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/htc/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 881
    return-object p0
.end method

.method public addAllEnumType(Ljava/lang/Iterable;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;",
            ">;)",
            "Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;"
        }
    .end annotation

    .prologue
    .line 979
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;>;"
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->enumType_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1300(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 980
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->enumType_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1302(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 982
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->enumType_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1300(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/htc/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 983
    return-object p0
.end method

.method public addAllExtension(Ljava/lang/Iterable;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;",
            ">;)",
            "Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;"
        }
    .end annotation

    .prologue
    .line 1081
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;>;"
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->extension_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1500(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1082
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->extension_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1502(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 1084
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->extension_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1500(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/htc/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1085
    return-object p0
.end method

.method public addAllMessageType(Ljava/lang/Iterable;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;",
            ">;)",
            "Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;"
        }
    .end annotation

    .prologue
    .line 928
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;>;"
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->messageType_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1200(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 929
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->messageType_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1202(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 931
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->messageType_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1200(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/htc/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 932
    return-object p0
.end method

.method public addAllService(Ljava/lang/Iterable;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;",
            ">;)",
            "Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;"
        }
    .end annotation

    .prologue
    .line 1030
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;>;"
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->service_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1400(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1031
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->service_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1402(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 1033
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->service_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1400(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/htc/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1034
    return-object p0
.end method

.method public addDependency(Ljava/lang/String;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 866
    if-nez p1, :cond_0

    .line 867
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 869
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->dependency_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1100(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 870
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->dependency_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1102(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 872
    :cond_1
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->dependency_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1100(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 873
    return-object p0
.end method

.method public addEnumType(Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 971
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->enumType_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1300(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 972
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->enumType_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1302(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 974
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->enumType_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1300(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->build()Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 975
    return-object p0
.end method

.method public addEnumType(Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 961
    if-nez p1, :cond_0

    .line 962
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 964
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->enumType_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1300(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 965
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->enumType_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1302(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 967
    :cond_1
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->enumType_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1300(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 968
    return-object p0
.end method

.method public addExtension(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 1073
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->extension_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1500(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1074
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->extension_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1502(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 1076
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->extension_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1500(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->build()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1077
    return-object p0
.end method

.method public addExtension(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1063
    if-nez p1, :cond_0

    .line 1064
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1066
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->extension_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1500(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1067
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->extension_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1502(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 1069
    :cond_1
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->extension_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1500(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1070
    return-object p0
.end method

.method public addMessageType(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 920
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->messageType_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1200(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 921
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->messageType_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1202(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 923
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->messageType_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1200(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->build()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 924
    return-object p0
.end method

.method public addMessageType(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 910
    if-nez p1, :cond_0

    .line 911
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 913
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->messageType_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1200(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 914
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->messageType_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1202(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 916
    :cond_1
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->messageType_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1200(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 917
    return-object p0
.end method

.method public addService(Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 1022
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->service_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1400(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1023
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->service_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1402(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 1025
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->service_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1400(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->build()Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1026
    return-object p0
.end method

.method public addService(Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1012
    if-nez p1, :cond_0

    .line 1013
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1015
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->service_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1400(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1016
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->service_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1402(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 1018
    :cond_1
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->service_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1400(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1019
    return-object p0
.end method

.method public build()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;
    .locals 1

    .prologue
    .line 636
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 637
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 639
    :cond_0
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 593
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->build()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 593
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->build()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;
    .locals 3

    .prologue
    .line 652
    iget-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    if-nez v1, :cond_0

    .line 653
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 656
    :cond_0
    iget-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->dependency_:Ljava/util/List;
    invoke-static {v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1100(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_1

    .line 657
    iget-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    iget-object v2, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->dependency_:Ljava/util/List;
    invoke-static {v2}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1100(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->dependency_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1102(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 660
    :cond_1
    iget-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->messageType_:Ljava/util/List;
    invoke-static {v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1200(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_2

    .line 661
    iget-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    iget-object v2, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->messageType_:Ljava/util/List;
    invoke-static {v2}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1200(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->messageType_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1202(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 664
    :cond_2
    iget-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->enumType_:Ljava/util/List;
    invoke-static {v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1300(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_3

    .line 665
    iget-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    iget-object v2, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->enumType_:Ljava/util/List;
    invoke-static {v2}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1300(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->enumType_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1302(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 668
    :cond_3
    iget-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->service_:Ljava/util/List;
    invoke-static {v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1400(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_4

    .line 669
    iget-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    iget-object v2, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->service_:Ljava/util/List;
    invoke-static {v2}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1400(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->service_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1402(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 672
    :cond_4
    iget-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->extension_:Ljava/util/List;
    invoke-static {v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1500(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_5

    .line 673
    iget-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    iget-object v2, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->extension_:Ljava/util/List;
    invoke-static {v2}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1500(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->extension_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1502(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 676
    :cond_5
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    .line 677
    .local v0, returnMe:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    .line 678
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 593
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 593
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 593
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->clear()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 2

    .prologue
    .line 611
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    if-nez v0, :cond_0

    .line 612
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 615
    :cond_0
    new-instance v0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;-><init>(Lcom/htc/protobuf/DescriptorProtos$1;)V

    iput-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    .line 616
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 593
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->clear()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 593
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->clear()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearDependency()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 2

    .prologue
    .line 884
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->dependency_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1102(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 885
    return-object p0
.end method

.method public clearEnumType()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 2

    .prologue
    .line 986
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->enumType_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1302(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 987
    return-object p0
.end method

.method public clearExtension()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 2

    .prologue
    .line 1088
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->extension_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1502(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 1089
    return-object p0
.end method

.method public clearMessageType()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 2

    .prologue
    .line 935
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->messageType_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1202(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 936
    return-object p0
.end method

.method public clearName()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 2

    .prologue
    .line 822
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    const/4 v1, 0x0

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->hasName:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1602(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Z)Z

    .line 823
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->getDefaultInstance()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->getName()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->name_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1702(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/lang/String;)Ljava/lang/String;

    .line 824
    return-object p0
.end method

.method public clearOptions()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 2

    .prologue
    .line 1124
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    const/4 v1, 0x0

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->hasOptions:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$2002(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Z)Z

    .line 1125
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->getDefaultInstance()Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    move-result-object v1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->options_:Lcom/htc/protobuf/DescriptorProtos$FileOptions;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$2102(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Lcom/htc/protobuf/DescriptorProtos$FileOptions;)Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    .line 1126
    return-object p0
.end method

.method public clearPackage()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 2

    .prologue
    .line 843
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    const/4 v1, 0x0

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->hasPackage:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1802(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Z)Z

    .line 844
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->getDefaultInstance()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->getPackage()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->package_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1902(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/lang/String;)Ljava/lang/String;

    .line 845
    return-object p0
.end method

.method public clearService()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 2

    .prologue
    .line 1037
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->service_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1402(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 1038
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 593
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 593
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 2

    .prologue
    .line 620
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->create()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    invoke-virtual {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->mergeFrom(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 593
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 593
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 593
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

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
    .line 593
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;
    .locals 1

    .prologue
    .line 629
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->getDefaultInstance()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 593
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->getDefaultInstanceForType()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 593
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->getDefaultInstanceForType()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public getDependency(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 856
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->getDependency(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDependencyCount()I
    .locals 1

    .prologue
    .line 853
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->getDependencyCount()I

    move-result v0

    return v0
.end method

.method public getDependencyList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 850
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->dependency_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1100(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 625
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getEnumType(I)Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;
    .locals 1
    .parameter "index"

    .prologue
    .line 947
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->getEnumType(I)Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public getEnumTypeCount()I
    .locals 1

    .prologue
    .line 944
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->getEnumTypeCount()I

    move-result v0

    return v0
.end method

.method public getEnumTypeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 941
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->enumType_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1300(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getExtension(I)Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;
    .locals 1
    .parameter "index"

    .prologue
    .line 1049
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->getExtension(I)Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public getExtensionCount()I
    .locals 1

    .prologue
    .line 1046
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->getExtensionCount()I

    move-result v0

    return v0
.end method

.method public getExtensionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1043
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->extension_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1500(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMessageType(I)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;
    .locals 1
    .parameter "index"

    .prologue
    .line 896
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->getMessageType(I)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public getMessageTypeCount()I
    .locals 1

    .prologue
    .line 893
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->getMessageTypeCount()I

    move-result v0

    return v0
.end method

.method public getMessageTypeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 890
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->messageType_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1200(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 811
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOptions()Lcom/htc/protobuf/DescriptorProtos$FileOptions;
    .locals 1

    .prologue
    .line 1097
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->getOptions()Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    return-object v0
.end method

.method public getPackage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 832
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->getPackage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getService(I)Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;
    .locals 1
    .parameter "index"

    .prologue
    .line 998
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->getService(I)Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public getServiceCount()I
    .locals 1

    .prologue
    .line 995
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->getServiceCount()I

    move-result v0

    return v0
.end method

.method public getServiceList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 992
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->service_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1400(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 808
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->hasName()Z

    move-result v0

    return v0
.end method

.method public hasOptions()Z
    .locals 1

    .prologue
    .line 1094
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->hasOptions()Z

    move-result v0

    return v0
.end method

.method public hasPackage()Z
    .locals 1

    .prologue
    .line 829
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->hasPackage()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;
    .locals 1

    .prologue
    .line 607
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 593
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->internalGetResult()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 633
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->isInitialized()Z

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
    .line 593
    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 593
    invoke-virtual {p0, p1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

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
    .line 593
    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 739
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 743
    .local v2, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 744
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 749
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 751
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 752
    :goto_1
    return-object p0

    .line 746
    :sswitch_0
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 757
    :sswitch_1
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->setName(Ljava/lang/String;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    goto :goto_0

    .line 761
    :sswitch_2
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->setPackage(Ljava/lang/String;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    goto :goto_0

    .line 765
    :sswitch_3
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->addDependency(Ljava/lang/String;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    goto :goto_0

    .line 769
    :sswitch_4
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;

    move-result-object v0

    .line 770
    .local v0, subBuilder:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 771
    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->addMessageType(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    goto :goto_0

    .line 775
    .end local v0           #subBuilder:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;
    :sswitch_5
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object v0

    .line 776
    .local v0, subBuilder:Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 777
    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->addEnumType(Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    goto :goto_0

    .line 781
    .end local v0           #subBuilder:Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    :sswitch_6
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;

    move-result-object v0

    .line 782
    .local v0, subBuilder:Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 783
    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->addService(Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    goto :goto_0

    .line 787
    .end local v0           #subBuilder:Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;
    :sswitch_7
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object v0

    .line 788
    .local v0, subBuilder:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 789
    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->addExtension(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    goto :goto_0

    .line 793
    .end local v0           #subBuilder:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    :sswitch_8
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    .line 794
    .local v0, subBuilder:Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->hasOptions()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 795
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->getOptions()Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->mergeFrom(Lcom/htc/protobuf/DescriptorProtos$FileOptions;)Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;

    .line 797
    :cond_1
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 798
    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->setOptions(Lcom/htc/protobuf/DescriptorProtos$FileOptions;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    goto/16 :goto_0

    .line 744
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 691
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->getDefaultInstance()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 732
    :goto_0
    return-object p0

    .line 692
    :cond_0
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->hasName()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 693
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->setName(Ljava/lang/String;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    .line 695
    :cond_1
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->hasPackage()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 696
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->setPackage(Ljava/lang/String;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    .line 698
    :cond_2
    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->dependency_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1100(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 699
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->dependency_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1100(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 700
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->dependency_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1102(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 702
    :cond_3
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->dependency_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1100(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->dependency_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1100(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 704
    :cond_4
    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->messageType_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1200(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 705
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->messageType_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1200(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 706
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->messageType_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1202(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 708
    :cond_5
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->messageType_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1200(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->messageType_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1200(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 710
    :cond_6
    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->enumType_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1300(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 711
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->enumType_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1300(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 712
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->enumType_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1302(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 714
    :cond_7
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->enumType_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1300(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->enumType_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1300(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 716
    :cond_8
    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->service_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1400(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 717
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->service_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1400(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 718
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->service_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1402(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 720
    :cond_9
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->service_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1400(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->service_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1400(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 722
    :cond_a
    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->extension_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1500(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 723
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->extension_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1500(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 724
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->extension_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1502(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 726
    :cond_b
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->extension_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1500(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->extension_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1500(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 728
    :cond_c
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->hasOptions()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 729
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->getOptions()Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->mergeOptions(Lcom/htc/protobuf/DescriptorProtos$FileOptions;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    .line 731
    :cond_d
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto/16 :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 682
    instance-of v0, p1, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    if-eqz v0, :cond_0

    .line 683
    check-cast p1, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->mergeFrom(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    move-result-object p0

    .line 686
    .end local p0
    :goto_0
    return-object p0

    .line 685
    .restart local p0
    .restart local p1
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;

    goto :goto_0
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
    .line 593
    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 593
    invoke-virtual {p0, p1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

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
    .line 593
    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeOptions(Lcom/htc/protobuf/DescriptorProtos$FileOptions;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1113
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->hasOptions()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->options_:Lcom/htc/protobuf/DescriptorProtos$FileOptions;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$2100(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->getDefaultInstance()Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1115
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    iget-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->options_:Lcom/htc/protobuf/DescriptorProtos$FileOptions;
    invoke-static {v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$2100(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->newBuilder(Lcom/htc/protobuf/DescriptorProtos$FileOptions;)Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->mergeFrom(Lcom/htc/protobuf/DescriptorProtos$FileOptions;)Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    move-result-object v1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->options_:Lcom/htc/protobuf/DescriptorProtos$FileOptions;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$2102(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Lcom/htc/protobuf/DescriptorProtos$FileOptions;)Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    .line 1120
    :goto_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    const/4 v1, 0x1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->hasOptions:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$2002(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Z)Z

    .line 1121
    return-object p0

    .line 1118
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->options_:Lcom/htc/protobuf/DescriptorProtos$FileOptions;
    invoke-static {v0, p1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$2102(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Lcom/htc/protobuf/DescriptorProtos$FileOptions;)Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    goto :goto_0
.end method

.method public setDependency(ILjava/lang/String;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 859
    if-nez p2, :cond_0

    .line 860
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 862
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->dependency_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1100(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 863
    return-object p0
.end method

.method public setEnumType(ILcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 957
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->enumType_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1300(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->build()Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 958
    return-object p0
.end method

.method public setEnumType(ILcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 950
    if-nez p2, :cond_0

    .line 951
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 953
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->enumType_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1300(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 954
    return-object p0
.end method

.method public setExtension(ILcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 1059
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->extension_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1500(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->build()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1060
    return-object p0
.end method

.method public setExtension(ILcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 1052
    if-nez p2, :cond_0

    .line 1053
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1055
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->extension_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1500(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1056
    return-object p0
.end method

.method public setMessageType(ILcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 906
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->messageType_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1200(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->build()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 907
    return-object p0
.end method

.method public setMessageType(ILcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 899
    if-nez p2, :cond_0

    .line 900
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 902
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->messageType_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1200(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 903
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 814
    if-nez p1, :cond_0

    .line 815
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 817
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    const/4 v1, 0x1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->hasName:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1602(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Z)Z

    .line 818
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->name_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1702(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/lang/String;)Ljava/lang/String;

    .line 819
    return-object p0
.end method

.method public setOptions(Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 1108
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    const/4 v1, 0x1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->hasOptions:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$2002(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Z)Z

    .line 1109
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->build()Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    move-result-object v1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->options_:Lcom/htc/protobuf/DescriptorProtos$FileOptions;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$2102(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Lcom/htc/protobuf/DescriptorProtos$FileOptions;)Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    .line 1110
    return-object p0
.end method

.method public setOptions(Lcom/htc/protobuf/DescriptorProtos$FileOptions;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1100
    if-nez p1, :cond_0

    .line 1101
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1103
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    const/4 v1, 0x1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->hasOptions:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$2002(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Z)Z

    .line 1104
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->options_:Lcom/htc/protobuf/DescriptorProtos$FileOptions;
    invoke-static {v0, p1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$2102(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Lcom/htc/protobuf/DescriptorProtos$FileOptions;)Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    .line 1105
    return-object p0
.end method

.method public setPackage(Ljava/lang/String;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 835
    if-nez p1, :cond_0

    .line 836
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 838
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    const/4 v1, 0x1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->hasPackage:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1802(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Z)Z

    .line 839
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->package_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1902(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/lang/String;)Ljava/lang/String;

    .line 840
    return-object p0
.end method

.method public setService(ILcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 1008
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->service_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1400(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->build()Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1009
    return-object p0
.end method

.method public setService(ILcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 1001
    if-nez p2, :cond_0

    .line 1002
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1004
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->service_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1400(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1005
    return-object p0
.end method

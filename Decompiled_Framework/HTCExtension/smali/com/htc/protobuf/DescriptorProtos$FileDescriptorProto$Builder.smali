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

    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$800(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 1

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

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 3

    new-instance v0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    invoke-direct {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;-><init>()V

    new-instance v1, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;-><init>(Lcom/htc/protobuf/DescriptorProtos$1;)V

    iput-object v1, v0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    return-object v0
.end method


# virtual methods
.method public addAllDependency(Ljava/lang/Iterable;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 2
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

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->dependency_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1100(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->dependency_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1102(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/util/List;)Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->dependency_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1100(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/htc/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-object p0
.end method

.method public addAllEnumType(Ljava/lang/Iterable;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 2
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

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->enumType_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1300(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->enumType_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1302(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/util/List;)Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->enumType_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1300(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/htc/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-object p0
.end method

.method public addAllExtension(Ljava/lang/Iterable;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 2
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

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->extension_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1500(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->extension_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1502(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/util/List;)Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->extension_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1500(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/htc/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-object p0
.end method

.method public addAllMessageType(Ljava/lang/Iterable;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 2
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

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->messageType_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1200(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->messageType_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1202(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/util/List;)Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->messageType_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1200(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/htc/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-object p0
.end method

.method public addAllService(Ljava/lang/Iterable;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 2
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

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->service_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1400(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->service_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1402(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/util/List;)Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->service_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1400(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/htc/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-object p0
.end method

.method public addDependency(Ljava/lang/String;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->dependency_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1100(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->dependency_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1102(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/util/List;)Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->dependency_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1100(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addEnumType(Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->enumType_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1300(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->enumType_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1302(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/util/List;)Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->enumType_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1300(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->build()Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addEnumType(Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->enumType_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1300(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->enumType_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1302(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/util/List;)Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->enumType_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1300(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addExtension(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->extension_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1500(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->extension_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1502(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/util/List;)Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->extension_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1500(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->build()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addExtension(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->extension_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1500(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->extension_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1502(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/util/List;)Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->extension_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1500(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addMessageType(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->messageType_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1200(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->messageType_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1202(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/util/List;)Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->messageType_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1200(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->build()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addMessageType(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->messageType_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1200(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->messageType_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1202(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/util/List;)Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->messageType_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1200(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addService(Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->service_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1400(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->service_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1402(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/util/List;)Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->service_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1400(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->build()Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addService(Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->service_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1400(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->service_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1402(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/util/List;)Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->service_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1400(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;
    .locals 1

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->build()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->build()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;
    .locals 3

    iget-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->dependency_:Ljava/util/List;
    invoke-static {v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1100(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    iget-object v2, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->dependency_:Ljava/util/List;
    invoke-static {v2}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1100(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->dependency_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1102(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/util/List;)Ljava/util/List;

    :cond_1
    iget-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->messageType_:Ljava/util/List;
    invoke-static {v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1200(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    iget-object v2, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->messageType_:Ljava/util/List;
    invoke-static {v2}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1200(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->messageType_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1202(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/util/List;)Ljava/util/List;

    :cond_2
    iget-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->enumType_:Ljava/util/List;
    invoke-static {v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1300(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    iget-object v2, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->enumType_:Ljava/util/List;
    invoke-static {v2}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1300(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->enumType_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1302(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/util/List;)Ljava/util/List;

    :cond_3
    iget-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->service_:Ljava/util/List;
    invoke-static {v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1400(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_4

    iget-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    iget-object v2, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->service_:Ljava/util/List;
    invoke-static {v2}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1400(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->service_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1402(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/util/List;)Ljava/util/List;

    :cond_4
    iget-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->extension_:Ljava/util/List;
    invoke-static {v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1500(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_5

    iget-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    iget-object v2, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->extension_:Ljava/util/List;
    invoke-static {v2}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1500(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->extension_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1502(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/util/List;)Ljava/util/List;

    :cond_5
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->clear()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;-><init>(Lcom/htc/protobuf/DescriptorProtos$1;)V

    iput-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->clear()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->clear()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearDependency()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->dependency_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1102(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/util/List;)Ljava/util/List;

    return-object p0
.end method

.method public clearEnumType()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->enumType_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1302(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/util/List;)Ljava/util/List;

    return-object p0
.end method

.method public clearExtension()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->extension_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1502(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/util/List;)Ljava/util/List;

    return-object p0
.end method

.method public clearMessageType()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->messageType_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1202(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/util/List;)Ljava/util/List;

    return-object p0
.end method

.method public clearName()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    const/4 v1, 0x0

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->hasName:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1602(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Z)Z

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->getDefaultInstance()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->getName()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->name_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1702(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public clearOptions()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    const/4 v1, 0x0

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->hasOptions:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$2002(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Z)Z

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->getDefaultInstance()Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    move-result-object v1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->options_:Lcom/htc/protobuf/DescriptorProtos$FileOptions;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$2102(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Lcom/htc/protobuf/DescriptorProtos$FileOptions;)Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    return-object p0
.end method

.method public clearPackage()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    const/4 v1, 0x0

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->hasPackage:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1802(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Z)Z

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->getDefaultInstance()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->getPackage()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->package_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1902(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public clearService()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->service_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1402(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/util/List;)Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 2

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->create()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    invoke-virtual {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->mergeFrom(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

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

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;
    .locals 1

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->getDefaultInstance()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->getDefaultInstanceForType()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->getDefaultInstanceForType()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public getDependency(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->getDependency(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDependencyCount()I
    .locals 1

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

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getEnumType(I)Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;
    .locals 1

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->getEnumType(I)Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public getEnumTypeCount()I
    .locals 1

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

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->getExtension(I)Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public getExtensionCount()I
    .locals 1

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

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->getMessageType(I)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public getMessageTypeCount()I
    .locals 1

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

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOptions()Lcom/htc/protobuf/DescriptorProtos$FileOptions;
    .locals 1

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->getOptions()Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    return-object v0
.end method

.method public getPackage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->getPackage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getService(I)Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;
    .locals 1

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->getService(I)Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public getServiceCount()I
    .locals 1

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

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->hasName()Z

    move-result v0

    return v0
.end method

.method public hasOptions()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->hasOptions()Z

    move-result v0

    return v0
.end method

.method public hasPackage()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->hasPackage()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;
    .locals 1

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->internalGetResult()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    :goto_1
    return-object p0

    :sswitch_0
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    :sswitch_1
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->setName(Ljava/lang/String;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->setPackage(Ljava/lang/String;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->addDependency(Ljava/lang/String;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    goto :goto_0

    :sswitch_4
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->addMessageType(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    goto :goto_0

    :sswitch_5
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->addEnumType(Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    goto :goto_0

    :sswitch_6
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->addService(Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    goto :goto_0

    :sswitch_7
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->addExtension(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    goto :goto_0

    :sswitch_8
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->hasOptions()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->getOptions()Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->mergeFrom(Lcom/htc/protobuf/DescriptorProtos$FileOptions;)Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;

    :cond_1
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->setOptions(Lcom/htc/protobuf/DescriptorProtos$FileOptions;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    goto/16 :goto_0

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

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->getDefaultInstance()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object v0

    if-ne p1, v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->hasName()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->setName(Ljava/lang/String;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    :cond_1
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->hasPackage()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->setPackage(Ljava/lang/String;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    :cond_2
    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->dependency_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1100(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->dependency_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1100(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->dependency_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1102(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/util/List;)Ljava/util/List;

    :cond_3
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->dependency_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1100(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->dependency_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1100(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_4
    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->messageType_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1200(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->messageType_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1200(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->messageType_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1202(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/util/List;)Ljava/util/List;

    :cond_5
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->messageType_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1200(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->messageType_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1200(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_6
    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->enumType_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1300(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->enumType_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1300(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->enumType_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1302(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/util/List;)Ljava/util/List;

    :cond_7
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->enumType_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1300(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->enumType_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1300(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_8
    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->service_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1400(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->service_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1400(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->service_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1402(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/util/List;)Ljava/util/List;

    :cond_9
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->service_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1400(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->service_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1400(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_a
    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->extension_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1500(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->extension_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1500(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->extension_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1502(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/util/List;)Ljava/util/List;

    :cond_b
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->extension_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1500(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->extension_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1500(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_c
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->hasOptions()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->getOptions()Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->mergeOptions(Lcom/htc/protobuf/DescriptorProtos$FileOptions;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    :cond_d
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto/16 :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 1

    instance-of v0, p1, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    invoke-virtual {p0, p1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->mergeFrom(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lcom/htc/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeOptions(Lcom/htc/protobuf/DescriptorProtos$FileOptions;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 2

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

    :goto_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    const/4 v1, 0x1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->hasOptions:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$2002(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Z)Z

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->options_:Lcom/htc/protobuf/DescriptorProtos$FileOptions;
    invoke-static {v0, p1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$2102(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Lcom/htc/protobuf/DescriptorProtos$FileOptions;)Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    goto :goto_0
.end method

.method public setDependency(ILjava/lang/String;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 1

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->dependency_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1100(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setEnumType(ILcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->enumType_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1300(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->build()Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setEnumType(ILcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 1

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->enumType_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1300(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setExtension(ILcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->extension_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1500(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->build()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setExtension(ILcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 1

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->extension_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1500(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setMessageType(ILcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->messageType_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1200(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->build()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setMessageType(ILcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 1

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->messageType_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1200(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    const/4 v1, 0x1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->hasName:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1602(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Z)Z

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->name_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1702(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setOptions(Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    const/4 v1, 0x1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->hasOptions:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$2002(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Z)Z

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->build()Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    move-result-object v1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->options_:Lcom/htc/protobuf/DescriptorProtos$FileOptions;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$2102(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Lcom/htc/protobuf/DescriptorProtos$FileOptions;)Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    return-object p0
.end method

.method public setOptions(Lcom/htc/protobuf/DescriptorProtos$FileOptions;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    const/4 v1, 0x1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->hasOptions:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$2002(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Z)Z

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->options_:Lcom/htc/protobuf/DescriptorProtos$FileOptions;
    invoke-static {v0, p1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$2102(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Lcom/htc/protobuf/DescriptorProtos$FileOptions;)Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    return-object p0
.end method

.method public setPackage(Ljava/lang/String;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    const/4 v1, 0x1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->hasPackage:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1802(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Z)Z

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->package_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1902(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setService(ILcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->service_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1400(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->build()Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setService(ILcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 1

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->service_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->access$1400(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

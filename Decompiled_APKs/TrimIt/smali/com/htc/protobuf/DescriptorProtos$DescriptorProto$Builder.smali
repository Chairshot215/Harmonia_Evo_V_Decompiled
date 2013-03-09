.class public final Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "DescriptorProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1697
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$3300(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1692
    invoke-direct {p0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3400()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;
    .locals 1

    .prologue
    .line 1692
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->create()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1743
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1744
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 1747
    :cond_0
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;
    .locals 3

    .prologue
    .line 1700
    new-instance v0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;

    invoke-direct {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;-><init>()V

    .line 1701
    .local v0, builder:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;
    new-instance v1, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;-><init>(Lcom/htc/protobuf/DescriptorProtos$1;)V

    iput-object v1, v0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    .line 1702
    return-object v0
.end method


# virtual methods
.method public addAllEnumType(Ljava/lang/Iterable;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;",
            ">;)",
            "Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;"
        }
    .end annotation

    .prologue
    .line 2114
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;>;"
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->enumType_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3900(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2115
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->enumType_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3902(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 2117
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->enumType_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3900(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/htc/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 2118
    return-object p0
.end method

.method public addAllExtension(Ljava/lang/Iterable;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;",
            ">;)",
            "Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;"
        }
    .end annotation

    .prologue
    .line 2012
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;>;"
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->extension_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3700(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2013
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->extension_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3702(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 2015
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->extension_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3700(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/htc/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 2016
    return-object p0
.end method

.method public addAllExtensionRange(Ljava/lang/Iterable;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;",
            ">;)",
            "Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;"
        }
    .end annotation

    .prologue
    .line 2165
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;>;"
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->extensionRange_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$4000(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2166
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->extensionRange_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$4002(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 2168
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->extensionRange_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$4000(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/htc/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 2169
    return-object p0
.end method

.method public addAllField(Ljava/lang/Iterable;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;",
            ">;)",
            "Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;"
        }
    .end annotation

    .prologue
    .line 1961
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;>;"
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->field_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3600(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1962
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->field_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3602(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 1964
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->field_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3600(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/htc/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1965
    return-object p0
.end method

.method public addAllNestedType(Ljava/lang/Iterable;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;",
            ">;)",
            "Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;"
        }
    .end annotation

    .prologue
    .line 2063
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;>;"
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->nestedType_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3800(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2064
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->nestedType_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3802(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 2066
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->nestedType_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3800(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/htc/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 2067
    return-object p0
.end method

.method public addEnumType(Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 2106
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->enumType_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3900(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2107
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->enumType_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3902(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 2109
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->enumType_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3900(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->build()Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2110
    return-object p0
.end method

.method public addEnumType(Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 2096
    if-nez p1, :cond_0

    .line 2097
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2099
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->enumType_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3900(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2100
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->enumType_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3902(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 2102
    :cond_1
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->enumType_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3900(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2103
    return-object p0
.end method

.method public addExtension(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 2004
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->extension_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3700(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2005
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->extension_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3702(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 2007
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->extension_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3700(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->build()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2008
    return-object p0
.end method

.method public addExtension(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1994
    if-nez p1, :cond_0

    .line 1995
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1997
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->extension_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3700(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1998
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->extension_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3702(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 2000
    :cond_1
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->extension_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3700(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2001
    return-object p0
.end method

.method public addExtensionRange(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 2157
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->extensionRange_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$4000(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2158
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->extensionRange_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$4002(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 2160
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->extensionRange_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$4000(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->build()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2161
    return-object p0
.end method

.method public addExtensionRange(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 2147
    if-nez p1, :cond_0

    .line 2148
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2150
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->extensionRange_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$4000(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2151
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->extensionRange_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$4002(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 2153
    :cond_1
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->extensionRange_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$4000(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2154
    return-object p0
.end method

.method public addField(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 1953
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->field_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3600(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1954
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->field_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3602(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 1956
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->field_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3600(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->build()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1957
    return-object p0
.end method

.method public addField(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1943
    if-nez p1, :cond_0

    .line 1944
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1946
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->field_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3600(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1947
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->field_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3602(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 1949
    :cond_1
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->field_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3600(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1950
    return-object p0
.end method

.method public addNestedType(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 2055
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->nestedType_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3800(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2056
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->nestedType_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3802(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 2058
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->nestedType_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3800(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->build()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2059
    return-object p0
.end method

.method public addNestedType(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 2045
    if-nez p1, :cond_0

    .line 2046
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2048
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->nestedType_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3800(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2049
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->nestedType_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3802(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 2051
    :cond_1
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->nestedType_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3800(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2052
    return-object p0
.end method

.method public build()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;
    .locals 1

    .prologue
    .line 1735
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1736
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 1738
    :cond_0
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 1692
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->build()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1692
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->build()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;
    .locals 3

    .prologue
    .line 1751
    iget-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    if-nez v1, :cond_0

    .line 1752
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1755
    :cond_0
    iget-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->field_:Ljava/util/List;
    invoke-static {v1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3600(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_1

    .line 1756
    iget-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    iget-object v2, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->field_:Ljava/util/List;
    invoke-static {v2}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3600(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->field_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3602(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 1759
    :cond_1
    iget-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->extension_:Ljava/util/List;
    invoke-static {v1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3700(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_2

    .line 1760
    iget-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    iget-object v2, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->extension_:Ljava/util/List;
    invoke-static {v2}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3700(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->extension_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3702(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 1763
    :cond_2
    iget-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->nestedType_:Ljava/util/List;
    invoke-static {v1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3800(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_3

    .line 1764
    iget-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    iget-object v2, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->nestedType_:Ljava/util/List;
    invoke-static {v2}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3800(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->nestedType_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3802(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 1767
    :cond_3
    iget-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->enumType_:Ljava/util/List;
    invoke-static {v1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3900(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_4

    .line 1768
    iget-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    iget-object v2, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->enumType_:Ljava/util/List;
    invoke-static {v2}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3900(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->enumType_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3902(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 1771
    :cond_4
    iget-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->extensionRange_:Ljava/util/List;
    invoke-static {v1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$4000(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_5

    .line 1772
    iget-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    iget-object v2, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->extensionRange_:Ljava/util/List;
    invoke-static {v2}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$4000(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->extensionRange_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$4002(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 1775
    :cond_5
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    .line 1776
    .local v0, returnMe:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    .line 1777
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 1692
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1692
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1692
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->clear()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;
    .locals 2

    .prologue
    .line 1710
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    if-nez v0, :cond_0

    .line 1711
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1714
    :cond_0
    new-instance v0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;-><init>(Lcom/htc/protobuf/DescriptorProtos$1;)V

    iput-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    .line 1715
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1692
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->clear()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1692
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->clear()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearEnumType()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;
    .locals 2

    .prologue
    .line 2121
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->enumType_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3902(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 2122
    return-object p0
.end method

.method public clearExtension()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;
    .locals 2

    .prologue
    .line 2019
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->extension_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3702(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 2020
    return-object p0
.end method

.method public clearExtensionRange()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;
    .locals 2

    .prologue
    .line 2172
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->extensionRange_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$4002(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 2173
    return-object p0
.end method

.method public clearField()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;
    .locals 2

    .prologue
    .line 1968
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->field_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3602(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 1969
    return-object p0
.end method

.method public clearName()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;
    .locals 2

    .prologue
    .line 1916
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    const/4 v1, 0x0

    #setter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->hasName:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$4102(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;Z)Z

    .line 1917
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->getDefaultInstance()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->getName()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->name_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$4202(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;Ljava/lang/String;)Ljava/lang/String;

    .line 1918
    return-object p0
.end method

.method public clearNestedType()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;
    .locals 2

    .prologue
    .line 2070
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->nestedType_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3802(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 2071
    return-object p0
.end method

.method public clearOptions()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;
    .locals 2

    .prologue
    .line 2208
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    const/4 v1, 0x0

    #setter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->hasOptions:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$4302(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;Z)Z

    .line 2209
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->getDefaultInstance()Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->options_:Lcom/htc/protobuf/DescriptorProtos$MessageOptions;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$4402(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;Lcom/htc/protobuf/DescriptorProtos$MessageOptions;)Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    .line 2210
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1692
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 1692
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;
    .locals 2

    .prologue
    .line 1719
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->create()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    invoke-virtual {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->mergeFrom(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1692
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1692
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1692
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;

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
    .line 1692
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;
    .locals 1

    .prologue
    .line 1728
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->getDefaultInstance()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 1692
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->getDefaultInstanceForType()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1692
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->getDefaultInstanceForType()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1724
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getEnumType(I)Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;
    .locals 1
    .parameter "index"

    .prologue
    .line 2082
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->getEnumType(I)Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public getEnumTypeCount()I
    .locals 1

    .prologue
    .line 2079
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->getEnumTypeCount()I

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
    .line 2076
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->enumType_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3900(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getExtension(I)Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;
    .locals 1
    .parameter "index"

    .prologue
    .line 1980
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->getExtension(I)Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public getExtensionCount()I
    .locals 1

    .prologue
    .line 1977
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->getExtensionCount()I

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
    .line 1974
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->extension_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3700(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getExtensionRange(I)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;
    .locals 1
    .parameter "index"

    .prologue
    .line 2133
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->getExtensionRange(I)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;

    move-result-object v0

    return-object v0
.end method

.method public getExtensionRangeCount()I
    .locals 1

    .prologue
    .line 2130
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->getExtensionRangeCount()I

    move-result v0

    return v0
.end method

.method public getExtensionRangeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2127
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->extensionRange_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$4000(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getField(I)Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;
    .locals 1
    .parameter "index"

    .prologue
    .line 1929
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->getField(I)Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public getFieldCount()I
    .locals 1

    .prologue
    .line 1926
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->getFieldCount()I

    move-result v0

    return v0
.end method

.method public getFieldList()Ljava/util/List;
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
    .line 1923
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->field_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3600(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1905
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNestedType(I)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;
    .locals 1
    .parameter "index"

    .prologue
    .line 2031
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->getNestedType(I)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public getNestedTypeCount()I
    .locals 1

    .prologue
    .line 2028
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->getNestedTypeCount()I

    move-result v0

    return v0
.end method

.method public getNestedTypeList()Ljava/util/List;
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
    .line 2025
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->nestedType_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3800(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getOptions()Lcom/htc/protobuf/DescriptorProtos$MessageOptions;
    .locals 1

    .prologue
    .line 2181
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->getOptions()Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    return-object v0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 1902
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->hasName()Z

    move-result v0

    return v0
.end method

.method public hasOptions()Z
    .locals 1

    .prologue
    .line 2178
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->hasOptions()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;
    .locals 1

    .prologue
    .line 1706
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 1692
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->internalGetResult()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 1732
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->isInitialized()Z

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
    .line 1692
    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1692
    invoke-virtual {p0, p1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;

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
    .line 1692
    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1835
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 1839
    .local v2, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 1840
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 1845
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1847
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 1848
    :goto_1
    return-object p0

    .line 1842
    :sswitch_0
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 1853
    :sswitch_1
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->setName(Ljava/lang/String;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;

    goto :goto_0

    .line 1857
    :sswitch_2
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object v0

    .line 1858
    .local v0, subBuilder:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 1859
    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->addField(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;

    goto :goto_0

    .line 1863
    .end local v0           #subBuilder:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    :sswitch_3
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;

    move-result-object v0

    .line 1864
    .local v0, subBuilder:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 1865
    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->addNestedType(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;

    goto :goto_0

    .line 1869
    .end local v0           #subBuilder:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;
    :sswitch_4
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object v0

    .line 1870
    .local v0, subBuilder:Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 1871
    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->addEnumType(Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;

    goto :goto_0

    .line 1875
    .end local v0           #subBuilder:Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    :sswitch_5
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;

    move-result-object v0

    .line 1876
    .local v0, subBuilder:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 1877
    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->addExtensionRange(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;

    goto :goto_0

    .line 1881
    .end local v0           #subBuilder:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;
    :sswitch_6
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object v0

    .line 1882
    .local v0, subBuilder:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 1883
    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->addExtension(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;

    goto :goto_0

    .line 1887
    .end local v0           #subBuilder:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    :sswitch_7
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object v0

    .line 1888
    .local v0, subBuilder:Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->hasOptions()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1889
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->getOptions()Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->mergeFrom(Lcom/htc/protobuf/DescriptorProtos$MessageOptions;)Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;

    .line 1891
    :cond_1
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 1892
    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->setOptions(Lcom/htc/protobuf/DescriptorProtos$MessageOptions;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;

    goto/16 :goto_0

    .line 1840
    nop

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
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 1790
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->getDefaultInstance()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 1828
    :goto_0
    return-object p0

    .line 1791
    :cond_0
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->hasName()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1792
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->setName(Ljava/lang/String;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;

    .line 1794
    :cond_1
    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->field_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3600(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1795
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->field_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3600(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1796
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->field_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3602(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 1798
    :cond_2
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->field_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3600(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->field_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3600(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1800
    :cond_3
    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->extension_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3700(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1801
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->extension_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3700(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1802
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->extension_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3702(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 1804
    :cond_4
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->extension_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3700(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->extension_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3700(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1806
    :cond_5
    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->nestedType_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3800(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1807
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->nestedType_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3800(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1808
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->nestedType_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3802(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 1810
    :cond_6
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->nestedType_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3800(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->nestedType_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3800(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1812
    :cond_7
    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->enumType_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3900(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1813
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->enumType_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3900(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1814
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->enumType_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3902(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 1816
    :cond_8
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->enumType_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3900(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->enumType_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3900(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1818
    :cond_9
    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->extensionRange_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$4000(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1819
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->extensionRange_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$4000(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1820
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->extensionRange_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$4002(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 1822
    :cond_a
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->extensionRange_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$4000(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->extensionRange_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$4000(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1824
    :cond_b
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->hasOptions()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1825
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->getOptions()Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->mergeOptions(Lcom/htc/protobuf/DescriptorProtos$MessageOptions;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;

    .line 1827
    :cond_c
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto/16 :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 1781
    instance-of v0, p1, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    if-eqz v0, :cond_0

    .line 1782
    check-cast p1, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->mergeFrom(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;

    move-result-object p0

    .line 1785
    .end local p0
    :goto_0
    return-object p0

    .line 1784
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
    .line 1692
    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1692
    invoke-virtual {p0, p1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;

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
    .line 1692
    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeOptions(Lcom/htc/protobuf/DescriptorProtos$MessageOptions;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 2197
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->hasOptions()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->options_:Lcom/htc/protobuf/DescriptorProtos$MessageOptions;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$4400(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->getDefaultInstance()Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2199
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    iget-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->options_:Lcom/htc/protobuf/DescriptorProtos$MessageOptions;
    invoke-static {v1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$4400(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->newBuilder(Lcom/htc/protobuf/DescriptorProtos$MessageOptions;)Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->mergeFrom(Lcom/htc/protobuf/DescriptorProtos$MessageOptions;)Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->options_:Lcom/htc/protobuf/DescriptorProtos$MessageOptions;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$4402(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;Lcom/htc/protobuf/DescriptorProtos$MessageOptions;)Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    .line 2204
    :goto_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    const/4 v1, 0x1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->hasOptions:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$4302(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;Z)Z

    .line 2205
    return-object p0

    .line 2202
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    #setter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->options_:Lcom/htc/protobuf/DescriptorProtos$MessageOptions;
    invoke-static {v0, p1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$4402(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;Lcom/htc/protobuf/DescriptorProtos$MessageOptions;)Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    goto :goto_0
.end method

.method public setEnumType(ILcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 2092
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->enumType_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3900(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->build()Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2093
    return-object p0
.end method

.method public setEnumType(ILcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 2085
    if-nez p2, :cond_0

    .line 2086
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2088
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->enumType_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3900(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2089
    return-object p0
.end method

.method public setExtension(ILcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 1990
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->extension_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3700(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->build()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1991
    return-object p0
.end method

.method public setExtension(ILcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 1983
    if-nez p2, :cond_0

    .line 1984
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1986
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->extension_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3700(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1987
    return-object p0
.end method

.method public setExtensionRange(ILcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 2143
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->extensionRange_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$4000(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->build()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2144
    return-object p0
.end method

.method public setExtensionRange(ILcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 2136
    if-nez p2, :cond_0

    .line 2137
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2139
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->extensionRange_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$4000(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2140
    return-object p0
.end method

.method public setField(ILcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 1939
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->field_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3600(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->build()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1940
    return-object p0
.end method

.method public setField(ILcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 1932
    if-nez p2, :cond_0

    .line 1933
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1935
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->field_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3600(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1936
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1908
    if-nez p1, :cond_0

    .line 1909
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1911
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    const/4 v1, 0x1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->hasName:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$4102(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;Z)Z

    .line 1912
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    #setter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->name_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$4202(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;Ljava/lang/String;)Ljava/lang/String;

    .line 1913
    return-object p0
.end method

.method public setNestedType(ILcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 2041
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->nestedType_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3800(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->build()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2042
    return-object p0
.end method

.method public setNestedType(ILcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 2034
    if-nez p2, :cond_0

    .line 2035
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2037
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->nestedType_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3800(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2038
    return-object p0
.end method

.method public setOptions(Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 2192
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    const/4 v1, 0x1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->hasOptions:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$4302(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;Z)Z

    .line 2193
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->build()Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->options_:Lcom/htc/protobuf/DescriptorProtos$MessageOptions;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$4402(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;Lcom/htc/protobuf/DescriptorProtos$MessageOptions;)Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    .line 2194
    return-object p0
.end method

.method public setOptions(Lcom/htc/protobuf/DescriptorProtos$MessageOptions;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 2184
    if-nez p1, :cond_0

    .line 2185
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2187
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    const/4 v1, 0x1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->hasOptions:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$4302(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;Z)Z

    .line 2188
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    #setter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->options_:Lcom/htc/protobuf/DescriptorProtos$MessageOptions;
    invoke-static {v0, p1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$4402(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;Lcom/htc/protobuf/DescriptorProtos$MessageOptions;)Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    .line 2189
    return-object p0
.end method

.class public final Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "DescriptorProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/DescriptorProtos$DescriptorProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1766
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$3300(Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;)Lcom/google/protobuf/DescriptorProtos$DescriptorProto;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1761
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->buildParsed()Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3400()Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;
    .locals 1

    .prologue
    .line 1761
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->create()Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/protobuf/DescriptorProtos$DescriptorProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1812
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1813
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 1816
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->buildPartial()Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;
    .locals 3

    .prologue
    .line 1769
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;

    invoke-direct {v0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;-><init>()V

    .line 1770
    .local v0, builder:Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;
    new-instance v1, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;-><init>(Lcom/google/protobuf/DescriptorProtos$1;)V

    iput-object v1, v0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    .line 1771
    return-object v0
.end method


# virtual methods
.method public addAllEnumType(Ljava/lang/Iterable;)Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;",
            ">;)",
            "Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;"
        }
    .end annotation

    .prologue
    .line 2183
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;>;"
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->enumType_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$3900(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2184
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->enumType_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$3902(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 2186
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->enumType_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$3900(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 2187
    return-object p0
.end method

.method public addAllExtension(Ljava/lang/Iterable;)Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;",
            ">;)",
            "Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;"
        }
    .end annotation

    .prologue
    .line 2081
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;>;"
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->extension_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$3700(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2082
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->extension_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$3702(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 2084
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->extension_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$3700(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 2085
    return-object p0
.end method

.method public addAllExtensionRange(Ljava/lang/Iterable;)Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;",
            ">;)",
            "Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;"
        }
    .end annotation

    .prologue
    .line 2234
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;>;"
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->extensionRange_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$4000(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2235
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->extensionRange_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$4002(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 2237
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->extensionRange_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$4000(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 2238
    return-object p0
.end method

.method public addAllField(Ljava/lang/Iterable;)Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;",
            ">;)",
            "Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;"
        }
    .end annotation

    .prologue
    .line 2030
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;>;"
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->field_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$3600(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2031
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->field_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$3602(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 2033
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->field_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$3600(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 2034
    return-object p0
.end method

.method public addAllNestedType(Ljava/lang/Iterable;)Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/protobuf/DescriptorProtos$DescriptorProto;",
            ">;)",
            "Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;"
        }
    .end annotation

    .prologue
    .line 2132
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/protobuf/DescriptorProtos$DescriptorProto;>;"
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->nestedType_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$3800(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2133
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->nestedType_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$3802(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 2135
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->nestedType_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$3800(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 2136
    return-object p0
.end method

.method public addEnumType(Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;)Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 2175
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->enumType_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$3900(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2176
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->enumType_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$3902(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 2178
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->enumType_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$3900(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->build()Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2179
    return-object p0
.end method

.method public addEnumType(Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;)Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 2165
    if-nez p1, :cond_0

    .line 2166
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2168
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->enumType_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$3900(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2169
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->enumType_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$3902(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 2171
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->enumType_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$3900(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2172
    return-object p0
.end method

.method public addExtension(Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;)Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 2073
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->extension_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$3700(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2074
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->extension_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$3702(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 2076
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->extension_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$3700(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->build()Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2077
    return-object p0
.end method

.method public addExtension(Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;)Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 2063
    if-nez p1, :cond_0

    .line 2064
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2066
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->extension_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$3700(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2067
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->extension_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$3702(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 2069
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->extension_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$3700(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2070
    return-object p0
.end method

.method public addExtensionRange(Lcom/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;)Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 2226
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->extensionRange_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$4000(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2227
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->extensionRange_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$4002(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 2229
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->extensionRange_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$4000(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->build()Lcom/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2230
    return-object p0
.end method

.method public addExtensionRange(Lcom/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;)Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 2216
    if-nez p1, :cond_0

    .line 2217
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2219
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->extensionRange_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$4000(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2220
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->extensionRange_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$4002(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 2222
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->extensionRange_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$4000(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2223
    return-object p0
.end method

.method public addField(Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;)Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 2022
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->field_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$3600(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2023
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->field_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$3602(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 2025
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->field_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$3600(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->build()Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2026
    return-object p0
.end method

.method public addField(Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;)Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 2012
    if-nez p1, :cond_0

    .line 2013
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2015
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->field_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$3600(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2016
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->field_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$3602(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 2018
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->field_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$3600(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2019
    return-object p0
.end method

.method public addNestedType(Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;)Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 2124
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->nestedType_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$3800(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2125
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->nestedType_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$3802(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 2127
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->nestedType_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$3800(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->build()Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2128
    return-object p0
.end method

.method public addNestedType(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;)Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 2114
    if-nez p1, :cond_0

    .line 2115
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2117
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->nestedType_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$3800(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2118
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->nestedType_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$3802(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 2120
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->nestedType_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$3800(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2121
    return-object p0
.end method

.method public build()Lcom/google/protobuf/DescriptorProtos$DescriptorProto;
    .locals 1

    .prologue
    .line 1804
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1805
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 1807
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->buildPartial()Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1761
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->build()Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1761
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->build()Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protobuf/DescriptorProtos$DescriptorProto;
    .locals 3

    .prologue
    .line 1820
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    if-nez v1, :cond_0

    .line 1821
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1824
    :cond_0
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->field_:Ljava/util/List;
    invoke-static {v1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$3600(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_1

    .line 1825
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    iget-object v2, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->field_:Ljava/util/List;
    invoke-static {v2}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$3600(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->field_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$3602(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 1828
    :cond_1
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->extension_:Ljava/util/List;
    invoke-static {v1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$3700(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_2

    .line 1829
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    iget-object v2, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->extension_:Ljava/util/List;
    invoke-static {v2}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$3700(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->extension_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$3702(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 1832
    :cond_2
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->nestedType_:Ljava/util/List;
    invoke-static {v1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$3800(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_3

    .line 1833
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    iget-object v2, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->nestedType_:Ljava/util/List;
    invoke-static {v2}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$3800(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->nestedType_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$3802(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 1836
    :cond_3
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->enumType_:Ljava/util/List;
    invoke-static {v1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$3900(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_4

    .line 1837
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    iget-object v2, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->enumType_:Ljava/util/List;
    invoke-static {v2}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$3900(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->enumType_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$3902(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 1840
    :cond_4
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->extensionRange_:Ljava/util/List;
    invoke-static {v1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$4000(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_5

    .line 1841
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    iget-object v2, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->extensionRange_:Ljava/util/List;
    invoke-static {v2}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$4000(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->extensionRange_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$4002(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 1844
    :cond_5
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    .line 1845
    .local v0, returnMe:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    .line 1846
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1761
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->buildPartial()Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1761
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->buildPartial()Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1761
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->clear()Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;
    .locals 2

    .prologue
    .line 1779
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    if-nez v0, :cond_0

    .line 1780
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1783
    :cond_0
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;-><init>(Lcom/google/protobuf/DescriptorProtos$1;)V

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    .line 1784
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1761
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->clear()Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1761
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->clear()Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearEnumType()Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;
    .locals 2

    .prologue
    .line 2190
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    #setter for: Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->enumType_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$3902(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 2191
    return-object p0
.end method

.method public clearExtension()Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;
    .locals 2

    .prologue
    .line 2088
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    #setter for: Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->extension_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$3702(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 2089
    return-object p0
.end method

.method public clearExtensionRange()Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;
    .locals 2

    .prologue
    .line 2241
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    #setter for: Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->extensionRange_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$4002(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 2242
    return-object p0
.end method

.method public clearField()Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;
    .locals 2

    .prologue
    .line 2037
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    #setter for: Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->field_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$3602(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 2038
    return-object p0
.end method

.method public clearName()Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;
    .locals 2

    .prologue
    .line 1985
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    const/4 v1, 0x0

    #setter for: Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->hasName:Z
    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$4102(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;Z)Z

    .line 1986
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->getName()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->name_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$4202(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;Ljava/lang/String;)Ljava/lang/String;

    .line 1987
    return-object p0
.end method

.method public clearNestedType()Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;
    .locals 2

    .prologue
    .line 2139
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    #setter for: Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->nestedType_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$3802(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 2140
    return-object p0
.end method

.method public clearOptions()Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;
    .locals 2

    .prologue
    .line 2277
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    const/4 v1, 0x0

    #setter for: Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->hasOptions:Z
    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$4302(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;Z)Z

    .line 2278
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$MessageOptions;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v1

    #setter for: Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->options_:Lcom/google/protobuf/DescriptorProtos$MessageOptions;
    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$4402(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;Lcom/google/protobuf/DescriptorProtos$MessageOptions;)Lcom/google/protobuf/DescriptorProtos$MessageOptions;

    .line 2279
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1761
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->clone()Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 1761
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->clone()Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;
    .locals 2

    .prologue
    .line 1788
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->create()Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->mergeFrom(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;)Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1761
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->clone()Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1761
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->clone()Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1761
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->clone()Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;

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
    .line 1761
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->clone()Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protobuf/DescriptorProtos$DescriptorProto;
    .locals 1

    .prologue
    .line 1797
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1761
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->getDefaultInstanceForType()Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1761
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->getDefaultInstanceForType()Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1793
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getEnumType(I)Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;
    .locals 1
    .parameter "index"

    .prologue
    .line 2151
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->getEnumType(I)Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public getEnumTypeCount()I
    .locals 1

    .prologue
    .line 2148
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->getEnumTypeCount()I

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
            "Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2145
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->enumType_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$3900(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getExtension(I)Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;
    .locals 1
    .parameter "index"

    .prologue
    .line 2049
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->getExtension(I)Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public getExtensionCount()I
    .locals 1

    .prologue
    .line 2046
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->getExtensionCount()I

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
            "Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2043
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->extension_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$3700(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getExtensionRange(I)Lcom/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;
    .locals 1
    .parameter "index"

    .prologue
    .line 2202
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->getExtensionRange(I)Lcom/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;

    move-result-object v0

    return-object v0
.end method

.method public getExtensionRangeCount()I
    .locals 1

    .prologue
    .line 2199
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->getExtensionRangeCount()I

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
            "Lcom/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2196
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->extensionRange_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$4000(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getField(I)Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;
    .locals 1
    .parameter "index"

    .prologue
    .line 1998
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->getField(I)Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public getFieldCount()I
    .locals 1

    .prologue
    .line 1995
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->getFieldCount()I

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
            "Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1992
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->field_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$3600(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1974
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNestedType(I)Lcom/google/protobuf/DescriptorProtos$DescriptorProto;
    .locals 1
    .parameter "index"

    .prologue
    .line 2100
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->getNestedType(I)Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public getNestedTypeCount()I
    .locals 1

    .prologue
    .line 2097
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->getNestedTypeCount()I

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
            "Lcom/google/protobuf/DescriptorProtos$DescriptorProto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2094
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->nestedType_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$3800(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getOptions()Lcom/google/protobuf/DescriptorProtos$MessageOptions;
    .locals 1

    .prologue
    .line 2250
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->getOptions()Lcom/google/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    return-object v0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 1971
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->hasName()Z

    move-result v0

    return v0
.end method

.method public hasOptions()Z
    .locals 1

    .prologue
    .line 2247
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->hasOptions()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/google/protobuf/DescriptorProtos$DescriptorProto;
    .locals 1

    .prologue
    .line 1775
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 1761
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->internalGetResult()Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 1801
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->isInitialized()Z

    move-result v0

    return v0
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
    .line 1761
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1761
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;

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
    .line 1761
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1904
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 1908
    .local v2, unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 1909
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 1914
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1916
    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 1917
    :goto_1
    return-object p0

    .line 1911
    :sswitch_0
    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 1922
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->setName(Ljava/lang/String;)Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;

    goto :goto_0

    .line 1926
    :sswitch_2
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;->newBuilder()Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object v0

    .line 1927
    .local v0, subBuilder:Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 1928
    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->buildPartial()Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->addField(Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;)Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;

    goto :goto_0

    .line 1932
    .end local v0           #subBuilder:Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    :sswitch_3
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->newBuilder()Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;

    move-result-object v0

    .line 1933
    .local v0, subBuilder:Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 1934
    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->buildPartial()Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->addNestedType(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;)Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;

    goto :goto_0

    .line 1938
    .end local v0           #subBuilder:Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;
    :sswitch_4
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->newBuilder()Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object v0

    .line 1939
    .local v0, subBuilder:Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 1940
    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->buildPartial()Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->addEnumType(Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;)Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;

    goto :goto_0

    .line 1944
    .end local v0           #subBuilder:Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    :sswitch_5
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->newBuilder()Lcom/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;

    move-result-object v0

    .line 1945
    .local v0, subBuilder:Lcom/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 1946
    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->buildPartial()Lcom/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->addExtensionRange(Lcom/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;)Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;

    goto :goto_0

    .line 1950
    .end local v0           #subBuilder:Lcom/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;
    :sswitch_6
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;->newBuilder()Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object v0

    .line 1951
    .local v0, subBuilder:Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 1952
    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->buildPartial()Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->addExtension(Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;)Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;

    goto :goto_0

    .line 1956
    .end local v0           #subBuilder:Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    :sswitch_7
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$MessageOptions;->newBuilder()Lcom/google/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object v0

    .line 1957
    .local v0, subBuilder:Lcom/google/protobuf/DescriptorProtos$MessageOptions$Builder;
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->hasOptions()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1958
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->getOptions()Lcom/google/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/protobuf/DescriptorProtos$MessageOptions$Builder;->mergeFrom(Lcom/google/protobuf/DescriptorProtos$MessageOptions;)Lcom/google/protobuf/DescriptorProtos$MessageOptions$Builder;

    .line 1960
    :cond_1
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 1961
    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$MessageOptions$Builder;->buildPartial()Lcom/google/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->setOptions(Lcom/google/protobuf/DescriptorProtos$MessageOptions;)Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;

    goto/16 :goto_0

    .line 1909
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

.method public mergeFrom(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;)Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 1859
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 1897
    :goto_0
    return-object p0

    .line 1860
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->hasName()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1861
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->setName(Ljava/lang/String;)Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;

    .line 1863
    :cond_1
    #getter for: Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->field_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$3600(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1864
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->field_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$3600(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1865
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->field_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$3602(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 1867
    :cond_2
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->field_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$3600(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->field_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$3600(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1869
    :cond_3
    #getter for: Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->extension_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$3700(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1870
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->extension_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$3700(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1871
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->extension_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$3702(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 1873
    :cond_4
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->extension_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$3700(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->extension_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$3700(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1875
    :cond_5
    #getter for: Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->nestedType_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$3800(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1876
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->nestedType_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$3800(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1877
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->nestedType_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$3802(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 1879
    :cond_6
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->nestedType_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$3800(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->nestedType_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$3800(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1881
    :cond_7
    #getter for: Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->enumType_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$3900(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1882
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->enumType_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$3900(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1883
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->enumType_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$3902(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 1885
    :cond_8
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->enumType_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$3900(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->enumType_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$3900(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1887
    :cond_9
    #getter for: Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->extensionRange_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$4000(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1888
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->extensionRange_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$4000(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1889
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->extensionRange_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$4002(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 1891
    :cond_a
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->extensionRange_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$4000(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->extensionRange_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$4000(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1893
    :cond_b
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->hasOptions()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1894
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->getOptions()Lcom/google/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->mergeOptions(Lcom/google/protobuf/DescriptorProtos$MessageOptions;)Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;

    .line 1896
    :cond_c
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto/16 :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 1850
    instance-of v0, p1, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    if-eqz v0, :cond_0

    .line 1851
    check-cast p1, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->mergeFrom(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;)Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;

    move-result-object p0

    .line 1854
    .end local p0
    :goto_0
    return-object p0

    .line 1853
    .restart local p0
    .restart local p1
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
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
    .line 1761
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1761
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;

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
    .line 1761
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeOptions(Lcom/google/protobuf/DescriptorProtos$MessageOptions;)Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 2266
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->hasOptions()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->options_:Lcom/google/protobuf/DescriptorProtos$MessageOptions;
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$4400(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;)Lcom/google/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$MessageOptions;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2268
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->options_:Lcom/google/protobuf/DescriptorProtos$MessageOptions;
    invoke-static {v1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$4400(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;)Lcom/google/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v1

    invoke-static {v1}, Lcom/google/protobuf/DescriptorProtos$MessageOptions;->newBuilder(Lcom/google/protobuf/DescriptorProtos$MessageOptions;)Lcom/google/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/protobuf/DescriptorProtos$MessageOptions$Builder;->mergeFrom(Lcom/google/protobuf/DescriptorProtos$MessageOptions;)Lcom/google/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/DescriptorProtos$MessageOptions$Builder;->buildPartial()Lcom/google/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v1

    #setter for: Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->options_:Lcom/google/protobuf/DescriptorProtos$MessageOptions;
    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$4402(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;Lcom/google/protobuf/DescriptorProtos$MessageOptions;)Lcom/google/protobuf/DescriptorProtos$MessageOptions;

    .line 2273
    :goto_0
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    const/4 v1, 0x1

    #setter for: Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->hasOptions:Z
    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$4302(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;Z)Z

    .line 2274
    return-object p0

    .line 2271
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    #setter for: Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->options_:Lcom/google/protobuf/DescriptorProtos$MessageOptions;
    invoke-static {v0, p1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$4402(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;Lcom/google/protobuf/DescriptorProtos$MessageOptions;)Lcom/google/protobuf/DescriptorProtos$MessageOptions;

    goto :goto_0
.end method

.method public setEnumType(ILcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;)Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 2161
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->enumType_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$3900(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->build()Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2162
    return-object p0
.end method

.method public setEnumType(ILcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;)Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 2154
    if-nez p2, :cond_0

    .line 2155
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2157
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->enumType_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$3900(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2158
    return-object p0
.end method

.method public setExtension(ILcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;)Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 2059
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->extension_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$3700(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->build()Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2060
    return-object p0
.end method

.method public setExtension(ILcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;)Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 2052
    if-nez p2, :cond_0

    .line 2053
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2055
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->extension_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$3700(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2056
    return-object p0
.end method

.method public setExtensionRange(ILcom/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;)Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 2212
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->extensionRange_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$4000(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->build()Lcom/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2213
    return-object p0
.end method

.method public setExtensionRange(ILcom/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;)Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 2205
    if-nez p2, :cond_0

    .line 2206
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2208
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->extensionRange_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$4000(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2209
    return-object p0
.end method

.method public setField(ILcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;)Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 2008
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->field_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$3600(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->build()Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2009
    return-object p0
.end method

.method public setField(ILcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;)Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 2001
    if-nez p2, :cond_0

    .line 2002
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2004
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->field_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$3600(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2005
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1977
    if-nez p1, :cond_0

    .line 1978
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1980
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    const/4 v1, 0x1

    #setter for: Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->hasName:Z
    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$4102(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;Z)Z

    .line 1981
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    #setter for: Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->name_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$4202(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;Ljava/lang/String;)Ljava/lang/String;

    .line 1982
    return-object p0
.end method

.method public setNestedType(ILcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;)Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 2110
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->nestedType_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$3800(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->build()Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2111
    return-object p0
.end method

.method public setNestedType(ILcom/google/protobuf/DescriptorProtos$DescriptorProto;)Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 2103
    if-nez p2, :cond_0

    .line 2104
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2106
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->nestedType_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$3800(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2107
    return-object p0
.end method

.method public setOptions(Lcom/google/protobuf/DescriptorProtos$MessageOptions$Builder;)Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 2261
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    const/4 v1, 0x1

    #setter for: Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->hasOptions:Z
    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$4302(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;Z)Z

    .line 2262
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$MessageOptions$Builder;->build()Lcom/google/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v1

    #setter for: Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->options_:Lcom/google/protobuf/DescriptorProtos$MessageOptions;
    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$4402(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;Lcom/google/protobuf/DescriptorProtos$MessageOptions;)Lcom/google/protobuf/DescriptorProtos$MessageOptions;

    .line 2263
    return-object p0
.end method

.method public setOptions(Lcom/google/protobuf/DescriptorProtos$MessageOptions;)Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 2253
    if-nez p1, :cond_0

    .line 2254
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2256
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    const/4 v1, 0x1

    #setter for: Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->hasOptions:Z
    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$4302(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;Z)Z

    .line 2257
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    #setter for: Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->options_:Lcom/google/protobuf/DescriptorProtos$MessageOptions;
    invoke-static {v0, p1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$4402(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;Lcom/google/protobuf/DescriptorProtos$MessageOptions;)Lcom/google/protobuf/DescriptorProtos$MessageOptions;

    .line 2258
    return-object p0
.end method

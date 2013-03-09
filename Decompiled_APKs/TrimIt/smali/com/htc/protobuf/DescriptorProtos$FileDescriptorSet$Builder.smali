.class public final Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "DescriptorProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;
    .locals 1

    .prologue
    .line 141
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->create()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;

    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 196
    :cond_0
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;
    .locals 3

    .prologue
    .line 149
    new-instance v0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;

    invoke-direct {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;-><init>()V

    .line 150
    .local v0, builder:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;
    new-instance v1, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;-><init>(Lcom/htc/protobuf/DescriptorProtos$1;)V

    iput-object v1, v0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;

    .line 151
    return-object v0
.end method


# virtual methods
.method public addAllFile(Ljava/lang/Iterable;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;",
            ">;)",
            "Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;"
        }
    .end annotation

    .prologue
    .line 306
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;>;"
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;->file_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;->access$500(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;->file_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;->access$502(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;Ljava/util/List;)Ljava/util/List;

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;->file_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;->access$500(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/htc/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 310
    return-object p0
.end method

.method public addFile(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 298
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;->file_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;->access$500(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;->file_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;->access$502(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;Ljava/util/List;)Ljava/util/List;

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;->file_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;->access$500(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->build()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    return-object p0
.end method

.method public addFile(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 288
    if-nez p1, :cond_0

    .line 289
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;->file_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;->access$500(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 292
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;->file_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;->access$502(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;Ljava/util/List;)Ljava/util/List;

    .line 294
    :cond_1
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;->file_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;->access$500(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    return-object p0
.end method

.method public build()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;

    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 187
    :cond_0
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->build()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->build()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;
    .locals 3

    .prologue
    .line 200
    iget-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;

    if-nez v1, :cond_0

    .line 201
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 204
    :cond_0
    iget-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;->file_:Ljava/util/List;
    invoke-static {v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;->access$500(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_1

    .line 205
    iget-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;

    iget-object v2, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;->file_:Ljava/util/List;
    invoke-static {v2}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;->access$500(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;->file_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;->access$502(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;Ljava/util/List;)Ljava/util/List;

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;

    .line 209
    .local v0, returnMe:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;

    .line 210
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->clear()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;

    if-nez v0, :cond_0

    .line 160
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :cond_0
    new-instance v0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;-><init>(Lcom/htc/protobuf/DescriptorProtos$1;)V

    iput-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;

    .line 164
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->clear()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->clear()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearFile()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;
    .locals 2

    .prologue
    .line 313
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;->file_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;->access$502(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;Ljava/util/List;)Ljava/util/List;

    .line 314
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;
    .locals 2

    .prologue
    .line 168
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->create()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;

    invoke-virtual {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->mergeFrom(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;

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
    .line 141
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;
    .locals 1

    .prologue
    .line 177
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;->getDefaultInstance()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->getDefaultInstanceForType()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->getDefaultInstanceForType()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 173
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getFile(I)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;
    .locals 1
    .parameter "index"

    .prologue
    .line 274
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;->getFile(I)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public getFileCount()I
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;->getFileCount()I

    move-result v0

    return v0
.end method

.method public getFileList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 268
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;->file_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;->access$500(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->internalGetResult()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;->isInitialized()Z

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
    .line 141
    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 141
    invoke-virtual {p0, p1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;

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
    .line 141
    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 242
    .local v2, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 243
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 248
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 250
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 251
    :goto_1
    return-object p0

    .line 245
    :sswitch_0
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 256
    :sswitch_1
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    move-result-object v0

    .line 257
    .local v0, subBuilder:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 258
    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->addFile(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;

    goto :goto_0

    .line 243
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 223
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;->getDefaultInstance()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 231
    :goto_0
    return-object p0

    .line 224
    :cond_0
    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;->file_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;->access$500(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 225
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;->file_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;->access$500(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 226
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;->file_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;->access$502(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;Ljava/util/List;)Ljava/util/List;

    .line 228
    :cond_1
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;->file_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;->access$500(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;->file_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;->access$500(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 230
    :cond_2
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 214
    instance-of v0, p1, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;

    if-eqz v0, :cond_0

    .line 215
    check-cast p1, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->mergeFrom(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;

    move-result-object p0

    .line 218
    .end local p0
    :goto_0
    return-object p0

    .line 217
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
    .line 141
    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 141
    invoke-virtual {p0, p1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;

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
    .line 141
    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setFile(ILcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 284
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;->file_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;->access$500(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->build()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 285
    return-object p0
.end method

.method public setFile(ILcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 277
    if-nez p2, :cond_0

    .line 278
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;->file_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;->access$500(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 281
    return-object p0
.end method

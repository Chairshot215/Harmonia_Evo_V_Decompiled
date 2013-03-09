.class public Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage$ExtensionWriter;
.super Ljava/lang/Object;
.source "GeneratedMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ExtensionWriter"
.end annotation


# instance fields
.field private final iter:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Lcom/htc/protobuf/Descriptors$FieldDescriptor;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final messageSetWireFormat:Z

.field private next:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry",
            "<",
            "Lcom/htc/protobuf/Descriptors$FieldDescriptor;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;


# direct methods
.method private constructor <init>(Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;Z)V
    .locals 1
    .parameter
    .parameter "messageSetWireFormat"

    .prologue
    .line 402
    .local p0, this:Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage$ExtensionWriter;,"Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage<TMessageType;>.ExtensionWriter;"
    iput-object p1, p0, Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage$ExtensionWriter;->this$0:Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 397
    iget-object v0, p0, Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage$ExtensionWriter;->this$0:Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;

    #getter for: Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;->extensions:Lcom/htc/protobuf/FieldSet;
    invoke-static {v0}, Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;->access$500(Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;)Lcom/htc/protobuf/FieldSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/FieldSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage$ExtensionWriter;->iter:Ljava/util/Iterator;

    .line 403
    iget-object v0, p0, Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage$ExtensionWriter;->iter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage$ExtensionWriter;->iter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iput-object v0, p0, Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage$ExtensionWriter;->next:Ljava/util/Map$Entry;

    .line 406
    :cond_0
    iput-boolean p2, p0, Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage$ExtensionWriter;->messageSetWireFormat:Z

    .line 407
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;ZLcom/htc/protobuf/GeneratedMessage$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 393
    .local p0, this:Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage$ExtensionWriter;,"Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage<TMessageType;>.ExtensionWriter;"
    invoke-direct {p0, p1, p2}, Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage$ExtensionWriter;-><init>(Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;Z)V

    return-void
.end method


# virtual methods
.method public writeUntil(ILcom/htc/protobuf/CodedOutputStream;)V
    .locals 3
    .parameter "end"
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 411
    .local p0, this:Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage$ExtensionWriter;,"Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage<TMessageType;>.ExtensionWriter;"
    :goto_0
    iget-object v1, p0, Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage$ExtensionWriter;->next:Ljava/util/Map$Entry;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage$ExtensionWriter;->next:Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {v1}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->getNumber()I

    move-result v1

    if-ge v1, p1, :cond_2

    .line 412
    iget-object v1, p0, Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage$ExtensionWriter;->next:Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;

    .line 413
    .local v0, descriptor:Lcom/htc/protobuf/Descriptors$FieldDescriptor;
    iget-boolean v1, p0, Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage$ExtensionWriter;->messageSetWireFormat:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->getLiteJavaType()Lcom/htc/protobuf/WireFormat$JavaType;

    move-result-object v1

    sget-object v2, Lcom/htc/protobuf/WireFormat$JavaType;->MESSAGE:Lcom/htc/protobuf/WireFormat$JavaType;

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v1

    if-nez v1, :cond_0

    .line 416
    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->getNumber()I

    move-result v2

    iget-object v1, p0, Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage$ExtensionWriter;->next:Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/protobuf/Message;

    invoke-virtual {p2, v2, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessageSetExtension(ILcom/htc/protobuf/MessageLite;)V

    .line 421
    :goto_1
    iget-object v1, p0, Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage$ExtensionWriter;->iter:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 422
    iget-object v1, p0, Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage$ExtensionWriter;->iter:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    iput-object v1, p0, Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage$ExtensionWriter;->next:Ljava/util/Map$Entry;

    goto :goto_0

    .line 419
    :cond_0
    iget-object v1, p0, Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage$ExtensionWriter;->next:Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/htc/protobuf/FieldSet;->writeField(Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;Lcom/htc/protobuf/CodedOutputStream;)V

    goto :goto_1

    .line 424
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage$ExtensionWriter;->next:Ljava/util/Map$Entry;

    goto :goto_0

    .line 427
    .end local v0           #descriptor:Lcom/htc/protobuf/Descriptors$FieldDescriptor;
    :cond_2
    return-void
.end method

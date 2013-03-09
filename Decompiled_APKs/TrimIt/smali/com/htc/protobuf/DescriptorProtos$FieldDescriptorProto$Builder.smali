.class public final Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "DescriptorProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2616
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$4700(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;)Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2611
    invoke-direct {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4800()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    .locals 1

    .prologue
    .line 2611
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->create()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2662
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2663
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 2666
    :cond_0
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    .locals 3

    .prologue
    .line 2619
    new-instance v0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    invoke-direct {v0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;-><init>()V

    .line 2620
    .local v0, builder:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    new-instance v1, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;-><init>(Lcom/htc/protobuf/DescriptorProtos$1;)V

    iput-object v1, v0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    .line 2621
    return-object v0
.end method


# virtual methods
.method public build()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;
    .locals 1

    .prologue
    .line 2654
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2655
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 2657
    :cond_0
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 2611
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->build()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2611
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->build()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;
    .locals 3

    .prologue
    .line 2670
    iget-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    if-nez v1, :cond_0

    .line 2671
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2674
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    .line 2675
    .local v0, returnMe:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    .line 2676
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 2611
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2611
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 2611
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->clear()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    .locals 2

    .prologue
    .line 2629
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    if-nez v0, :cond_0

    .line 2630
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2633
    :cond_0
    new-instance v0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;-><init>(Lcom/htc/protobuf/DescriptorProtos$1;)V

    iput-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    .line 2634
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2611
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->clear()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2611
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->clear()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearDefaultValue()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    .locals 2

    .prologue
    .line 2932
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    const/4 v1, 0x0

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->hasDefaultValue:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->access$6202(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;Z)Z

    .line 2933
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->getDefaultInstance()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->getDefaultValue()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->defaultValue_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->access$6302(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;Ljava/lang/String;)Ljava/lang/String;

    .line 2934
    return-object p0
.end method

.method public clearExtendee()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    .locals 2

    .prologue
    .line 2911
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    const/4 v1, 0x0

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->hasExtendee:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->access$6002(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;Z)Z

    .line 2912
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->getDefaultInstance()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->getExtendee()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->extendee_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->access$6102(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;Ljava/lang/String;)Ljava/lang/String;

    .line 2913
    return-object p0
.end method

.method public clearLabel()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    .locals 2

    .prologue
    .line 2848
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    const/4 v1, 0x0

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->hasLabel:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->access$5402(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;Z)Z

    .line 2849
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    sget-object v1, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Label;->LABEL_OPTIONAL:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->label_:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Label;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->access$5502(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Label;)Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    .line 2850
    return-object p0
.end method

.method public clearName()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    .locals 2

    .prologue
    .line 2809
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    const/4 v1, 0x0

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->hasName:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->access$5002(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;Z)Z

    .line 2810
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->getDefaultInstance()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->getName()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->name_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->access$5102(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;Ljava/lang/String;)Ljava/lang/String;

    .line 2811
    return-object p0
.end method

.method public clearNumber()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2827
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->hasNumber:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->access$5202(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;Z)Z

    .line 2828
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->number_:I
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->access$5302(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;I)I

    .line 2829
    return-object p0
.end method

.method public clearOptions()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    .locals 2

    .prologue
    .line 2969
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    const/4 v1, 0x0

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->hasOptions:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->access$6402(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;Z)Z

    .line 2970
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->getDefaultInstance()Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->options_:Lcom/htc/protobuf/DescriptorProtos$FieldOptions;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->access$6502(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;Lcom/htc/protobuf/DescriptorProtos$FieldOptions;)Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    .line 2971
    return-object p0
.end method

.method public clearType()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    .locals 2

    .prologue
    .line 2869
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    const/4 v1, 0x0

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->hasType:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->access$5602(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;Z)Z

    .line 2870
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    sget-object v1, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_DOUBLE:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->type_:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->access$5702(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;)Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    .line 2871
    return-object p0
.end method

.method public clearTypeName()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    .locals 2

    .prologue
    .line 2890
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    const/4 v1, 0x0

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->hasTypeName:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->access$5802(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;Z)Z

    .line 2891
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->getDefaultInstance()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->getTypeName()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->typeName_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->access$5902(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;Ljava/lang/String;)Ljava/lang/String;

    .line 2892
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 2611
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 2611
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    .locals 2

    .prologue
    .line 2638
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->create()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->mergeFrom(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 2611
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2611
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2611
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

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
    .line 2611
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;
    .locals 1

    .prologue
    .line 2647
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->getDefaultInstance()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 2611
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->getDefaultInstanceForType()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2611
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->getDefaultInstanceForType()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2921
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 2643
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getExtendee()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2900
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->getExtendee()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLabel()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Label;
    .locals 1

    .prologue
    .line 2837
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->getLabel()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2798
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNumber()I
    .locals 1

    .prologue
    .line 2819
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->getNumber()I

    move-result v0

    return v0
.end method

.method public getOptions()Lcom/htc/protobuf/DescriptorProtos$FieldOptions;
    .locals 1

    .prologue
    .line 2942
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->getOptions()Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;
    .locals 1

    .prologue
    .line 2858
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->getType()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    move-result-object v0

    return-object v0
.end method

.method public getTypeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2879
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->getTypeName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasDefaultValue()Z
    .locals 1

    .prologue
    .line 2918
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->hasDefaultValue()Z

    move-result v0

    return v0
.end method

.method public hasExtendee()Z
    .locals 1

    .prologue
    .line 2897
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->hasExtendee()Z

    move-result v0

    return v0
.end method

.method public hasLabel()Z
    .locals 1

    .prologue
    .line 2834
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->hasLabel()Z

    move-result v0

    return v0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 2795
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->hasName()Z

    move-result v0

    return v0
.end method

.method public hasNumber()Z
    .locals 1

    .prologue
    .line 2816
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->hasNumber()Z

    move-result v0

    return v0
.end method

.method public hasOptions()Z
    .locals 1

    .prologue
    .line 2939
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->hasOptions()Z

    move-result v0

    return v0
.end method

.method public hasType()Z
    .locals 1

    .prologue
    .line 2855
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->hasType()Z

    move-result v0

    return v0
.end method

.method public hasTypeName()Z
    .locals 1

    .prologue
    .line 2876
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->hasTypeName()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;
    .locals 1

    .prologue
    .line 2625
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 2611
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->internalGetResult()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 2651
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->isInitialized()Z

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
    .line 2611
    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2611
    invoke-virtual {p0, p1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

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
    .line 2611
    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    .locals 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2722
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v3

    .line 2726
    .local v3, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 2727
    .local v2, tag:I
    sparse-switch v2, :sswitch_data_0

    .line 2732
    invoke-virtual {p0, p1, v3, p2, v2}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2734
    invoke-virtual {v3}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 2735
    :goto_1
    return-object p0

    .line 2729
    :sswitch_0
    invoke-virtual {v3}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 2740
    :sswitch_1
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->setName(Ljava/lang/String;)Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    goto :goto_0

    .line 2744
    :sswitch_2
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->setExtendee(Ljava/lang/String;)Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    goto :goto_0

    .line 2748
    :sswitch_3
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt32()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->setNumber(I)Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    goto :goto_0

    .line 2752
    :sswitch_4
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 2753
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Label;->valueOf(I)Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    move-result-object v4

    .line 2754
    .local v4, value:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Label;
    if-nez v4, :cond_1

    .line 2755
    const/4 v5, 0x4

    invoke-virtual {v3, v5, v0}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    goto :goto_0

    .line 2757
    :cond_1
    invoke-virtual {p0, v4}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->setLabel(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Label;)Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    goto :goto_0

    .line 2762
    .end local v0           #rawValue:I
    .end local v4           #value:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Label;
    :sswitch_5
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 2763
    .restart local v0       #rawValue:I
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->valueOf(I)Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    move-result-object v4

    .line 2764
    .local v4, value:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;
    if-nez v4, :cond_2

    .line 2765
    const/4 v5, 0x5

    invoke-virtual {v3, v5, v0}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    goto :goto_0

    .line 2767
    :cond_2
    invoke-virtual {p0, v4}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->setType(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;)Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    goto :goto_0

    .line 2772
    .end local v0           #rawValue:I
    .end local v4           #value:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;
    :sswitch_6
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->setTypeName(Ljava/lang/String;)Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    goto :goto_0

    .line 2776
    :sswitch_7
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->setDefaultValue(Ljava/lang/String;)Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    goto :goto_0

    .line 2780
    :sswitch_8
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object v1

    .line 2781
    .local v1, subBuilder:Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->hasOptions()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2782
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->getOptions()Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->mergeFrom(Lcom/htc/protobuf/DescriptorProtos$FieldOptions;)Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;

    .line 2784
    :cond_3
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 2785
    invoke-virtual {v1}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->setOptions(Lcom/htc/protobuf/DescriptorProtos$FieldOptions;)Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    goto/16 :goto_0

    .line 2727
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 2689
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->getDefaultInstance()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 2715
    :goto_0
    return-object p0

    .line 2690
    :cond_0
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->hasName()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2691
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->setName(Ljava/lang/String;)Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    .line 2693
    :cond_1
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->hasNumber()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2694
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->getNumber()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->setNumber(I)Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    .line 2696
    :cond_2
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->hasLabel()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2697
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->getLabel()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->setLabel(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Label;)Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    .line 2699
    :cond_3
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->hasType()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2700
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->getType()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->setType(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;)Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    .line 2702
    :cond_4
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->hasTypeName()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2703
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->getTypeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->setTypeName(Ljava/lang/String;)Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    .line 2705
    :cond_5
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->hasExtendee()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2706
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->getExtendee()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->setExtendee(Ljava/lang/String;)Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    .line 2708
    :cond_6
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->hasDefaultValue()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2709
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->setDefaultValue(Ljava/lang/String;)Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    .line 2711
    :cond_7
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->hasOptions()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2712
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->getOptions()Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->mergeOptions(Lcom/htc/protobuf/DescriptorProtos$FieldOptions;)Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    .line 2714
    :cond_8
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 2680
    instance-of v0, p1, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    if-eqz v0, :cond_0

    .line 2681
    check-cast p1, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->mergeFrom(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object p0

    .line 2684
    .end local p0
    :goto_0
    return-object p0

    .line 2683
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
    .line 2611
    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2611
    invoke-virtual {p0, p1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

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
    .line 2611
    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeOptions(Lcom/htc/protobuf/DescriptorProtos$FieldOptions;)Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 2958
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->hasOptions()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->options_:Lcom/htc/protobuf/DescriptorProtos$FieldOptions;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->access$6500(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->getDefaultInstance()Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2960
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    iget-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->options_:Lcom/htc/protobuf/DescriptorProtos$FieldOptions;
    invoke-static {v1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->access$6500(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->newBuilder(Lcom/htc/protobuf/DescriptorProtos$FieldOptions;)Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->mergeFrom(Lcom/htc/protobuf/DescriptorProtos$FieldOptions;)Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->options_:Lcom/htc/protobuf/DescriptorProtos$FieldOptions;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->access$6502(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;Lcom/htc/protobuf/DescriptorProtos$FieldOptions;)Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    .line 2965
    :goto_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    const/4 v1, 0x1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->hasOptions:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->access$6402(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;Z)Z

    .line 2966
    return-object p0

    .line 2963
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->options_:Lcom/htc/protobuf/DescriptorProtos$FieldOptions;
    invoke-static {v0, p1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->access$6502(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;Lcom/htc/protobuf/DescriptorProtos$FieldOptions;)Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    goto :goto_0
.end method

.method public setDefaultValue(Ljava/lang/String;)Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 2924
    if-nez p1, :cond_0

    .line 2925
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2927
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    const/4 v1, 0x1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->hasDefaultValue:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->access$6202(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;Z)Z

    .line 2928
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->defaultValue_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->access$6302(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;Ljava/lang/String;)Ljava/lang/String;

    .line 2929
    return-object p0
.end method

.method public setExtendee(Ljava/lang/String;)Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 2903
    if-nez p1, :cond_0

    .line 2904
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2906
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    const/4 v1, 0x1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->hasExtendee:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->access$6002(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;Z)Z

    .line 2907
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->extendee_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->access$6102(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;Ljava/lang/String;)Ljava/lang/String;

    .line 2908
    return-object p0
.end method

.method public setLabel(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Label;)Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 2840
    if-nez p1, :cond_0

    .line 2841
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2843
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    const/4 v1, 0x1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->hasLabel:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->access$5402(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;Z)Z

    .line 2844
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->label_:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Label;
    invoke-static {v0, p1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->access$5502(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Label;)Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    .line 2845
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 2801
    if-nez p1, :cond_0

    .line 2802
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2804
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    const/4 v1, 0x1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->hasName:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->access$5002(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;Z)Z

    .line 2805
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->name_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->access$5102(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;Ljava/lang/String;)Ljava/lang/String;

    .line 2806
    return-object p0
.end method

.method public setNumber(I)Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 2822
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    const/4 v1, 0x1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->hasNumber:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->access$5202(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;Z)Z

    .line 2823
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->number_:I
    invoke-static {v0, p1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->access$5302(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;I)I

    .line 2824
    return-object p0
.end method

.method public setOptions(Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;)Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 2953
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    const/4 v1, 0x1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->hasOptions:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->access$6402(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;Z)Z

    .line 2954
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->build()Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->options_:Lcom/htc/protobuf/DescriptorProtos$FieldOptions;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->access$6502(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;Lcom/htc/protobuf/DescriptorProtos$FieldOptions;)Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    .line 2955
    return-object p0
.end method

.method public setOptions(Lcom/htc/protobuf/DescriptorProtos$FieldOptions;)Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 2945
    if-nez p1, :cond_0

    .line 2946
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2948
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    const/4 v1, 0x1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->hasOptions:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->access$6402(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;Z)Z

    .line 2949
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->options_:Lcom/htc/protobuf/DescriptorProtos$FieldOptions;
    invoke-static {v0, p1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->access$6502(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;Lcom/htc/protobuf/DescriptorProtos$FieldOptions;)Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    .line 2950
    return-object p0
.end method

.method public setType(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;)Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 2861
    if-nez p1, :cond_0

    .line 2862
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2864
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    const/4 v1, 0x1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->hasType:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->access$5602(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;Z)Z

    .line 2865
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->type_:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;
    invoke-static {v0, p1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->access$5702(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;)Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    .line 2866
    return-object p0
.end method

.method public setTypeName(Ljava/lang/String;)Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 2882
    if-nez p1, :cond_0

    .line 2883
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2885
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    const/4 v1, 0x1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->hasTypeName:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->access$5802(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;Z)Z

    .line 2886
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->typeName_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->access$5902(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;Ljava/lang/String;)Ljava/lang/String;

    .line 2887
    return-object p0
.end method

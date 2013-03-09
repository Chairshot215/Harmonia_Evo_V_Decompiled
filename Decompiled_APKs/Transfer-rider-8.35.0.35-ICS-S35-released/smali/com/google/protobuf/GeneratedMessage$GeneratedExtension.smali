.class public final Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;
.super Ljava/lang/Object;
.source "GeneratedMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/GeneratedMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GeneratedExtension"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ContainingType::",
        "Lcom/google/protobuf/Message;",
        "Type:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private descriptor:Lcom/google/protobuf/Descriptors$FieldDescriptor;

.field private enumGetValueDescriptor:Ljava/lang/reflect/Method;

.field private enumValueOf:Ljava/lang/reflect/Method;

.field private messageDefaultInstance:Lcom/google/protobuf/Message;

.field private type:Ljava/lang/Class;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 769
    .local p0, this:Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;,"Lcom/google/protobuf/GeneratedMessage$GeneratedExtension<TContainingType;TType;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 756
    .local p0, this:Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;,"Lcom/google/protobuf/GeneratedMessage$GeneratedExtension<TContainingType;TType;>;"
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 756
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;->singularToReflectionType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 756
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;->fromReflectionType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 756
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;->singularFromReflectionType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 756
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;->toReflectionType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private fromReflectionType(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .parameter "value"

    .prologue
    .line 837
    .local p0, this:Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;,"Lcom/google/protobuf/GeneratedMessage$GeneratedExtension<TContainingType;TType;>;"
    iget-object v3, p0, Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;->descriptor:Lcom/google/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {v3}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 838
    iget-object v3, p0, Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;->descriptor:Lcom/google/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {v3}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v3

    sget-object v4, Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;->descriptor:Lcom/google/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {v3}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v3

    sget-object v4, Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;->ENUM:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v3, v4, :cond_2

    .line 841
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 842
    .local v2, result:Ljava/util/List;
    check-cast p1, Ljava/util/List;

    .end local p1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 843
    .local v0, element:Ljava/lang/Object;
    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;->singularFromReflectionType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v0           #element:Ljava/lang/Object;
    :cond_1
    move-object p1, v2

    .line 850
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #result:Ljava/util/List;
    :cond_2
    :goto_1
    return-object p1

    .restart local p1
    :cond_3
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;->singularFromReflectionType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_1
.end method

.method private singularFromReflectionType(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter "value"

    .prologue
    .line 859
    .local p0, this:Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;,"Lcom/google/protobuf/GeneratedMessage$GeneratedExtension<TContainingType;TType;>;"
    sget-object v0, Lcom/google/protobuf/GeneratedMessage$1;->$SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$JavaType:[I

    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;->descriptor:Lcom/google/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 876
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 861
    .restart local p1
    :pswitch_0
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;->type:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 870
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;->messageDefaultInstance:Lcom/google/protobuf/Message;

    invoke-interface {v0}, Lcom/google/protobuf/Message;->newBuilderForType()Lcom/google/protobuf/Message$Builder;

    move-result-object v0

    check-cast p1, Lcom/google/protobuf/Message;

    .end local p1
    invoke-interface {v0, p1}, Lcom/google/protobuf/Message$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/Message$Builder;->build()Lcom/google/protobuf/Message;

    move-result-object p1

    goto :goto_0

    .line 874
    .restart local p1
    :pswitch_1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;->enumValueOf:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    check-cast p1, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    .end local p1
    aput-object p1, v2, v3

    #calls: Lcom/google/protobuf/GeneratedMessage;->invokeOrDie(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    invoke-static {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage;->access$1400(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 859
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private singularToReflectionType(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "value"

    .prologue
    .line 909
    .local p0, this:Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;,"Lcom/google/protobuf/GeneratedMessage$GeneratedExtension<TContainingType;TType;>;"
    sget-object v0, Lcom/google/protobuf/GeneratedMessage$1;->$SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$JavaType:[I

    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;->descriptor:Lcom/google/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 913
    .end local p1
    :goto_0
    return-object p1

    .line 911
    .restart local p1
    :pswitch_0
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;->enumGetValueDescriptor:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    #calls: Lcom/google/protobuf/GeneratedMessage;->invokeOrDie(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    invoke-static {v0, p1, v1}, Lcom/google/protobuf/GeneratedMessage;->access$1400(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 909
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private toReflectionType(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .parameter "value"

    .prologue
    .line 888
    .local p0, this:Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;,"Lcom/google/protobuf/GeneratedMessage$GeneratedExtension<TContainingType;TType;>;"
    iget-object v3, p0, Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;->descriptor:Lcom/google/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {v3}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 889
    iget-object v3, p0, Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;->descriptor:Lcom/google/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {v3}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v3

    sget-object v4, Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;->ENUM:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v3, v4, :cond_0

    .line 891
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 892
    .local v2, result:Ljava/util/List;
    check-cast p1, Ljava/util/List;

    .end local p1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 893
    .local v0, element:Ljava/lang/Object;
    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;->singularToReflectionType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v0           #element:Ljava/lang/Object;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #result:Ljava/util/List;
    .restart local p1
    :cond_0
    move-object v2, p1

    .line 900
    .end local p1
    :cond_1
    :goto_1
    return-object v2

    .restart local p1
    :cond_2
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;->singularToReflectionType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1
.end method


# virtual methods
.method public getDescriptor()Lcom/google/protobuf/Descriptors$FieldDescriptor;
    .locals 1

    .prologue
    .line 818
    .local p0, this:Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;,"Lcom/google/protobuf/GeneratedMessage$GeneratedExtension<TContainingType;TType;>;"
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;->descriptor:Lcom/google/protobuf/Descriptors$FieldDescriptor;

    return-object v0
.end method

.method public getMessageDefaultInstance()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 826
    .local p0, this:Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;,"Lcom/google/protobuf/GeneratedMessage$GeneratedExtension<TContainingType;TType;>;"
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;->messageDefaultInstance:Lcom/google/protobuf/Message;

    return-object v0
.end method

.method public internalInit(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Class;)V
    .locals 5
    .parameter "descriptor"
    .parameter "type"

    .prologue
    .local p0, this:Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;,"Lcom/google/protobuf/GeneratedMessage$GeneratedExtension<TContainingType;TType;>;"
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 774
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;->descriptor:Lcom/google/protobuf/Descriptors$FieldDescriptor;

    if-eqz v0, :cond_0

    .line 775
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already initialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 778
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isExtension()Z

    move-result v0

    if-nez v0, :cond_1

    .line 779
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "GeneratedExtension given a regular (non-extension) field."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 783
    :cond_1
    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;->descriptor:Lcom/google/protobuf/Descriptors$FieldDescriptor;

    .line 784
    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;->type:Ljava/lang/Class;

    .line 786
    sget-object v0, Lcom/google/protobuf/GeneratedMessage$1;->$SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$JavaType:[I

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 805
    iput-object v3, p0, Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;->enumValueOf:Ljava/lang/reflect/Method;

    .line 806
    iput-object v3, p0, Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;->enumGetValueDescriptor:Ljava/lang/reflect/Method;

    .line 807
    iput-object v3, p0, Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;->messageDefaultInstance:Lcom/google/protobuf/Message;

    .line 810
    :cond_2
    :goto_0
    return-void

    .line 788
    :pswitch_0
    iput-object v3, p0, Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;->enumValueOf:Ljava/lang/reflect/Method;

    .line 789
    iput-object v3, p0, Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;->enumGetValueDescriptor:Ljava/lang/reflect/Method;

    .line 790
    const-string v0, "getDefaultInstance"

    new-array v1, v4, [Ljava/lang/Class;

    #calls: Lcom/google/protobuf/GeneratedMessage;->getMethodOrDie(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    invoke-static {p2, v0, v1}, Lcom/google/protobuf/GeneratedMessage;->access$1300(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    #calls: Lcom/google/protobuf/GeneratedMessage;->invokeOrDie(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    invoke-static {v0, v3, v1}, Lcom/google/protobuf/GeneratedMessage;->access$1400(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Message;

    iput-object v0, p0, Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;->messageDefaultInstance:Lcom/google/protobuf/Message;

    .line 793
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;->messageDefaultInstance:Lcom/google/protobuf/Message;

    if-nez v0, :cond_2

    .line 794
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".getDefaultInstance() returned null."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 799
    :pswitch_1
    const-string v0, "valueOf"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    aput-object v2, v1, v4

    #calls: Lcom/google/protobuf/GeneratedMessage;->getMethodOrDie(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    invoke-static {p2, v0, v1}, Lcom/google/protobuf/GeneratedMessage;->access$1300(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;->enumValueOf:Ljava/lang/reflect/Method;

    .line 801
    const-string v0, "getValueDescriptor"

    new-array v1, v4, [Ljava/lang/Class;

    #calls: Lcom/google/protobuf/GeneratedMessage;->getMethodOrDie(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    invoke-static {p2, v0, v1}, Lcom/google/protobuf/GeneratedMessage;->access$1300(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;->enumGetValueDescriptor:Ljava/lang/reflect/Method;

    .line 802
    iput-object v3, p0, Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;->messageDefaultInstance:Lcom/google/protobuf/Message;

    goto :goto_0

    .line 786
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.class public final Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension;
.super Ljava/lang/Object;
.source "GeneratedMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/protobuf/GeneratedMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GeneratedExtension"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ContainingType::",
        "Lcom/htc/protobuf/Message;",
        "Type:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final descriptor:Lcom/htc/protobuf/Descriptors$FieldDescriptor;

.field private final enumGetValueDescriptor:Ljava/lang/reflect/Method;

.field private final enumValueOf:Ljava/lang/reflect/Method;

.field private final messageDefaultInstance:Lcom/htc/protobuf/Message;

.field private final type:Ljava/lang/Class;


# direct methods
.method private constructor <init>(Lcom/htc/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Class;)V
    .locals 5
    .parameter "descriptor"
    .parameter "type"

    .prologue
    .local p0, this:Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension;,"Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension<TContainingType;TType;>;"
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 776
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 777
    invoke-virtual {p1}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->isExtension()Z

    move-result v0

    if-nez v0, :cond_0

    .line 778
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "GeneratedExtension given a regular (non-extension) field."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 782
    :cond_0
    iput-object p1, p0, Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension;->descriptor:Lcom/htc/protobuf/Descriptors$FieldDescriptor;

    .line 783
    iput-object p2, p0, Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension;->type:Ljava/lang/Class;

    .line 785
    sget-object v0, Lcom/htc/protobuf/GeneratedMessage$1;->$SwitchMap$com$htc$protobuf$Descriptors$FieldDescriptor$JavaType:[I

    invoke-virtual {p1}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 800
    iput-object v3, p0, Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension;->enumValueOf:Ljava/lang/reflect/Method;

    .line 801
    iput-object v3, p0, Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension;->enumGetValueDescriptor:Ljava/lang/reflect/Method;

    .line 802
    iput-object v3, p0, Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension;->messageDefaultInstance:Lcom/htc/protobuf/Message;

    .line 805
    :goto_0
    return-void

    .line 787
    :pswitch_0
    iput-object v3, p0, Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension;->enumValueOf:Ljava/lang/reflect/Method;

    .line 788
    iput-object v3, p0, Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension;->enumGetValueDescriptor:Ljava/lang/reflect/Method;

    .line 789
    const-string v0, "getDefaultInstance"

    new-array v1, v4, [Ljava/lang/Class;

    #calls: Lcom/htc/protobuf/GeneratedMessage;->getMethodOrDie(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    invoke-static {p2, v0, v1}, Lcom/htc/protobuf/GeneratedMessage;->access$1300(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    #calls: Lcom/htc/protobuf/GeneratedMessage;->invokeOrDie(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    invoke-static {v0, v3, v1}, Lcom/htc/protobuf/GeneratedMessage;->access$1400(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Message;

    iput-object v0, p0, Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension;->messageDefaultInstance:Lcom/htc/protobuf/Message;

    goto :goto_0

    .line 794
    :pswitch_1
    const-string v0, "valueOf"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;

    aput-object v2, v1, v4

    #calls: Lcom/htc/protobuf/GeneratedMessage;->getMethodOrDie(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    invoke-static {p2, v0, v1}, Lcom/htc/protobuf/GeneratedMessage;->access$1300(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension;->enumValueOf:Ljava/lang/reflect/Method;

    .line 796
    const-string v0, "getValueDescriptor"

    new-array v1, v4, [Ljava/lang/Class;

    #calls: Lcom/htc/protobuf/GeneratedMessage;->getMethodOrDie(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    invoke-static {p2, v0, v1}, Lcom/htc/protobuf/GeneratedMessage;->access$1300(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension;->enumGetValueDescriptor:Ljava/lang/reflect/Method;

    .line 797
    iput-object v3, p0, Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension;->messageDefaultInstance:Lcom/htc/protobuf/Message;

    goto :goto_0

    .line 785
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method synthetic constructor <init>(Lcom/htc/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Class;Lcom/htc/protobuf/GeneratedMessage$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 770
    .local p0, this:Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension;,"Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension<TContainingType;TType;>;"
    invoke-direct {p0, p1, p2}, Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension;-><init>(Lcom/htc/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Class;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 770
    invoke-direct {p0, p1}, Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension;->singularToReflectionType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 770
    invoke-direct {p0, p1}, Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension;->fromReflectionType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 770
    invoke-direct {p0, p1}, Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension;->singularFromReflectionType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 770
    invoke-direct {p0, p1}, Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension;->toReflectionType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private fromReflectionType(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .parameter "value"

    .prologue
    .line 832
    .local p0, this:Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension;,"Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension<TContainingType;TType;>;"
    iget-object v3, p0, Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension;->descriptor:Lcom/htc/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {v3}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 833
    iget-object v3, p0, Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension;->descriptor:Lcom/htc/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {v3}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v3

    sget-object v4, Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension;->descriptor:Lcom/htc/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {v3}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v3

    sget-object v4, Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;->ENUM:Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v3, v4, :cond_2

    .line 836
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 837
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

    .line 838
    .local v0, element:Ljava/lang/Object;
    invoke-direct {p0, v0}, Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension;->singularFromReflectionType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v0           #element:Ljava/lang/Object;
    :cond_1
    move-object p1, v2

    .line 845
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #result:Ljava/util/List;
    :cond_2
    :goto_1
    return-object p1

    .restart local p1
    :cond_3
    invoke-direct {p0, p1}, Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension;->singularFromReflectionType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_1
.end method

.method private singularFromReflectionType(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter "value"

    .prologue
    .line 854
    .local p0, this:Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension;,"Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension<TContainingType;TType;>;"
    sget-object v0, Lcom/htc/protobuf/GeneratedMessage$1;->$SwitchMap$com$htc$protobuf$Descriptors$FieldDescriptor$JavaType:[I

    iget-object v1, p0, Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension;->descriptor:Lcom/htc/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {v1}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 871
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 856
    .restart local p1
    :pswitch_0
    iget-object v0, p0, Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension;->type:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 865
    iget-object v0, p0, Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension;->messageDefaultInstance:Lcom/htc/protobuf/Message;

    invoke-interface {v0}, Lcom/htc/protobuf/Message;->newBuilderForType()Lcom/htc/protobuf/Message$Builder;

    move-result-object v0

    check-cast p1, Lcom/htc/protobuf/Message;

    .end local p1
    invoke-interface {v0, p1}, Lcom/htc/protobuf/Message$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/protobuf/Message$Builder;->build()Lcom/htc/protobuf/Message;

    move-result-object p1

    goto :goto_0

    .line 869
    .restart local p1
    :pswitch_1
    iget-object v0, p0, Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension;->enumValueOf:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    check-cast p1, Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;

    .end local p1
    aput-object p1, v2, v3

    #calls: Lcom/htc/protobuf/GeneratedMessage;->invokeOrDie(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    invoke-static {v0, v1, v2}, Lcom/htc/protobuf/GeneratedMessage;->access$1400(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 854
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
    .line 904
    .local p0, this:Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension;,"Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension<TContainingType;TType;>;"
    sget-object v0, Lcom/htc/protobuf/GeneratedMessage$1;->$SwitchMap$com$htc$protobuf$Descriptors$FieldDescriptor$JavaType:[I

    iget-object v1, p0, Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension;->descriptor:Lcom/htc/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {v1}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 908
    .end local p1
    :goto_0
    return-object p1

    .line 906
    .restart local p1
    :pswitch_0
    iget-object v0, p0, Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension;->enumGetValueDescriptor:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    #calls: Lcom/htc/protobuf/GeneratedMessage;->invokeOrDie(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    invoke-static {v0, p1, v1}, Lcom/htc/protobuf/GeneratedMessage;->access$1400(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 904
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private toReflectionType(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .parameter "value"

    .prologue
    .line 883
    .local p0, this:Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension;,"Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension<TContainingType;TType;>;"
    iget-object v3, p0, Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension;->descriptor:Lcom/htc/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {v3}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 884
    iget-object v3, p0, Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension;->descriptor:Lcom/htc/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {v3}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v3

    sget-object v4, Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;->ENUM:Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v3, v4, :cond_0

    .line 886
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 887
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

    .line 888
    .local v0, element:Ljava/lang/Object;
    invoke-direct {p0, v0}, Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension;->singularToReflectionType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v0           #element:Ljava/lang/Object;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #result:Ljava/util/List;
    .restart local p1
    :cond_0
    move-object v2, p1

    .line 895
    .end local p1
    :cond_1
    :goto_1
    return-object v2

    .restart local p1
    :cond_2
    invoke-direct {p0, p1}, Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension;->singularToReflectionType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1
.end method


# virtual methods
.method public getDescriptor()Lcom/htc/protobuf/Descriptors$FieldDescriptor;
    .locals 1

    .prologue
    .line 813
    .local p0, this:Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension;,"Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension<TContainingType;TType;>;"
    iget-object v0, p0, Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension;->descriptor:Lcom/htc/protobuf/Descriptors$FieldDescriptor;

    return-object v0
.end method

.method public getMessageDefaultInstance()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 821
    .local p0, this:Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension;,"Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension<TContainingType;TType;>;"
    iget-object v0, p0, Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension;->messageDefaultInstance:Lcom/htc/protobuf/Message;

    return-object v0
.end method

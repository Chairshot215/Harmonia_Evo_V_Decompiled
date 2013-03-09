.class public abstract Lcom/htc/protobuf/GeneratedMessage;
.super Lcom/htc/protobuf/AbstractMessage;
.source "GeneratedMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/protobuf/GeneratedMessage$1;,
        Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;,
        Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension;,
        Lcom/htc/protobuf/GeneratedMessage$ExtendableBuilder;,
        Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;,
        Lcom/htc/protobuf/GeneratedMessage$Builder;
    }
.end annotation


# instance fields
.field private unknownFields:Lcom/htc/protobuf/UnknownFieldSet;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/htc/protobuf/AbstractMessage;-><init>()V

    .line 58
    invoke-static {}, Lcom/htc/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/protobuf/GeneratedMessage;->unknownFields:Lcom/htc/protobuf/UnknownFieldSet;

    .line 56
    return-void
.end method

.method static synthetic access$1300(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 55
    invoke-static {p0, p1, p2}, Lcom/htc/protobuf/GeneratedMessage;->getMethodOrDie(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 55
    invoke-static {p0, p1, p2}, Lcom/htc/protobuf/GeneratedMessage;->invokeOrDie(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/protobuf/GeneratedMessage;)Lcom/htc/protobuf/UnknownFieldSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/htc/protobuf/GeneratedMessage;->unknownFields:Lcom/htc/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method static synthetic access$202(Lcom/htc/protobuf/GeneratedMessage;Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/htc/protobuf/GeneratedMessage;->unknownFields:Lcom/htc/protobuf/UnknownFieldSet;

    return-object p1
.end method

.method static synthetic access$700(Lcom/htc/protobuf/GeneratedMessage;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage;->getAllFieldsMutable()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private getAllFieldsMutable()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/htc/protobuf/Descriptors$FieldDescriptor;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    new-instance v3, Ljava/util/TreeMap;

    invoke-direct {v3}, Ljava/util/TreeMap;-><init>()V

    .line 75
    .local v3, result:Ljava/util/TreeMap;,"Ljava/util/TreeMap<Lcom/htc/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lcom/htc/protobuf/GeneratedMessage;->internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v5

    #getter for: Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;->descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;
    invoke-static {v5}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;->access$000(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    .line 76
    .local v0, descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;
    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$Descriptor;->getFields()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/protobuf/Descriptors$FieldDescriptor;

    .line 77
    .local v1, field:Lcom/htc/protobuf/Descriptors$FieldDescriptor;
    invoke-virtual {v1}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 78
    invoke-virtual {p0, v1}, Lcom/htc/protobuf/GeneratedMessage;->getField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 79
    .local v4, value:Ljava/util/List;
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 80
    invoke-virtual {v3, v1, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 83
    .end local v4           #value:Ljava/util/List;
    :cond_1
    invoke-virtual {p0, v1}, Lcom/htc/protobuf/GeneratedMessage;->hasField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 84
    invoke-virtual {p0, v1}, Lcom/htc/protobuf/GeneratedMessage;->getField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v1, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 88
    .end local v1           #field:Lcom/htc/protobuf/Descriptors$FieldDescriptor;
    :cond_2
    return-object v3
.end method

.method private static varargs getMethodOrDie(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 4
    .parameter "clazz"
    .parameter "name"
    .parameter "params"

    .prologue
    .line 920
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 921
    :catch_0
    move-exception v0

    .line 922
    .local v0, e:Ljava/lang/NoSuchMethodException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Generated message class \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" missing method \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\"."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static varargs invokeOrDie(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter "method"
    .parameter "object"
    .parameter "params"

    .prologue
    .line 932
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    return-object v2

    .line 933
    :catch_0
    move-exception v1

    .line 934
    .local v1, e:Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Couldn\'t use Java reflection to implement protocol message reflection."

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 937
    .end local v1           #e:Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v1

    .line 938
    .local v1, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 939
    .local v0, cause:Ljava/lang/Throwable;
    instance-of v2, v0, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_0

    .line 940
    check-cast v0, Ljava/lang/RuntimeException;

    .end local v0           #cause:Ljava/lang/Throwable;
    throw v0

    .line 941
    .restart local v0       #cause:Ljava/lang/Throwable;
    :cond_0
    instance-of v2, v0, Ljava/lang/Error;

    if-eqz v2, :cond_1

    .line 942
    check-cast v0, Ljava/lang/Error;

    .end local v0           #cause:Ljava/lang/Throwable;
    throw v0

    .line 944
    .restart local v0       #cause:Ljava/lang/Throwable;
    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Unexpected exception thrown by generated accessor method."

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static newGeneratedExtension(Lcom/htc/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Class;)Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension;
    .locals 2
    .parameter "descriptor"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContainingType::",
            "Lcom/htc/protobuf/Message;",
            "Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/htc/protobuf/Descriptors$FieldDescriptor;",
            "Ljava/lang/Class",
            "<TType;>;)",
            "Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension",
            "<TContainingType;TType;>;"
        }
    .end annotation

    .prologue
    .line 726
    .local p1, type:Ljava/lang/Class;,"Ljava/lang/Class<TType;>;"
    invoke-virtual {p0}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 727
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must call newRepeatedGeneratedExtension() for repeated types."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 730
    :cond_0
    new-instance v0, Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension;-><init>(Lcom/htc/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Class;Lcom/htc/protobuf/GeneratedMessage$1;)V

    return-object v0
.end method

.method public static newRepeatedGeneratedExtension(Lcom/htc/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Class;)Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension;
    .locals 2
    .parameter "descriptor"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContainingType::",
            "Lcom/htc/protobuf/Message;",
            "Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/htc/protobuf/Descriptors$FieldDescriptor;",
            "Ljava/lang/Class",
            "<TType;>;)",
            "Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension",
            "<TContainingType;",
            "Ljava/util/List",
            "<TType;>;>;"
        }
    .end annotation

    .prologue
    .line 738
    .local p1, type:Ljava/lang/Class;,"Ljava/lang/Class<TType;>;"
    invoke-virtual {p0}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 739
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must call newGeneratedExtension() for non-repeated types."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 742
    :cond_0
    new-instance v0, Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension;-><init>(Lcom/htc/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Class;Lcom/htc/protobuf/GeneratedMessage$1;)V

    return-object v0
.end method


# virtual methods
.method public getAllFields()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/htc/protobuf/Descriptors$FieldDescriptor;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage;->getAllFieldsMutable()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/htc/protobuf/GeneratedMessage;->internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    #getter for: Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;->descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;
    invoke-static {v0}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;->access$000(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;
    .locals 1
    .parameter "field"

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/htc/protobuf/GeneratedMessage;->internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    #calls: Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;->getField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;
    invoke-static {v0, p1}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;->access$100(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;Lcom/htc/protobuf/Descriptors$FieldDescriptor;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;->get(Lcom/htc/protobuf/GeneratedMessage;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getRepeatedField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;I)Ljava/lang/Object;
    .locals 1
    .parameter "field"
    .parameter "index"

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/htc/protobuf/GeneratedMessage;->internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    #calls: Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;->getField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;
    invoke-static {v0, p1}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;->access$100(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;Lcom/htc/protobuf/Descriptors$FieldDescriptor;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;->getRepeated(Lcom/htc/protobuf/GeneratedMessage;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getRepeatedFieldCount(Lcom/htc/protobuf/Descriptors$FieldDescriptor;)I
    .locals 1
    .parameter "field"

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/htc/protobuf/GeneratedMessage;->internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    #calls: Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;->getField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;
    invoke-static {v0, p1}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;->access$100(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;Lcom/htc/protobuf/Descriptors$FieldDescriptor;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;->getRepeatedCount(Lcom/htc/protobuf/GeneratedMessage;)I

    move-result v0

    return v0
.end method

.method public final getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/htc/protobuf/GeneratedMessage;->unknownFields:Lcom/htc/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;)Z
    .locals 1
    .parameter "field"

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/htc/protobuf/GeneratedMessage;->internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    #calls: Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;->getField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;
    invoke-static {v0, p1}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;->access$100(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;Lcom/htc/protobuf/Descriptors$FieldDescriptor;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;->has(Lcom/htc/protobuf/GeneratedMessage;)Z

    move-result v0

    return v0
.end method

.method protected abstract internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
.end method

.method public isInitialized()Z
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 93
    invoke-virtual {p0}, Lcom/htc/protobuf/GeneratedMessage;->getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/protobuf/Descriptors$Descriptor;->getFields()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/protobuf/Descriptors$FieldDescriptor;

    .line 95
    .local v1, field:Lcom/htc/protobuf/Descriptors$FieldDescriptor;
    invoke-virtual {v1}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->isRequired()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 96
    invoke-virtual {p0, v1}, Lcom/htc/protobuf/GeneratedMessage;->hasField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;)Z

    move-result v5

    if-nez v5, :cond_1

    move v5, v6

    .line 118
    .end local v1           #field:Lcom/htc/protobuf/Descriptors$FieldDescriptor;
    :goto_0
    return v5

    .line 101
    .restart local v1       #field:Lcom/htc/protobuf/Descriptors$FieldDescriptor;
    :cond_1
    invoke-virtual {v1}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v5

    sget-object v7, Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v5, v7, :cond_0

    .line 102
    invoke-virtual {v1}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 104
    invoke-virtual {p0, v1}, Lcom/htc/protobuf/GeneratedMessage;->getField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 105
    .local v4, messageList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/protobuf/Message;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Message;

    .line 106
    .local v0, element:Lcom/htc/protobuf/Message;
    invoke-interface {v0}, Lcom/htc/protobuf/Message;->isInitialized()Z

    move-result v5

    if-nez v5, :cond_2

    move v5, v6

    .line 107
    goto :goto_0

    .line 111
    .end local v0           #element:Lcom/htc/protobuf/Message;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #messageList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/protobuf/Message;>;"
    :cond_3
    invoke-virtual {p0, v1}, Lcom/htc/protobuf/GeneratedMessage;->hasField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0, v1}, Lcom/htc/protobuf/GeneratedMessage;->getField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/protobuf/Message;

    invoke-interface {v5}, Lcom/htc/protobuf/Message;->isInitialized()Z

    move-result v5

    if-nez v5, :cond_0

    move v5, v6

    .line 112
    goto :goto_0

    .line 118
    .end local v1           #field:Lcom/htc/protobuf/Descriptors$FieldDescriptor;
    :cond_4
    const/4 v5, 0x1

    goto :goto_0
.end method

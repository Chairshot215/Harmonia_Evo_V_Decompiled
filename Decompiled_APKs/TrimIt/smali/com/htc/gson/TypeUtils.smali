.class final Lcom/htc/gson/TypeUtils;
.super Ljava/lang/Object;
.source "TypeUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    return-void
.end method

.method static getActualTypeForFirstTypeVariable(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 3
    .parameter "type"

    .prologue
    .line 46
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 47
    const-class v0, Ljava/lang/Object;

    .line 51
    .end local p0
    :goto_0
    return-object v0

    .line 48
    .restart local p0
    :cond_0
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_1

    .line 49
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    .end local p0
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0

    .line 50
    .restart local p0
    :cond_1
    instance-of v0, p0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_2

    .line 51
    check-cast p0, Ljava/lang/reflect/GenericArrayType;

    .end local p0
    invoke-interface {p0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/gson/TypeUtils;->getActualTypeForFirstTypeVariable(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    goto :goto_0

    .line 53
    .restart local p0
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Type \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is not a Class, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ParameterizedType, or GenericArrayType. Can\'t extract class."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static isArray(Ljava/lang/reflect/Type;)Z
    .locals 1
    .parameter "type"

    .prologue
    .line 59
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 60
    check-cast p0, Ljava/lang/Class;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    .line 64
    .restart local p0
    :goto_0
    return v0

    .line 61
    :cond_0
    instance-of v0, p0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_1

    .line 62
    const/4 v0, 0x1

    goto :goto_0

    .line 64
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static toRawClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;
    .locals 6
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 72
    instance-of v3, p0, Ljava/lang/Class;

    if-eqz v3, :cond_0

    .line 73
    check-cast p0, Ljava/lang/Class;

    .line 83
    .end local p0
    .local v1, castedType:Ljava/lang/reflect/WildcardType;
    :goto_0
    return-object p0

    .line 74
    .end local v1           #castedType:Ljava/lang/reflect/WildcardType;
    .restart local p0
    :cond_0
    instance-of v3, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v3, :cond_1

    move-object v0, p0

    .line 75
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 76
    .local v0, actualType:Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/gson/TypeUtils;->toRawClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    .line 77
    .end local v0           #actualType:Ljava/lang/reflect/ParameterizedType;
    :cond_1
    instance-of v3, p0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v3, :cond_2

    move-object v0, p0

    .line 78
    check-cast v0, Ljava/lang/reflect/GenericArrayType;

    .line 79
    .local v0, actualType:Ljava/lang/reflect/GenericArrayType;
    invoke-interface {v0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/gson/TypeUtils;->toRawClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v2

    .line 80
    .local v2, rawClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {v2}, Lcom/htc/gson/TypeUtils;->wrapWithArray(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    .line 81
    .end local v0           #actualType:Ljava/lang/reflect/GenericArrayType;
    .end local v2           #rawClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_2
    instance-of v3, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v3, :cond_3

    move-object v1, p0

    .line 82
    check-cast v1, Ljava/lang/reflect/WildcardType;

    .line 83
    .restart local v1       #castedType:Ljava/lang/reflect/WildcardType;
    invoke-interface {v1}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-static {v3}, Lcom/htc/gson/TypeUtils;->toRawClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    .line 85
    .end local v1           #castedType:Ljava/lang/reflect/WildcardType;
    :cond_3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Type \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' is not a Class, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ParameterizedType, or GenericArrayType. Can\'t extract class."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method static wrapWithArray(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 91
    .local p0, rawClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

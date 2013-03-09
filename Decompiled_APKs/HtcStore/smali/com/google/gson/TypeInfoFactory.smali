.class final Lcom/google/gson/TypeInfoFactory;
.super Ljava/lang/Object;
.source "TypeInfoFactory.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method private static extractRealTypes([Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/Class;)[Ljava/lang/reflect/Type;
    .locals 3
    .parameter "actualTypeArguments"
    .parameter "parentType"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class",
            "<*>;)[",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .prologue
    .line 112
    .local p2, rawParentClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {p0}, Lcom/google/gson/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 114
    array-length v2, p0

    new-array v1, v2, [Ljava/lang/reflect/Type;

    .line 115
    .local v1, retTypes:[Ljava/lang/reflect/Type;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 116
    aget-object v2, p0, v0

    invoke-static {v2, p1, p2}, Lcom/google/gson/TypeInfoFactory;->getActualType(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v2

    aput-object v2, v1, v0

    .line 115
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 118
    :cond_0
    return-object v1
.end method

.method private static getActualType(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;
    .locals 16
    .parameter "typeToEvaluate"
    .parameter "parentType"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .prologue
    .line 60
    .local p2, rawParentClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    move-object/from16 v0, p0

    instance-of v13, v0, Ljava/lang/Class;

    if-eqz v13, :cond_0

    .line 103
    .end local p0
    :goto_0
    return-object p0

    .line 62
    .restart local p0
    :cond_0
    move-object/from16 v0, p0

    instance-of v13, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v13, :cond_1

    move-object/from16 v5, p0

    .line 63
    check-cast v5, Ljava/lang/reflect/ParameterizedType;

    .line 64
    .local v5, castedType:Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v5}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v11

    .line 65
    .local v11, owner:Ljava/lang/reflect/Type;
    invoke-interface {v5}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v13

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v13, v0, v1}, Lcom/google/gson/TypeInfoFactory;->extractRealTypes([Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/Class;)[Ljava/lang/reflect/Type;

    move-result-object v4

    .line 67
    .local v4, actualTypeParameters:[Ljava/lang/reflect/Type;
    invoke-interface {v5}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v12

    .line 68
    .local v12, rawType:Ljava/lang/reflect/Type;
    new-instance p0, Lcom/google/gson/ParameterizedTypeImpl;

    .end local p0
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v4, v11}, Lcom/google/gson/ParameterizedTypeImpl;-><init>(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    goto :goto_0

    .line 69
    .end local v4           #actualTypeParameters:[Ljava/lang/reflect/Type;
    .end local v5           #castedType:Ljava/lang/reflect/ParameterizedType;
    .end local v11           #owner:Ljava/lang/reflect/Type;
    .end local v12           #rawType:Ljava/lang/reflect/Type;
    .restart local p0
    :cond_1
    move-object/from16 v0, p0

    instance-of v13, v0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v13, :cond_4

    move-object/from16 v5, p0

    .line 70
    check-cast v5, Ljava/lang/reflect/GenericArrayType;

    .line 71
    .local v5, castedType:Ljava/lang/reflect/GenericArrayType;
    invoke-interface {v5}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v7

    .line 72
    .local v7, componentType:Ljava/lang/reflect/Type;
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v7, v0, v1}, Lcom/google/gson/TypeInfoFactory;->getActualType(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v2

    .line 73
    .local v2, actualType:Ljava/lang/reflect/Type;
    invoke-virtual {v7, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    move-object/from16 p0, v5

    .line 74
    goto :goto_0

    .line 76
    :cond_2
    instance-of v13, v2, Ljava/lang/Class;

    if-eqz v13, :cond_3

    .line 77
    invoke-static {v2}, Lcom/google/gson/TypeUtils;->toRawClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v13

    invoke-static {v13}, Lcom/google/gson/TypeUtils;->wrapWithArray(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    .line 79
    :cond_3
    new-instance p0, Lcom/google/gson/GenericArrayTypeImpl;

    .end local p0
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/gson/GenericArrayTypeImpl;-><init>(Ljava/lang/reflect/Type;)V

    goto :goto_0

    .line 82
    .end local v2           #actualType:Ljava/lang/reflect/Type;
    .end local v5           #castedType:Ljava/lang/reflect/GenericArrayType;
    .end local v7           #componentType:Ljava/lang/reflect/Type;
    .restart local p0
    :cond_4
    move-object/from16 v0, p0

    instance-of v13, v0, Ljava/lang/reflect/TypeVariable;

    if-eqz v13, :cond_6

    .line 83
    move-object/from16 v0, p1

    instance-of v13, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v13, :cond_5

    move-object/from16 v8, p0

    .line 90
    check-cast v8, Ljava/lang/reflect/TypeVariable;

    .line 91
    .local v8, fieldTypeVariable:Ljava/lang/reflect/TypeVariable;,"Ljava/lang/reflect/TypeVariable<*>;"
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v6

    .local v6, classTypeVariables:[Ljava/lang/reflect/TypeVariable;,"[Ljava/lang/reflect/TypeVariable<*>;"
    move-object/from16 v10, p1

    .line 92
    check-cast v10, Ljava/lang/reflect/ParameterizedType;

    .line 93
    .local v10, objParameterizedType:Ljava/lang/reflect/ParameterizedType;
    invoke-static {v6, v8}, Lcom/google/gson/TypeInfoFactory;->getIndex([Ljava/lang/reflect/TypeVariable;Ljava/lang/reflect/TypeVariable;)I

    move-result v9

    .line 94
    .local v9, indexOfActualTypeArgument:I
    invoke-interface {v10}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v3

    .line 95
    .local v3, actualTypeArguments:[Ljava/lang/reflect/Type;
    aget-object p0, v3, v9

    goto :goto_0

    .line 97
    .end local v3           #actualTypeArguments:[Ljava/lang/reflect/Type;
    .end local v6           #classTypeVariables:[Ljava/lang/reflect/TypeVariable;,"[Ljava/lang/reflect/TypeVariable<*>;"
    .end local v8           #fieldTypeVariable:Ljava/lang/reflect/TypeVariable;,"Ljava/lang/reflect/TypeVariable<*>;"
    .end local v9           #indexOfActualTypeArgument:I
    .end local v10           #objParameterizedType:Ljava/lang/reflect/ParameterizedType;
    :cond_5
    new-instance v13, Ljava/lang/UnsupportedOperationException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Expecting parameterized type, got "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ".\n Are you missing the use of TypeToken idiom?\n See "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "http://sites.google.com/site/gson/gson-user-guide#TOC-Serializing-and-Deserializing-Gener"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 101
    :cond_6
    move-object/from16 v0, p0

    instance-of v13, v0, Ljava/lang/reflect/WildcardType;

    if-eqz v13, :cond_7

    move-object/from16 v5, p0

    .line 102
    check-cast v5, Ljava/lang/reflect/WildcardType;

    .line 103
    .local v5, castedType:Ljava/lang/reflect/WildcardType;
    invoke-interface {v5}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v13

    const/4 v14, 0x0

    aget-object v13, v13, v14

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v13, v0, v1}, Lcom/google/gson/TypeInfoFactory;->getActualType(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object p0

    goto/16 :goto_0

    .line 105
    .end local v5           #castedType:Ljava/lang/reflect/WildcardType;
    :cond_7
    new-instance v13, Ljava/lang/IllegalArgumentException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Type \'"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\' is not a Class, "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "ParameterizedType, GenericArrayType or TypeVariable. Can\'t extract type."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13
.end method

.method private static getIndex([Ljava/lang/reflect/TypeVariable;Ljava/lang/reflect/TypeVariable;)I
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 122
    .local p0, types:[Ljava/lang/reflect/TypeVariable;,"[Ljava/lang/reflect/TypeVariable<*>;"
    .local p1, type:Ljava/lang/reflect/TypeVariable;,"Ljava/lang/reflect/TypeVariable<*>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 123
    aget-object v1, p0, v0

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    return v0

    .line 122
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 127
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "How can the type variable not be present in the class declaration!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getTypeInfoForArray(Ljava/lang/reflect/Type;)Lcom/google/gson/TypeInfoArray;
    .locals 1
    .parameter "type"

    .prologue
    .line 39
    invoke-static {p0}, Lcom/google/gson/TypeUtils;->isArray(Ljava/lang/reflect/Type;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/gson/Preconditions;->checkArgument(Z)V

    .line 40
    new-instance v0, Lcom/google/gson/TypeInfoArray;

    invoke-direct {v0, p0}, Lcom/google/gson/TypeInfoArray;-><init>(Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method public static getTypeInfoForField(Ljava/lang/reflect/Field;Ljava/lang/reflect/Type;)Lcom/google/gson/TypeInfo;
    .locals 4
    .parameter "f"
    .parameter "typeDefiningF"

    .prologue
    .line 52
    invoke-static {p1}, Lcom/google/gson/TypeUtils;->toRawClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    .line 53
    .local v1, classDefiningF:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 54
    .local v2, type:Ljava/lang/reflect/Type;
    invoke-static {v2, p1, v1}, Lcom/google/gson/TypeInfoFactory;->getActualType(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 55
    .local v0, actualType:Ljava/lang/reflect/Type;
    new-instance v3, Lcom/google/gson/TypeInfo;

    invoke-direct {v3, v0}, Lcom/google/gson/TypeInfo;-><init>(Ljava/lang/reflect/Type;)V

    return-object v3
.end method

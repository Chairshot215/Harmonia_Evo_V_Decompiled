.class public abstract Lcom/htc/gson/reflect/TypeToken;
.super Ljava/lang/Object;
.source "TypeToken.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/gson/reflect/TypeToken$1;,
        Lcom/htc/gson/reflect/TypeToken$SimpleTypeToken;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final rawType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<-TT;>;"
        }
    .end annotation
.end field

.field final type:Ljava/lang/reflect/Type;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 66
    .local p0, this:Lcom/htc/gson/reflect/TypeToken;,"Lcom/htc/gson/reflect/TypeToken<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/gson/reflect/TypeToken;->getSuperclassTypeParameter(Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/gson/reflect/TypeToken;->type:Ljava/lang/reflect/Type;

    .line 68
    iget-object v0, p0, Lcom/htc/gson/reflect/TypeToken;->type:Ljava/lang/reflect/Type;

    invoke-static {v0}, Lcom/htc/gson/reflect/TypeToken;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/gson/reflect/TypeToken;->rawType:Ljava/lang/Class;

    .line 69
    return-void
.end method

.method private constructor <init>(Ljava/lang/reflect/Type;)V
    .locals 1
    .parameter "type"

    .prologue
    .line 75
    .local p0, this:Lcom/htc/gson/reflect/TypeToken;,"Lcom/htc/gson/reflect/TypeToken<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const-string v0, "type"

    invoke-static {p1, v0}, Lcom/htc/gson/reflect/TypeToken;->nonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    invoke-static {v0}, Lcom/htc/gson/reflect/TypeToken;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/gson/reflect/TypeToken;->rawType:Ljava/lang/Class;

    .line 77
    iput-object p1, p0, Lcom/htc/gson/reflect/TypeToken;->type:Ljava/lang/reflect/Type;

    .line 78
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/reflect/Type;Lcom/htc/gson/reflect/TypeToken$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    .local p0, this:Lcom/htc/gson/reflect/TypeToken;,"Lcom/htc/gson/reflect/TypeToken<TT;>;"
    invoke-direct {p0, p1}, Lcom/htc/gson/reflect/TypeToken;-><init>(Ljava/lang/reflect/Type;)V

    return-void
.end method

.method private static varargs buildUnexpectedTypeError(Ljava/lang/reflect/Type;[Ljava/lang/Class;)Ljava/lang/AssertionError;
    .locals 7
    .parameter "token"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/AssertionError;"
        }
    .end annotation

    .prologue
    .line 343
    .local p1, expected:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Unexpected type. Expected one of: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 345
    .local v2, exceptionMessage:Ljava/lang/StringBuilder;
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/Class;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 346
    .local v1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 348
    .end local v1           #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_0
    const-string v5, "but got: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", for type token: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x2e

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 351
    new-instance v5, Ljava/lang/AssertionError;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    return-object v5
.end method

.method static fromSuperclassTypeParameter(Ljava/lang/Class;)Lcom/htc/gson/reflect/TypeToken;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/htc/gson/reflect/TypeToken",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 102
    .local p0, subclass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v0, Lcom/htc/gson/reflect/TypeToken$SimpleTypeToken;

    invoke-direct {v0, p0}, Lcom/htc/gson/reflect/TypeToken$SimpleTypeToken;-><init>(Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method public static get(Ljava/lang/Class;)Lcom/htc/gson/reflect/TypeToken;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/htc/gson/reflect/TypeToken",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 365
    .local p0, type:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    new-instance v0, Lcom/htc/gson/reflect/TypeToken$SimpleTypeToken;

    invoke-direct {v0, p0}, Lcom/htc/gson/reflect/TypeToken$SimpleTypeToken;-><init>(Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method public static get(Ljava/lang/reflect/Type;)Lcom/htc/gson/reflect/TypeToken;
    .locals 1
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/htc/gson/reflect/TypeToken",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 358
    new-instance v0, Lcom/htc/gson/reflect/TypeToken$SimpleTypeToken;

    invoke-direct {v0, p0}, Lcom/htc/gson/reflect/TypeToken$SimpleTypeToken;-><init>(Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method private static getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;
    .locals 8
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
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 106
    instance-of v4, p0, Ljava/lang/Class;

    if-eqz v4, :cond_0

    .line 108
    check-cast p0, Ljava/lang/Class;

    .line 128
    .end local p0
    :goto_0
    return-object p0

    .line 109
    .restart local p0
    :cond_0
    instance-of v4, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v4, :cond_2

    move-object v1, p0

    .line 110
    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    .line 115
    .local v1, parameterizedType:Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 116
    .local v3, rawType:Ljava/lang/reflect/Type;
    instance-of v4, v3, Ljava/lang/Class;

    if-eqz v4, :cond_1

    .line 117
    check-cast v3, Ljava/lang/Class;

    .end local v3           #rawType:Ljava/lang/reflect/Type;
    move-object p0, v3

    goto :goto_0

    .line 119
    .restart local v3       #rawType:Ljava/lang/reflect/Type;
    :cond_1
    new-array v4, v7, [Ljava/lang/Class;

    const-class v5, Ljava/lang/Class;

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lcom/htc/gson/reflect/TypeToken;->buildUnexpectedTypeError(Ljava/lang/reflect/Type;[Ljava/lang/Class;)Ljava/lang/AssertionError;

    move-result-object v4

    throw v4

    .line 120
    .end local v1           #parameterizedType:Ljava/lang/reflect/ParameterizedType;
    .end local v3           #rawType:Ljava/lang/reflect/Type;
    :cond_2
    instance-of v4, p0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v4, :cond_3

    move-object v0, p0

    .line 121
    check-cast v0, Ljava/lang/reflect/GenericArrayType;

    .line 126
    .local v0, genericArrayType:Ljava/lang/reflect/GenericArrayType;
    invoke-interface {v0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/gson/reflect/TypeToken;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    .line 128
    .local v2, rawArrayType:Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    .line 130
    .end local v0           #genericArrayType:Ljava/lang/reflect/GenericArrayType;
    .end local v2           #rawArrayType:Ljava/lang/Object;
    :cond_3
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Ljava/lang/reflect/ParameterizedType;

    aput-object v5, v4, v6

    const-class v5, Ljava/lang/reflect/GenericArrayType;

    aput-object v5, v4, v7

    invoke-static {p0, v4}, Lcom/htc/gson/reflect/TypeToken;->buildUnexpectedTypeError(Ljava/lang/reflect/Type;[Ljava/lang/Class;)Ljava/lang/AssertionError;

    move-result-object v4

    throw v4
.end method

.method static getSuperclassTypeParameter(Ljava/lang/Class;)Ljava/lang/reflect/Type;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .prologue
    .line 91
    .local p0, subclass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 92
    .local v0, superclass:Ljava/lang/reflect/Type;
    instance-of v1, v0, Ljava/lang/Class;

    if-eqz v1, :cond_0

    .line 93
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Missing type parameter."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 95
    :cond_0
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .end local v0           #superclass:Ljava/lang/reflect/Type;
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    return-object v1
.end method

.method private static isAssignableFrom(Ljava/lang/reflect/Type;Ljava/lang/reflect/GenericArrayType;)Z
    .locals 4
    .parameter "from"
    .parameter "to"

    .prologue
    .line 194
    invoke-interface {p1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 195
    .local v2, toGenericComponentType:Ljava/lang/reflect/Type;
    instance-of v3, v2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v3, :cond_3

    .line 196
    move-object v1, p0

    .line 197
    .local v1, t:Ljava/lang/reflect/Type;
    instance-of v3, p0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v3, :cond_1

    .line 198
    check-cast p0, Ljava/lang/reflect/GenericArrayType;

    .end local p0
    invoke-interface {p0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 206
    :cond_0
    :goto_0
    check-cast v2, Ljava/lang/reflect/ParameterizedType;

    .end local v2           #toGenericComponentType:Ljava/lang/reflect/Type;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1, v2, v3}, Lcom/htc/gson/reflect/TypeToken;->isAssignableFrom(Ljava/lang/reflect/Type;Ljava/lang/reflect/ParameterizedType;Ljava/util/Map;)Z

    move-result v3

    .line 211
    .end local v1           #t:Ljava/lang/reflect/Type;
    :goto_1
    return v3

    .line 199
    .restart local v1       #t:Ljava/lang/reflect/Type;
    .restart local v2       #toGenericComponentType:Ljava/lang/reflect/Type;
    .restart local p0
    :cond_1
    instance-of v3, p0, Ljava/lang/Class;

    if-eqz v3, :cond_0

    move-object v0, p0

    .line 200
    check-cast v0, Ljava/lang/Class;

    .line 201
    .local v0, classType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 202
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    goto :goto_2

    .line 204
    :cond_2
    move-object v1, v0

    goto :goto_0

    .line 211
    .end local v0           #classType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v1           #t:Ljava/lang/reflect/Type;
    :cond_3
    const/4 v3, 0x1

    goto :goto_1
.end method

.method private static isAssignableFrom(Ljava/lang/reflect/Type;Ljava/lang/reflect/ParameterizedType;Ljava/util/Map;)Z
    .locals 16
    .parameter "from"
    .parameter "to"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/ParameterizedType;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 221
    .local p2, typeVarMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Type;>;"
    if-nez p0, :cond_0

    .line 222
    const/4 v15, 0x0

    .line 268
    :goto_0
    return v15

    .line 225
    :cond_0
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 226
    const/4 v15, 0x1

    goto :goto_0

    .line 230
    :cond_1
    invoke-static/range {p0 .. p0}, Lcom/htc/gson/reflect/TypeToken;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v4

    .line 231
    .local v4, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v9, 0x0

    .line 232
    .local v9, ptype:Ljava/lang/reflect/ParameterizedType;
    move-object/from16 v0, p0

    instance-of v15, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v15, :cond_2

    move-object/from16 v9, p0

    .line 233
    check-cast v9, Ljava/lang/reflect/ParameterizedType;

    .line 237
    :cond_2
    if-eqz v9, :cond_5

    .line 238
    invoke-interface {v9}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v11

    .line 239
    .local v11, tArgs:[Ljava/lang/reflect/Type;
    invoke-virtual {v4}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v12

    .line 240
    .local v12, tParams:[Ljava/lang/reflect/TypeVariable;,"[Ljava/lang/reflect/TypeVariable<*>;"
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    array-length v15, v11

    if-ge v5, v15, :cond_4

    .line 241
    aget-object v2, v11, v5

    .line 242
    .local v2, arg:Ljava/lang/reflect/Type;
    aget-object v14, v12, v5

    .line 243
    .local v14, var:Ljava/lang/reflect/TypeVariable;,"Ljava/lang/reflect/TypeVariable<*>;"
    :goto_2
    instance-of v15, v2, Ljava/lang/reflect/TypeVariable;

    if-eqz v15, :cond_3

    move-object v13, v2

    .line 244
    check-cast v13, Ljava/lang/reflect/TypeVariable;

    .line 245
    .local v13, v:Ljava/lang/reflect/TypeVariable;,"Ljava/lang/reflect/TypeVariable<*>;"
    invoke-interface {v13}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #arg:Ljava/lang/reflect/Type;
    check-cast v2, Ljava/lang/reflect/Type;

    .line 246
    .restart local v2       #arg:Ljava/lang/reflect/Type;
    goto :goto_2

    .line 247
    .end local v13           #v:Ljava/lang/reflect/TypeVariable;,"Ljava/lang/reflect/TypeVariable<*>;"
    :cond_3
    invoke-interface {v14}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-interface {v0, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 251
    .end local v2           #arg:Ljava/lang/reflect/Type;
    .end local v14           #var:Ljava/lang/reflect/TypeVariable;,"Ljava/lang/reflect/TypeVariable<*>;"
    :cond_4
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v9, v0, v1}, Lcom/htc/gson/reflect/TypeToken;->typeEquals(Ljava/lang/reflect/ParameterizedType;Ljava/lang/reflect/ParameterizedType;Ljava/util/Map;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 252
    const/4 v15, 0x1

    goto :goto_0

    .line 256
    .end local v5           #i:I
    .end local v11           #tArgs:[Ljava/lang/reflect/Type;
    .end local v12           #tParams:[Ljava/lang/reflect/TypeVariable;,"[Ljava/lang/reflect/TypeVariable<*>;"
    :cond_5
    invoke-virtual {v4}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v3

    .local v3, arr$:[Ljava/lang/reflect/Type;
    array-length v8, v3

    .local v8, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_3
    if-ge v6, v8, :cond_7

    aget-object v7, v3, v6

    .line 257
    .local v7, itype:Ljava/lang/reflect/Type;
    new-instance v15, Ljava/util/HashMap;

    move-object/from16 v0, p2

    invoke-direct {v15, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    move-object/from16 v0, p1

    invoke-static {v7, v0, v15}, Lcom/htc/gson/reflect/TypeToken;->isAssignableFrom(Ljava/lang/reflect/Type;Ljava/lang/reflect/ParameterizedType;Ljava/util/Map;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 258
    const/4 v15, 0x1

    goto :goto_0

    .line 256
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 263
    .end local v7           #itype:Ljava/lang/reflect/Type;
    :cond_7
    invoke-virtual {v4}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v10

    .line 264
    .local v10, sType:Ljava/lang/reflect/Type;
    new-instance v15, Ljava/util/HashMap;

    move-object/from16 v0, p2

    invoke-direct {v15, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    move-object/from16 v0, p1

    invoke-static {v10, v0, v15}, Lcom/htc/gson/reflect/TypeToken;->isAssignableFrom(Ljava/lang/reflect/Type;Ljava/lang/reflect/ParameterizedType;Ljava/util/Map;)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 265
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 268
    :cond_8
    const/4 v15, 0x0

    goto/16 :goto_0
.end method

.method private static matches(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/Map;)Z
    .locals 1
    .parameter "from"
    .parameter "to"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 296
    .local p2, typeMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Type;>;"
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 302
    .end local p0
    :goto_0
    return v0

    .line 298
    .restart local p0
    :cond_0
    instance-of v0, p0, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_1

    .line 299
    check-cast p0, Ljava/lang/reflect/TypeVariable;

    .end local p0
    invoke-interface {p0}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 302
    .restart local p0
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static nonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter "message"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 81
    .local p0, o:Ljava/lang/Object;,"TT;"
    if-nez p0, :cond_0

    .line 82
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_0
    return-object p0
.end method

.method private static typeEquals(Ljava/lang/reflect/ParameterizedType;Ljava/lang/reflect/ParameterizedType;Ljava/util/Map;)Z
    .locals 6
    .parameter "from"
    .parameter "to"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/ParameterizedType;",
            "Ljava/lang/reflect/ParameterizedType;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, typeVarMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Type;>;"
    const/4 v3, 0x0

    .line 277
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 278
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 279
    .local v0, fromArgs:[Ljava/lang/reflect/Type;
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v2

    .line 280
    .local v2, toArgs:[Ljava/lang/reflect/Type;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_2

    .line 281
    aget-object v4, v0, v1

    aget-object v5, v2, v1

    invoke-static {v4, v5, p2}, Lcom/htc/gson/reflect/TypeToken;->matches(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/Map;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 287
    .end local v0           #fromArgs:[Ljava/lang/reflect/Type;
    .end local v1           #i:I
    .end local v2           #toArgs:[Ljava/lang/reflect/Type;
    :cond_0
    :goto_1
    return v3

    .line 280
    .restart local v0       #fromArgs:[Ljava/lang/reflect/Type;
    .restart local v1       #i:I
    .restart local v2       #toArgs:[Ljava/lang/reflect/Type;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 285
    :cond_2
    const/4 v3, 0x1

    goto :goto_1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "o"

    .prologue
    .line 319
    .local p0, this:Lcom/htc/gson/reflect/TypeToken;,"Lcom/htc/gson/reflect/TypeToken<TT;>;"
    if-ne p1, p0, :cond_0

    .line 320
    const/4 v1, 0x1

    .line 326
    :goto_0
    return v1

    .line 322
    :cond_0
    instance-of v1, p1, Lcom/htc/gson/reflect/TypeToken;

    if-nez v1, :cond_1

    .line 323
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 325
    check-cast v0, Lcom/htc/gson/reflect/TypeToken;

    .line 326
    .local v0, t:Lcom/htc/gson/reflect/TypeToken;,"Lcom/htc/gson/reflect/TypeToken<*>;"
    iget-object v1, p0, Lcom/htc/gson/reflect/TypeToken;->type:Ljava/lang/reflect/Type;

    iget-object v2, v0, Lcom/htc/gson/reflect/TypeToken;->type:Ljava/lang/reflect/Type;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getRawType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 139
    .local p0, this:Lcom/htc/gson/reflect/TypeToken;,"Lcom/htc/gson/reflect/TypeToken<TT;>;"
    iget-object v0, p0, Lcom/htc/gson/reflect/TypeToken;->rawType:Ljava/lang/Class;

    return-object v0
.end method

.method public getType()Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 146
    .local p0, this:Lcom/htc/gson/reflect/TypeToken;,"Lcom/htc/gson/reflect/TypeToken<TT;>;"
    iget-object v0, p0, Lcom/htc/gson/reflect/TypeToken;->type:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 310
    .local p0, this:Lcom/htc/gson/reflect/TypeToken;,"Lcom/htc/gson/reflect/TypeToken<TT;>;"
    iget-object v0, p0, Lcom/htc/gson/reflect/TypeToken;->type:Ljava/lang/reflect/Type;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isAssignableFrom(Lcom/htc/gson/reflect/TypeToken;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/gson/reflect/TypeToken",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 186
    .local p0, this:Lcom/htc/gson/reflect/TypeToken;,"Lcom/htc/gson/reflect/TypeToken<TT;>;"
    .local p1, token:Lcom/htc/gson/reflect/TypeToken;,"Lcom/htc/gson/reflect/TypeToken<*>;"
    invoke-virtual {p1}, Lcom/htc/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/gson/reflect/TypeToken;->isAssignableFrom(Ljava/lang/reflect/Type;)Z

    move-result v0

    return v0
.end method

.method public isAssignableFrom(Ljava/lang/Class;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 153
    .local p0, this:Lcom/htc/gson/reflect/TypeToken;,"Lcom/htc/gson/reflect/TypeToken<TT;>;"
    .local p1, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {p0, p1}, Lcom/htc/gson/reflect/TypeToken;->isAssignableFrom(Ljava/lang/reflect/Type;)Z

    move-result v0

    return v0
.end method

.method public isAssignableFrom(Ljava/lang/reflect/Type;)Z
    .locals 5
    .parameter "from"

    .prologue
    .local p0, this:Lcom/htc/gson/reflect/TypeToken;,"Lcom/htc/gson/reflect/TypeToken<TT;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 160
    if-nez p1, :cond_0

    .line 174
    :goto_0
    return v2

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/htc/gson/reflect/TypeToken;->type:Ljava/lang/reflect/Type;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v2, v1

    .line 165
    goto :goto_0

    .line 168
    :cond_1
    iget-object v0, p0, Lcom/htc/gson/reflect/TypeToken;->type:Ljava/lang/reflect/Type;

    instance-of v0, v0, Ljava/lang/Class;

    if-eqz v0, :cond_2

    .line 169
    iget-object v0, p0, Lcom/htc/gson/reflect/TypeToken;->rawType:Ljava/lang/Class;

    invoke-static {p1}, Lcom/htc/gson/reflect/TypeToken;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    goto :goto_0

    .line 170
    :cond_2
    iget-object v0, p0, Lcom/htc/gson/reflect/TypeToken;->type:Ljava/lang/reflect/Type;

    instance-of v0, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_3

    .line 171
    iget-object v0, p0, Lcom/htc/gson/reflect/TypeToken;->type:Ljava/lang/reflect/Type;

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1, v0, v1}, Lcom/htc/gson/reflect/TypeToken;->isAssignableFrom(Ljava/lang/reflect/Type;Ljava/lang/reflect/ParameterizedType;Ljava/util/Map;)Z

    move-result v2

    goto :goto_0

    .line 173
    :cond_3
    iget-object v0, p0, Lcom/htc/gson/reflect/TypeToken;->type:Ljava/lang/reflect/Type;

    instance-of v0, v0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_5

    .line 174
    iget-object v0, p0, Lcom/htc/gson/reflect/TypeToken;->rawType:Ljava/lang/Class;

    invoke-static {p1}, Lcom/htc/gson/reflect/TypeToken;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/gson/reflect/TypeToken;->type:Ljava/lang/reflect/Type;

    check-cast v0, Ljava/lang/reflect/GenericArrayType;

    invoke-static {p1, v0}, Lcom/htc/gson/reflect/TypeToken;->isAssignableFrom(Ljava/lang/reflect/Type;Ljava/lang/reflect/GenericArrayType;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_1
    move v2, v0

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_1

    .line 177
    :cond_5
    iget-object v0, p0, Lcom/htc/gson/reflect/TypeToken;->type:Ljava/lang/reflect/Type;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Ljava/lang/Class;

    aput-object v4, v3, v2

    const-class v2, Ljava/lang/reflect/ParameterizedType;

    aput-object v2, v3, v1

    const/4 v1, 0x2

    const-class v2, Ljava/lang/reflect/GenericArrayType;

    aput-object v2, v3, v1

    invoke-static {v0, v3}, Lcom/htc/gson/reflect/TypeToken;->buildUnexpectedTypeError(Ljava/lang/reflect/Type;[Ljava/lang/Class;)Ljava/lang/AssertionError;

    move-result-object v0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 334
    .local p0, this:Lcom/htc/gson/reflect/TypeToken;,"Lcom/htc/gson/reflect/TypeToken<TT;>;"
    iget-object v0, p0, Lcom/htc/gson/reflect/TypeToken;->type:Ljava/lang/reflect/Type;

    instance-of v0, v0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/gson/reflect/TypeToken;->type:Ljava/lang/reflect/Type;

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/gson/reflect/TypeToken;->type:Ljava/lang/reflect/Type;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

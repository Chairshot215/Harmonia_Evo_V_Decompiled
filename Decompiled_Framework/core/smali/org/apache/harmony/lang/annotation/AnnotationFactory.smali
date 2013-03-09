.class public final Lorg/apache/harmony/lang/annotation/AnnotationFactory;
.super Ljava/lang/Object;
.source "AnnotationFactory.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;
.implements Ljava/io/Serializable;


# static fields
.field private static final transient cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;[",
            "Lorg/apache/harmony/lang/annotation/AnnotationMember;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private elements:[Lorg/apache/harmony/lang/annotation/AnnotationMember;

.field private final klazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lorg/apache/harmony/lang/annotation/AnnotationFactory;->cache:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Class;[Lorg/apache/harmony/lang/annotation/AnnotationMember;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;[",
            "Lorg/apache/harmony/lang/annotation/AnnotationMember;",
            ")V"
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/harmony/lang/annotation/AnnotationFactory;->klazz:Ljava/lang/Class;

    iget-object v6, p0, Lorg/apache/harmony/lang/annotation/AnnotationFactory;->klazz:Ljava/lang/Class;

    invoke-static {v6}, Lorg/apache/harmony/lang/annotation/AnnotationFactory;->getElementsDescription(Ljava/lang/Class;)[Lorg/apache/harmony/lang/annotation/AnnotationMember;

    move-result-object v1

    if-nez p2, :cond_1

    iput-object v1, p0, Lorg/apache/harmony/lang/annotation/AnnotationFactory;->elements:[Lorg/apache/harmony/lang/annotation/AnnotationMember;

    :cond_0
    return-void

    :cond_1
    array-length v6, v1

    new-array v6, v6, [Lorg/apache/harmony/lang/annotation/AnnotationMember;

    iput-object v6, p0, Lorg/apache/harmony/lang/annotation/AnnotationFactory;->elements:[Lorg/apache/harmony/lang/annotation/AnnotationMember;

    iget-object v6, p0, Lorg/apache/harmony/lang/annotation/AnnotationFactory;->elements:[Lorg/apache/harmony/lang/annotation/AnnotationMember;

    array-length v6, v6

    add-int/lit8 v2, v6, -0x1

    :goto_0
    if-ltz v2, :cond_0

    move-object v0, p2

    array-length v4, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_3

    aget-object v5, v0, v3

    iget-object v6, v5, Lorg/apache/harmony/lang/annotation/AnnotationMember;->name:Ljava/lang/String;

    aget-object v7, v1, v2

    iget-object v7, v7, Lorg/apache/harmony/lang/annotation/AnnotationMember;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lorg/apache/harmony/lang/annotation/AnnotationFactory;->elements:[Lorg/apache/harmony/lang/annotation/AnnotationMember;

    aget-object v7, v1, v2

    invoke-virtual {v5, v7}, Lorg/apache/harmony/lang/annotation/AnnotationMember;->setDefinition(Lorg/apache/harmony/lang/annotation/AnnotationMember;)Lorg/apache/harmony/lang/annotation/AnnotationMember;

    move-result-object v7

    aput-object v7, v6, v2

    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    iget-object v6, p0, Lorg/apache/harmony/lang/annotation/AnnotationFactory;->elements:[Lorg/apache/harmony/lang/annotation/AnnotationMember;

    aget-object v7, v1, v2

    aput-object v7, v6, v2

    goto :goto_2
.end method

.method public static createAnnotation(Ljava/lang/Class;[Lorg/apache/harmony/lang/annotation/AnnotationMember;)Ljava/lang/annotation/Annotation;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;[",
            "Lorg/apache/harmony/lang/annotation/AnnotationMember;",
            ")",
            "Ljava/lang/annotation/Annotation;"
        }
    .end annotation

    new-instance v0, Lorg/apache/harmony/lang/annotation/AnnotationFactory;

    invoke-direct {v0, p0, p1}, Lorg/apache/harmony/lang/annotation/AnnotationFactory;-><init>(Ljava/lang/Class;[Lorg/apache/harmony/lang/annotation/AnnotationMember;)V

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v1, v2, v0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/annotation/Annotation;

    return-object v1
.end method

.method public static getElementsDescription(Ljava/lang/Class;)[Lorg/apache/harmony/lang/annotation/AnnotationMember;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)[",
            "Lorg/apache/harmony/lang/annotation/AnnotationMember;"
        }
    .end annotation

    sget-object v10, Lorg/apache/harmony/lang/annotation/AnnotationFactory;->cache:Ljava/util/Map;

    invoke-interface {v10, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/apache/harmony/lang/annotation/AnnotationMember;

    if-nez v1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Class;->isAnnotation()Z

    move-result v10

    if-nez v10, :cond_0

    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Type is not annotation: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v6

    array-length v10, v6

    new-array v1, v10, [Lorg/apache/harmony/lang/annotation/AnnotationMember;

    const/4 v4, 0x0

    move-object v0, v6

    array-length v5, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v2, v0, v3

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v9

    :try_start_0
    new-instance v10, Lorg/apache/harmony/lang/annotation/AnnotationMember;

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getDefaultValue()Ljava/lang/Object;

    move-result-object v11

    invoke-direct {v10, v7, v11, v9, v2}, Lorg/apache/harmony/lang/annotation/AnnotationMember;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/reflect/Method;)V

    aput-object v10, v1, v4
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v8

    new-instance v10, Lorg/apache/harmony/lang/annotation/AnnotationMember;

    invoke-direct {v10, v7, v8, v9, v2}, Lorg/apache/harmony/lang/annotation/AnnotationMember;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/reflect/Method;)V

    aput-object v10, v1, v4

    goto :goto_1

    :cond_1
    sget-object v10, Lorg/apache/harmony/lang/annotation/AnnotationFactory;->cache:Ljava/util/Map;

    invoke-interface {v10, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual/range {p1 .. p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    iget-object v13, p0, Lorg/apache/harmony/lang/annotation/AnnotationFactory;->klazz:Ljava/lang/Class;

    invoke-static {v13}, Lorg/apache/harmony/lang/annotation/AnnotationFactory;->getElementsDescription(Ljava/lang/Class;)[Lorg/apache/harmony/lang/annotation/AnnotationMember;

    move-result-object v3

    iget-object v11, p0, Lorg/apache/harmony/lang/annotation/AnnotationFactory;->elements:[Lorg/apache/harmony/lang/annotation/AnnotationMember;

    new-instance v10, Ljava/util/ArrayList;

    array-length v13, v3

    array-length v14, v11

    add-int/2addr v13, v14

    invoke-direct {v10, v13}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, v11

    array-length v8, v0

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v8, :cond_2

    aget-object v4, v0, v7

    move-object v1, v3

    array-length v9, v1

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v9, :cond_1

    aget-object v5, v1, v6

    iget-object v13, v5, Lorg/apache/harmony/lang/annotation/AnnotationMember;->name:Ljava/lang/String;

    iget-object v14, v4, Lorg/apache/harmony/lang/annotation/AnnotationMember;->name:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    :goto_2
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    goto :goto_0

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    move-object v0, v3

    array-length v8, v0

    const/4 v6, 0x0

    move v7, v6

    :goto_3
    if-ge v7, v8, :cond_5

    aget-object v2, v0, v7

    move-object v1, v11

    array-length v9, v1

    const/4 v6, 0x0

    :goto_4
    if-ge v6, v9, :cond_4

    aget-object v12, v1, v6

    iget-object v13, v12, Lorg/apache/harmony/lang/annotation/AnnotationMember;->name:Ljava/lang/String;

    iget-object v14, v2, Lorg/apache/harmony/lang/annotation/AnnotationMember;->name:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-virtual {v12, v2}, Lorg/apache/harmony/lang/annotation/AnnotationMember;->setDefinition(Lorg/apache/harmony/lang/annotation/AnnotationMember;)Lorg/apache/harmony/lang/annotation/AnnotationMember;

    move-result-object v13

    invoke-interface {v10, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_5
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    goto :goto_3

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_4
    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_5
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v13

    new-array v13, v13, [Lorg/apache/harmony/lang/annotation/AnnotationMember;

    invoke-interface {v10, v13}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Lorg/apache/harmony/lang/annotation/AnnotationMember;

    iput-object v13, p0, Lorg/apache/harmony/lang/annotation/AnnotationFactory;->elements:[Lorg/apache/harmony/lang/annotation/AnnotationMember;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 17

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    if-ne v0, v1, :cond_0

    const/4 v15, 0x1

    :goto_0
    return v15

    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/harmony/lang/annotation/AnnotationFactory;->klazz:Ljava/lang/Class;

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1

    const/4 v15, 0x0

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/reflect/Proxy;->isProxyClass(Ljava/lang/Class;)Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-static/range {p1 .. p1}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object v8

    instance-of v15, v8, Lorg/apache/harmony/lang/annotation/AnnotationFactory;

    if-eqz v15, :cond_6

    move-object v13, v8

    check-cast v13, Lorg/apache/harmony/lang/annotation/AnnotationFactory;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/harmony/lang/annotation/AnnotationFactory;->elements:[Lorg/apache/harmony/lang/annotation/AnnotationMember;

    array-length v15, v15

    iget-object v0, v13, Lorg/apache/harmony/lang/annotation/AnnotationFactory;->elements:[Lorg/apache/harmony/lang/annotation/AnnotationMember;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    if-eq v15, v0, :cond_2

    const/4 v15, 0x0

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/harmony/lang/annotation/AnnotationFactory;->elements:[Lorg/apache/harmony/lang/annotation/AnnotationMember;

    array-length v11, v2

    const/4 v9, 0x0

    move v10, v9

    :goto_1
    if-ge v10, v11, :cond_5

    aget-object v6, v2, v10

    iget-object v3, v13, Lorg/apache/harmony/lang/annotation/AnnotationFactory;->elements:[Lorg/apache/harmony/lang/annotation/AnnotationMember;

    array-length v12, v3

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v12, :cond_4

    aget-object v7, v3, v9

    invoke-virtual {v6, v7}, Lorg/apache/harmony/lang/annotation/AnnotationMember;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    add-int/lit8 v9, v10, 0x1

    move v10, v9

    goto :goto_1

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_4
    const/4 v15, 0x0

    goto :goto_0

    :cond_5
    const/4 v15, 0x1

    goto :goto_0

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/harmony/lang/annotation/AnnotationFactory;->elements:[Lorg/apache/harmony/lang/annotation/AnnotationMember;

    array-length v11, v2

    const/4 v9, 0x0

    :goto_3
    if-ge v9, v11, :cond_c

    aget-object v5, v2, v9

    iget-char v15, v5, Lorg/apache/harmony/lang/annotation/AnnotationMember;->tag:C

    const/16 v16, 0x21

    move/from16 v0, v16

    if-ne v15, v0, :cond_7

    const/4 v15, 0x0

    goto :goto_0

    :cond_7
    :try_start_0
    iget-object v15, v5, Lorg/apache/harmony/lang/annotation/AnnotationMember;->definingMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v15}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v15

    if-nez v15, :cond_8

    iget-object v15, v5, Lorg/apache/harmony/lang/annotation/AnnotationMember;->definingMethod:Ljava/lang/reflect/Method;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    :cond_8
    iget-object v15, v5, Lorg/apache/harmony/lang/annotation/AnnotationMember;->definingMethod:Ljava/lang/reflect/Method;

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v15, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_a

    iget-char v15, v5, Lorg/apache/harmony/lang/annotation/AnnotationMember;->tag:C

    const/16 v16, 0x5b

    move/from16 v0, v16

    if-ne v15, v0, :cond_9

    invoke-virtual {v5, v14}, Lorg/apache/harmony/lang/annotation/AnnotationMember;->equalArrayValue(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_b

    const/4 v15, 0x0

    goto/16 :goto_0

    :cond_9
    iget-object v15, v5, Lorg/apache/harmony/lang/annotation/AnnotationMember;->value:Ljava/lang/Object;

    invoke-virtual {v15, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_b

    const/4 v15, 0x0

    goto/16 :goto_0

    :cond_a
    iget-object v15, v5, Lorg/apache/harmony/lang/annotation/AnnotationMember;->value:Ljava/lang/Object;

    sget-object v16, Lorg/apache/harmony/lang/annotation/AnnotationMember;->NO_VALUE:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v0, v16

    if-eq v15, v0, :cond_b

    const/4 v15, 0x0

    goto/16 :goto_0

    :catch_0
    move-exception v4

    const/4 v15, 0x0

    goto/16 :goto_0

    :cond_b
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_c
    const/4 v15, 0x1

    goto/16 :goto_0
.end method

.method public hashCode()I
    .locals 6

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/apache/harmony/lang/annotation/AnnotationFactory;->elements:[Lorg/apache/harmony/lang/annotation/AnnotationMember;

    array-length v4, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    invoke-virtual {v1}, Lorg/apache/harmony/lang/annotation/AnnotationMember;->hashCode()I

    move-result v5

    add-int/2addr v2, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v10, 0x0

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    array-length v8, v6

    if-nez v8, :cond_8

    const-string v8, "annotationType"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v7, p0, Lorg/apache/harmony/lang/annotation/AnnotationFactory;->klazz:Ljava/lang/Class;

    :cond_0
    :goto_0
    return-object v7

    :cond_1
    const-string v8, "toString"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {p0}, Lorg/apache/harmony/lang/annotation/AnnotationFactory;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_2
    const-string v8, "hashCode"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {p0}, Lorg/apache/harmony/lang/annotation/AnnotationFactory;->hashCode()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    iget-object v0, p0, Lorg/apache/harmony/lang/annotation/AnnotationFactory;->elements:[Lorg/apache/harmony/lang/annotation/AnnotationMember;

    array-length v4, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_4

    aget-object v1, v0, v3

    iget-object v8, v1, Lorg/apache/harmony/lang/annotation/AnnotationMember;->name:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    move-object v2, v1

    :cond_4
    if-eqz v2, :cond_5

    iget-object v8, v2, Lorg/apache/harmony/lang/annotation/AnnotationMember;->definingMethod:Ljava/lang/reflect/Method;

    invoke-virtual {p2, v8}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    :cond_5
    new-instance v8, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_7
    invoke-virtual {v2}, Lorg/apache/harmony/lang/annotation/AnnotationMember;->validateValue()Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_0

    new-instance v8, Ljava/lang/annotation/IncompleteAnnotationException;

    iget-object v9, p0, Lorg/apache/harmony/lang/annotation/AnnotationFactory;->klazz:Ljava/lang/Class;

    invoke-direct {v8, v9, v5}, Ljava/lang/annotation/IncompleteAnnotationException;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    throw v8

    :cond_8
    array-length v8, v6

    const/4 v9, 0x1

    if-ne v8, v9, :cond_9

    aget-object v8, v6, v10

    const-class v9, Ljava/lang/Object;

    if-ne v8, v9, :cond_9

    const-string v8, "equals"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    aget-object v8, p3, v10

    invoke-virtual {p0, v8}, Lorg/apache/harmony/lang/annotation/AnnotationFactory;->equals(Ljava/lang/Object;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    goto :goto_0

    :cond_9
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid method for annotation type: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/harmony/lang/annotation/AnnotationFactory;->klazz:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lorg/apache/harmony/lang/annotation/AnnotationFactory;->elements:[Lorg/apache/harmony/lang/annotation/AnnotationMember;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    if-eqz v0, :cond_0

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v2, p0, Lorg/apache/harmony/lang/annotation/AnnotationFactory;->elements:[Lorg/apache/harmony/lang/annotation/AnnotationMember;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

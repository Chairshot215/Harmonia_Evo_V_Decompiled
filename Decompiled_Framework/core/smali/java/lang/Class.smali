.class public final Ljava/lang/Class;
.super Ljava/lang/Object;
.source "Class.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/reflect/AnnotatedElement;
.implements Ljava/lang/reflect/GenericDeclaration;
.implements Ljava/lang/reflect/Type;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/reflect/AnnotatedElement;",
        "Ljava/lang/reflect/GenericDeclaration;",
        "Ljava/lang/reflect/Type;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2c7e5503d9bf9553L


# instance fields
.field private transient name:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static arraycopy([Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;[TT;)[TT;"
        }
    .end annotation

    const/4 v2, 0x0

    array-length v0, p1

    invoke-static {p1, v2, p0, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, p1

    array-length v1, p2

    invoke-static {p2, v2, p0, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0
.end method

.method static native classForName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation
.end method

.method public static forName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {}, Ldalvik/system/VMStack;->getCallingClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {p0, v0, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    if-nez p2, :cond_0

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    :cond_0
    :try_start_0
    invoke-static {p0, p1, p2}, Ljava/lang/Class;->classForName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v3, v0, Ljava/lang/ExceptionInInitializerError;

    if-eqz v3, :cond_1

    check-cast v0, Ljava/lang/ExceptionInInitializerError;

    throw v0

    :cond_1
    throw v1
.end method

.method private static native getClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/ClassLoader;"
        }
    .end annotation
.end method

.method private getConstructorOrMethod(Ljava/lang/String;ZZ[Ljava/lang/Class;)Ljava/lang/reflect/Member;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Member;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    if-eqz p2, :cond_0

    if-nez p3, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    :cond_0
    if-nez p1, :cond_1

    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "name == null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_1
    if-nez p4, :cond_2

    sget-object p4, Llibcore/util/EmptyArray;->CLASS:[Ljava/lang/Class;

    :cond_2
    move-object v0, p4

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_4

    aget-object v1, v0, v2

    if-nez v1, :cond_3

    new-instance v5, Ljava/lang/NoSuchMethodException;

    const-string v6, "parameter type is null"

    invoke-direct {v5, v6}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    if-eqz p2, :cond_6

    invoke-direct {p0, p1, p4}, Ljava/lang/Class;->getPublicConstructorOrMethodRecursive(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Member;

    move-result-object v4

    :goto_1
    if-eqz v4, :cond_5

    if-eqz p3, :cond_7

    invoke-interface {v4}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v5

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_7

    :cond_5
    new-instance v5, Ljava/lang/NoSuchMethodException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_6
    invoke-static {p0, p1, p4}, Ljava/lang/Class;->getDeclaredConstructorOrMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Member;

    move-result-object v4

    goto :goto_1

    :cond_7
    return-object v4
.end method

.method private native getDeclaredAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<TA;>;)TA;"
        }
    .end annotation
.end method

.method private static native getDeclaredClasses(Ljava/lang/Class;Z)[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;Z)[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end method

.method static native getDeclaredConstructorOrMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Member;
.end method

.method private static native getDeclaredConstructors(Ljava/lang/Class;Z)[Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;Z)[",
            "Ljava/lang/reflect/Constructor",
            "<TT;>;"
        }
    .end annotation
.end method

.method static native getDeclaredField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation
.end method

.method static native getDeclaredFields(Ljava/lang/Class;Z)[Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;Z)[",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation
.end method

.method static native getDeclaredMethods(Ljava/lang/Class;Z)[Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;Z)[",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation
.end method

.method private getFullListOfClasses(Z)[Ljava/lang/Class;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    invoke-static {p0, p1}, Ljava/lang/Class;->getDeclaredClasses(Ljava/lang/Class;Z)[Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    invoke-static {v0, p1}, Ljava/lang/Class;->getDeclaredClasses(Ljava/lang/Class;Z)[Ljava/lang/Class;

    move-result-object v2

    array-length v3, v2

    if-eqz v3, :cond_0

    array-length v3, v1

    array-length v4, v2

    add-int/2addr v3, v4

    new-array v3, v3, [Ljava/lang/Class;

    invoke-static {v3, v1, v2}, Ljava/lang/Class;->arraycopy([Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Class;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private native getInnerClassName()Ljava/lang/String;
.end method

.method private static native getModifiers(Ljava/lang/Class;Z)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;Z)I"
        }
    .end annotation
.end method

.method private native getNameNative()Ljava/lang/String;
.end method

.method private getPublicConstructorOrMethodRecursive(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Member;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Member;"
        }
    .end annotation

    move-object v1, p0

    :goto_0
    if-eqz v1, :cond_2

    invoke-static {v1, p1, p2}, Ljava/lang/Class;->getDeclaredConstructorOrMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Member;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-interface {v5}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v6

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_1

    :cond_0
    :goto_1
    return-object v5

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v1, p0

    :goto_2
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    array-length v4, v0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v4, :cond_4

    aget-object v3, v0, v2

    invoke-direct {v3, p1, p2}, Ljava/lang/Class;->getPublicConstructorOrMethodRecursive(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Member;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-interface {v5}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v6

    and-int/lit8 v6, v6, 0x1

    if-nez v6, :cond_0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_2

    :cond_5
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private getPublicFieldRecursive(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 7

    move-object v1, p0

    :goto_0
    if-eqz v1, :cond_2

    invoke-static {v1, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v6

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_1

    :cond_0
    :goto_1
    return-object v5

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v1, p0

    :goto_2
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    array-length v4, v0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v4, :cond_4

    aget-object v3, v0, v2

    invoke-direct {v3, p1}, Ljava/lang/Class;->getPublicFieldRecursive(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v6

    and-int/lit8 v6, v6, 0x1

    if-nez v6, :cond_0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_2

    :cond_5
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private getPublicFieldsRecursive(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Field;",
            ">;)V"
        }
    .end annotation

    move-object v1, p0

    :goto_0
    if-eqz v1, :cond_1

    const/4 v6, 0x1

    invoke-static {v1, v6}, Ljava/lang/Class;->getDeclaredFields(Ljava/lang/Class;Z)[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v5, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v5, :cond_0

    aget-object v2, v0, v3

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, p0

    :goto_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    array-length v5, v0

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v5, :cond_2

    aget-object v4, v0, v3

    invoke-direct {v4, p1}, Ljava/lang/Class;->getPublicFieldsRecursive(Ljava/util/List;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_2

    :cond_3
    return-void
.end method

.method private getPublicMethodsRecursive(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;)V"
        }
    .end annotation

    move-object v1, p0

    :goto_0
    if-eqz v1, :cond_1

    const/4 v6, 0x1

    invoke-static {v1, v6}, Ljava/lang/Class;->getDeclaredMethods(Ljava/lang/Class;Z)[Ljava/lang/reflect/Method;

    move-result-object v0

    array-length v4, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v4, :cond_0

    aget-object v5, v0, v2

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, p0

    :goto_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    array-length v4, v0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v4, :cond_2

    aget-object v3, v0, v2

    invoke-direct {v3, p1}, Ljava/lang/Class;->getPublicMethodsRecursive(Ljava/util/List;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_2

    :cond_3
    return-void
.end method

.method private native getSignatureAnnotation()[Ljava/lang/Object;
.end method

.method private getSignatureAttribute()Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Ljava/lang/Class;->getSignatureAnnotation()[Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Lorg/apache/harmony/kernel/vm/StringUtils;->combineStrings([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private native isDeclaredAnnotationPresent(Ljava/lang/Class;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)Z"
        }
    .end annotation
.end method

.method private native newInstanceImpl()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation
.end method


# virtual methods
.method public asSubclass(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TU;>;)",
            "Ljava/lang/Class",
            "<+TU;>;"
        }
    .end annotation

    invoke-virtual {p1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/ClassCastException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " cannot be cast to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public cast(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    if-nez p1, :cond_1

    const/4 p1, 0x0

    :cond_0
    return-object p1

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/ClassCastException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " cannot be cast to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public native desiredAssertionStatus()Z
.end method

.method public getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<TA;>;)TA;"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "annotationType == null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-direct {p0, p1}, Ljava/lang/Class;->getDeclaredAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-eqz v0, :cond_1

    move-object v2, v0

    :goto_0
    return-object v2

    :cond_1
    const-class v2, Ljava/lang/annotation/Inherited;

    invoke-virtual {p1, v2}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_3

    invoke-direct {v1, p1}, Ljava/lang/Class;->getDeclaredAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-eqz v0, :cond_2

    move-object v2, v0

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getAnnotations()[Ljava/lang/annotation/Annotation;
    .locals 8

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v2

    array-length v6, v2

    add-int/lit8 v3, v6, -0x1

    :goto_0
    if-ltz v3, :cond_0

    aget-object v6, v2, v3

    invoke-interface {v6}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v6

    aget-object v7, v2, v3

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v5

    :goto_1
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/Class;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v2

    array-length v6, v2

    add-int/lit8 v3, v6, -0x1

    :goto_2
    if-ltz v3, :cond_2

    aget-object v6, v2, v3

    invoke-interface {v6}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-class v6, Ljava/lang/annotation/Inherited;

    invoke-virtual {v0, v6}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_1

    aget-object v6, v2, v3

    invoke-virtual {v4, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    :cond_2
    invoke-virtual {v5}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v5

    goto :goto_1

    :cond_3
    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/annotation/Annotation;

    invoke-interface {v1, v6}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/annotation/Annotation;

    return-object v6
.end method

.method public getCanonicalName()Ljava/lang/String;
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Class;->isLocalClass()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "[]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoaderImpl()Ljava/lang/ClassLoader;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/BootClassLoader;->getInstance()Ljava/lang/BootClassLoader;

    move-result-object v0

    goto :goto_0
.end method

.method getClassLoaderImpl()Ljava/lang/ClassLoader;
    .locals 1

    invoke-static {p0}, Ljava/lang/Class;->getClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/BootClassLoader;->getInstance()Ljava/lang/BootClassLoader;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getClasses()[Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/lang/Class;->getFullListOfClasses(Z)[Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public native getComponentType()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end method

.method public varargs getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Constructor",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    const-string v0, "<init>"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2, p1}, Ljava/lang/Class;->getConstructorOrMethod(Ljava/lang/String;ZZ[Ljava/lang/Class;)Ljava/lang/reflect/Member;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Constructor;

    return-object v0
.end method

.method public getConstructors()[Ljava/lang/reflect/Constructor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0, v0}, Ljava/lang/Class;->getDeclaredConstructors(Ljava/lang/Class;Z)[Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method

.method public native getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;
.end method

.method public getDeclaredClasses()[Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/Class;->getDeclaredClasses(Ljava/lang/Class;Z)[Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public varargs getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Constructor",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    const/4 v1, 0x0

    const-string v0, "<init>"

    invoke-direct {p0, v0, v1, v1, p1}, Ljava/lang/Class;->getConstructorOrMethod(Ljava/lang/String;ZZ[Ljava/lang/Class;)Ljava/lang/reflect/Member;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Constructor;

    return-object v0
.end method

.method public getDeclaredConstructors()[Ljava/lang/reflect/Constructor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/Class;->getDeclaredConstructors(Ljava/lang/Class;Z)[Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method

.method public getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "name == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v1, Ljava/lang/NoSuchFieldException;

    invoke-direct {v1, p1}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    return-object v0
.end method

.method public getDeclaredFields()[Ljava/lang/reflect/Field;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/Class;->getDeclaredFields(Ljava/lang/Class;Z)[Ljava/lang/reflect/Field;

    move-result-object v0

    return-object v0
.end method

.method public varargs getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v1, p2}, Ljava/lang/Class;->getConstructorOrMethod(Ljava/lang/String;ZZ[Ljava/lang/Class;)Ljava/lang/reflect/Member;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/reflect/Constructor;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/NoSuchMethodException;

    invoke-direct {v1, p1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    check-cast v0, Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public getDeclaredMethods()[Ljava/lang/reflect/Method;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/Class;->getDeclaredMethods(Ljava/lang/Class;Z)[Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method public native getDeclaringClass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end method

.method public native getEnclosingClass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end method

.method public native getEnclosingConstructor()Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end method

.method public native getEnclosingMethod()Ljava/lang/reflect/Method;
.end method

.method public getEnumConstants()[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/lang/Enum;->getSharedConstants(Ljava/lang/Class;)[Ljava/lang/Enum;

    move-result-object v0

    invoke-virtual {v0}, [Ljava/lang/Enum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    goto :goto_0
.end method

.method public getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "name == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-direct {p0, p1}, Ljava/lang/Class;->getPublicFieldRecursive(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v1, Ljava/lang/NoSuchFieldException;

    invoke-direct {v1, p1}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    return-object v0
.end method

.method public getFields()[Ljava/lang/reflect/Field;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v0}, Ljava/lang/Class;->getPublicFieldsRecursive(Ljava/util/List;)V

    sget-object v1, Ljava/lang/reflect/Field;->ORDER_BY_NAME_AND_DECLARING_CLASS:Ljava/util/Comparator;

    invoke-static {v0, v1}, Llibcore/util/CollectionUtils;->removeDuplicates(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/reflect/Field;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/reflect/Field;

    return-object v1
.end method

.method public getGenericInterfaces()[Ljava/lang/reflect/Type;
    .locals 2

    new-instance v0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;-><init>(Ljava/lang/ClassLoader;)V

    invoke-direct {p0}, Ljava/lang/Class;->getSignatureAttribute()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->parseForClass(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;)V

    iget-object v1, v0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->interfaceTypes:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    invoke-static {v1}, Lorg/apache/harmony/luni/lang/reflect/Types;->getClonedTypeArray(Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;)[Ljava/lang/reflect/Type;

    move-result-object v1

    return-object v1
.end method

.method public getGenericSuperclass()Ljava/lang/reflect/Type;
    .locals 2

    new-instance v0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;-><init>(Ljava/lang/ClassLoader;)V

    invoke-direct {p0}, Ljava/lang/Class;->getSignatureAttribute()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->parseForClass(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;)V

    iget-object v1, v0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->superclassType:Ljava/lang/reflect/Type;

    invoke-static {v1}, Lorg/apache/harmony/luni/lang/reflect/Types;->getType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v1

    return-object v1
.end method

.method public native getInterfaces()[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end method

.method public varargs getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1, v1, p2}, Ljava/lang/Class;->getConstructorOrMethod(Ljava/lang/String;ZZ[Ljava/lang/Class;)Ljava/lang/reflect/Member;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/reflect/Constructor;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/NoSuchMethodException;

    invoke-direct {v1, p1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    check-cast v0, Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public getMethods()[Ljava/lang/reflect/Method;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v0}, Ljava/lang/Class;->getPublicMethodsRecursive(Ljava/util/List;)V

    sget-object v1, Ljava/lang/reflect/Method;->ORDER_BY_SIGNATURE:Ljava/util/Comparator;

    invoke-static {v0, v1}, Llibcore/util/CollectionUtils;->removeDuplicates(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/reflect/Method;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/reflect/Method;

    return-object v1
.end method

.method public getModifiers()I
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/Class;->getModifiers(Ljava/lang/Class;Z)I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/lang/Class;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-direct {p0}, Ljava/lang/Class;->getNameNative()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/Class;->name:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public getPackage()Ljava/lang/Package;
    .locals 5

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x2e

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v4, -0x1

    if-eq v0, v4, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/ClassLoader;->getPackage(Ljava/lang/String;)Ljava/lang/Package;

    move-result-object v3

    :cond_0
    return-object v3
.end method

.method public getProtectionDomain()Ljava/security/ProtectionDomain;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getResource(Ljava/lang/String;)Ljava/net/URL;
    .locals 6

    const/16 v5, 0x2e

    const-string v3, "/"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v3

    :goto_1
    return-object v3

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2f

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string v2, ""

    goto :goto_2

    :cond_2
    invoke-static {p1}, Ljava/lang/ClassLoader;->getSystemResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v3

    goto :goto_1
.end method

.method public getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 6

    const/16 v5, 0x2e

    const-string v3, "/"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    :goto_1
    return-object v3

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2f

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string v2, ""

    goto :goto_2

    :cond_2
    invoke-static {p1}, Ljava/lang/ClassLoader;->getSystemResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    goto :goto_1
.end method

.method public getSigners()[Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSimpleName()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "[]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v1, ""

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0}, Ljava/lang/Class;->isLocalClass()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    invoke-direct {p0}, Ljava/lang/Class;->getInnerClassName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_4
    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public native getSuperclass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<-TT;>;"
        }
    .end annotation
.end method

.method public declared-synchronized getTypeParameters()[Ljava/lang/reflect/TypeVariable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/reflect/TypeVariable",
            "<",
            "Ljava/lang/Class",
            "<TT;>;>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;-><init>(Ljava/lang/ClassLoader;)V

    invoke-direct {p0}, Ljava/lang/Class;->getSignatureAttribute()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->parseForClass(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;)V

    iget-object v1, v0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->formalTypeParameters:[Ljava/lang/reflect/TypeVariable;

    invoke-virtual {v1}, [Ljava/lang/reflect/TypeVariable;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/reflect/TypeVariable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public isAnnotation()Z
    .locals 4

    const/4 v2, 0x1

    const/16 v0, 0x2000

    invoke-static {p0, v2}, Ljava/lang/Class;->getModifiers(Ljava/lang/Class;Z)I

    move-result v1

    and-int/lit16 v3, v1, 0x2000

    if-eqz v3, :cond_0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isAnnotationPresent(Ljava/lang/Class;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)Z"
        }
    .end annotation

    const/4 v1, 0x1

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "annotationType == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-direct {p0, p1}, Ljava/lang/Class;->isDeclaredAnnotationPresent(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    :goto_0
    return v1

    :cond_2
    const-class v2, Ljava/lang/annotation/Inherited;

    invoke-direct {p1, v2}, Ljava/lang/Class;->isDeclaredAnnotationPresent(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_3

    invoke-direct {v0, p1}, Ljava/lang/Class;->isDeclaredAnnotationPresent(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public native isAnonymousClass()Z
.end method

.method public isArray()Z
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public native isAssignableFrom(Ljava/lang/Class;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation
.end method

.method public isEnum()Z
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Enum;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public native isInstance(Ljava/lang/Object;)Z
.end method

.method public native isInterface()Z
.end method

.method public isLocalClass()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/Class;->getEnclosingMethod()Ljava/lang/reflect/Method;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Ljava/lang/Class;->getEnclosingConstructor()Ljava/lang/reflect/Constructor;

    move-result-object v3

    if-eqz v3, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v3

    if-nez v3, :cond_2

    :goto_1
    return v1

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method public isMemberClass()Z
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public native isPrimitive()Z
.end method

.method public isSynthetic()Z
    .locals 4

    const/4 v2, 0x1

    const/16 v0, 0x1000

    invoke-static {p0, v2}, Ljava/lang/Class;->getModifiers(Ljava/lang/Class;Z)I

    move-result v1

    and-int/lit16 v3, v1, 0x1000

    if-eqz v3, :cond_0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public newInstance()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Class;->newInstanceImpl()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "interface "

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "class "

    goto :goto_1
.end method

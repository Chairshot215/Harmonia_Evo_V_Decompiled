.class public final Ljava/lang/reflect/Constructor;
.super Ljava/lang/reflect/AccessibleObject;
.source "Constructor.java"

# interfaces
.implements Ljava/lang/reflect/GenericDeclaration;
.implements Ljava/lang/reflect/Member;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/reflect/AccessibleObject;",
        "Ljava/lang/reflect/GenericDeclaration;",
        "Ljava/lang/reflect/Member;"
    }
.end annotation


# instance fields
.field declaringClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field exceptionTypes:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field formalTypeParameters:[Ljava/lang/reflect/TypeVariable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/reflect/TypeVariable",
            "<",
            "Ljava/lang/reflect/Constructor",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field genericExceptionTypes:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

.field genericParameterTypes:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

.field private volatile genericTypesAreInitialized:Z

.field parameterTypes:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field slot:I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/reflect/AccessibleObject;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/lang/reflect/Constructor;->genericTypesAreInitialized:Z

    return-void
.end method

.method private constructor <init>(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Class;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Class",
            "<*>;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/reflect/AccessibleObject;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/lang/reflect/Constructor;->genericTypesAreInitialized:Z

    iput-object p1, p0, Ljava/lang/reflect/Constructor;->declaringClass:Ljava/lang/Class;

    iput-object p2, p0, Ljava/lang/reflect/Constructor;->parameterTypes:[Ljava/lang/Class;

    iput-object p3, p0, Ljava/lang/reflect/Constructor;->exceptionTypes:[Ljava/lang/Class;

    iput p4, p0, Ljava/lang/reflect/Constructor;->slot:I

    return-void
.end method

.method private native constructNative([Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;IZ)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TT;>;[",
            "Ljava/lang/Class",
            "<*>;IZ)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation
.end method

.method private getSignature()Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Ljava/lang/reflect/Constructor;->parameterTypes:[Ljava/lang/Class;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Ljava/lang/reflect/Constructor;->parameterTypes:[Ljava/lang/Class;

    aget-object v2, v2, v0

    invoke-virtual {p0, v2}, Ljava/lang/reflect/Constructor;->getSignature(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string v2, ")V"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private declared-synchronized initGenericTypes()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Ljava/lang/reflect/Constructor;->genericTypesAreInitialized:Z

    if-nez v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getSignatureAttribute()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;

    iget-object v2, p0, Ljava/lang/reflect/Constructor;->declaringClass:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;-><init>(Ljava/lang/ClassLoader;)V

    iget-object v2, p0, Ljava/lang/reflect/Constructor;->exceptionTypes:[Ljava/lang/Class;

    invoke-virtual {v0, p0, v1, v2}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->parseForConstructor(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;[Ljava/lang/Class;)V

    iget-object v2, v0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->formalTypeParameters:[Ljava/lang/reflect/TypeVariable;

    iput-object v2, p0, Ljava/lang/reflect/Constructor;->formalTypeParameters:[Ljava/lang/reflect/TypeVariable;

    iget-object v2, v0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->parameterTypes:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    iput-object v2, p0, Ljava/lang/reflect/Constructor;->genericParameterTypes:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    iget-object v2, v0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->exceptionTypes:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    iput-object v2, p0, Ljava/lang/reflect/Constructor;->genericExceptionTypes:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    const/4 v2, 0x1

    iput-boolean v2, p0, Ljava/lang/reflect/Constructor;->genericTypesAreInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 2
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

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "annotationType == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/lang/reflect/Constructor;->declaringClass:Ljava/lang/Class;

    iget v1, p0, Ljava/lang/reflect/Constructor;->slot:I

    invoke-static {v0, v1, p1}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;ILjava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;
    .locals 2

    iget-object v0, p0, Ljava/lang/reflect/Constructor;->declaringClass:Ljava/lang/Class;

    iget v1, p0, Ljava/lang/reflect/Constructor;->slot:I

    invoke-static {v0, v1}, Ljava/lang/reflect/Method;->getDeclaredAnnotations(Ljava/lang/Class;I)[Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public getDeclaringClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Ljava/lang/reflect/Constructor;->declaringClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getExceptionTypes()[Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    iget-object v0, p0, Ljava/lang/reflect/Constructor;->exceptionTypes:[Ljava/lang/Class;

    if-nez v0, :cond_0

    sget-object v0, Llibcore/util/EmptyArray;->CLASS:[Ljava/lang/Class;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ljava/lang/reflect/Constructor;->exceptionTypes:[Ljava/lang/Class;

    invoke-virtual {v0}, [Ljava/lang/Class;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Class;

    goto :goto_0
.end method

.method public getGenericExceptionTypes()[Ljava/lang/reflect/Type;
    .locals 1

    invoke-direct {p0}, Ljava/lang/reflect/Constructor;->initGenericTypes()V

    iget-object v0, p0, Ljava/lang/reflect/Constructor;->genericExceptionTypes:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    invoke-static {v0}, Lorg/apache/harmony/luni/lang/reflect/Types;->getClonedTypeArray(Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;)[Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method public getGenericParameterTypes()[Ljava/lang/reflect/Type;
    .locals 1

    invoke-direct {p0}, Ljava/lang/reflect/Constructor;->initGenericTypes()V

    iget-object v0, p0, Ljava/lang/reflect/Constructor;->genericParameterTypes:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    invoke-static {v0}, Lorg/apache/harmony/luni/lang/reflect/Types;->getClonedTypeArray(Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;)[Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method public getModifiers()I
    .locals 2

    iget-object v0, p0, Ljava/lang/reflect/Constructor;->declaringClass:Ljava/lang/Class;

    iget v1, p0, Ljava/lang/reflect/Constructor;->slot:I

    invoke-static {v0, v1}, Ljava/lang/reflect/Method;->getMethodModifiers(Ljava/lang/Class;I)I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/lang/reflect/Constructor;->declaringClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParameterAnnotations()[[Ljava/lang/annotation/Annotation;
    .locals 3

    iget-object v1, p0, Ljava/lang/reflect/Constructor;->declaringClass:Ljava/lang/Class;

    iget v2, p0, Ljava/lang/reflect/Constructor;->slot:I

    invoke-static {v1, v2}, Ljava/lang/reflect/Method;->getParameterAnnotations(Ljava/lang/Class;I)[[Ljava/lang/annotation/Annotation;

    move-result-object v0

    array-length v1, v0

    if-nez v1, :cond_0

    iget-object v1, p0, Ljava/lang/reflect/Constructor;->parameterTypes:[Ljava/lang/Class;

    array-length v1, v1

    invoke-static {v1}, Ljava/lang/reflect/Method;->noAnnotations(I)[[Ljava/lang/annotation/Annotation;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getParameterTypes()[Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    iget-object v0, p0, Ljava/lang/reflect/Constructor;->parameterTypes:[Ljava/lang/Class;

    invoke-virtual {v0}, [Ljava/lang/Class;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Class;

    return-object v0
.end method

.method getSignatureAttribute()Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Ljava/lang/reflect/Constructor;->declaringClass:Ljava/lang/Class;

    iget v2, p0, Ljava/lang/reflect/Constructor;->slot:I

    invoke-static {v1, v2}, Ljava/lang/reflect/Method;->getSignatureAnnotation(Ljava/lang/Class;I)[Ljava/lang/Object;

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

.method public getTypeParameters()[Ljava/lang/reflect/TypeVariable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/reflect/TypeVariable",
            "<",
            "Ljava/lang/reflect/Constructor",
            "<TT;>;>;"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/reflect/Constructor;->initGenericTypes()V

    iget-object v0, p0, Ljava/lang/reflect/Constructor;->formalTypeParameters:[Ljava/lang/reflect/TypeVariable;

    invoke-virtual {v0}, [Ljava/lang/reflect/TypeVariable;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/TypeVariable;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Ljava/lang/reflect/Constructor;->declaringClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isAnnotationPresent(Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)Z"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "annotationType == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/lang/reflect/Constructor;->declaringClass:Ljava/lang/Class;

    iget v1, p0, Ljava/lang/reflect/Constructor;->slot:I

    invoke-static {v0, v1, p1}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;ILjava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public isSynthetic()Z
    .locals 3

    iget-object v1, p0, Ljava/lang/reflect/Constructor;->declaringClass:Ljava/lang/Class;

    iget v2, p0, Ljava/lang/reflect/Constructor;->slot:I

    invoke-static {v1, v2}, Ljava/lang/reflect/Method;->getMethodModifiers(Ljava/lang/Class;I)I

    move-result v0

    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isVarArgs()Z
    .locals 3

    iget-object v1, p0, Ljava/lang/reflect/Constructor;->declaringClass:Ljava/lang/Class;

    iget v2, p0, Ljava/lang/reflect/Constructor;->slot:I

    invoke-static {v1, v2}, Ljava/lang/reflect/Method;->getMethodModifiers(Ljava/lang/Class;I)I

    move-result v0

    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public varargs newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    iget-object v2, p0, Ljava/lang/reflect/Constructor;->declaringClass:Ljava/lang/Class;

    iget-object v3, p0, Ljava/lang/reflect/Constructor;->parameterTypes:[Ljava/lang/Class;

    iget v4, p0, Ljava/lang/reflect/Constructor;->slot:I

    iget-boolean v5, p0, Ljava/lang/reflect/AccessibleObject;->flag:Z

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Ljava/lang/reflect/Constructor;->constructNative([Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;IZ)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toGenericString()Ljava/lang/String;
    .locals 6

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x50

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-direct {p0}, Ljava/lang/reflect/Constructor;->initGenericTypes()V

    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v2

    if-eqz v2, :cond_0

    and-int/lit16 v4, v2, -0x81

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v4, p0, Ljava/lang/reflect/Constructor;->formalTypeParameters:[Ljava/lang/reflect/TypeVariable;

    if-eqz v4, :cond_3

    iget-object v4, p0, Ljava/lang/reflect/Constructor;->formalTypeParameters:[Ljava/lang/reflect/TypeVariable;

    array-length v4, v4

    if-lez v4, :cond_3

    const/16 v4, 0x3c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_0
    iget-object v4, p0, Ljava/lang/reflect/Constructor;->formalTypeParameters:[Ljava/lang/reflect/TypeVariable;

    array-length v4, v4

    if-ge v1, v4, :cond_2

    iget-object v4, p0, Ljava/lang/reflect/Constructor;->formalTypeParameters:[Ljava/lang/reflect/TypeVariable;

    aget-object v4, v4, v1

    invoke-virtual {p0, v3, v4}, Ljava/lang/reflect/Constructor;->appendGenericType(Ljava/lang/StringBuilder;Ljava/lang/reflect/Type;)V

    iget-object v4, p0, Ljava/lang/reflect/Constructor;->formalTypeParameters:[Ljava/lang/reflect/TypeVariable;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-ge v1, v4, :cond_1

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const-string v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Ljava/lang/reflect/Constructor;->appendArrayType(Ljava/lang/StringBuilder;Ljava/lang/Class;)V

    const/16 v4, 0x28

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v4, p0, Ljava/lang/reflect/Constructor;->genericParameterTypes:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    invoke-static {v4}, Lorg/apache/harmony/luni/lang/reflect/Types;->getClonedTypeArray(Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;)[Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Ljava/lang/reflect/Constructor;->appendArrayGenericType(Ljava/lang/StringBuilder;[Ljava/lang/reflect/Type;)V

    const/16 v4, 0x29

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v4, p0, Ljava/lang/reflect/Constructor;->genericExceptionTypes:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    invoke-static {v4}, Lorg/apache/harmony/luni/lang/reflect/Types;->getClonedTypeArray(Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;)[Ljava/lang/reflect/Type;

    move-result-object v0

    array-length v4, v0

    if-lez v4, :cond_4

    const-string v4, " throws "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3, v0}, Ljava/lang/reflect/Constructor;->appendArrayGenericType(Ljava/lang/StringBuilder;[Ljava/lang/reflect/Type;)V

    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Ljava/lang/reflect/Constructor;->declaringClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljava/lang/reflect/Constructor;->parameterTypes:[Ljava/lang/Class;

    invoke-virtual {p0, v1}, Ljava/lang/reflect/Constructor;->toString([Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljava/lang/reflect/Constructor;->exceptionTypes:[Ljava/lang/Class;

    if-eqz v1, :cond_1

    iget-object v1, p0, Ljava/lang/reflect/Constructor;->exceptionTypes:[Ljava/lang/Class;

    array-length v1, v1

    if-eqz v1, :cond_1

    const-string v1, " throws "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljava/lang/reflect/Constructor;->exceptionTypes:[Ljava/lang/Class;

    invoke-virtual {p0, v1}, Ljava/lang/reflect/Constructor;->toString([Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

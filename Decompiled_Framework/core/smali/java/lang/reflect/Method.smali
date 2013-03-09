.class public final Ljava/lang/reflect/Method;
.super Ljava/lang/reflect/AccessibleObject;
.source "Method.java"

# interfaces
.implements Ljava/lang/reflect/GenericDeclaration;
.implements Ljava/lang/reflect/Member;


# static fields
.field private static final NO_ANNOTATIONS:[Ljava/lang/annotation/Annotation;

.field public static final ORDER_BY_SIGNATURE:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private declaringClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private exceptionTypes:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private formalTypeParameters:[Ljava/lang/reflect/TypeVariable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/reflect/TypeVariable",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private genericExceptionTypes:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

.field private genericParameterTypes:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

.field private genericReturnType:Ljava/lang/reflect/Type;

.field private volatile genericTypesAreInitialized:Z

.field private name:Ljava/lang/String;

.field private parameterTypes:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private returnType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private slot:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/reflect/Method$1;

    invoke-direct {v0}, Ljava/lang/reflect/Method$1;-><init>()V

    sput-object v0, Ljava/lang/reflect/Method;->ORDER_BY_SIGNATURE:Ljava/util/Comparator;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/annotation/Annotation;

    sput-object v0, Ljava/lang/reflect/Method;->NO_ANNOTATIONS:[Ljava/lang/annotation/Annotation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/reflect/AccessibleObject;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/lang/reflect/Method;->genericTypesAreInitialized:Z

    iput-object p1, p0, Ljava/lang/reflect/Method;->declaringClass:Ljava/lang/Class;

    iput-object p5, p0, Ljava/lang/reflect/Method;->name:Ljava/lang/String;

    iput p6, p0, Ljava/lang/reflect/Method;->slot:I

    iput-object p2, p0, Ljava/lang/reflect/Method;->parameterTypes:[Ljava/lang/Class;

    iput-object p3, p0, Ljava/lang/reflect/Method;->exceptionTypes:[Ljava/lang/Class;

    iput-object p4, p0, Ljava/lang/reflect/Method;->returnType:Ljava/lang/Class;

    return-void
.end method

.method constructor <init>(Ljava/lang/reflect/Method;)V
    .locals 7

    iget-object v1, p1, Ljava/lang/reflect/Method;->declaringClass:Ljava/lang/Class;

    iget-object v2, p1, Ljava/lang/reflect/Method;->parameterTypes:[Ljava/lang/Class;

    iget-object v3, p1, Ljava/lang/reflect/Method;->exceptionTypes:[Ljava/lang/Class;

    iget-object v4, p1, Ljava/lang/reflect/Method;->returnType:Ljava/lang/Class;

    iget-object v5, p1, Ljava/lang/reflect/Method;->name:Ljava/lang/String;

    iget v6, p1, Ljava/lang/reflect/Method;->slot:I

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Ljava/lang/reflect/Method;-><init>(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;I)V

    iget-boolean v0, p1, Ljava/lang/reflect/AccessibleObject;->flag:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/lang/reflect/AccessibleObject;->flag:Z

    :cond_0
    return-void
.end method

.method static synthetic access$000(Ljava/lang/reflect/Method;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/lang/reflect/Method;->name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/reflect/Method;)[Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Ljava/lang/reflect/Method;->parameterTypes:[Ljava/lang/Class;

    return-object v0
.end method

.method static native getAnnotation(Ljava/lang/Class;ILjava/lang/Class;)Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<*>;I",
            "Ljava/lang/Class",
            "<TA;>;)TA;"
        }
    .end annotation
.end method

.method static native getDeclaredAnnotations(Ljava/lang/Class;I)[Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;I)[",
            "Ljava/lang/annotation/Annotation;"
        }
    .end annotation
.end method

.method private native getDefaultValue(Ljava/lang/Class;I)Ljava/lang/Object;
.end method

.method static native getMethodModifiers(Ljava/lang/Class;I)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;I)I"
        }
    .end annotation
.end method

.method static native getParameterAnnotations(Ljava/lang/Class;I)[[Ljava/lang/annotation/Annotation;
.end method

.method private getSignature()Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Ljava/lang/reflect/Method;->parameterTypes:[Ljava/lang/Class;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Ljava/lang/reflect/Method;->parameterTypes:[Ljava/lang/Class;

    aget-object v2, v2, v0

    invoke-virtual {p0, v2}, Ljava/lang/reflect/Method;->getSignature(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljava/lang/reflect/Method;->returnType:Ljava/lang/Class;

    invoke-virtual {p0, v2}, Ljava/lang/reflect/Method;->getSignature(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method static native getSignatureAnnotation(Ljava/lang/Class;I)[Ljava/lang/Object;
.end method

.method private declared-synchronized initGenericTypes()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Ljava/lang/reflect/Method;->genericTypesAreInitialized:Z

    if-nez v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getSignatureAttribute()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;

    iget-object v2, p0, Ljava/lang/reflect/Method;->declaringClass:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;-><init>(Ljava/lang/ClassLoader;)V

    iget-object v2, p0, Ljava/lang/reflect/Method;->exceptionTypes:[Ljava/lang/Class;

    invoke-virtual {v0, p0, v1, v2}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->parseForMethod(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;[Ljava/lang/Class;)V

    iget-object v2, v0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->formalTypeParameters:[Ljava/lang/reflect/TypeVariable;

    iput-object v2, p0, Ljava/lang/reflect/Method;->formalTypeParameters:[Ljava/lang/reflect/TypeVariable;

    iget-object v2, v0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->parameterTypes:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    iput-object v2, p0, Ljava/lang/reflect/Method;->genericParameterTypes:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    iget-object v2, v0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->exceptionTypes:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    iput-object v2, p0, Ljava/lang/reflect/Method;->genericExceptionTypes:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    iget-object v2, v0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->returnType:Ljava/lang/reflect/Type;

    iput-object v2, p0, Ljava/lang/reflect/Method;->genericReturnType:Ljava/lang/reflect/Type;

    const/4 v2, 0x1

    iput-boolean v2, p0, Ljava/lang/reflect/Method;->genericTypesAreInitialized:Z
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

.method private native invokeNative(Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;Ljava/lang/Class;IZ)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;IZ)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation
.end method

.method static native isAnnotationPresent(Ljava/lang/Class;ILjava/lang/Class;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;I",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)Z"
        }
    .end annotation
.end method

.method static noAnnotations(I)[[Ljava/lang/annotation/Annotation;
    .locals 3

    new-array v0, p0, [[Ljava/lang/annotation/Annotation;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    sget-object v2, Ljava/lang/reflect/Method;->NO_ANNOTATIONS:[Ljava/lang/annotation/Annotation;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;

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
    iget-object v0, p0, Ljava/lang/reflect/Method;->declaringClass:Ljava/lang/Class;

    iget v1, p0, Ljava/lang/reflect/Method;->slot:I

    invoke-static {v0, v1, p1}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;ILjava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;
    .locals 2

    iget-object v0, p0, Ljava/lang/reflect/Method;->declaringClass:Ljava/lang/Class;

    iget v1, p0, Ljava/lang/reflect/Method;->slot:I

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
            "<*>;"
        }
    .end annotation

    iget-object v0, p0, Ljava/lang/reflect/Method;->declaringClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getDefaultValue()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Ljava/lang/reflect/Method;->declaringClass:Ljava/lang/Class;

    iget v1, p0, Ljava/lang/reflect/Method;->slot:I

    invoke-direct {p0, v0, v1}, Ljava/lang/reflect/Method;->getDefaultValue(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

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

    iget-object v0, p0, Ljava/lang/reflect/Method;->exceptionTypes:[Ljava/lang/Class;

    if-nez v0, :cond_0

    sget-object v0, Llibcore/util/EmptyArray;->CLASS:[Ljava/lang/Class;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ljava/lang/reflect/Method;->exceptionTypes:[Ljava/lang/Class;

    invoke-virtual {v0}, [Ljava/lang/Class;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Class;

    goto :goto_0
.end method

.method public getGenericExceptionTypes()[Ljava/lang/reflect/Type;
    .locals 1

    invoke-direct {p0}, Ljava/lang/reflect/Method;->initGenericTypes()V

    iget-object v0, p0, Ljava/lang/reflect/Method;->genericExceptionTypes:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    invoke-static {v0}, Lorg/apache/harmony/luni/lang/reflect/Types;->getClonedTypeArray(Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;)[Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method public getGenericParameterTypes()[Ljava/lang/reflect/Type;
    .locals 1

    invoke-direct {p0}, Ljava/lang/reflect/Method;->initGenericTypes()V

    iget-object v0, p0, Ljava/lang/reflect/Method;->genericParameterTypes:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    invoke-static {v0}, Lorg/apache/harmony/luni/lang/reflect/Types;->getClonedTypeArray(Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;)[Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method public getGenericReturnType()Ljava/lang/reflect/Type;
    .locals 1

    invoke-direct {p0}, Ljava/lang/reflect/Method;->initGenericTypes()V

    iget-object v0, p0, Ljava/lang/reflect/Method;->genericReturnType:Ljava/lang/reflect/Type;

    invoke-static {v0}, Lorg/apache/harmony/luni/lang/reflect/Types;->getType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method public getModifiers()I
    .locals 2

    iget-object v0, p0, Ljava/lang/reflect/Method;->declaringClass:Ljava/lang/Class;

    iget v1, p0, Ljava/lang/reflect/Method;->slot:I

    invoke-static {v0, v1}, Ljava/lang/reflect/Method;->getMethodModifiers(Ljava/lang/Class;I)I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/lang/reflect/Method;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParameterAnnotations()[[Ljava/lang/annotation/Annotation;
    .locals 3

    iget-object v1, p0, Ljava/lang/reflect/Method;->declaringClass:Ljava/lang/Class;

    iget v2, p0, Ljava/lang/reflect/Method;->slot:I

    invoke-static {v1, v2}, Ljava/lang/reflect/Method;->getParameterAnnotations(Ljava/lang/Class;I)[[Ljava/lang/annotation/Annotation;

    move-result-object v0

    array-length v1, v0

    if-nez v1, :cond_0

    iget-object v1, p0, Ljava/lang/reflect/Method;->parameterTypes:[Ljava/lang/Class;

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

    iget-object v0, p0, Ljava/lang/reflect/Method;->parameterTypes:[Ljava/lang/Class;

    invoke-virtual {v0}, [Ljava/lang/Class;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Class;

    return-object v0
.end method

.method public getReturnType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    iget-object v0, p0, Ljava/lang/reflect/Method;->returnType:Ljava/lang/Class;

    return-object v0
.end method

.method getSignatureAttribute()Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Ljava/lang/reflect/Method;->declaringClass:Ljava/lang/Class;

    iget v2, p0, Ljava/lang/reflect/Method;->slot:I

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
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/reflect/Method;->initGenericTypes()V

    iget-object v0, p0, Ljava/lang/reflect/Method;->formalTypeParameters:[Ljava/lang/reflect/TypeVariable;

    invoke-virtual {v0}, [Ljava/lang/reflect/TypeVariable;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/TypeVariable;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Ljava/lang/reflect/Method;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public varargs invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    if-nez p2, :cond_0

    sget-object p2, Llibcore/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    :cond_0
    iget-object v3, p0, Ljava/lang/reflect/Method;->declaringClass:Ljava/lang/Class;

    iget-object v4, p0, Ljava/lang/reflect/Method;->parameterTypes:[Ljava/lang/Class;

    iget-object v5, p0, Ljava/lang/reflect/Method;->returnType:Ljava/lang/Class;

    iget v6, p0, Ljava/lang/reflect/Method;->slot:I

    iget-boolean v7, p0, Ljava/lang/reflect/AccessibleObject;->flag:Z

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v7}, Ljava/lang/reflect/Method;->invokeNative(Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;Ljava/lang/Class;IZ)Ljava/lang/Object;

    move-result-object v0

    return-object v0
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
    iget-object v0, p0, Ljava/lang/reflect/Method;->declaringClass:Ljava/lang/Class;

    iget v1, p0, Ljava/lang/reflect/Method;->slot:I

    invoke-static {v0, v1, p1}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;ILjava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public isBridge()Z
    .locals 3

    iget-object v1, p0, Ljava/lang/reflect/Method;->declaringClass:Ljava/lang/Class;

    iget v2, p0, Ljava/lang/reflect/Method;->slot:I

    invoke-static {v1, v2}, Ljava/lang/reflect/Method;->getMethodModifiers(Ljava/lang/Class;I)I

    move-result v0

    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSynthetic()Z
    .locals 3

    iget-object v1, p0, Ljava/lang/reflect/Method;->declaringClass:Ljava/lang/Class;

    iget v2, p0, Ljava/lang/reflect/Method;->slot:I

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

    iget-object v1, p0, Ljava/lang/reflect/Method;->declaringClass:Ljava/lang/Class;

    iget v2, p0, Ljava/lang/reflect/Method;->slot:I

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

.method public toGenericString()Ljava/lang/String;
    .locals 6

    const/16 v5, 0x20

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x50

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-direct {p0}, Ljava/lang/reflect/Method;->initGenericTypes()V

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v2

    if-eqz v2, :cond_0

    and-int/lit16 v4, v2, -0xc1

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v4, p0, Ljava/lang/reflect/Method;->formalTypeParameters:[Ljava/lang/reflect/TypeVariable;

    if-eqz v4, :cond_3

    iget-object v4, p0, Ljava/lang/reflect/Method;->formalTypeParameters:[Ljava/lang/reflect/TypeVariable;

    array-length v4, v4

    if-lez v4, :cond_3

    const/16 v4, 0x3c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_0
    iget-object v4, p0, Ljava/lang/reflect/Method;->formalTypeParameters:[Ljava/lang/reflect/TypeVariable;

    array-length v4, v4

    if-ge v1, v4, :cond_2

    iget-object v4, p0, Ljava/lang/reflect/Method;->formalTypeParameters:[Ljava/lang/reflect/TypeVariable;

    aget-object v4, v4, v1

    invoke-virtual {p0, v3, v4}, Ljava/lang/reflect/Method;->appendGenericType(Ljava/lang/StringBuilder;Ljava/lang/reflect/Type;)V

    iget-object v4, p0, Ljava/lang/reflect/Method;->formalTypeParameters:[Ljava/lang/reflect/TypeVariable;

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
    iget-object v4, p0, Ljava/lang/reflect/Method;->genericReturnType:Ljava/lang/reflect/Type;

    invoke-static {v4}, Lorg/apache/harmony/luni/lang/reflect/Types;->getType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Ljava/lang/reflect/Method;->appendGenericType(Ljava/lang/StringBuilder;Ljava/lang/reflect/Type;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Ljava/lang/reflect/Method;->appendArrayType(Ljava/lang/StringBuilder;Ljava/lang/Class;)V

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x28

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v4, p0, Ljava/lang/reflect/Method;->genericParameterTypes:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    invoke-static {v4}, Lorg/apache/harmony/luni/lang/reflect/Types;->getClonedTypeArray(Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;)[Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Ljava/lang/reflect/Method;->appendArrayGenericType(Ljava/lang/StringBuilder;[Ljava/lang/reflect/Type;)V

    const/16 v4, 0x29

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v4, p0, Ljava/lang/reflect/Method;->genericExceptionTypes:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    invoke-static {v4}, Lorg/apache/harmony/luni/lang/reflect/Types;->getClonedTypeArray(Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;)[Ljava/lang/reflect/Type;

    move-result-object v0

    array-length v4, v0

    if-lez v4, :cond_4

    const-string v4, " throws "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3, v0}, Ljava/lang/reflect/Method;->appendArrayGenericType(Ljava/lang/StringBuilder;[Ljava/lang/reflect/Type;)V

    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/16 v2, 0x20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Ljava/lang/reflect/Method;->returnType:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljava/lang/reflect/Method;->declaringClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljava/lang/reflect/Method;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljava/lang/reflect/Method;->parameterTypes:[Ljava/lang/Class;

    invoke-virtual {p0, v1}, Ljava/lang/reflect/Method;->toString([Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljava/lang/reflect/Method;->exceptionTypes:[Ljava/lang/Class;

    if-eqz v1, :cond_1

    iget-object v1, p0, Ljava/lang/reflect/Method;->exceptionTypes:[Ljava/lang/Class;

    array-length v1, v1

    if-eqz v1, :cond_1

    const-string v1, " throws "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljava/lang/reflect/Method;->exceptionTypes:[Ljava/lang/Class;

    invoke-virtual {p0, v1}, Ljava/lang/reflect/Method;->toString([Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

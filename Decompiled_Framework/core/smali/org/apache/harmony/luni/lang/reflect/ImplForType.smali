.class public final Lorg/apache/harmony/luni/lang/reflect/ImplForType;
.super Ljava/lang/Object;
.source "ImplForType.java"

# interfaces
.implements Ljava/lang/reflect/ParameterizedType;


# instance fields
.field private final args:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

.field private loader:Ljava/lang/ClassLoader;

.field private final ownerType0:Lorg/apache/harmony/luni/lang/reflect/ImplForType;

.field private ownerTypeRes:Ljava/lang/reflect/Type;

.field private rawType:Ljava/lang/Class;

.field private final rawTypeName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/apache/harmony/luni/lang/reflect/ImplForType;Ljava/lang/String;Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;Ljava/lang/ClassLoader;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/harmony/luni/lang/reflect/ImplForType;->ownerType0:Lorg/apache/harmony/luni/lang/reflect/ImplForType;

    iput-object p2, p0, Lorg/apache/harmony/luni/lang/reflect/ImplForType;->rawTypeName:Ljava/lang/String;

    iput-object p3, p0, Lorg/apache/harmony/luni/lang/reflect/ImplForType;->args:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    iput-object p4, p0, Lorg/apache/harmony/luni/lang/reflect/ImplForType;->loader:Ljava/lang/ClassLoader;

    return-void
.end method


# virtual methods
.method public getActualTypeArguments()[Ljava/lang/reflect/Type;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/luni/lang/reflect/ImplForType;->args:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;->getResolvedTypes()[Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {v0}, [Ljava/lang/reflect/Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public getOwnerType()Ljava/lang/reflect/Type;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/luni/lang/reflect/ImplForType;->ownerTypeRes:Ljava/lang/reflect/Type;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/harmony/luni/lang/reflect/ImplForType;->ownerType0:Lorg/apache/harmony/luni/lang/reflect/ImplForType;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/harmony/luni/lang/reflect/ImplForType;->ownerType0:Lorg/apache/harmony/luni/lang/reflect/ImplForType;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/lang/reflect/ImplForType;->getResolvedType()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/luni/lang/reflect/ImplForType;->ownerTypeRes:Ljava/lang/reflect/Type;

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/harmony/luni/lang/reflect/ImplForType;->ownerTypeRes:Ljava/lang/reflect/Type;

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/harmony/luni/lang/reflect/ImplForType;->getRawType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/luni/lang/reflect/ImplForType;->ownerTypeRes:Ljava/lang/reflect/Type;

    goto :goto_0
.end method

.method public getRawType()Ljava/lang/Class;
    .locals 4

    iget-object v1, p0, Lorg/apache/harmony/luni/lang/reflect/ImplForType;->rawType:Ljava/lang/Class;

    if-nez v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lorg/apache/harmony/luni/lang/reflect/ImplForType;->rawTypeName:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/apache/harmony/luni/lang/reflect/ImplForType;->loader:Ljava/lang/ClassLoader;

    invoke-static {v1, v2, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/harmony/luni/lang/reflect/ImplForType;->rawType:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    iget-object v1, p0, Lorg/apache/harmony/luni/lang/reflect/ImplForType;->rawType:Ljava/lang/Class;

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/TypeNotPresentException;

    iget-object v2, p0, Lorg/apache/harmony/luni/lang/reflect/ImplForType;->rawTypeName:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Ljava/lang/TypeNotPresentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic getRawType()Ljava/lang/reflect/Type;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/harmony/luni/lang/reflect/ImplForType;->getRawType()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method getResolvedType()Ljava/lang/reflect/Type;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/luni/lang/reflect/ImplForType;->args:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;->getResolvedTypes()[Ljava/lang/reflect/Type;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/harmony/luni/lang/reflect/ImplForType;->getRawType()Ljava/lang/Class;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/harmony/luni/lang/reflect/ImplForType;->rawTypeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/harmony/luni/lang/reflect/ImplForType;->args:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    invoke-virtual {v1}, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;->length()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/harmony/luni/lang/reflect/ImplForType;->args:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

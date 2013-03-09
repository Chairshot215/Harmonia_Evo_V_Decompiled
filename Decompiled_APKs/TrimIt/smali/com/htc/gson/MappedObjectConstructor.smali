.class final Lcom/htc/gson/MappedObjectConstructor;
.super Ljava/lang/Object;
.source "MappedObjectConstructor.java"

# interfaces
.implements Lcom/htc/gson/ObjectConstructor;


# static fields
.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field private final instanceCreatorMap:Lcom/htc/gson/ParameterizedTypeHandlerMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/gson/ParameterizedTypeHandlerMap",
            "<",
            "Lcom/htc/gson/InstanceCreator",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/htc/gson/MappedObjectConstructor;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/htc/gson/MappedObjectConstructor;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/htc/gson/ParameterizedTypeHandlerMap;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/gson/ParameterizedTypeHandlerMap",
            "<",
            "Lcom/htc/gson/InstanceCreator",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p1, instanceCreators:Lcom/htc/gson/ParameterizedTypeHandlerMap;,"Lcom/htc/gson/ParameterizedTypeHandlerMap<Lcom/htc/gson/InstanceCreator<*>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/htc/gson/MappedObjectConstructor;->instanceCreatorMap:Lcom/htc/gson/ParameterizedTypeHandlerMap;

    .line 47
    return-void
.end method

.method private constructWithNoArgConstructor(Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 5
    .parameter "typeOfT"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 64
    :try_start_0
    invoke-direct {p0, p1}, Lcom/htc/gson/MappedObjectConstructor;->getNoArgsConstructor(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 65
    .local v0, constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<TT;>;"
    if-nez v0, :cond_0

    .line 66
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No-args constructor for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " does not exist. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Register an InstanceCreator with Gson for this type to fix this problem."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .line 70
    .end local v0           #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<TT;>;"
    :catch_0
    move-exception v1

    .line 71
    .local v1, e:Ljava/lang/InstantiationException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to invoke no-args constructor for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Register an InstanceCreator with Gson for this type may fix this problem."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 69
    .end local v1           #e:Ljava/lang/InstantiationException;
    .restart local v0       #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<TT;>;"
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v2

    return-object v2

    .line 73
    .end local v0           #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<TT;>;"
    :catch_1
    move-exception v1

    .line 74
    .local v1, e:Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to invoke no-args constructor for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Register an InstanceCreator with Gson for this type may fix this problem."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 76
    .end local v1           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v1

    .line 77
    .local v1, e:Ljava/lang/reflect/InvocationTargetException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to invoke no-args constructor for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Register an InstanceCreator with Gson for this type may fix this problem."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private getNoArgsConstructor(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Constructor;
    .locals 8
    .parameter "typeOfT"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/reflect/Constructor",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 84
    new-instance v6, Lcom/htc/gson/TypeInfo;

    invoke-direct {v6, p1}, Lcom/htc/gson/TypeInfo;-><init>(Ljava/lang/reflect/Type;)V

    .line 85
    .local v6, typeInfo:Lcom/htc/gson/TypeInfo;
    invoke-virtual {v6}, Lcom/htc/gson/TypeInfo;->getRawClass()Ljava/lang/Class;

    move-result-object v1

    .line 86
    .local v1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v3

    check-cast v3, [Ljava/lang/reflect/Constructor;

    .line 87
    .local v3, declaredConstructors:[Ljava/lang/reflect/Constructor;,"[Ljava/lang/reflect/Constructor<TT;>;"
    const/4 v7, 0x1

    invoke-static {v3, v7}, Ljava/lang/reflect/AccessibleObject;->setAccessible([Ljava/lang/reflect/AccessibleObject;Z)V

    .line 88
    move-object v0, v3

    .local v0, arr$:[Ljava/lang/reflect/Constructor;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v2, v0, v4

    .line 89
    .local v2, constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<TT;>;"
    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    array-length v7, v7

    if-nez v7, :cond_0

    .line 93
    .end local v2           #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<TT;>;"
    :goto_1
    return-object v2

    .line 88
    .restart local v2       #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<TT;>;"
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 93
    .end local v2           #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<TT;>;"
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method


# virtual methods
.method public construct(Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 2
    .parameter "typeOfT"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 51
    iget-object v1, p0, Lcom/htc/gson/MappedObjectConstructor;->instanceCreatorMap:Lcom/htc/gson/ParameterizedTypeHandlerMap;

    invoke-virtual {v1, p1}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->getHandlerFor(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/gson/InstanceCreator;

    .line 52
    .local v0, creator:Lcom/htc/gson/InstanceCreator;,"Lcom/htc/gson/InstanceCreator<TT;>;"
    if-eqz v0, :cond_0

    .line 53
    invoke-interface {v0, p1}, Lcom/htc/gson/InstanceCreator;->createInstance(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    .line 55
    :goto_0
    return-object v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/gson/MappedObjectConstructor;->constructWithNoArgConstructor(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public constructArray(Ljava/lang/reflect/Type;I)Ljava/lang/Object;
    .locals 1
    .parameter "type"
    .parameter "length"

    .prologue
    .line 59
    invoke-static {p1}, Lcom/htc/gson/TypeUtils;->toRawClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method register(Ljava/lang/reflect/Type;Lcom/htc/gson/InstanceCreator;)V
    .locals 4
    .parameter "typeOfT"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "Lcom/htc/gson/InstanceCreator",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 104
    .local p2, creator:Lcom/htc/gson/InstanceCreator;,"Lcom/htc/gson/InstanceCreator<+TT;>;"
    iget-object v0, p0, Lcom/htc/gson/MappedObjectConstructor;->instanceCreatorMap:Lcom/htc/gson/ParameterizedTypeHandlerMap;

    invoke-virtual {v0, p1}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->hasSpecificHandlerFor(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    sget-object v0, Lcom/htc/gson/MappedObjectConstructor;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Overriding the existing InstanceCreator for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/htc/gson/MappedObjectConstructor;->instanceCreatorMap:Lcom/htc/gson/ParameterizedTypeHandlerMap;

    invoke-virtual {v0, p1, p2}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 108
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/htc/gson/MappedObjectConstructor;->instanceCreatorMap:Lcom/htc/gson/ParameterizedTypeHandlerMap;

    invoke-virtual {v0}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

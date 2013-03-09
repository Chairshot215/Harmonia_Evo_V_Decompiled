.class final Lcom/htc/gson/ParameterizedTypeHandlerMap;
.super Ljava/lang/Object;
.source "ParameterizedTypeHandlerMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Type;",
            "TT;>;"
        }
    .end annotation
.end field

.field private modifiable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/htc/gson/ParameterizedTypeHandlerMap;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/htc/gson/ParameterizedTypeHandlerMap;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 39
    .local p0, this:Lcom/htc/gson/ParameterizedTypeHandlerMap;,"Lcom/htc/gson/ParameterizedTypeHandlerMap<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/gson/ParameterizedTypeHandlerMap;->map:Ljava/util/Map;

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/gson/ParameterizedTypeHandlerMap;->modifiable:Z

    return-void
.end method

.method private typeToString(Ljava/lang/reflect/Type;)Ljava/lang/String;
    .locals 1
    .parameter "type"

    .prologue
    .line 138
    .local p0, this:Lcom/htc/gson/ParameterizedTypeHandlerMap;,"Lcom/htc/gson/ParameterizedTypeHandlerMap<TT;>;"
    invoke-static {p1}, Lcom/htc/gson/TypeUtils;->toRawClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public declared-synchronized copyOf()Lcom/htc/gson/ParameterizedTypeHandlerMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/htc/gson/ParameterizedTypeHandlerMap",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 110
    .local p0, this:Lcom/htc/gson/ParameterizedTypeHandlerMap;,"Lcom/htc/gson/ParameterizedTypeHandlerMap<TT;>;"
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/htc/gson/ParameterizedTypeHandlerMap;

    invoke-direct {v0}, Lcom/htc/gson/ParameterizedTypeHandlerMap;-><init>()V

    .line 111
    .local v0, copy:Lcom/htc/gson/ParameterizedTypeHandlerMap;,"Lcom/htc/gson/ParameterizedTypeHandlerMap<TT;>;"
    iget-object v3, p0, Lcom/htc/gson/ParameterizedTypeHandlerMap;->map:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 112
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/reflect/Type;TT;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Type;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 110
    .end local v0           #copy:Lcom/htc/gson/ParameterizedTypeHandlerMap;,"Lcom/htc/gson/ParameterizedTypeHandlerMap<TT;>;"
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/reflect/Type;TT;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 114
    .restart local v0       #copy:Lcom/htc/gson/ParameterizedTypeHandlerMap;,"Lcom/htc/gson/ParameterizedTypeHandlerMap<TT;>;"
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/reflect/Type;",
            "TT;>;>;"
        }
    .end annotation

    .prologue
    .line 118
    .local p0, this:Lcom/htc/gson/ParameterizedTypeHandlerMap;,"Lcom/htc/gson/ParameterizedTypeHandlerMap<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/gson/ParameterizedTypeHandlerMap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getHandlerFor(Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 4
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 84
    .local p0, this:Lcom/htc/gson/ParameterizedTypeHandlerMap;,"Lcom/htc/gson/ParameterizedTypeHandlerMap<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/htc/gson/ParameterizedTypeHandlerMap;->map:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 85
    .local v0, handler:Ljava/lang/Object;,"TT;"
    if-nez v0, :cond_1

    .line 86
    invoke-static {p1}, Lcom/htc/gson/TypeUtils;->toRawClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    .line 87
    .local v1, rawClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eq v1, p1, :cond_0

    .line 88
    invoke-virtual {p0, v1}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->getHandlerFor(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    .line 92
    :cond_0
    if-nez v0, :cond_1

    .line 93
    const-class v2, Ljava/util/Map;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 94
    iget-object v2, p0, Lcom/htc/gson/ParameterizedTypeHandlerMap;->map:Ljava/util/Map;

    const-class v3, Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 102
    .end local v1           #rawClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_1
    :goto_0
    monitor-exit p0

    return-object v0

    .line 95
    .restart local v1       #rawClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_2
    :try_start_1
    const-class v2, Ljava/util/Collection;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 96
    iget-object v2, p0, Lcom/htc/gson/ParameterizedTypeHandlerMap;->map:Ljava/util/Map;

    const-class v3, Ljava/util/Collection;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 97
    :cond_3
    const-class v2, Ljava/lang/Enum;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 98
    iget-object v2, p0, Lcom/htc/gson/ParameterizedTypeHandlerMap;->map:Ljava/util/Map;

    const-class v3, Ljava/lang/Enum;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 84
    .end local v0           #handler:Ljava/lang/Object;,"TT;"
    .end local v1           #rawClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized hasSpecificHandlerFor(Ljava/lang/reflect/Type;)Z
    .locals 1
    .parameter "type"

    .prologue
    .line 106
    .local p0, this:Lcom/htc/gson/ParameterizedTypeHandlerMap;,"Lcom/htc/gson/ParameterizedTypeHandlerMap<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/gson/ParameterizedTypeHandlerMap;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized makeUnmodifiable()V
    .locals 1

    .prologue
    .line 80
    .local p0, this:Lcom/htc/gson/ParameterizedTypeHandlerMap;,"Lcom/htc/gson/ParameterizedTypeHandlerMap<TT;>;"
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/htc/gson/ParameterizedTypeHandlerMap;->modifiable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    monitor-exit p0

    return-void

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V
    .locals 4
    .parameter "typeOfT"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, this:Lcom/htc/gson/ParameterizedTypeHandlerMap;,"Lcom/htc/gson/ParameterizedTypeHandlerMap<TT;>;"
    .local p2, value:Ljava/lang/Object;,"TT;"
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/htc/gson/ParameterizedTypeHandlerMap;->modifiable:Z

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attempted to modify an unmodifiable map."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 50
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->hasSpecificHandlerFor(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    sget-object v0, Lcom/htc/gson/ParameterizedTypeHandlerMap;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Overriding the existing type handler for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/htc/gson/ParameterizedTypeHandlerMap;->map:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized registerIfAbsent(Lcom/htc/gson/ParameterizedTypeHandlerMap;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/gson/ParameterizedTypeHandlerMap",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, this:Lcom/htc/gson/ParameterizedTypeHandlerMap;,"Lcom/htc/gson/ParameterizedTypeHandlerMap<TT;>;"
    .local p1, other:Lcom/htc/gson/ParameterizedTypeHandlerMap;,"Lcom/htc/gson/ParameterizedTypeHandlerMap<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/htc/gson/ParameterizedTypeHandlerMap;->modifiable:Z

    if-nez v2, :cond_0

    .line 59
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Attempted to modify an unmodifiable map."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 62
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 63
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/reflect/Type;TT;>;"
    iget-object v2, p0, Lcom/htc/gson/ParameterizedTypeHandlerMap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 64
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Type;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 67
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/reflect/Type;TT;>;"
    :cond_2
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized registerIfAbsent(Ljava/lang/reflect/Type;Ljava/lang/Object;)V
    .locals 2
    .parameter "typeOfT"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 70
    .local p0, this:Lcom/htc/gson/ParameterizedTypeHandlerMap;,"Lcom/htc/gson/ParameterizedTypeHandlerMap<TT;>;"
    .local p2, value:Ljava/lang/Object;,"TT;"
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/htc/gson/ParameterizedTypeHandlerMap;->modifiable:Z

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attempted to modify an unmodifiable map."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 74
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/htc/gson/ParameterizedTypeHandlerMap;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 75
    invoke-virtual {p0, p1, p2}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    :cond_1
    monitor-exit p0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 123
    .local p0, this:Lcom/htc/gson/ParameterizedTypeHandlerMap;,"Lcom/htc/gson/ParameterizedTypeHandlerMap<TT;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "{"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 124
    .local v3, sb:Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 125
    .local v1, first:Z
    iget-object v4, p0, Lcom/htc/gson/ParameterizedTypeHandlerMap;->map:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 126
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/reflect/Type;TT;>;"
    if-eqz v1, :cond_0

    .line 127
    const/4 v1, 0x0

    .line 131
    :goto_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/reflect/Type;

    invoke-direct {p0, v4}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->typeToString(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x3a

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 132
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 129
    :cond_0
    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 134
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/reflect/Type;TT;>;"
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

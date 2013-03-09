.class public abstract Lgnu/mapping/NamedLocation;
.super Lgnu/mapping/IndirectableLocation;
.source "NamedLocation.java"

# interfaces
.implements Ljava/util/Map$Entry;
.implements Lgnu/mapping/EnvironmentKey;


# instance fields
.field final name:Lgnu/mapping/Symbol;

.field next:Lgnu/mapping/NamedLocation;

.field final property:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lgnu/mapping/NamedLocation;)V
    .locals 1
    .parameter "loc"

    .prologue
    .line 40
    invoke-direct {p0}, Lgnu/mapping/IndirectableLocation;-><init>()V

    .line 41
    iget-object v0, p1, Lgnu/mapping/NamedLocation;->name:Lgnu/mapping/Symbol;

    iput-object v0, p0, Lgnu/mapping/NamedLocation;->name:Lgnu/mapping/Symbol;

    .line 42
    iget-object v0, p1, Lgnu/mapping/NamedLocation;->property:Ljava/lang/Object;

    iput-object v0, p0, Lgnu/mapping/NamedLocation;->property:Ljava/lang/Object;

    .line 43
    return-void
.end method

.method public constructor <init>(Lgnu/mapping/Symbol;Ljava/lang/Object;)V
    .locals 0
    .parameter "name"
    .parameter "property"

    .prologue
    .line 46
    invoke-direct {p0}, Lgnu/mapping/IndirectableLocation;-><init>()V

    .line 47
    iput-object p1, p0, Lgnu/mapping/NamedLocation;->name:Lgnu/mapping/Symbol;

    .line 48
    iput-object p2, p0, Lgnu/mapping/NamedLocation;->property:Ljava/lang/Object;

    .line 49
    return-void
.end method


# virtual methods
.method public entered()Z
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lgnu/mapping/NamedLocation;->next:Lgnu/mapping/NamedLocation;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .parameter "x"

    .prologue
    const/4 v6, 0x0

    .line 82
    instance-of v4, p1, Lgnu/mapping/NamedLocation;

    if-nez v4, :cond_0

    move v4, v6

    .line 95
    :goto_0
    return v4

    .line 84
    :cond_0
    move-object v0, p1

    check-cast v0, Lgnu/mapping/NamedLocation;

    move-object v1, v0

    .line 85
    .local v1, e2:Lgnu/mapping/NamedLocation;
    iget-object v4, p0, Lgnu/mapping/NamedLocation;->name:Lgnu/mapping/Symbol;

    if-nez v4, :cond_2

    iget-object v4, v1, Lgnu/mapping/NamedLocation;->name:Lgnu/mapping/Symbol;

    if-eqz v4, :cond_3

    :cond_1
    move v4, v6

    .line 86
    goto :goto_0

    .line 85
    :cond_2
    iget-object v4, p0, Lgnu/mapping/NamedLocation;->name:Lgnu/mapping/Symbol;

    iget-object v5, v1, Lgnu/mapping/NamedLocation;->name:Lgnu/mapping/Symbol;

    invoke-virtual {v4, v5}, Lgnu/mapping/Symbol;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 87
    :cond_3
    iget-object v4, p0, Lgnu/mapping/NamedLocation;->property:Ljava/lang/Object;

    iget-object v5, v1, Lgnu/mapping/NamedLocation;->property:Ljava/lang/Object;

    if-eq v4, v5, :cond_4

    move v4, v6

    .line 88
    goto :goto_0

    .line 89
    :cond_4
    invoke-virtual {p0}, Lgnu/mapping/NamedLocation;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 90
    .local v2, val1:Ljava/lang/Object;
    invoke-virtual {v1}, Lgnu/mapping/NamedLocation;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 91
    .local v3, val2:Ljava/lang/Object;
    if-ne v2, v3, :cond_5

    .line 92
    const/4 v4, 0x1

    goto :goto_0

    .line 93
    :cond_5
    if-eqz v2, :cond_6

    if-nez v3, :cond_7

    :cond_6
    move v4, v6

    .line 94
    goto :goto_0

    .line 95
    :cond_7
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_0
.end method

.method public getEnvironment()Lgnu/mapping/Environment;
    .locals 3

    .prologue
    .line 24
    move-object v1, p0

    .local v1, loc:Lgnu/mapping/NamedLocation;
    :goto_0
    if-eqz v1, :cond_1

    .line 26
    iget-object v2, v1, Lgnu/mapping/NamedLocation;->name:Lgnu/mapping/Symbol;

    if-nez v2, :cond_0

    .line 28
    iget-object v0, v1, Lgnu/mapping/NamedLocation;->value:Ljava/lang/Object;

    check-cast v0, Lgnu/mapping/Environment;

    .line 29
    .local v0, env:Lgnu/mapping/Environment;
    if-eqz v0, :cond_0

    move-object v2, v0

    .line 33
    .end local v0           #env:Lgnu/mapping/Environment;
    :goto_1
    return-object v2

    .line 24
    :cond_0
    iget-object v1, v1, Lgnu/mapping/NamedLocation;->next:Lgnu/mapping/NamedLocation;

    goto :goto_0

    .line 33
    :cond_1
    invoke-super {p0}, Lgnu/mapping/IndirectableLocation;->getEnvironment()Lgnu/mapping/Environment;

    move-result-object v2

    goto :goto_1
.end method

.method public final getKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lgnu/mapping/NamedLocation;->property:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 75
    iget-object v0, p0, Lgnu/mapping/NamedLocation;->name:Lgnu/mapping/Symbol;

    .line 77
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method

.method public final getKeyProperty()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lgnu/mapping/NamedLocation;->property:Ljava/lang/Object;

    return-object v0
.end method

.method public final getKeySymbol()Lgnu/mapping/Symbol;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lgnu/mapping/NamedLocation;->name:Lgnu/mapping/Symbol;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 100
    iget-object v2, p0, Lgnu/mapping/NamedLocation;->name:Lgnu/mapping/Symbol;

    invoke-virtual {v2}, Lgnu/mapping/Symbol;->hashCode()I

    move-result v2

    iget-object v3, p0, Lgnu/mapping/NamedLocation;->property:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    xor-int v0, v2, v3

    .line 101
    .local v0, h:I
    invoke-virtual {p0}, Lgnu/mapping/NamedLocation;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 102
    .local v1, val:Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 103
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    .line 104
    :cond_0
    return v0
.end method

.method public final matches(Lgnu/mapping/EnvironmentKey;)Z
    .locals 2
    .parameter "key"

    .prologue
    .line 63
    invoke-interface {p1}, Lgnu/mapping/EnvironmentKey;->getKeySymbol()Lgnu/mapping/Symbol;

    move-result-object v0

    iget-object v1, p0, Lgnu/mapping/NamedLocation;->name:Lgnu/mapping/Symbol;

    invoke-static {v0, v1}, Lgnu/mapping/Symbol;->equals(Lgnu/mapping/Symbol;Lgnu/mapping/Symbol;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lgnu/mapping/EnvironmentKey;->getKeyProperty()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lgnu/mapping/NamedLocation;->property:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final matches(Lgnu/mapping/Symbol;Ljava/lang/Object;)Z
    .locals 1
    .parameter "symbol"
    .parameter "property"

    .prologue
    .line 69
    iget-object v0, p0, Lgnu/mapping/NamedLocation;->name:Lgnu/mapping/Symbol;

    invoke-static {p1, v0}, Lgnu/mapping/Symbol;->equals(Lgnu/mapping/Symbol;Lgnu/mapping/Symbol;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgnu/mapping/NamedLocation;->property:Ljava/lang/Object;

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized setRestore(Ljava/lang/Object;)V
    .locals 2
    .parameter "oldValue"

    .prologue
    .line 123
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lgnu/mapping/NamedLocation;->value:Ljava/lang/Object;

    sget-object v1, Lgnu/mapping/NamedLocation;->INDIRECT_FLUIDS:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    .line 124
    iget-object v0, p0, Lgnu/mapping/NamedLocation;->base:Lgnu/mapping/Location;

    invoke-virtual {v0, p1}, Lgnu/mapping/Location;->setRestore(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    .end local p1
    :goto_0
    monitor-exit p0

    return-void

    .line 127
    .restart local p1
    :cond_0
    :try_start_1
    instance-of v0, p1, Lgnu/mapping/Location;

    if-eqz v0, :cond_1

    .line 129
    const/4 v0, 0x0

    iput-object v0, p0, Lgnu/mapping/NamedLocation;->value:Ljava/lang/Object;

    .line 130
    check-cast p1, Lgnu/mapping/Location;

    .end local p1
    iput-object p1, p0, Lgnu/mapping/NamedLocation;->base:Lgnu/mapping/Location;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 134
    .restart local p1
    :cond_1
    :try_start_2
    iput-object p1, p0, Lgnu/mapping/NamedLocation;->value:Ljava/lang/Object;

    .line 135
    const/4 v0, 0x0

    iput-object v0, p0, Lgnu/mapping/NamedLocation;->base:Lgnu/mapping/Location;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized setWithSave(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter "newValue"

    .prologue
    .line 109
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lgnu/mapping/NamedLocation;->value:Ljava/lang/Object;

    sget-object v3, Lgnu/mapping/NamedLocation;->INDIRECT_FLUIDS:Ljava/lang/Object;

    if-ne v2, v3, :cond_0

    .line 110
    iget-object v2, p0, Lgnu/mapping/NamedLocation;->base:Lgnu/mapping/Location;

    invoke-virtual {v2, p1}, Lgnu/mapping/Location;->setWithSave(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 118
    :goto_0
    monitor-exit p0

    return-object v2

    .line 111
    :cond_0
    :try_start_1
    iget-object v2, p0, Lgnu/mapping/NamedLocation;->name:Lgnu/mapping/Symbol;

    invoke-static {v2}, Lgnu/mapping/ThreadLocation;->makeAnonymous(Lgnu/mapping/Symbol;)Lgnu/mapping/ThreadLocation;

    move-result-object v1

    .line 112
    .local v1, thloc:Lgnu/mapping/ThreadLocation;
    iget-object v2, v1, Lgnu/mapping/ThreadLocation;->global:Lgnu/mapping/SharedLocation;

    iget-object v3, p0, Lgnu/mapping/NamedLocation;->base:Lgnu/mapping/Location;

    iput-object v3, v2, Lgnu/mapping/SharedLocation;->base:Lgnu/mapping/Location;

    .line 113
    iget-object v2, v1, Lgnu/mapping/ThreadLocation;->global:Lgnu/mapping/SharedLocation;

    iget-object v3, p0, Lgnu/mapping/NamedLocation;->value:Ljava/lang/Object;

    iput-object v3, v2, Lgnu/mapping/SharedLocation;->value:Ljava/lang/Object;

    .line 114
    invoke-virtual {p0, v1}, Lgnu/mapping/NamedLocation;->setAlias(Lgnu/mapping/Location;)V

    .line 115
    invoke-virtual {v1}, Lgnu/mapping/ThreadLocation;->getLocation()Lgnu/mapping/NamedLocation;

    move-result-object v0

    .line 116
    .local v0, entry:Lgnu/mapping/NamedLocation;
    iput-object p1, v0, Lgnu/mapping/NamedLocation;->value:Ljava/lang/Object;

    .line 117
    const/4 v2, 0x0

    iput-object v2, v0, Lgnu/mapping/NamedLocation;->base:Lgnu/mapping/Location;

    .line 118
    iget-object v2, v1, Lgnu/mapping/ThreadLocation;->global:Lgnu/mapping/SharedLocation;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 109
    .end local v0           #entry:Lgnu/mapping/NamedLocation;
    .end local v1           #thloc:Lgnu/mapping/ThreadLocation;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

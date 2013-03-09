.class public Lgnu/mapping/SharedLocation;
.super Lgnu/mapping/NamedLocation;
.source "SharedLocation.java"


# instance fields
.field timestamp:I


# direct methods
.method public constructor <init>(Lgnu/mapping/Symbol;Ljava/lang/Object;I)V
    .locals 0
    .parameter "symbol"
    .parameter "property"
    .parameter "timestamp"

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lgnu/mapping/NamedLocation;-><init>(Lgnu/mapping/Symbol;Ljava/lang/Object;)V

    .line 16
    iput p3, p0, Lgnu/mapping/SharedLocation;->timestamp:I

    .line 17
    return-void
.end method


# virtual methods
.method public final declared-synchronized get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "defaultValue"

    .prologue
    .line 21
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lgnu/mapping/SharedLocation;->base:Lgnu/mapping/Location;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgnu/mapping/SharedLocation;->base:Lgnu/mapping/Location;

    invoke-virtual {v0, p1}, Lgnu/mapping/Location;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lgnu/mapping/SharedLocation;->value:Ljava/lang/Object;

    sget-object v1, Lgnu/mapping/Location;->UNBOUND:Ljava/lang/String;

    if-ne v0, v1, :cond_1

    move-object v0, p1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lgnu/mapping/SharedLocation;->value:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isBound()Z
    .locals 2

    .prologue
    .line 27
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lgnu/mapping/SharedLocation;->base:Lgnu/mapping/Location;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgnu/mapping/SharedLocation;->base:Lgnu/mapping/Location;

    invoke-virtual {v0}, Lgnu/mapping/Location;->isBound()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lgnu/mapping/SharedLocation;->value:Ljava/lang/Object;

    sget-object v1, Lgnu/mapping/Location;->UNBOUND:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized set(Ljava/lang/Object;)V
    .locals 3
    .parameter "newValue"

    .prologue
    .line 32
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lgnu/mapping/SharedLocation;->base:Lgnu/mapping/Location;

    if-nez v0, :cond_0

    .line 33
    iput-object p1, p0, Lgnu/mapping/SharedLocation;->value:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    :goto_0
    monitor-exit p0

    return-void

    .line 34
    :cond_0
    :try_start_1
    iget-object v0, p0, Lgnu/mapping/SharedLocation;->value:Ljava/lang/Object;

    sget-object v1, Lgnu/mapping/SharedLocation;->DIRECT_ON_SET:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lgnu/mapping/SharedLocation;->base:Lgnu/mapping/Location;

    .line 37
    iput-object p1, p0, Lgnu/mapping/SharedLocation;->value:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 32
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 39
    :cond_1
    :try_start_2
    iget-object v0, p0, Lgnu/mapping/SharedLocation;->base:Lgnu/mapping/Location;

    invoke-virtual {v0}, Lgnu/mapping/Location;->isConstant()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 40
    invoke-virtual {p0}, Lgnu/mapping/SharedLocation;->getEnvironment()Lgnu/mapping/Environment;

    move-result-object v0

    invoke-virtual {p0}, Lgnu/mapping/SharedLocation;->getKeySymbol()Lgnu/mapping/Symbol;

    move-result-object v1

    invoke-virtual {p0}, Lgnu/mapping/SharedLocation;->getKeyProperty()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Lgnu/mapping/Environment;->put(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 42
    :cond_2
    iget-object v0, p0, Lgnu/mapping/SharedLocation;->base:Lgnu/mapping/Location;

    invoke-virtual {v0, p1}, Lgnu/mapping/Location;->set(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

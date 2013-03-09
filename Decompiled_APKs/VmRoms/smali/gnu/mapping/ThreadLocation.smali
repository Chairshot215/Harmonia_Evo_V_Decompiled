.class public Lgnu/mapping/ThreadLocation;
.super Lgnu/mapping/NamedLocation;
.source "ThreadLocation.java"

# interfaces
.implements Lgnu/mapping/Named;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgnu/mapping/ThreadLocation$InheritingLocation;
    }
.end annotation


# static fields
.field public static final ANONYMOUS:Ljava/lang/String;

.field static counter:I

.field static env:Lgnu/mapping/SimpleEnvironment;


# instance fields
.field global:Lgnu/mapping/SharedLocation;

.field private hash:I

.field private thLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lgnu/mapping/NamedLocation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    new-instance v0, Ljava/lang/String;

    const-string v1, "(dynamic)"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgnu/mapping/ThreadLocation;->ANONYMOUS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "param#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lgnu/mapping/ThreadLocation;->nextCounter()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lgnu/mapping/ThreadLocation;-><init>(Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method private constructor <init>(Lgnu/mapping/Symbol;)V
    .locals 5
    .parameter "name"

    .prologue
    const/4 v4, 0x0

    .line 45
    sget-object v1, Lgnu/mapping/ThreadLocation;->ANONYMOUS:Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lgnu/mapping/NamedLocation;-><init>(Lgnu/mapping/Symbol;Ljava/lang/Object;)V

    .line 46
    new-instance v1, Lgnu/mapping/ThreadLocation$InheritingLocation;

    invoke-direct {v1, p0}, Lgnu/mapping/ThreadLocation$InheritingLocation;-><init>(Lgnu/mapping/ThreadLocation;)V

    iput-object v1, p0, Lgnu/mapping/ThreadLocation;->thLocal:Ljava/lang/ThreadLocal;

    .line 47
    if-nez p1, :cond_0

    move-object v0, v4

    .line 48
    .local v0, str:Ljava/lang/String;
    :goto_0
    new-instance v1, Lgnu/mapping/SharedLocation;

    invoke-static {v0}, Lgnu/mapping/Symbol;->makeUninterned(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v4, v3}, Lgnu/mapping/SharedLocation;-><init>(Lgnu/mapping/Symbol;Ljava/lang/Object;I)V

    iput-object v1, p0, Lgnu/mapping/ThreadLocation;->global:Lgnu/mapping/SharedLocation;

    .line 49
    return-void

    .line 47
    .end local v0           #str:Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Lgnu/mapping/Symbol;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method public constructor <init>(Lgnu/mapping/Symbol;Ljava/lang/Object;Lgnu/mapping/SharedLocation;)V
    .locals 2
    .parameter "name"
    .parameter "property"
    .parameter "global"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lgnu/mapping/NamedLocation;-><init>(Lgnu/mapping/Symbol;Ljava/lang/Object;)V

    .line 54
    invoke-virtual {p1}, Lgnu/mapping/Symbol;->hashCode()I

    move-result v0

    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/mapping/ThreadLocation;->hash:I

    .line 55
    iput-object p3, p0, Lgnu/mapping/ThreadLocation;->global:Lgnu/mapping/SharedLocation;

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .parameter "name"

    .prologue
    .line 38
    invoke-static {p1}, Lgnu/mapping/Symbol;->makeUninterned(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    sget-object v1, Lgnu/mapping/ThreadLocation;->ANONYMOUS:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lgnu/mapping/NamedLocation;-><init>(Lgnu/mapping/Symbol;Ljava/lang/Object;)V

    .line 39
    new-instance v0, Lgnu/mapping/ThreadLocation$InheritingLocation;

    invoke-direct {v0, p0}, Lgnu/mapping/ThreadLocation$InheritingLocation;-><init>(Lgnu/mapping/ThreadLocation;)V

    iput-object v0, p0, Lgnu/mapping/ThreadLocation;->thLocal:Ljava/lang/ThreadLocal;

    .line 40
    new-instance v0, Lgnu/mapping/SharedLocation;

    iget-object v1, p0, Lgnu/mapping/ThreadLocation;->name:Lgnu/mapping/Symbol;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lgnu/mapping/SharedLocation;-><init>(Lgnu/mapping/Symbol;Ljava/lang/Object;I)V

    iput-object v0, p0, Lgnu/mapping/ThreadLocation;->global:Lgnu/mapping/SharedLocation;

    .line 41
    return-void
.end method

.method public static declared-synchronized getInstance(Lgnu/mapping/Symbol;Ljava/lang/Object;)Lgnu/mapping/ThreadLocation;
    .locals 5
    .parameter "name"
    .parameter "property"

    .prologue
    .line 144
    const-class v2, Lgnu/mapping/ThreadLocation;

    monitor-enter v2

    :try_start_0
    sget-object v3, Lgnu/mapping/ThreadLocation;->env:Lgnu/mapping/SimpleEnvironment;

    if-nez v3, :cond_0

    .line 145
    new-instance v3, Lgnu/mapping/SimpleEnvironment;

    const-string v4, "[thread-locations]"

    invoke-direct {v3, v4}, Lgnu/mapping/SimpleEnvironment;-><init>(Ljava/lang/String;)V

    sput-object v3, Lgnu/mapping/ThreadLocation;->env:Lgnu/mapping/SimpleEnvironment;

    .line 146
    :cond_0
    sget-object v3, Lgnu/mapping/ThreadLocation;->env:Lgnu/mapping/SimpleEnvironment;

    invoke-virtual {v3, p0, p1}, Lgnu/mapping/SimpleEnvironment;->getLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;)Lgnu/mapping/Location;

    move-result-object v0

    check-cast v0, Lgnu/mapping/IndirectableLocation;

    .line 148
    .local v0, loc:Lgnu/mapping/IndirectableLocation;
    iget-object v3, v0, Lgnu/mapping/IndirectableLocation;->base:Lgnu/mapping/Location;

    if-eqz v3, :cond_1

    .line 149
    iget-object p0, v0, Lgnu/mapping/IndirectableLocation;->base:Lgnu/mapping/Location;

    .end local p0
    check-cast p0, Lgnu/mapping/ThreadLocation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, p0

    .line 152
    :goto_0
    monitor-exit v2

    return-object v3

    .line 150
    .restart local p0
    :cond_1
    :try_start_1
    new-instance v1, Lgnu/mapping/ThreadLocation;

    const/4 v3, 0x0

    invoke-direct {v1, p0, p1, v3}, Lgnu/mapping/ThreadLocation;-><init>(Lgnu/mapping/Symbol;Ljava/lang/Object;Lgnu/mapping/SharedLocation;)V

    .line 151
    .local v1, tloc:Lgnu/mapping/ThreadLocation;
    iput-object v1, v0, Lgnu/mapping/IndirectableLocation;->base:Lgnu/mapping/Location;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v3, v1

    .line 152
    goto :goto_0

    .line 144
    .end local v0           #loc:Lgnu/mapping/IndirectableLocation;
    .end local v1           #tloc:Lgnu/mapping/ThreadLocation;
    .end local p0
    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3
.end method

.method public static makeAnonymous(Lgnu/mapping/Symbol;)Lgnu/mapping/ThreadLocation;
    .locals 1
    .parameter "name"

    .prologue
    .line 71
    new-instance v0, Lgnu/mapping/ThreadLocation;

    invoke-direct {v0, p0}, Lgnu/mapping/ThreadLocation;-><init>(Lgnu/mapping/Symbol;)V

    return-object v0
.end method

.method public static makeAnonymous(Ljava/lang/String;)Lgnu/mapping/ThreadLocation;
    .locals 1
    .parameter "name"

    .prologue
    .line 63
    new-instance v0, Lgnu/mapping/ThreadLocation;

    invoke-direct {v0, p0}, Lgnu/mapping/ThreadLocation;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static declared-synchronized nextCounter()I
    .locals 2

    .prologue
    .line 12
    const-class v0, Lgnu/mapping/ThreadLocation;

    monitor-enter v0

    :try_start_0
    sget v1, Lgnu/mapping/ThreadLocation;->counter:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lgnu/mapping/ThreadLocation;->counter:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "defaultValue"

    .prologue
    .line 105
    invoke-virtual {p0}, Lgnu/mapping/ThreadLocation;->getLocation()Lgnu/mapping/NamedLocation;

    move-result-object v0

    invoke-virtual {v0, p1}, Lgnu/mapping/NamedLocation;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getLocation()Lgnu/mapping/NamedLocation;
    .locals 6

    .prologue
    .line 88
    iget-object v1, p0, Lgnu/mapping/ThreadLocation;->property:Ljava/lang/Object;

    sget-object v2, Lgnu/mapping/ThreadLocation;->ANONYMOUS:Ljava/lang/String;

    if-eq v1, v2, :cond_0

    .line 90
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v1

    iget-object v2, p0, Lgnu/mapping/ThreadLocation;->name:Lgnu/mapping/Symbol;

    iget-object v3, p0, Lgnu/mapping/ThreadLocation;->property:Ljava/lang/Object;

    iget v4, p0, Lgnu/mapping/ThreadLocation;->hash:I

    const/4 v5, 0x1

    invoke-virtual {v1, v2, v3, v4, v5}, Lgnu/mapping/Environment;->getLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;IZ)Lgnu/mapping/NamedLocation;

    move-result-object v1

    .line 100
    :goto_0
    return-object v1

    .line 92
    :cond_0
    iget-object v1, p0, Lgnu/mapping/ThreadLocation;->thLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/NamedLocation;

    .line 93
    .local v0, entry:Lgnu/mapping/NamedLocation;
    if-nez v0, :cond_2

    .line 95
    new-instance v0, Lgnu/mapping/SharedLocation;

    .end local v0           #entry:Lgnu/mapping/NamedLocation;
    iget-object v1, p0, Lgnu/mapping/ThreadLocation;->name:Lgnu/mapping/Symbol;

    iget-object v2, p0, Lgnu/mapping/ThreadLocation;->property:Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lgnu/mapping/SharedLocation;-><init>(Lgnu/mapping/Symbol;Ljava/lang/Object;I)V

    .line 96
    .restart local v0       #entry:Lgnu/mapping/NamedLocation;
    iget-object v1, p0, Lgnu/mapping/ThreadLocation;->global:Lgnu/mapping/SharedLocation;

    if-eqz v1, :cond_1

    .line 97
    iget-object v1, p0, Lgnu/mapping/ThreadLocation;->global:Lgnu/mapping/SharedLocation;

    invoke-virtual {v0, v1}, Lgnu/mapping/NamedLocation;->setBase(Lgnu/mapping/Location;)V

    .line 98
    :cond_1
    iget-object v1, p0, Lgnu/mapping/ThreadLocation;->thLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_2
    move-object v1, v0

    .line 100
    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lgnu/mapping/ThreadLocation;->name:Lgnu/mapping/Symbol;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lgnu/mapping/ThreadLocation;->name:Lgnu/mapping/Symbol;

    invoke-virtual {v0}, Lgnu/mapping/Symbol;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSymbol()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lgnu/mapping/ThreadLocation;->name:Lgnu/mapping/Symbol;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgnu/mapping/ThreadLocation;->property:Ljava/lang/Object;

    sget-object v1, Lgnu/mapping/ThreadLocation;->ANONYMOUS:Ljava/lang/String;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lgnu/mapping/ThreadLocation;->global:Lgnu/mapping/SharedLocation;

    invoke-virtual {v0}, Lgnu/mapping/SharedLocation;->getKeySymbol()Lgnu/mapping/Symbol;

    move-result-object v0

    iget-object v1, p0, Lgnu/mapping/ThreadLocation;->name:Lgnu/mapping/Symbol;

    if-ne v0, v1, :cond_0

    .line 131
    iget-object v0, p0, Lgnu/mapping/ThreadLocation;->name:Lgnu/mapping/Symbol;

    invoke-virtual {v0}, Lgnu/mapping/Symbol;->toString()Ljava/lang/String;

    move-result-object v0

    .line 132
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lgnu/mapping/ThreadLocation;->name:Lgnu/mapping/Symbol;

    goto :goto_0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 110
    invoke-virtual {p0}, Lgnu/mapping/ThreadLocation;->getLocation()Lgnu/mapping/NamedLocation;

    move-result-object v0

    invoke-virtual {v0, p1}, Lgnu/mapping/NamedLocation;->set(Ljava/lang/Object;)V

    .line 111
    return-void
.end method

.method public setGlobal(Ljava/lang/Object;)V
    .locals 4
    .parameter "value"

    .prologue
    .line 77
    monitor-enter p0

    .line 79
    :try_start_0
    iget-object v0, p0, Lgnu/mapping/ThreadLocation;->global:Lgnu/mapping/SharedLocation;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Lgnu/mapping/SharedLocation;

    iget-object v1, p0, Lgnu/mapping/ThreadLocation;->name:Lgnu/mapping/Symbol;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lgnu/mapping/SharedLocation;-><init>(Lgnu/mapping/Symbol;Ljava/lang/Object;I)V

    iput-object v0, p0, Lgnu/mapping/ThreadLocation;->global:Lgnu/mapping/SharedLocation;

    .line 81
    :cond_0
    iget-object v0, p0, Lgnu/mapping/ThreadLocation;->global:Lgnu/mapping/SharedLocation;

    invoke-virtual {v0, p1}, Lgnu/mapping/SharedLocation;->set(Ljava/lang/Object;)V

    .line 82
    monitor-exit p0

    .line 83
    return-void

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 135
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setName not allowed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setRestore(Ljava/lang/Object;)V
    .locals 1
    .parameter "oldValue"

    .prologue
    .line 119
    invoke-virtual {p0}, Lgnu/mapping/ThreadLocation;->getLocation()Lgnu/mapping/NamedLocation;

    move-result-object v0

    invoke-virtual {v0, p1}, Lgnu/mapping/NamedLocation;->setRestore(Ljava/lang/Object;)V

    .line 120
    return-void
.end method

.method public setWithSave(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "newValue"

    .prologue
    .line 114
    invoke-virtual {p0}, Lgnu/mapping/ThreadLocation;->getLocation()Lgnu/mapping/NamedLocation;

    move-result-object v0

    invoke-virtual {v0, p1}, Lgnu/mapping/NamedLocation;->setWithSave(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

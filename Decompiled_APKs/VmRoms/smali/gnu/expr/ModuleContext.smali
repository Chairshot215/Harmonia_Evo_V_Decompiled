.class public Lgnu/expr/ModuleContext;
.super Ljava/lang/Object;
.source "ModuleContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgnu/expr/ModuleContext$ClassToInstanceMap;
    }
.end annotation


# static fields
.field public static IN_HTTP_SERVER:I

.field public static IN_SERVLET:I

.field static global:Lgnu/expr/ModuleContext;


# instance fields
.field flags:I

.field manager:Lgnu/expr/ModuleManager;

.field private table:Lgnu/expr/ModuleContext$ClassToInstanceMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 15
    new-instance v0, Lgnu/expr/ModuleContext;

    sget-object v1, Lgnu/expr/ModuleManager;->instance:Lgnu/expr/ModuleManager;

    invoke-direct {v0, v1}, Lgnu/expr/ModuleContext;-><init>(Lgnu/expr/ModuleManager;)V

    sput-object v0, Lgnu/expr/ModuleContext;->global:Lgnu/expr/ModuleContext;

    .line 18
    const/4 v0, 0x1

    sput v0, Lgnu/expr/ModuleContext;->IN_HTTP_SERVER:I

    .line 19
    const/4 v0, 0x2

    sput v0, Lgnu/expr/ModuleContext;->IN_SERVLET:I

    return-void
.end method

.method public constructor <init>(Lgnu/expr/ModuleManager;)V
    .locals 1
    .parameter "manager"

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lgnu/expr/ModuleContext$ClassToInstanceMap;

    invoke-direct {v0}, Lgnu/expr/ModuleContext$ClassToInstanceMap;-><init>()V

    iput-object v0, p0, Lgnu/expr/ModuleContext;->table:Lgnu/expr/ModuleContext$ClassToInstanceMap;

    .line 27
    iput-object p1, p0, Lgnu/expr/ModuleContext;->manager:Lgnu/expr/ModuleManager;

    .line 28
    return-void
.end method

.method public static getContext()Lgnu/expr/ModuleContext;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lgnu/expr/ModuleContext;->global:Lgnu/expr/ModuleContext;

    return-object v0
.end method


# virtual methods
.method public addFlags(I)V
    .locals 1
    .parameter "flags"

    .prologue
    .line 23
    iget v0, p0, Lgnu/expr/ModuleContext;->flags:I

    or-int/2addr v0, p1

    iput v0, p0, Lgnu/expr/ModuleContext;->flags:I

    return-void
.end method

.method public declared-synchronized clear()V
    .locals 1

    .prologue
    .line 113
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lgnu/expr/ModuleContext;->table:Lgnu/expr/ModuleContext$ClassToInstanceMap;

    invoke-virtual {v0}, Lgnu/expr/ModuleContext$ClassToInstanceMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    monitor-exit p0

    return-void

    .line 113
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public findFromInstance(Ljava/lang/Object;)Lgnu/expr/ModuleInfo;
    .locals 3
    .parameter "instance"

    .prologue
    .line 99
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 100
    .local v1, instanceClass:Ljava/lang/Class;
    monitor-enter p0

    .line 102
    :try_start_0
    iget-object v2, p0, Lgnu/expr/ModuleContext;->manager:Lgnu/expr/ModuleManager;

    invoke-static {v1}, Lgnu/expr/ModuleManager;->findWithClass(Ljava/lang/Class;)Lgnu/expr/ModuleInfo;

    move-result-object v0

    .line 103
    .local v0, info:Lgnu/expr/ModuleInfo;
    invoke-virtual {p0, p1}, Lgnu/expr/ModuleContext;->setInstance(Ljava/lang/Object;)V

    .line 104
    monitor-exit p0

    return-object v0

    .line 105
    .end local v0           #info:Lgnu/expr/ModuleInfo;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public declared-synchronized findInstance(Lgnu/expr/ModuleInfo;)Ljava/lang/Object;
    .locals 6
    .parameter "info"

    .prologue
    .line 50
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lgnu/expr/ModuleInfo;->getModuleClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 57
    .local v0, clas:Ljava/lang/Class;
    :try_start_1
    invoke-virtual {p0, v0}, Lgnu/expr/ModuleContext;->findInstance(Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    monitor-exit p0

    return-object v3

    .line 52
    .end local v0           #clas:Ljava/lang/Class;
    :catch_0
    move-exception v2

    .line 54
    .local v2, ex:Ljava/lang/ClassNotFoundException;
    :try_start_2
    invoke-virtual {p1}, Lgnu/expr/ModuleInfo;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, cname:Ljava/lang/String;
    new-instance v3, Lgnu/mapping/WrappedException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cannot find module "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lgnu/mapping/WrappedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 50
    .end local v1           #cname:Ljava/lang/String;
    .end local v2           #ex:Ljava/lang/ClassNotFoundException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized findInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5
    .parameter "clas"

    .prologue
    .line 67
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lgnu/expr/ModuleContext;->table:Lgnu/expr/ModuleContext$ClassToInstanceMap;

    invoke-virtual {v2, p1}, Lgnu/expr/ModuleContext$ClassToInstanceMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 68
    .local v1, inst:Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 74
    :try_start_1
    const-string v2, "$instance"

    invoke-virtual {p1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 87
    :goto_0
    :try_start_2
    invoke-virtual {p0, v1}, Lgnu/expr/ModuleContext;->setInstance(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 89
    :cond_0
    monitor-exit p0

    return-object v1

    .line 76
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 79
    .local v0, ex:Ljava/lang/NoSuchFieldException;
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v1

    goto :goto_0

    .line 82
    .end local v0           #ex:Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 84
    .local v0, ex:Ljava/lang/Throwable;
    :try_start_4
    new-instance v2, Lgnu/mapping/WrappedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception while initializing module "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lgnu/mapping/WrappedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 67
    .end local v0           #ex:Ljava/lang/Throwable;
    .end local v1           #inst:Ljava/lang/Object;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public getFlags()I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lgnu/expr/ModuleContext;->flags:I

    return v0
.end method

.method public getManager()Lgnu/expr/ModuleManager;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lgnu/expr/ModuleContext;->manager:Lgnu/expr/ModuleManager;

    return-object v0
.end method

.method public declared-synchronized searchInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .parameter "clas"

    .prologue
    .line 62
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lgnu/expr/ModuleContext;->table:Lgnu/expr/ModuleContext$ClassToInstanceMap;

    invoke-virtual {v0, p1}, Lgnu/expr/ModuleContext$ClassToInstanceMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
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

.method public setFlags(I)V
    .locals 0
    .parameter "flags"

    .prologue
    .line 22
    iput p1, p0, Lgnu/expr/ModuleContext;->flags:I

    return-void
.end method

.method public declared-synchronized setInstance(Ljava/lang/Object;)V
    .locals 2
    .parameter "instance"

    .prologue
    .line 94
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lgnu/expr/ModuleContext;->table:Lgnu/expr/ModuleContext$ClassToInstanceMap;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lgnu/expr/ModuleContext$ClassToInstanceMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    monitor-exit p0

    return-void

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.class public Lgnu/mapping/ProcLocation;
.super Lgnu/mapping/Location;
.source "ProcLocation.java"


# instance fields
.field args:[Ljava/lang/Object;

.field proc:Lgnu/mapping/Procedure;


# direct methods
.method public constructor <init>(Lgnu/mapping/Procedure;[Ljava/lang/Object;)V
    .locals 0
    .parameter "proc"
    .parameter "args"

    .prologue
    .line 14
    invoke-direct {p0}, Lgnu/mapping/Location;-><init>()V

    .line 15
    iput-object p1, p0, Lgnu/mapping/ProcLocation;->proc:Lgnu/mapping/Procedure;

    .line 16
    iput-object p2, p0, Lgnu/mapping/ProcLocation;->args:[Ljava/lang/Object;

    .line 17
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter "defaultValue"

    .prologue
    .line 23
    :try_start_0
    iget-object v1, p0, Lgnu/mapping/ProcLocation;->proc:Lgnu/mapping/Procedure;

    iget-object v2, p0, Lgnu/mapping/ProcLocation;->args:[Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lgnu/mapping/Procedure;->applyN([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    return-object v1

    .line 25
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 27
    .local v0, ex:Ljava/lang/RuntimeException;
    throw v0

    .line 29
    .end local v0           #ex:Ljava/lang/RuntimeException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 31
    .local v0, ex:Ljava/lang/Error;
    throw v0

    .line 33
    .end local v0           #ex:Ljava/lang/Error;
    :catch_2
    move-exception v1

    move-object v0, v1

    .line 35
    .local v0, ex:Ljava/lang/Throwable;
    new-instance v1, Lgnu/mapping/WrappedException;

    invoke-direct {v1, v0}, Lgnu/mapping/WrappedException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isBound()Z
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x1

    return v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 5
    .parameter "value"

    .prologue
    const/4 v4, 0x0

    .line 41
    iget-object v3, p0, Lgnu/mapping/ProcLocation;->args:[Ljava/lang/Object;

    array-length v1, v3

    .line 42
    .local v1, len:I
    add-int/lit8 v3, v1, 0x1

    new-array v2, v3, [Ljava/lang/Object;

    .line 43
    .local v2, xargs:[Ljava/lang/Object;
    aput-object p1, v2, v1

    .line 44
    iget-object v3, p0, Lgnu/mapping/ProcLocation;->args:[Ljava/lang/Object;

    invoke-static {v3, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 47
    :try_start_0
    iget-object v3, p0, Lgnu/mapping/ProcLocation;->proc:Lgnu/mapping/Procedure;

    invoke-virtual {v3, v2}, Lgnu/mapping/Procedure;->setN([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    .line 61
    return-void

    .line 49
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 51
    .local v0, ex:Ljava/lang/RuntimeException;
    throw v0

    .line 53
    .end local v0           #ex:Ljava/lang/RuntimeException;
    :catch_1
    move-exception v3

    move-object v0, v3

    .line 55
    .local v0, ex:Ljava/lang/Error;
    throw v0

    .line 57
    .end local v0           #ex:Ljava/lang/Error;
    :catch_2
    move-exception v3

    move-object v0, v3

    .line 59
    .local v0, ex:Ljava/lang/Throwable;
    new-instance v3, Lgnu/mapping/WrappedException;

    invoke-direct {v3, v0}, Lgnu/mapping/WrappedException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

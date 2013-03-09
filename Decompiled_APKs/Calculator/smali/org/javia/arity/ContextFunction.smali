.class public abstract Lorg/javia/arity/ContextFunction;
.super Lorg/javia/arity/Function;
.source "ContextFunction.java"


# static fields
.field private static final NO_ARGS:[D

.field private static final NO_ARGS_COMPLEX:[Lorg/javia/arity/Complex;

.field private static context:Lorg/javia/arity/EvalContext;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4
    new-instance v0, Lorg/javia/arity/EvalContext;

    invoke-direct {v0}, Lorg/javia/arity/EvalContext;-><init>()V

    sput-object v0, Lorg/javia/arity/ContextFunction;->context:Lorg/javia/arity/EvalContext;

    .line 5
    new-array v0, v1, [D

    sput-object v0, Lorg/javia/arity/ContextFunction;->NO_ARGS:[D

    .line 6
    new-array v0, v1, [Lorg/javia/arity/Complex;

    sput-object v0, Lorg/javia/arity/ContextFunction;->NO_ARGS_COMPLEX:[Lorg/javia/arity/Complex;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Lorg/javia/arity/Function;-><init>()V

    return-void
.end method


# virtual methods
.method public eval()D
    .locals 2

    .prologue
    .line 37
    sget-object v0, Lorg/javia/arity/ContextFunction;->NO_ARGS:[D

    invoke-virtual {p0, v0}, Lorg/javia/arity/ContextFunction;->eval([D)D

    move-result-wide v0

    return-wide v0
.end method

.method public eval(D)D
    .locals 4
    .parameter

    .prologue
    .line 42
    sget-object v1, Lorg/javia/arity/ContextFunction;->context:Lorg/javia/arity/EvalContext;

    monitor-enter v1

    .line 43
    :try_start_0
    sget-object v0, Lorg/javia/arity/ContextFunction;->context:Lorg/javia/arity/EvalContext;

    invoke-virtual {p0, p1, p2, v0}, Lorg/javia/arity/ContextFunction;->eval(DLorg/javia/arity/EvalContext;)D

    move-result-wide v2

    monitor-exit v1

    return-wide v2

    .line 44
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public eval(DD)D
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 49
    sget-object v6, Lorg/javia/arity/ContextFunction;->context:Lorg/javia/arity/EvalContext;

    monitor-enter v6

    .line 50
    :try_start_0
    sget-object v5, Lorg/javia/arity/ContextFunction;->context:Lorg/javia/arity/EvalContext;

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, Lorg/javia/arity/ContextFunction;->eval(DDLorg/javia/arity/EvalContext;)D

    move-result-wide v0

    monitor-exit v6

    return-wide v0

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public eval(DDLorg/javia/arity/EvalContext;)D
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 68
    iget-object v0, p5, Lorg/javia/arity/EvalContext;->args2:[D

    .line 69
    const/4 v1, 0x0

    aput-wide p1, v0, v1

    .line 70
    const/4 v1, 0x1

    aput-wide p3, v0, v1

    .line 71
    invoke-virtual {p0, v0, p5}, Lorg/javia/arity/ContextFunction;->eval([DLorg/javia/arity/EvalContext;)D

    move-result-wide v0

    return-wide v0
.end method

.method public eval(DLorg/javia/arity/EvalContext;)D
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 62
    iget-object v0, p3, Lorg/javia/arity/EvalContext;->args1:[D

    .line 63
    const/4 v1, 0x0

    aput-wide p1, v0, v1

    .line 64
    invoke-virtual {p0, v0, p3}, Lorg/javia/arity/ContextFunction;->eval([DLorg/javia/arity/EvalContext;)D

    move-result-wide v0

    return-wide v0
.end method

.method public eval([D)D
    .locals 4
    .parameter

    .prologue
    .line 56
    sget-object v1, Lorg/javia/arity/ContextFunction;->context:Lorg/javia/arity/EvalContext;

    monitor-enter v1

    .line 57
    :try_start_0
    sget-object v0, Lorg/javia/arity/ContextFunction;->context:Lorg/javia/arity/EvalContext;

    invoke-virtual {p0, p1, v0}, Lorg/javia/arity/ContextFunction;->eval([DLorg/javia/arity/EvalContext;)D

    move-result-wide v2

    monitor-exit v1

    return-wide v2

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public abstract eval([DLorg/javia/arity/EvalContext;)D
.end method

.method public eval(Lorg/javia/arity/Complex;)Lorg/javia/arity/Complex;
    .locals 2
    .parameter

    .prologue
    .line 81
    sget-object v1, Lorg/javia/arity/ContextFunction;->context:Lorg/javia/arity/EvalContext;

    monitor-enter v1

    .line 82
    :try_start_0
    sget-object v0, Lorg/javia/arity/ContextFunction;->context:Lorg/javia/arity/EvalContext;

    invoke-virtual {p0, p1, v0}, Lorg/javia/arity/ContextFunction;->eval(Lorg/javia/arity/Complex;Lorg/javia/arity/EvalContext;)Lorg/javia/arity/Complex;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public eval(Lorg/javia/arity/Complex;Lorg/javia/arity/Complex;)Lorg/javia/arity/Complex;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 88
    sget-object v1, Lorg/javia/arity/ContextFunction;->context:Lorg/javia/arity/EvalContext;

    monitor-enter v1

    .line 89
    :try_start_0
    sget-object v0, Lorg/javia/arity/ContextFunction;->context:Lorg/javia/arity/EvalContext;

    invoke-virtual {p0, p1, p2, v0}, Lorg/javia/arity/ContextFunction;->eval(Lorg/javia/arity/Complex;Lorg/javia/arity/Complex;Lorg/javia/arity/EvalContext;)Lorg/javia/arity/Complex;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public eval(Lorg/javia/arity/Complex;Lorg/javia/arity/Complex;Lorg/javia/arity/EvalContext;)Lorg/javia/arity/Complex;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 107
    iget-object v0, p3, Lorg/javia/arity/EvalContext;->args2c:[Lorg/javia/arity/Complex;

    .line 108
    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 109
    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 110
    invoke-virtual {p0, v0, p3}, Lorg/javia/arity/ContextFunction;->eval([Lorg/javia/arity/Complex;Lorg/javia/arity/EvalContext;)Lorg/javia/arity/Complex;

    move-result-object v0

    return-object v0
.end method

.method public eval(Lorg/javia/arity/Complex;Lorg/javia/arity/EvalContext;)Lorg/javia/arity/Complex;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 101
    iget-object v0, p2, Lorg/javia/arity/EvalContext;->args1c:[Lorg/javia/arity/Complex;

    .line 102
    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 103
    invoke-virtual {p0, v0, p2}, Lorg/javia/arity/ContextFunction;->eval([Lorg/javia/arity/Complex;Lorg/javia/arity/EvalContext;)Lorg/javia/arity/Complex;

    move-result-object v0

    return-object v0
.end method

.method public eval([Lorg/javia/arity/Complex;)Lorg/javia/arity/Complex;
    .locals 2
    .parameter

    .prologue
    .line 95
    sget-object v1, Lorg/javia/arity/ContextFunction;->context:Lorg/javia/arity/EvalContext;

    monitor-enter v1

    .line 96
    :try_start_0
    sget-object v0, Lorg/javia/arity/ContextFunction;->context:Lorg/javia/arity/EvalContext;

    invoke-virtual {p0, p1, v0}, Lorg/javia/arity/ContextFunction;->eval([Lorg/javia/arity/Complex;Lorg/javia/arity/EvalContext;)Lorg/javia/arity/Complex;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public abstract eval([Lorg/javia/arity/Complex;Lorg/javia/arity/EvalContext;)Lorg/javia/arity/Complex;
.end method

.method public evalComplex()Lorg/javia/arity/Complex;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lorg/javia/arity/ContextFunction;->NO_ARGS_COMPLEX:[Lorg/javia/arity/Complex;

    invoke-virtual {p0, v0}, Lorg/javia/arity/ContextFunction;->eval([Lorg/javia/arity/Complex;)Lorg/javia/arity/Complex;

    move-result-object v0

    return-object v0
.end method

.method toComplex([DLorg/javia/arity/EvalContext;)[Lorg/javia/arity/Complex;
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x1

    const-wide/16 v5, 0x0

    const/4 v0, 0x0

    .line 13
    array-length v1, p1

    packed-switch v1, :pswitch_data_0

    .line 27
    array-length v1, p1

    new-array v1, v1, [Lorg/javia/arity/Complex;

    .line 28
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 29
    new-instance v2, Lorg/javia/arity/Complex;

    aget-wide v3, p1, v0

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/javia/arity/Complex;-><init>(DD)V

    aput-object v2, v1, v0

    .line 28
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 15
    :pswitch_0
    sget-object v0, Lorg/javia/arity/ContextFunction;->NO_ARGS_COMPLEX:[Lorg/javia/arity/Complex;

    .line 32
    :goto_1
    return-object v0

    .line 18
    :pswitch_1
    iget-object v1, p2, Lorg/javia/arity/EvalContext;->args1c:[Lorg/javia/arity/Complex;

    .line 19
    aget-object v2, v1, v0

    aget-wide v3, p1, v0

    invoke-virtual {v2, v3, v4, v5, v6}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-object v0, v1

    .line 20
    goto :goto_1

    .line 22
    :pswitch_2
    iget-object v1, p2, Lorg/javia/arity/EvalContext;->args2c:[Lorg/javia/arity/Complex;

    .line 23
    aget-object v2, v1, v0

    aget-wide v3, p1, v0

    invoke-virtual {v2, v3, v4, v5, v6}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    .line 24
    aget-object v0, v1, v7

    aget-wide v2, p1, v7

    invoke-virtual {v0, v2, v3, v5, v6}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-object v0, v1

    .line 25
    goto :goto_1

    :cond_0
    move-object v0, v1

    goto :goto_1

    .line 13
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.class public Lkawa/lang/Continuation;
.super Lgnu/mapping/MethodProc;
.source "Continuation.java"


# static fields
.field static counter:I


# instance fields
.field id:I

.field public invoked:Z


# direct methods
.method public constructor <init>(Lgnu/mapping/CallContext;)V
    .locals 0
    .parameter "ctx"

    .prologue
    .line 18
    invoke-direct {p0}, Lgnu/mapping/MethodProc;-><init>()V

    .line 19
    return-void
.end method

.method public static handleException(Ljava/lang/Throwable;Lkawa/lang/Continuation;)Ljava/lang/Object;
    .locals 3
    .parameter "ex"
    .parameter "cont"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 48
    instance-of v2, p0, Lkawa/lang/CalledContinuation;

    if-eqz v2, :cond_0

    move-object v0, p0

    check-cast v0, Lkawa/lang/CalledContinuation;

    move-object v1, v0

    .local v1, cex:Lkawa/lang/CalledContinuation;
    iget-object v2, v1, Lkawa/lang/CalledContinuation;->continuation:Lkawa/lang/Continuation;

    if-eq v2, p1, :cond_1

    .line 50
    .end local v1           #cex:Lkawa/lang/CalledContinuation;
    :cond_0
    throw p0

    .line 51
    .restart local v1       #cex:Lkawa/lang/CalledContinuation;
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p1, Lkawa/lang/Continuation;->invoked:Z

    .line 52
    iget-object v2, v1, Lkawa/lang/CalledContinuation;->values:[Ljava/lang/Object;

    invoke-static {v2}, Lgnu/mapping/Values;->make([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public static handleException$X(Ljava/lang/Throwable;Lkawa/lang/Continuation;Lgnu/mapping/CallContext;)V
    .locals 7
    .parameter "ex"
    .parameter "cont"
    .parameter "ctx"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 34
    instance-of v5, p0, Lkawa/lang/CalledContinuation;

    if-eqz v5, :cond_0

    move-object v0, p0

    check-cast v0, Lkawa/lang/CalledContinuation;

    move-object v1, v0

    .local v1, cex:Lkawa/lang/CalledContinuation;
    iget-object v5, v1, Lkawa/lang/CalledContinuation;->continuation:Lkawa/lang/Continuation;

    if-eq v5, p1, :cond_1

    .line 36
    .end local v1           #cex:Lkawa/lang/CalledContinuation;
    :cond_0
    throw p0

    .line 37
    .restart local v1       #cex:Lkawa/lang/CalledContinuation;
    :cond_1
    const/4 v5, 0x1

    iput-boolean v5, p1, Lkawa/lang/Continuation;->invoked:Z

    .line 38
    iget-object v4, v1, Lkawa/lang/CalledContinuation;->values:[Ljava/lang/Object;

    .line 39
    .local v4, values:[Ljava/lang/Object;
    array-length v3, v4

    .line 40
    .local v3, nvalues:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 41
    iget-object v5, p2, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    aget-object v6, v4, v2

    invoke-interface {v5, v6}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V

    .line 40
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 42
    :cond_2
    return-void
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 2
    .parameter "ctx"

    .prologue
    .line 23
    iget-boolean v0, p0, Lkawa/lang/Continuation;->invoked:Z

    if-eqz v0, :cond_0

    .line 24
    new-instance v0, Lkawa/lang/GenericError;

    const-string v1, "implementation restriction: continuation can only be used once"

    invoke-direct {v0, v1}, Lkawa/lang/GenericError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 26
    :cond_0
    new-instance v0, Lkawa/lang/CalledContinuation;

    iget-object v1, p1, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    invoke-direct {v0, v1, p0, p1}, Lkawa/lang/CalledContinuation;-><init>([Ljava/lang/Object;Lkawa/lang/Continuation;Lgnu/mapping/CallContext;)V

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#<continuation "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lkawa/lang/Continuation;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lkawa/lang/Continuation;->invoked:Z

    if-eqz v1, :cond_0

    const-string v1, " (invoked)>"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v1, ">"

    goto :goto_0
.end method

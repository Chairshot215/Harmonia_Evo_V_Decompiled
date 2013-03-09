.class public Lkawa/lang/CalledContinuation;
.super Ljava/lang/RuntimeException;
.source "CalledContinuation.java"


# instance fields
.field public continuation:Lkawa/lang/Continuation;

.field public ctx:Lgnu/mapping/CallContext;

.field public values:[Ljava/lang/Object;


# direct methods
.method constructor <init>([Ljava/lang/Object;Lkawa/lang/Continuation;Lgnu/mapping/CallContext;)V
    .locals 1
    .parameter "values"
    .parameter "continuation"
    .parameter "ctx"

    .prologue
    .line 12
    const-string v0, "call/cc called"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 13
    iput-object p1, p0, Lkawa/lang/CalledContinuation;->values:[Ljava/lang/Object;

    .line 14
    iput-object p2, p0, Lkawa/lang/CalledContinuation;->continuation:Lkawa/lang/Continuation;

    .line 15
    iput-object p3, p0, Lkawa/lang/CalledContinuation;->ctx:Lgnu/mapping/CallContext;

    .line 16
    return-void
.end method

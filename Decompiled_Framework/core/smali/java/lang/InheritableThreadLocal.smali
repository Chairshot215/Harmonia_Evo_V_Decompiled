.class public Ljava/lang/InheritableThreadLocal;
.super Ljava/lang/ThreadLocal;
.source "InheritableThreadLocal.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/ThreadLocal",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected childValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    return-object p1
.end method

.method initializeValues(Ljava/lang/Thread;)Ljava/lang/ThreadLocal$Values;
    .locals 1

    new-instance v0, Ljava/lang/ThreadLocal$Values;

    invoke-direct {v0}, Ljava/lang/ThreadLocal$Values;-><init>()V

    iput-object v0, p1, Ljava/lang/Thread;->inheritableValues:Ljava/lang/ThreadLocal$Values;

    return-object v0
.end method

.method values(Ljava/lang/Thread;)Ljava/lang/ThreadLocal$Values;
    .locals 1

    iget-object v0, p1, Ljava/lang/Thread;->inheritableValues:Ljava/lang/ThreadLocal$Values;

    return-object v0
.end method

.class public Ljava/lang/ThreadLocal;
.super Ljava/lang/Object;
.source "ThreadLocal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/ThreadLocal$Values;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static hashCounter:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final hash:I

.field private final reference:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference",
            "<",
            "Ljava/lang/ThreadLocal",
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Ljava/lang/ThreadLocal;->hashCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Ljava/lang/ThreadLocal;->reference:Ljava/lang/ref/Reference;

    sget-object v0, Ljava/lang/ThreadLocal;->hashCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    const v1, -0x3c6ef372

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndAdd(I)I

    move-result v0

    iput v0, p0, Ljava/lang/ThreadLocal;->hash:I

    return-void
.end method

.method static synthetic access$200(Ljava/lang/ThreadLocal;)I
    .locals 1

    iget v0, p0, Ljava/lang/ThreadLocal;->hash:I

    return v0
.end method

.method static synthetic access$300(Ljava/lang/ThreadLocal;)Ljava/lang/ref/Reference;
    .locals 1

    iget-object v0, p0, Ljava/lang/ThreadLocal;->reference:Ljava/lang/ref/Reference;

    return-object v0
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/ThreadLocal;->values(Ljava/lang/Thread;)Ljava/lang/ThreadLocal$Values;

    move-result-object v3

    if-eqz v3, :cond_0

    #getter for: Ljava/lang/ThreadLocal$Values;->table:[Ljava/lang/Object;
    invoke-static {v3}, Ljava/lang/ThreadLocal$Values;->access$000(Ljava/lang/ThreadLocal$Values;)[Ljava/lang/Object;

    move-result-object v2

    iget v4, p0, Ljava/lang/ThreadLocal;->hash:I

    #getter for: Ljava/lang/ThreadLocal$Values;->mask:I
    invoke-static {v3}, Ljava/lang/ThreadLocal$Values;->access$100(Ljava/lang/ThreadLocal$Values;)I

    move-result v5

    and-int v1, v4, v5

    iget-object v4, p0, Ljava/lang/ThreadLocal;->reference:Ljava/lang/ref/Reference;

    aget-object v5, v2, v1

    if-ne v4, v5, :cond_1

    add-int/lit8 v4, v1, 0x1

    aget-object v4, v2, v4

    :goto_0
    return-object v4

    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/ThreadLocal;->initializeValues(Ljava/lang/Thread;)Ljava/lang/ThreadLocal$Values;

    move-result-object v3

    :cond_1
    invoke-virtual {v3, p0}, Ljava/lang/ThreadLocal$Values;->getAfterMiss(Ljava/lang/ThreadLocal;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0
.end method

.method protected initialValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method initializeValues(Ljava/lang/Thread;)Ljava/lang/ThreadLocal$Values;
    .locals 1

    new-instance v0, Ljava/lang/ThreadLocal$Values;

    invoke-direct {v0}, Ljava/lang/ThreadLocal$Values;-><init>()V

    iput-object v0, p1, Ljava/lang/Thread;->localValues:Ljava/lang/ThreadLocal$Values;

    return-object v0
.end method

.method public remove()V
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/ThreadLocal;->values(Ljava/lang/Thread;)Ljava/lang/ThreadLocal$Values;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p0}, Ljava/lang/ThreadLocal$Values;->remove(Ljava/lang/ThreadLocal;)V

    :cond_0
    return-void
.end method

.method public set(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/ThreadLocal;->values(Ljava/lang/Thread;)Ljava/lang/ThreadLocal$Values;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/ThreadLocal;->initializeValues(Ljava/lang/Thread;)Ljava/lang/ThreadLocal$Values;

    move-result-object v1

    :cond_0
    invoke-virtual {v1, p0, p1}, Ljava/lang/ThreadLocal$Values;->put(Ljava/lang/ThreadLocal;Ljava/lang/Object;)V

    return-void
.end method

.method values(Ljava/lang/Thread;)Ljava/lang/ThreadLocal$Values;
    .locals 1

    iget-object v0, p1, Ljava/lang/Thread;->localValues:Ljava/lang/ThreadLocal$Values;

    return-object v0
.end method

.class public Lcom/google/common/util/concurrent/NamingThreadFactory;
.super Ljava/lang/Object;
.source "NamingThreadFactory.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# static fields
.field public static final DEFAULT_FACTORY:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private final backingFactory:Ljava/util/concurrent/ThreadFactory;

.field private final count:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final format:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    sput-object v0, Lcom/google/common/util/concurrent/NamingThreadFactory;->DEFAULT_FACTORY:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "format"

    .prologue
    .line 49
    sget-object v0, Lcom/google/common/util/concurrent/NamingThreadFactory;->DEFAULT_FACTORY:Ljava/util/concurrent/ThreadFactory;

    invoke-direct {p0, p1, v0}, Lcom/google/common/util/concurrent/NamingThreadFactory;-><init>(Ljava/lang/String;Ljava/util/concurrent/ThreadFactory;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/concurrent/ThreadFactory;)V
    .locals 2
    .parameter "format"
    .parameter "backingFactory"

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/NamingThreadFactory;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 63
    iput-object p1, p0, Lcom/google/common/util/concurrent/NamingThreadFactory;->format:Ljava/lang/String;

    .line 64
    iput-object p2, p0, Lcom/google/common/util/concurrent/NamingThreadFactory;->backingFactory:Ljava/util/concurrent/ThreadFactory;

    .line 65
    invoke-direct {p0, v1}, Lcom/google/common/util/concurrent/NamingThreadFactory;->makeName(I)Ljava/lang/String;

    .line 66
    return-void
.end method

.method private makeName(I)Ljava/lang/String;
    .locals 4
    .parameter "ordinal"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/common/util/concurrent/NamingThreadFactory;->format:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2
    .parameter "r"

    .prologue
    .line 69
    iget-object v1, p0, Lcom/google/common/util/concurrent/NamingThreadFactory;->backingFactory:Ljava/util/concurrent/ThreadFactory;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    .line 70
    .local v0, t:Ljava/lang/Thread;
    iget-object v1, p0, Lcom/google/common/util/concurrent/NamingThreadFactory;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/google/common/util/concurrent/NamingThreadFactory;->makeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 71
    return-object v0
.end method

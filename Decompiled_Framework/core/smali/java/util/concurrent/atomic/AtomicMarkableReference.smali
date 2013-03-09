.class public Ljava/util/concurrent/atomic/AtomicMarkableReference;
.super Ljava/lang/Object;
.source "AtomicMarkableReference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final UNSAFE:Lsun/misc/Unsafe;

.field private static final pairOffset:J


# instance fields
.field private volatile pair:Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/atomic/UnsafeAccess;->THE_ONE:Lsun/misc/Unsafe;

    sput-object v0, Ljava/util/concurrent/atomic/AtomicMarkableReference;->UNSAFE:Lsun/misc/Unsafe;

    sget-object v0, Ljava/util/concurrent/atomic/AtomicMarkableReference;->UNSAFE:Lsun/misc/Unsafe;

    const-string v1, "pair"

    const-class v2, Ljava/util/concurrent/atomic/AtomicMarkableReference;

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicMarkableReference;->objectFieldOffset(Lsun/misc/Unsafe;Ljava/lang/String;Ljava/lang/Class;)J

    move-result-wide v0

    sput-wide v0, Ljava/util/concurrent/atomic/AtomicMarkableReference;->pairOffset:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;Z)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, p2}, Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;->of(Ljava/lang/Object;Z)Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;

    move-result-object v0

    iput-object v0, p0, Ljava/util/concurrent/atomic/AtomicMarkableReference;->pair:Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;

    return-void
.end method

.method private casPair(Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair",
            "<TV;>;",
            "Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair",
            "<TV;>;)Z"
        }
    .end annotation

    sget-object v0, Ljava/util/concurrent/atomic/AtomicMarkableReference;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/atomic/AtomicMarkableReference;->pairOffset:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static objectFieldOffset(Lsun/misc/Unsafe;Ljava/lang/String;Ljava/lang/Class;)J
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun/misc/Unsafe;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)J"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p2, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {p0, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoSuchFieldError;

    invoke-direct {v1, p1}, Ljava/lang/NoSuchFieldError;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/NoSuchFieldError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1
.end method


# virtual methods
.method public attemptMark(Ljava/lang/Object;Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;Z)Z"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicMarkableReference;->pair:Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;

    iget-object v1, v0, Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;->reference:Ljava/lang/Object;

    if-ne p1, v1, :cond_1

    iget-boolean v1, v0, Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;->mark:Z

    if-eq p2, v1, :cond_0

    invoke-static {p1, p2}, Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;->of(Ljava/lang/Object;Z)Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicMarkableReference;->casPair(Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public compareAndSet(Ljava/lang/Object;Ljava/lang/Object;ZZ)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;TV;ZZ)Z"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicMarkableReference;->pair:Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;

    iget-object v1, v0, Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;->reference:Ljava/lang/Object;

    if-ne p1, v1, :cond_2

    iget-boolean v1, v0, Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;->mark:Z

    if-ne p3, v1, :cond_2

    iget-object v1, v0, Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;->reference:Ljava/lang/Object;

    if-ne p2, v1, :cond_0

    iget-boolean v1, v0, Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;->mark:Z

    if-eq p4, v1, :cond_1

    :cond_0
    invoke-static {p2, p4}, Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;->of(Ljava/lang/Object;Z)Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicMarkableReference;->casPair(Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public get([Z)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([Z)TV;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicMarkableReference;->pair:Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;

    const/4 v1, 0x0

    iget-boolean v2, v0, Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;->mark:Z

    aput-boolean v2, p1, v1

    iget-object v1, v0, Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;->reference:Ljava/lang/Object;

    return-object v1
.end method

.method public getReference()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicMarkableReference;->pair:Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;

    iget-object v0, v0, Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;->reference:Ljava/lang/Object;

    return-object v0
.end method

.method public isMarked()Z
    .locals 1

    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicMarkableReference;->pair:Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;

    iget-boolean v0, v0, Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;->mark:Z

    return v0
.end method

.method public set(Ljava/lang/Object;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;Z)V"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicMarkableReference;->pair:Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;

    iget-object v1, v0, Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;->reference:Ljava/lang/Object;

    if-ne p1, v1, :cond_0

    iget-boolean v1, v0, Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;->mark:Z

    if-eq p2, v1, :cond_1

    :cond_0
    invoke-static {p1, p2}, Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;->of(Ljava/lang/Object;Z)Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;

    move-result-object v1

    iput-object v1, p0, Ljava/util/concurrent/atomic/AtomicMarkableReference;->pair:Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;

    :cond_1
    return-void
.end method

.method public weakCompareAndSet(Ljava/lang/Object;Ljava/lang/Object;ZZ)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;TV;ZZ)Z"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/util/concurrent/atomic/AtomicMarkableReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;ZZ)Z

    move-result v0

    return v0
.end method

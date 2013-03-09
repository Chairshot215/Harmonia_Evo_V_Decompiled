.class Ljava/util/concurrent/ConcurrentSkipListMap$Index;
.super Ljava/lang/Object;
.source "ConcurrentSkipListMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentSkipListMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Index"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final UNSAFE:Lsun/misc/Unsafe;

.field private static final rightOffset:J


# instance fields
.field final down:Ljava/util/concurrent/ConcurrentSkipListMap$Index;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentSkipListMap$Index",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final node:Ljava/util/concurrent/ConcurrentSkipListMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentSkipListMap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field volatile right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentSkipListMap$Index",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->UNSAFE:Lsun/misc/Unsafe;

    sget-object v0, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->UNSAFE:Lsun/misc/Unsafe;

    const-string v1, "right"

    const-class v2, Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/ConcurrentSkipListMap;->objectFieldOffset(Lsun/misc/Unsafe;Ljava/lang/String;Ljava/lang/Class;)J

    move-result-wide v0

    sput-wide v0, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->rightOffset:J

    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Index;Ljava/util/concurrent/ConcurrentSkipListMap$Index;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentSkipListMap$Node",
            "<TK;TV;>;",
            "Ljava/util/concurrent/ConcurrentSkipListMap$Index",
            "<TK;TV;>;",
            "Ljava/util/concurrent/ConcurrentSkipListMap$Index",
            "<TK;TV;>;)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->node:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    iput-object p2, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->down:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    iput-object p3, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    return-void
.end method


# virtual methods
.method final casRight(Ljava/util/concurrent/ConcurrentSkipListMap$Index;Ljava/util/concurrent/ConcurrentSkipListMap$Index;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentSkipListMap$Index",
            "<TK;TV;>;",
            "Ljava/util/concurrent/ConcurrentSkipListMap$Index",
            "<TK;TV;>;)Z"
        }
    .end annotation

    sget-object v0, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->rightOffset:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method final indexesDeletedNode()Z
    .locals 1

    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->node:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final link(Ljava/util/concurrent/ConcurrentSkipListMap$Index;Ljava/util/concurrent/ConcurrentSkipListMap$Index;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentSkipListMap$Index",
            "<TK;TV;>;",
            "Ljava/util/concurrent/ConcurrentSkipListMap$Index",
            "<TK;TV;>;)Z"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->node:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    iput-object p1, p2, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    iget-object v1, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->casRight(Ljava/util/concurrent/ConcurrentSkipListMap$Index;Ljava/util/concurrent/ConcurrentSkipListMap$Index;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method final unlink(Ljava/util/concurrent/ConcurrentSkipListMap$Index;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentSkipListMap$Index",
            "<TK;TV;>;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->indexesDeletedNode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->casRight(Ljava/util/concurrent/ConcurrentSkipListMap$Index;Ljava/util/concurrent/ConcurrentSkipListMap$Index;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

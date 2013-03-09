.class Ljava/util/concurrent/CyclicBarrier$Generation;
.super Ljava/lang/Object;
.source "CyclicBarrier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/CyclicBarrier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Generation"
.end annotation


# instance fields
.field broken:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/concurrent/CyclicBarrier$Generation;->broken:Z

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/concurrent/CyclicBarrier$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/concurrent/CyclicBarrier$Generation;-><init>()V

    return-void
.end method

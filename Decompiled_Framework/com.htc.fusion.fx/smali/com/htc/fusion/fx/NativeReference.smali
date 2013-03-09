.class public Lcom/htc/fusion/fx/NativeReference;
.super Ljava/lang/Object;
.source "NativeReference.java"


# static fields
.field public static final NULL:I


# instance fields
.field private handle:I


# direct methods
.method protected constructor <init>(I)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/fusion/fx/NativeReference;->handle:I

    invoke-direct {p0, p1}, Lcom/htc/fusion/fx/NativeReference;->setHandle(I)V

    return-void
.end method

.method private static native addReference(I)V
.end method

.method private static native removeReference(I)V
.end method

.method private setHandle(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/htc/fusion/fx/NativeReference;->handle:I

    if-ne v0, p1, :cond_0

    monitor-exit p0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/htc/fusion/fx/NativeReference;->addReference(I)V

    :cond_1
    iget v0, p0, Lcom/htc/fusion/fx/NativeReference;->handle:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/htc/fusion/fx/NativeReference;->handle:I

    invoke-static {v0}, Lcom/htc/fusion/fx/NativeReference;->removeReference(I)V

    :cond_2
    iput p1, p0, Lcom/htc/fusion/fx/NativeReference;->handle:I

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public clearHandle()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/fusion/fx/NativeReference;->setHandle(I)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-ne p1, p0, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    instance-of v2, p1, Lcom/htc/fusion/fx/NativeReference;

    if-eqz v2, :cond_0

    check-cast p1, Lcom/htc/fusion/fx/NativeReference;

    iget v2, p1, Lcom/htc/fusion/fx/NativeReference;->handle:I

    iget v3, p0, Lcom/htc/fusion/fx/NativeReference;->handle:I

    if-ne v2, v3, :cond_3

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/htc/fusion/fx/NativeReference;->clearHandle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/htc/fusion/fx/NativeReference;->handle:I

    const v1, 0x74583974

    xor-int/2addr v0, v1

    return v0
.end method

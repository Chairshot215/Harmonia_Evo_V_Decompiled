.class public abstract Lcom/scalado/base/Iterator;
.super Lcom/scalado/caps/PeerBase;
.source "Iterator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scalado/base/Iterator$CommonIterator;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/scalado/caps/PeerBase;-><init>()V

    .line 102
    return-void
.end method

.method private final complete()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 83
    :goto_0
    invoke-virtual {p0}, Lcom/scalado/base/Iterator;->done()Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/scalado/base/Iterator;->step()F

    goto :goto_0

    .line 86
    :cond_0
    return-void
.end method


# virtual methods
.method public abstract abort()V
.end method

.method public abstract done()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public getObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    return-object v0
.end method

.method public setGranularity(I)V
    .locals 1
    .parameter "ms"

    .prologue
    .line 66
    if-gez p1, :cond_0

    .line 67
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 68
    :cond_0
    return-void
.end method

.method protected abstract step()F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public step(I)F
    .locals 7
    .parameter "runTime"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/high16 v4, 0x3f80

    .line 42
    if-nez p1, :cond_1

    .line 44
    invoke-direct {p0}, Lcom/scalado/base/Iterator;->complete()V

    .line 56
    :cond_0
    :goto_0
    return v4

    .line 47
    :cond_1
    mul-int/lit16 v5, p1, 0x3e8

    int-to-long v0, v5

    .line 48
    .local v0, nanoRunTime:J
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 50
    .local v2, nanoStartTime:J
    :cond_2
    invoke-virtual {p0}, Lcom/scalado/base/Iterator;->done()Z

    move-result v5

    if-nez v5, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/scalado/base/Iterator;->step()F

    .line 55
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    sub-long/2addr v5, v2

    cmp-long v5, v5, v0

    if-ltz v5, :cond_2

    .line 56
    const/4 v4, 0x0

    goto :goto_0
.end method

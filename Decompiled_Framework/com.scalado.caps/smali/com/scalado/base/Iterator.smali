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

    invoke-direct {p0}, Lcom/scalado/caps/PeerBase;-><init>()V

    return-void
.end method

.method private final complete()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :goto_0
    invoke-virtual {p0}, Lcom/scalado/base/Iterator;->done()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/scalado/base/Iterator;->step()F

    goto :goto_0

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

    const/4 v0, 0x0

    return-object v0
.end method

.method public setGranularity(I)V
    .locals 1

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/high16 v6, 0x3f80

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/scalado/base/Iterator;->complete()V

    move v4, v6

    :goto_0
    return v4

    :cond_0
    mul-int/lit16 v4, p1, 0x3e8

    int-to-long v0, v4

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    :cond_1
    invoke-virtual {p0}, Lcom/scalado/base/Iterator;->done()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p0}, Lcom/scalado/base/Iterator;->step()F

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long/2addr v4, v2

    cmp-long v4, v4, v0

    if-ltz v4, :cond_1

    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    move v4, v6

    goto :goto_0
.end method

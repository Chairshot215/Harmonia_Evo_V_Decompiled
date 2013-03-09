.class public abstract Lcom/google/common/collect/ForwardingQueue;
.super Lcom/google/common/collect/ForwardingCollection;
.source "ForwardingQueue.java"

# interfaces
.implements Ljava/util/Queue;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ForwardingCollection",
        "<TE;>;",
        "Ljava/util/Queue",
        "<TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    .local p0, this:Lcom/google/common/collect/ForwardingQueue;,"Lcom/google/common/collect/ForwardingQueue<TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/ForwardingCollection;-><init>()V

    return-void
.end method

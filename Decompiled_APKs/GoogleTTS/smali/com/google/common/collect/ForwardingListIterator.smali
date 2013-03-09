.class public abstract Lcom/google/common/collect/ForwardingListIterator;
.super Lcom/google/common/collect/ForwardingIterator;
.source "ForwardingListIterator.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ForwardingIterator",
        "<TE;>;",
        "Ljava/util/ListIterator",
        "<TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    .local p0, this:Lcom/google/common/collect/ForwardingListIterator;,"Lcom/google/common/collect/ForwardingListIterator<TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/ForwardingIterator;-><init>()V

    return-void
.end method

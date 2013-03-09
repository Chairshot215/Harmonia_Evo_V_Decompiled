.class Lcom/google/common/collect/AbstractMultimap$WrappedSet;
.super Lcom/google/common/collect/AbstractMultimap$WrappedCollection;
.source "AbstractMultimap.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/AbstractMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WrappedSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractMultimap",
        "<TK;TV;>.WrappedCollection;",
        "Ljava/util/Set",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/AbstractMultimap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/AbstractMultimap;Ljava/lang/Object;Ljava/util/Set;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/Set",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 631
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$WrappedSet;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.WrappedSet;"
    .local p2, key:Ljava/lang/Object;,"TK;"
    .local p3, delegate:Ljava/util/Set;,"Ljava/util/Set<TV;>;"
    iput-object p1, p0, Lcom/google/common/collect/AbstractMultimap$WrappedSet;->this$0:Lcom/google/common/collect/AbstractMultimap;

    .line 632
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;-><init>(Lcom/google/common/collect/AbstractMultimap;Ljava/lang/Object;Ljava/util/Collection;Lcom/google/common/collect/AbstractMultimap$WrappedCollection;)V

    .line 633
    return-void
.end method

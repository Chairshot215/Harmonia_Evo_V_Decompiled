.class public interface abstract Lorg/apache/xpath/axes/ContextNodeList;
.super Ljava/lang/Object;
.source "ContextNodeList.java"


# virtual methods
.method public abstract clone()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation
.end method

.method public abstract cloneWithReset()Lorg/w3c/dom/traversal/NodeIterator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation
.end method

.method public abstract getCurrentNode()Lorg/w3c/dom/Node;
.end method

.method public abstract getCurrentPos()I
.end method

.method public abstract getLast()I
.end method

.method public abstract isFresh()Z
.end method

.method public abstract reset()V
.end method

.method public abstract runTo(I)V
.end method

.method public abstract setCurrentPos(I)V
.end method

.method public abstract setLast(I)V
.end method

.method public abstract setShouldCacheNodes(Z)V
.end method

.method public abstract size()I
.end method

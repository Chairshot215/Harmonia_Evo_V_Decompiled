.class public interface abstract Lorg/w3c/dom/traversal/NodeIterator;
.super Ljava/lang/Object;
.source "NodeIterator.java"


# virtual methods
.method public abstract detach()V
.end method

.method public abstract getExpandEntityReferences()Z
.end method

.method public abstract getFilter()Lorg/w3c/dom/traversal/NodeFilter;
.end method

.method public abstract getRoot()Lorg/w3c/dom/Node;
.end method

.method public abstract getWhatToShow()I
.end method

.method public abstract nextNode()Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation
.end method

.method public abstract previousNode()Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation
.end method

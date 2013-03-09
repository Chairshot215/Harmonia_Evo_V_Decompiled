.class public interface abstract Lorg/w3c/dom/smil/ElementExclusiveTimeContainer;
.super Ljava/lang/Object;
.source "ElementExclusiveTimeContainer.java"

# interfaces
.implements Lorg/w3c/dom/smil/ElementTimeContainer;


# virtual methods
.method public abstract getEndSync()Ljava/lang/String;
.end method

.method public abstract getPausedElements()Lorg/w3c/dom/NodeList;
.end method

.method public abstract setEndSync(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation
.end method

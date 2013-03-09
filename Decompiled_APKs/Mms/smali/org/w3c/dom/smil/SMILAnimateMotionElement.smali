.class public interface abstract Lorg/w3c/dom/smil/SMILAnimateMotionElement;
.super Ljava/lang/Object;
.source "SMILAnimateMotionElement.java"

# interfaces
.implements Lorg/w3c/dom/smil/SMILAnimateElement;


# virtual methods
.method public abstract getOrigin()Ljava/lang/String;
.end method

.method public abstract getPath()Ljava/lang/String;
.end method

.method public abstract setOrigin(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation
.end method

.method public abstract setPath(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation
.end method

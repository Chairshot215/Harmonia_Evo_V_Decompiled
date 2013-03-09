.class public interface abstract Lorg/w3c/dom/events/EventTarget;
.super Ljava/lang/Object;
.source "EventTarget.java"


# virtual methods
.method public abstract addEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V
.end method

.method public abstract dispatchEvent(Lorg/w3c/dom/events/Event;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/events/EventException;
        }
    .end annotation
.end method

.method public abstract removeEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V
.end method

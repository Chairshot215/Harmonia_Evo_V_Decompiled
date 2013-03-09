.class public interface abstract Lorg/w3c/dom/events/MutationEvent;
.super Ljava/lang/Object;
.source "MutationEvent.java"

# interfaces
.implements Lorg/w3c/dom/events/Event;


# static fields
.field public static final ADDITION:S = 0x2s

.field public static final MODIFICATION:S = 0x1s

.field public static final REMOVAL:S = 0x3s


# virtual methods
.method public abstract getAttrChange()S
.end method

.method public abstract getAttrName()Ljava/lang/String;
.end method

.method public abstract getNewValue()Ljava/lang/String;
.end method

.method public abstract getPrevValue()Ljava/lang/String;
.end method

.method public abstract getRelatedNode()Lorg/w3c/dom/Node;
.end method

.method public abstract initMutationEvent(Ljava/lang/String;ZZLorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;S)V
.end method

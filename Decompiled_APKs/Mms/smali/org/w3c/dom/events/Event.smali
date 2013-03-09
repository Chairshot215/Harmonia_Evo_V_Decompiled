.class public interface abstract Lorg/w3c/dom/events/Event;
.super Ljava/lang/Object;
.source "Event.java"


# static fields
.field public static final AT_TARGET:S = 0x2s

.field public static final BUBBLING_PHASE:S = 0x3s

.field public static final CAPTURING_PHASE:S = 0x1s


# virtual methods
.method public abstract getBubbles()Z
.end method

.method public abstract getCancelable()Z
.end method

.method public abstract getCurrentTarget()Lorg/w3c/dom/events/EventTarget;
.end method

.method public abstract getEventPhase()S
.end method

.method public abstract getSeekTo()I
.end method

.method public abstract getTarget()Lorg/w3c/dom/events/EventTarget;
.end method

.method public abstract getTimeStamp()J
.end method

.method public abstract getType()Ljava/lang/String;
.end method

.method public abstract initEvent(Ljava/lang/String;ZZ)V
.end method

.method public abstract initEvent(Ljava/lang/String;ZZI)V
.end method

.method public abstract preventDefault()V
.end method

.method public abstract stopPropagation()V
.end method

.class public interface abstract Lorg/w3c/dom/smil/Time;
.super Ljava/lang/Object;
.source "Time.java"


# static fields
.field public static final SMIL_TIME_EVENT_BASED:S = 0x3s

.field public static final SMIL_TIME_INDEFINITE:S = 0x0s

.field public static final SMIL_TIME_MEDIA_MARKER:S = 0x5s

.field public static final SMIL_TIME_OFFSET:S = 0x1s

.field public static final SMIL_TIME_SYNC_BASED:S = 0x2s

.field public static final SMIL_TIME_WALLCLOCK:S = 0x4s


# virtual methods
.method public abstract getBaseBegin()Z
.end method

.method public abstract getBaseElement()Lorg/w3c/dom/Element;
.end method

.method public abstract getEvent()Ljava/lang/String;
.end method

.method public abstract getMarker()Ljava/lang/String;
.end method

.method public abstract getOffset()D
.end method

.method public abstract getResolved()Z
.end method

.method public abstract getResolvedOffset()D
.end method

.method public abstract getTimeType()S
.end method

.method public abstract setBaseBegin(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation
.end method

.method public abstract setBaseElement(Lorg/w3c/dom/Element;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation
.end method

.method public abstract setEvent(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation
.end method

.method public abstract setMarker(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation
.end method

.method public abstract setOffset(D)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation
.end method

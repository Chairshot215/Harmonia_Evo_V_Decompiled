.class public interface abstract Lorg/w3c/dom/smil/ElementTime;
.super Ljava/lang/Object;
.source "ElementTime.java"


# static fields
.field public static final FILL_AUTO:S = 0x2s

.field public static final FILL_FREEZE:S = 0x1s

.field public static final FILL_REMOVE:S = 0x0s

.field public static final RESTART_ALWAYS:S = 0x0s

.field public static final RESTART_NEVER:S = 0x1s

.field public static final RESTART_WHEN_NOT_ACTIVE:S = 0x2s


# virtual methods
.method public abstract beginElement()Z
.end method

.method public abstract endElement()Z
.end method

.method public abstract getBegin()Lorg/w3c/dom/smil/TimeList;
.end method

.method public abstract getDur()F
.end method

.method public abstract getEnd()Lorg/w3c/dom/smil/TimeList;
.end method

.method public abstract getFill()S
.end method

.method public abstract getFillDefault()S
.end method

.method public abstract getRepeatCount()F
.end method

.method public abstract getRepeatDur()F
.end method

.method public abstract getRestart()S
.end method

.method public abstract pauseElement()V
.end method

.method public abstract resumeElement()V
.end method

.method public abstract seekElement(F)V
.end method

.method public abstract setBegin(Lorg/w3c/dom/smil/TimeList;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation
.end method

.method public abstract setDur(F)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation
.end method

.method public abstract setEnd(Lorg/w3c/dom/smil/TimeList;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation
.end method

.method public abstract setFill(S)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation
.end method

.method public abstract setFillDefault(S)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation
.end method

.method public abstract setRepeatCount(F)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation
.end method

.method public abstract setRepeatDur(F)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation
.end method

.method public abstract setRestart(S)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation
.end method

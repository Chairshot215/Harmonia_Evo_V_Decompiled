.class public interface abstract Lorg/w3c/dom/smil/SMILAnimation;
.super Ljava/lang/Object;
.source "SMILAnimation.java"

# interfaces
.implements Lorg/w3c/dom/smil/SMILElement;
.implements Lorg/w3c/dom/smil/ElementTargetAttributes;
.implements Lorg/w3c/dom/smil/ElementTime;
.implements Lorg/w3c/dom/smil/ElementTimeControl;


# static fields
.field public static final ACCUMULATE_NONE:S = 0x0s

.field public static final ACCUMULATE_SUM:S = 0x1s

.field public static final ADDITIVE_REPLACE:S = 0x0s

.field public static final ADDITIVE_SUM:S = 0x1s

.field public static final CALCMODE_DISCRETE:S = 0x0s

.field public static final CALCMODE_LINEAR:S = 0x1s

.field public static final CALCMODE_PACED:S = 0x2s

.field public static final CALCMODE_SPLINE:S = 0x3s


# virtual methods
.method public abstract getAccumulate()S
.end method

.method public abstract getAdditive()S
.end method

.method public abstract getBy()Ljava/lang/String;
.end method

.method public abstract getCalcMode()S
.end method

.method public abstract getFrom()Ljava/lang/String;
.end method

.method public abstract getKeySplines()Ljava/lang/String;
.end method

.method public abstract getKeyTimes()Lorg/w3c/dom/smil/TimeList;
.end method

.method public abstract getTo()Ljava/lang/String;
.end method

.method public abstract getValues()Ljava/lang/String;
.end method

.method public abstract setAccumulate(S)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation
.end method

.method public abstract setAdditive(S)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation
.end method

.method public abstract setBy(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation
.end method

.method public abstract setCalcMode(S)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation
.end method

.method public abstract setFrom(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation
.end method

.method public abstract setKeySplines(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation
.end method

.method public abstract setKeyTimes(Lorg/w3c/dom/smil/TimeList;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation
.end method

.method public abstract setTo(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation
.end method

.method public abstract setValues(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation
.end method

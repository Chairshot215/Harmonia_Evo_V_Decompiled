.class public Lcom/htc/fusion/fx/controls/FxHitbox;
.super Lcom/htc/fusion/fx/FxNodeControl;
.source "FxHitbox.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/fusion/fx/controls/FxHitbox$ScaleParameters;,
        Lcom/htc/fusion/fx/controls/FxHitbox$SwipeParameters;,
        Lcom/htc/fusion/fx/controls/FxHitbox$LongTapParameters;,
        Lcom/htc/fusion/fx/controls/FxHitbox$TapParameters;,
        Lcom/htc/fusion/fx/controls/FxHitbox$MoveEventParameters;,
        Lcom/htc/fusion/fx/controls/FxHitbox$EventParameters;
    }
.end annotation


# static fields
.field public static final EVENT_CANCEL:I = 0x3

.field public static final EVENT_PRESS:I = 0x1

.field public static final EVENT_RELEASE:I = 0x2

.field public static final GESTUREFLAG_ALL:I = 0xf

.field public static final GESTUREFLAG_LONGTAP:I = 0x2

.field public static final GESTUREFLAG_NONE:I = 0x0

.field public static final GESTUREFLAG_SCALE:I = 0x8

.field public static final GESTUREFLAG_SWIPE:I = 0x4

.field public static final GESTUREFLAG_TAP:I = 0x1

.field public static final GESTUREFLAG_VALID:I = 0xf

.field public static final TOUCHINTEREST_CLAIMOWNERSHIP:I = 0x2

.field public static final TOUCHINTEREST_INTERESTED:I = 0x1

.field public static final TOUCHINTEREST_NOTINTERESTED:I = 0x0

.field public static final TOUCHOPACITY_ANCESTORTRANSPARENT:I = 0x3

.field public static final TOUCHOPACITY_OPAQUE:I = 0x2

.field public static final TOUCHOPACITY_TRANSPARENT:I = 0x1


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/fusion/fx/FxNodeControl;-><init>(I)V

    return-void
.end method


# virtual methods
.method public native getEnabled()Z
.end method

.method public native getEnabledGestures()I
.end method

.method public native getEventSource()Lcom/htc/fusion/fx/IMessageSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/htc/fusion/fx/IMessageSource",
            "<",
            "Lcom/htc/fusion/fx/controls/FxHitbox$EventParameters;",
            ">;"
        }
    .end annotation
.end method

.method public native getLongTapSource()Lcom/htc/fusion/fx/IMessageSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/htc/fusion/fx/IMessageSource",
            "<",
            "Lcom/htc/fusion/fx/controls/FxHitbox$LongTapParameters;",
            ">;"
        }
    .end annotation
.end method

.method public native getMoveEventSource()Lcom/htc/fusion/fx/IMessageSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/htc/fusion/fx/IMessageSource",
            "<",
            "Lcom/htc/fusion/fx/controls/FxHitbox$MoveEventParameters;",
            ">;"
        }
    .end annotation
.end method

.method public native getScaleHeight()F
.end method

.method public native getScaleSource()Lcom/htc/fusion/fx/IMessageSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/htc/fusion/fx/IMessageSource",
            "<",
            "Lcom/htc/fusion/fx/controls/FxHitbox$ScaleParameters;",
            ">;"
        }
    .end annotation
.end method

.method public native getScaleWidth()F
.end method

.method public native getStrokeInterest()I
.end method

.method public native getSwipeSource()Lcom/htc/fusion/fx/IMessageSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/htc/fusion/fx/IMessageSource",
            "<",
            "Lcom/htc/fusion/fx/controls/FxHitbox$SwipeParameters;",
            ">;"
        }
    .end annotation
.end method

.method public native getTapSource()Lcom/htc/fusion/fx/IMessageSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/htc/fusion/fx/IMessageSource",
            "<",
            "Lcom/htc/fusion/fx/controls/FxHitbox$TapParameters;",
            ">;"
        }
    .end annotation
.end method

.method public native getTouchOpacity()I
.end method

.method public native setEnabled(Z)V
.end method

.method public native setEnabledGestures(I)V
.end method

.method public native setScaleHeight(F)V
.end method

.method public native setScaleWidth(F)V
.end method

.method public native setStrokeInterest(I)V
.end method

.method public native setTouchOpacity(I)V
.end method

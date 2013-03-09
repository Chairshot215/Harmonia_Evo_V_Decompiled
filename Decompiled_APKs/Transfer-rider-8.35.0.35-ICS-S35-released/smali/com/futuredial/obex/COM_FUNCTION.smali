.class public Lcom/futuredial/obex/COM_FUNCTION;
.super Ljava/lang/Object;
.source "COM_FUNCTION.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Large(BB)Z
    .locals 2
    .parameter "V1"
    .parameter "V2"

    .prologue
    .line 17
    and-int/lit16 v0, p0, 0xff

    and-int/lit16 v1, p1, 0xff

    if-le v0, v1, :cond_0

    .line 19
    const/4 v0, 0x1

    .line 23
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static Large(SS)Z
    .locals 2
    .parameter "V1"
    .parameter "V2"

    .prologue
    const v1, 0xffff

    .line 6
    and-int v0, p0, v1

    and-int/2addr v1, p1

    if-le v0, v1, :cond_0

    .line 8
    const/4 v0, 0x1

    .line 12
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

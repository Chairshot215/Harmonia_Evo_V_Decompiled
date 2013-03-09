.class Lcom/gracenote/mmid/MobileSDK/GNAssert;
.super Ljava/lang/Object;
.source "GNAssert.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Assert(ZLjava/lang/String;)V
    .locals 1
    .parameter "condition"
    .parameter "msg"

    .prologue
    .line 13
    if-nez p0, :cond_0

    .line 14
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 16
    :cond_0
    return-void
.end method

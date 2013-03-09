.class public Lcom/htc/wrap/java/lang/HtcWrapString;
.super Ljava/lang/Object;
.source "HtcWrapString.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static removeSelf(Ljava/lang/String;C)Ljava/lang/String;
    .locals 1
    .parameter "str"
    .parameter "expr"

    .prologue
    .line 16
    invoke-virtual {p0, p1}, Ljava/lang/String;->removeSelf(C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

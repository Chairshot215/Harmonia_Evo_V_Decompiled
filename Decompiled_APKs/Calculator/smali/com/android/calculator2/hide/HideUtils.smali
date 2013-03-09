.class public Lcom/android/calculator2/hide/HideUtils;
.super Ljava/lang/Object;
.source "HideUtils.java"


# static fields
.field private static final LOG_FLAG:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isSecretCodeEnabled()Z
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x1

    return v0
.end method

.method public static log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "tag"
    .parameter "log"

    .prologue
    .line 20
    return-void
.end method

.method public static log(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter "tag"
    .parameter "log"
    .parameter "content"

    .prologue
    .line 26
    return-void
.end method

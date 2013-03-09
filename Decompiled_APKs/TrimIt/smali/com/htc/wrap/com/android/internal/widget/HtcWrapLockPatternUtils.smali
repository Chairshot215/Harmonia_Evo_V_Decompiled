.class public Lcom/htc/wrap/com/android/internal/widget/HtcWrapLockPatternUtils;
.super Ljava/lang/Object;
.source "HtcWrapLockPatternUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static computePasswordComplexity(Ljava/lang/String;)I
    .locals 1
    .parameter "password"

    .prologue
    .line 14
    invoke-static {p0}, Lcom/android/internal/widget/LockPatternUtils;->computePasswordComplexity(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

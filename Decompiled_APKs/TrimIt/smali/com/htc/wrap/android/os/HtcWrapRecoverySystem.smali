.class public Lcom/htc/wrap/android/os/HtcWrapRecoverySystem;
.super Landroid/os/RecoverySystem;
.source "HtcWrapRecoverySystem.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/os/RecoverySystem;-><init>()V

    .line 11
    return-void
.end method

.method public static rebootWipeDataVzwHpst(Landroid/content/Context;)V
    .locals 0
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 22
    invoke-static {p0}, Landroid/os/RecoverySystem;->rebootWipeDataVzwHpst(Landroid/content/Context;)V

    .line 23
    return-void
.end method

.class public Lcom/htc/wrap/android/os/HtcWrapRecoverySystem;
.super Landroid/os/RecoverySystem;
.source "HtcWrapRecoverySystem.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/RecoverySystem;-><init>()V

    return-void
.end method

.method public static rebootWipeDataVzwHpst(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Landroid/os/RecoverySystem;->rebootWipeDataVzwHpst(Landroid/content/Context;)V

    return-void
.end method

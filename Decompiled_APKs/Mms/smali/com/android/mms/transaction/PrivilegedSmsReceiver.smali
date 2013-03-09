.class public Lcom/android/mms/transaction/PrivilegedSmsReceiver;
.super Lcom/android/mms/transaction/SmsReceiver;
.source "PrivilegedSmsReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/mms/transaction/SmsReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 33
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/mms/transaction/PrivilegedSmsReceiver;->onReceiveWithPrivilege(Landroid/content/Context;Landroid/content/Intent;Z)V

    .line 34
    return-void
.end method

.class public Lcom/android/phone/SIMRemovedDialogActivity;
.super Lcom/htc/app/HtcAlertActivity;
.source "SIMRemovedDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/SIMRemovedDialogActivity$1;,
        Lcom/android/phone/SIMRemovedDialogActivity$MyBroadcastReceiver;
    }
.end annotation


# instance fields
.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/htc/app/HtcAlertActivity;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/SIMRemovedDialogActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 90
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 82
    packed-switch p2, :pswitch_data_0

    .line 87
    :goto_0
    return-void

    .line 84
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/phone/SIMRemovedDialogActivity;->finish()V

    goto :goto_0

    .line 82
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/htc/app/HtcAlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    iget-object v1, p0, Lcom/android/phone/SIMRemovedDialogActivity;->mAlertParams:Lcom/htc/app/HtcAlertController$AlertParams;

    .line 47
    .local v1, p:Lcom/htc/app/HtcAlertController$AlertParams;
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/htc/app/HtcAlertController$AlertParams;->mCancelable:Z

    .line 48
    const v2, 0x7f0e0273

    invoke-virtual {p0, v2}, Lcom/android/phone/SIMRemovedDialogActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/app/HtcAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 49
    const v2, 0x7f0e0274

    invoke-virtual {p0, v2}, Lcom/android/phone/SIMRemovedDialogActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/app/HtcAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 50
    const v2, 0x20c013c

    invoke-virtual {p0, v2}, Lcom/android/phone/SIMRemovedDialogActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/app/HtcAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 51
    iput-object p0, v1, Lcom/htc/app/HtcAlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 52
    invoke-virtual {p0}, Lcom/android/phone/SIMRemovedDialogActivity;->setupAlert()V

    .line 54
    new-instance v2, Lcom/android/phone/SIMRemovedDialogActivity$MyBroadcastReceiver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/phone/SIMRemovedDialogActivity$MyBroadcastReceiver;-><init>(Lcom/android/phone/SIMRemovedDialogActivity;Lcom/android/phone/SIMRemovedDialogActivity$1;)V

    iput-object v2, p0, Lcom/android/phone/SIMRemovedDialogActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 57
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 60
    .local v0, intentFilter:Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/phone/SIMRemovedDialogActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/android/phone/SIMRemovedDialogActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 61
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 66
    invoke-super {p0}, Lcom/htc/app/HtcAlertActivity;->onDestroy()V

    .line 67
    iget-object v0, p0, Lcom/android/phone/SIMRemovedDialogActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/phone/SIMRemovedDialogActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/SIMRemovedDialogActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 69
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 73
    packed-switch p1, :pswitch_data_0

    .line 78
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 75
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/phone/SIMRemovedDialogActivity;->finish()V

    goto :goto_0

    .line 73
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

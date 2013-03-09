.class public Lcom/android/phone/EditCellBroadcastChannelActivity;
.super Landroid/app/Activity;
.source "EditCellBroadcastChannelActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "EditCellBroadcastChannelActivity"


# instance fields
.field private mDialog:Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 85
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/EditCellBroadcastChannelActivity;)Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/phone/EditCellBroadcastChannelActivity;->mDialog:Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/phone/EditCellBroadcastChannelActivity;Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;)Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/phone/EditCellBroadcastChannelActivity;->mDialog:Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;

    return-object p1
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 350
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 351
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 56
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/phone/EditCellBroadcastChannelActivity;->requestWindowFeature(I)Z

    .line 59
    iget-object v0, p0, Lcom/android/phone/EditCellBroadcastChannelActivity;->mDialog:Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/android/phone/EditCellBroadcastChannelActivity;->mDialog:Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;

    invoke-virtual {v0}, Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;->dismiss()V

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/EditCellBroadcastChannelActivity;->mDialog:Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;

    .line 64
    :cond_0
    new-instance v0, Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;

    invoke-virtual {p0}, Lcom/android/phone/EditCellBroadcastChannelActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, p0, p0, v1}, Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;-><init>(Lcom/android/phone/EditCellBroadcastChannelActivity;Landroid/content/Context;Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/android/phone/EditCellBroadcastChannelActivity;->mDialog:Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;

    .line 65
    iget-object v0, p0, Lcom/android/phone/EditCellBroadcastChannelActivity;->mDialog:Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;

    invoke-virtual {v0, p0}, Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 66
    iget-object v0, p0, Lcom/android/phone/EditCellBroadcastChannelActivity;->mDialog:Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;

    invoke-virtual {v0}, Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;->show()V

    .line 67
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/phone/EditCellBroadcastChannelActivity;->mDialog:Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;

    if-ne p1, v0, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/android/phone/EditCellBroadcastChannelActivity;->finish()V

    .line 73
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 82
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 83
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 77
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 78
    return-void
.end method

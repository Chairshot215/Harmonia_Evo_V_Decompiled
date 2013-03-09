.class public Lcom/android/mms/ui/AlertDialogActivity;
.super Landroid/app/Activity;
.source "AlertDialogActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    const/4 v3, 0x1

    .line 23
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    invoke-virtual {p0, v3}, Lcom/android/mms/ui/AlertDialogActivity;->requestWindowFeature(I)Z

    .line 25
    invoke-virtual {p0}, Lcom/android/mms/ui/AlertDialogActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x7f0201a4

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 28
    invoke-virtual {p0}, Lcom/android/mms/ui/AlertDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "is_delete"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 29
    .local v0, bCompose:Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {p0, v1}, Lcom/android/mms/ui/MessageUtils;->confirmStorageFullDialog(Landroid/content/Context;Z)V

    .line 39
    return-void
.end method

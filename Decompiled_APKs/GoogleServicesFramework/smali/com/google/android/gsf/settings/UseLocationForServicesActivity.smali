.class public Lcom/google/android/gsf/settings/UseLocationForServicesActivity;
.super Landroid/app/Activity;
.source "UseLocationForServicesActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/settings/UseLocationForServicesActivity$1;,
        Lcom/google/android/gsf/settings/UseLocationForServicesActivity$DismissListener;,
        Lcom/google/android/gsf/settings/UseLocationForServicesActivity$NegativeButtonListener;,
        Lcom/google/android/gsf/settings/UseLocationForServicesActivity$PositiveButtonListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 88
    return-void
.end method

.method static synthetic access$300(Lcom/google/android/gsf/settings/UseLocationForServicesActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/google/android/gsf/settings/UseLocationForServicesActivity;->setUseLocationForServices(Z)V

    return-void
.end method

.method private setUseLocationForServices(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 97
    invoke-static {p0, p1}, Lcom/google/android/gsf/UseLocationForServices;->setUseLocationForServices(Landroid/content/Context;Z)Z

    .line 98
    return-void
.end method


# virtual methods
.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .parameter "id"
    .parameter "args"

    .prologue
    const/4 v1, 0x0

    .line 57
    packed-switch p1, :pswitch_data_0

    .line 70
    const-string v2, "UseLocationForServicesActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unknown dialog "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 71
    :goto_0
    return-object v0

    .line 59
    :pswitch_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f080118

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f080119

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f080116

    new-instance v4, Lcom/google/android/gsf/settings/UseLocationForServicesActivity$PositiveButtonListener;

    invoke-direct {v4, p0, v1}, Lcom/google/android/gsf/settings/UseLocationForServicesActivity$PositiveButtonListener;-><init>(Lcom/google/android/gsf/settings/UseLocationForServicesActivity;Lcom/google/android/gsf/settings/UseLocationForServicesActivity$1;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f080117

    new-instance v4, Lcom/google/android/gsf/settings/UseLocationForServicesActivity$NegativeButtonListener;

    invoke-direct {v4, p0, v1}, Lcom/google/android/gsf/settings/UseLocationForServicesActivity$NegativeButtonListener;-><init>(Lcom/google/android/gsf/settings/UseLocationForServicesActivity;Lcom/google/android/gsf/settings/UseLocationForServicesActivity$1;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 67
    .local v0, dialog:Landroid/app/AlertDialog;
    new-instance v2, Lcom/google/android/gsf/settings/UseLocationForServicesActivity$DismissListener;

    invoke-direct {v2, p0, v1}, Lcom/google/android/gsf/settings/UseLocationForServicesActivity$DismissListener;-><init>(Lcom/google/android/gsf/settings/UseLocationForServicesActivity;Lcom/google/android/gsf/settings/UseLocationForServicesActivity$1;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    .line 57
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 44
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 45
    invoke-virtual {p0}, Lcom/google/android/gsf/settings/UseLocationForServicesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "disable"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    invoke-direct {p0, v2}, Lcom/google/android/gsf/settings/UseLocationForServicesActivity;->setUseLocationForServices(Z)V

    .line 48
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/settings/UseLocationForServicesActivity;->setResult(I)V

    .line 49
    invoke-virtual {p0}, Lcom/google/android/gsf/settings/UseLocationForServicesActivity;->finish()V

    .line 53
    :goto_0
    return-void

    .line 51
    :cond_0
    invoke-virtual {p0, v2}, Lcom/google/android/gsf/settings/UseLocationForServicesActivity;->showDialog(I)V

    goto :goto_0
.end method

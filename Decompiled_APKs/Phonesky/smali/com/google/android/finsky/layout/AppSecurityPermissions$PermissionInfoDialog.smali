.class public Lcom/google/android/finsky/layout/AppSecurityPermissions$PermissionInfoDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "AppSecurityPermissions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/layout/AppSecurityPermissions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PermissionInfoDialog"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 249
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method static showInfo(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "fragmentManager"
    .parameter "label"
    .parameter "description"

    .prologue
    .line 256
    const-string v2, "permission_info_dialog"

    invoke-virtual {p0, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 265
    :goto_0
    return-void

    .line 259
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 260
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "label"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    const-string v2, "description"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    new-instance v1, Lcom/google/android/finsky/layout/AppSecurityPermissions$PermissionInfoDialog;

    invoke-direct {v1}, Lcom/google/android/finsky/layout/AppSecurityPermissions$PermissionInfoDialog;-><init>()V

    .line 263
    .local v1, dialog:Lcom/google/android/finsky/layout/AppSecurityPermissions$PermissionInfoDialog;
    invoke-virtual {v1, v0}, Lcom/google/android/finsky/layout/AppSecurityPermissions$PermissionInfoDialog;->setArguments(Landroid/os/Bundle;)V

    .line 264
    const-string v2, "permission_info_dialog"

    invoke-virtual {v1, p0, v2}, Lcom/google/android/finsky/layout/AppSecurityPermissions$PermissionInfoDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 269
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/AppSecurityPermissions$PermissionInfoDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0e003f

    invoke-direct {v0, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 271
    .local v0, dialogContext:Landroid/content/Context;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/AppSecurityPermissions$PermissionInfoDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "label"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/AppSecurityPermissions$PermissionInfoDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "description"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f07019f

    new-instance v4, Lcom/google/android/finsky/layout/AppSecurityPermissions$PermissionInfoDialog$1;

    invoke-direct {v4, p0}, Lcom/google/android/finsky/layout/AppSecurityPermissions$PermissionInfoDialog$1;-><init>(Lcom/google/android/finsky/layout/AppSecurityPermissions$PermissionInfoDialog;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 280
    .local v1, result:Landroid/app/Dialog;
    return-object v1
.end method

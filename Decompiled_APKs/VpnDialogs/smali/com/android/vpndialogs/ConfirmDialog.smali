.class public Lcom/android/vpndialogs/ConfirmDialog;
.super Landroid/app/Activity;
.source "ConfirmDialog.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "VpnConfirm"


# instance fields
.field private mButton:Landroid/widget/Button;

.field private mDialog:Landroid/app/AlertDialog;

.field private mPackage:Ljava/lang/String;

.field private mService:Landroid/net/IConnectivityManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .parameter "button"
    .parameter "checked"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/vpndialogs/ConfirmDialog;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 101
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v1, -0x1

    .line 106
    if-ne p2, v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/vpndialogs/ConfirmDialog;->mService:Landroid/net/IConnectivityManager;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/vpndialogs/ConfirmDialog;->mPackage:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/net/IConnectivityManager;->prepareVpn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/vpndialogs/ConfirmDialog;->setResult(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "VpnConfirm"

    const-string v2, "onClick"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/android/vpndialogs/ConfirmDialog;->finish()V

    .line 117
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 91
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 92
    iget-object v0, p0, Lcom/android/vpndialogs/ConfirmDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/android/vpndialogs/ConfirmDialog;->mDialog:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 94
    iget-object v0, p0, Lcom/android/vpndialogs/ConfirmDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 96
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 9

    .prologue
    .line 48
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 50
    :try_start_0
    invoke-virtual {p0}, Lcom/android/vpndialogs/ConfirmDialog;->getCallingPackage()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/vpndialogs/ConfirmDialog;->mPackage:Ljava/lang/String;

    .line 52
    const-string v4, "connectivity"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/vpndialogs/ConfirmDialog;->mService:Landroid/net/IConnectivityManager;

    .line 55
    iget-object v4, p0, Lcom/android/vpndialogs/ConfirmDialog;->mService:Landroid/net/IConnectivityManager;

    iget-object v5, p0, Lcom/android/vpndialogs/ConfirmDialog;->mPackage:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/net/IConnectivityManager;->prepareVpn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 56
    const/4 v4, -0x1

    invoke-virtual {p0, v4}, Lcom/android/vpndialogs/ConfirmDialog;->setResult(I)V

    .line 57
    invoke-virtual {p0}, Lcom/android/vpndialogs/ConfirmDialog;->finish()V

    .line 87
    :goto_0
    return-void

    .line 61
    :cond_0
    invoke-virtual {p0}, Lcom/android/vpndialogs/ConfirmDialog;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 62
    .local v2, pm:Landroid/content/pm/PackageManager;
    iget-object v4, p0, Lcom/android/vpndialogs/ConfirmDialog;->mPackage:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 64
    .local v0, app:Landroid/content/pm/ApplicationInfo;
    const/high16 v4, 0x7f02

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 65
    .local v3, view:Landroid/view/View;
    const/high16 v4, 0x7f05

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 66
    const v4, 0x7f050001

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const/high16 v5, 0x7f03

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v0, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {p0, v5, v6}, Lcom/android/vpndialogs/ConfirmDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    const v4, 0x7f050003

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CompoundButton;

    invoke-virtual {v4, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 70
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x1080027

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x1040014

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x104000a

    invoke-virtual {v4, v5, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/high16 v5, 0x104

    invoke-virtual {v4, v5, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/vpndialogs/ConfirmDialog;->mDialog:Landroid/app/AlertDialog;

    .line 78
    iget-object v4, p0, Lcom/android/vpndialogs/ConfirmDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 79
    iget-object v4, p0, Lcom/android/vpndialogs/ConfirmDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 81
    iget-object v4, p0, Lcom/android/vpndialogs/ConfirmDialog;->mDialog:Landroid/app/AlertDialog;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v4

    iput-object v4, p0, Lcom/android/vpndialogs/ConfirmDialog;->mButton:Landroid/widget/Button;

    .line 82
    iget-object v4, p0, Lcom/android/vpndialogs/ConfirmDialog;->mButton:Landroid/widget/Button;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 83
    .end local v0           #app:Landroid/content/pm/ApplicationInfo;
    .end local v2           #pm:Landroid/content/pm/PackageManager;
    .end local v3           #view:Landroid/view/View;
    :catch_0
    move-exception v1

    .line 84
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "VpnConfirm"

    const-string v5, "onResume"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 85
    invoke-virtual {p0}, Lcom/android/vpndialogs/ConfirmDialog;->finish()V

    goto/16 :goto_0
.end method

.class public Lcom/google/android/finsky/billing/DownloadSizeDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "DownloadSizeDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/billing/DownloadSizeDialogFragment$DownloadSizeDialogListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 39
    return-void
.end method

.method public static newInstance(Landroid/support/v4/app/Fragment;ZZZ)Lcom/google/android/finsky/billing/DownloadSizeDialogFragment;
    .locals 4
    .parameter "targetFragment"
    .parameter "setWifiOnlyOption"
    .parameter "showWifiOnlyOption"
    .parameter "onMobileNetwork"

    .prologue
    .line 68
    instance-of v2, p0, Lcom/google/android/finsky/billing/DownloadSizeDialogFragment$DownloadSizeDialogListener;

    if-nez v2, :cond_0

    .line 69
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "targetFragment must implement DownloadSizeDialogListener"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 72
    :cond_0
    new-instance v1, Lcom/google/android/finsky/billing/DownloadSizeDialogFragment;

    invoke-direct {v1}, Lcom/google/android/finsky/billing/DownloadSizeDialogFragment;-><init>()V

    .line 73
    .local v1, dialog:Lcom/google/android/finsky/billing/DownloadSizeDialogFragment;
    const/4 v2, -0x1

    invoke-virtual {v1, p0, v2}, Lcom/google/android/finsky/billing/DownloadSizeDialogFragment;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 74
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 75
    .local v0, arguments:Landroid/os/Bundle;
    const-string v2, "setWifiOnly"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 76
    const-string v2, "showWifiOnly"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 77
    invoke-virtual {v1, v0}, Lcom/google/android/finsky/billing/DownloadSizeDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 78
    return-object v1
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 17
    .parameter "savedInstanceState"

    .prologue
    .line 83
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/billing/DownloadSizeDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 84
    .local v1, arguments:Landroid/os/Bundle;
    const-string v14, "showWifiOnly"

    invoke-virtual {v1, v14}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v12

    .line 85
    .local v12, showWifiOnlyOption:Z
    const-string v14, "setWifiOnly"

    invoke-virtual {v1, v14}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 86
    .local v10, setWifiOnlyOption:Z
    const-string v14, "onMobileNetwork"

    invoke-virtual {v1, v14}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    .line 87
    .local v9, onMobileNetwork:Z
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/billing/DownloadSizeDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    .line 89
    .local v5, context:Landroid/content/Context;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 90
    .local v2, builder:Landroid/app/AlertDialog$Builder;
    const v14, 0x7f0701b0

    invoke-virtual {v2, v14}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 93
    new-instance v6, Landroid/view/ContextThemeWrapper;

    const v14, 0x7f0e003f

    invoke-direct {v6, v5, v14}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 94
    .local v6, inflationContext:Landroid/content/Context;
    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v14

    const v15, 0x7f040063

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 96
    .local v4, contentLayout:Landroid/view/View;
    const v14, 0x7f080105

    invoke-virtual {v4, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 100
    .local v8, messageView:Landroid/widget/TextView;
    if-eqz v12, :cond_2

    .line 101
    const v7, 0x7f0701b1

    .line 106
    .local v7, messageTextId:I
    :goto_0
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(I)V

    .line 112
    const v14, 0x7f080106

    invoke-virtual {v4, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    .line 113
    .local v3, checkboxView:Landroid/widget/CheckBox;
    if-eqz v12, :cond_0

    .line 114
    const/4 v14, 0x0

    invoke-virtual {v3, v14}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 115
    if-nez p1, :cond_0

    .line 116
    invoke-virtual {v3, v10}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 120
    :cond_0
    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 122
    const v14, 0x7f0701b6

    new-instance v15, Lcom/google/android/finsky/billing/DownloadSizeDialogFragment$1;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v12, v3, v10}, Lcom/google/android/finsky/billing/DownloadSizeDialogFragment$1;-><init>(Lcom/google/android/finsky/billing/DownloadSizeDialogFragment;ZLandroid/widget/CheckBox;Z)V

    invoke-virtual {v2, v14, v15}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 132
    const v14, 0x7f070059

    const/4 v15, 0x0

    invoke-virtual {v2, v14, v15}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 136
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/android/finsky/FinskyApp;->getInstallPolicies()Lcom/google/android/finsky/installer/InstallPolicies;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/android/finsky/installer/InstallPolicies;->isMobileNetwork()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 137
    new-instance v13, Landroid/content/Intent;

    const-string v14, "android.settings.WIFI_SETTINGS"

    invoke-direct {v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 138
    .local v13, test:Landroid/content/Intent;
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    const/high16 v15, 0x1

    invoke-virtual {v14, v13, v15}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v11

    .line 140
    .local v11, settings:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v14

    if-lez v14, :cond_1

    .line 141
    const v14, 0x7f0701b5

    new-instance v15, Lcom/google/android/finsky/billing/DownloadSizeDialogFragment$2;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/google/android/finsky/billing/DownloadSizeDialogFragment$2;-><init>(Lcom/google/android/finsky/billing/DownloadSizeDialogFragment;)V

    invoke-virtual {v2, v14, v15}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 150
    .end local v11           #settings:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v13           #test:Landroid/content/Intent;
    :cond_1
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v14

    return-object v14

    .line 103
    .end local v3           #checkboxView:Landroid/widget/CheckBox;
    .end local v7           #messageTextId:I
    :cond_2
    if-eqz v9, :cond_3

    const v7, 0x7f0701b2

    .restart local v7       #messageTextId:I
    :goto_1
    goto :goto_0

    .end local v7           #messageTextId:I
    :cond_3
    const v7, 0x7f0701b3

    goto :goto_1
.end method

.class public Lcom/android/settings/accounts/HtcSettingsPreferenceFragment;
.super Landroid/preference/PreferenceFragment;
.source "HtcSettingsPreferenceFragment.java"

# interfaces
.implements Lcom/android/settings/DialogCreatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/accounts/HtcSettingsPreferenceFragment$SettingsDialogFragment;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HtcSettingsPreferenceFragment"


# instance fields
.field private mDialogFragment:Lcom/android/settings/accounts/HtcSettingsPreferenceFragment$SettingsDialogFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 142
    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/accounts/HtcSettingsPreferenceFragment;)Lcom/android/settings/accounts/HtcSettingsPreferenceFragment$SettingsDialogFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/settings/accounts/HtcSettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings/accounts/HtcSettingsPreferenceFragment$SettingsDialogFragment;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/settings/accounts/HtcSettingsPreferenceFragment;Lcom/android/settings/accounts/HtcSettingsPreferenceFragment$SettingsDialogFragment;)Lcom/android/settings/accounts/HtcSettingsPreferenceFragment$SettingsDialogFragment;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/settings/accounts/HtcSettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings/accounts/HtcSettingsPreferenceFragment$SettingsDialogFragment;

    return-object p1
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 240
    invoke-virtual {p0}, Lcom/android/settings/accounts/HtcSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 241
    invoke-virtual {p0}, Lcom/android/settings/accounts/HtcSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 243
    :cond_0
    return-void
.end method

.method public final finishFragment()V
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/android/settings/accounts/HtcSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 60
    return-void
.end method

.method protected getContentResolver()Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/android/settings/accounts/HtcSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method protected getNextButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/android/settings/accounts/HtcSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ButtonBarHandler;

    invoke-interface {v0}, Lcom/android/settings/ButtonBarHandler;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method protected getPackageManager()Landroid/content/pm/PackageManager;
    .locals 1

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/android/settings/accounts/HtcSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method protected getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "name"

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/android/settings/accounts/HtcSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected hasNextButton()Z
    .locals 1

    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/android/settings/accounts/HtcSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ButtonBarHandler;

    invoke-interface {v0}, Lcom/android/settings/ButtonBarHandler;->hasNextButton()Z

    move-result v0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 47
    invoke-virtual {p0}, Lcom/android/settings/accounts/HtcSettingsPreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/accounts/HtcSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "common_list_item_background"

    const v3, 0x208005e

    invoke-static {v1, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelector(I)V

    .line 50
    invoke-virtual {p0}, Lcom/android/settings/accounts/HtcSettingsPreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/accounts/HtcSettingsPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x108022f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 52
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .parameter "dialogId"

    .prologue
    .line 107
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/android/settings/accounts/HtcSettingsPreferenceFragment;->isRemoving()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/android/settings/accounts/HtcSettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings/accounts/HtcSettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/android/settings/accounts/HtcSettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings/accounts/HtcSettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {v0}, Lcom/android/settings/accounts/HtcSettingsPreferenceFragment$SettingsDialogFragment;->dismiss()V

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/accounts/HtcSettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings/accounts/HtcSettingsPreferenceFragment$SettingsDialogFragment;

    .line 93
    :cond_0
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDetach()V

    .line 94
    return-void
.end method

.method protected removeDialog(I)V
    .locals 1
    .parameter "dialogId"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/settings/accounts/HtcSettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings/accounts/HtcSettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accounts/HtcSettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings/accounts/HtcSettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {v0}, Lcom/android/settings/accounts/HtcSettingsPreferenceFragment$SettingsDialogFragment;->getDialogId()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 115
    iget-object v0, p0, Lcom/android/settings/accounts/HtcSettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings/accounts/HtcSettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {v0}, Lcom/android/settings/accounts/HtcSettingsPreferenceFragment$SettingsDialogFragment;->dismiss()V

    .line 117
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/accounts/HtcSettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings/accounts/HtcSettingsPreferenceFragment$SettingsDialogFragment;

    .line 118
    return-void
.end method

.method protected setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/settings/accounts/HtcSettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings/accounts/HtcSettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/android/settings/accounts/HtcSettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings/accounts/HtcSettingsPreferenceFragment$SettingsDialogFragment;

    #setter for: Lcom/android/settings/accounts/HtcSettingsPreferenceFragment$SettingsDialogFragment;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;
    invoke-static {v0, p1}, Lcom/android/settings/accounts/HtcSettingsPreferenceFragment$SettingsDialogFragment;->access$002(Lcom/android/settings/accounts/HtcSettingsPreferenceFragment$SettingsDialogFragment;Landroid/content/DialogInterface$OnCancelListener;)Landroid/content/DialogInterface$OnCancelListener;

    .line 129
    :cond_0
    return-void
.end method

.method protected setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/settings/accounts/HtcSettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings/accounts/HtcSettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/android/settings/accounts/HtcSettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings/accounts/HtcSettingsPreferenceFragment$SettingsDialogFragment;

    #setter for: Lcom/android/settings/accounts/HtcSettingsPreferenceFragment$SettingsDialogFragment;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;
    invoke-static {v0, p1}, Lcom/android/settings/accounts/HtcSettingsPreferenceFragment$SettingsDialogFragment;->access$102(Lcom/android/settings/accounts/HtcSettingsPreferenceFragment$SettingsDialogFragment;Landroid/content/DialogInterface$OnDismissListener;)Landroid/content/DialogInterface$OnDismissListener;

    .line 140
    :cond_0
    return-void
.end method

.method protected showDialog(I)V
    .locals 3
    .parameter "dialogId"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/settings/accounts/HtcSettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings/accounts/HtcSettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    .line 100
    const-string v0, "HtcSettingsPreferenceFragment"

    const-string v1, "Old dialog fragment not null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_0
    new-instance v0, Lcom/android/settings/accounts/HtcSettingsPreferenceFragment$SettingsDialogFragment;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/accounts/HtcSettingsPreferenceFragment$SettingsDialogFragment;-><init>(Lcom/android/settings/DialogCreatable;I)V

    iput-object v0, p0, Lcom/android/settings/accounts/HtcSettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings/accounts/HtcSettingsPreferenceFragment$SettingsDialogFragment;

    .line 103
    iget-object v0, p0, Lcom/android/settings/accounts/HtcSettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings/accounts/HtcSettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {p0}, Lcom/android/settings/accounts/HtcSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/accounts/HtcSettingsPreferenceFragment$SettingsDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z
    .locals 7
    .parameter "caller"
    .parameter "fragmentClass"
    .parameter "requestCode"
    .parameter "extras"

    .prologue
    const/4 v3, 0x0

    .line 247
    invoke-virtual {p0}, Lcom/android/settings/accounts/HtcSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Landroid/preference/PreferenceActivity;

    if-eqz v1, :cond_0

    .line 248
    invoke-virtual {p0}, Lcom/android/settings/accounts/HtcSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 249
    .local v0, preferenceActivity:Landroid/preference/PreferenceActivity;
    const/4 v4, 0x0

    move-object v1, p2

    move-object v2, p4

    move-object v5, p1

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 251
    const/4 v3, 0x1

    .line 256
    .end local v0           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :goto_0
    return v3

    .line 253
    :cond_0
    const-string v1, "HtcSettingsPreferenceFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Parent isn\'t PreferenceActivity, thus there\'s no way to launch the given Fragment (name: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", requestCode: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

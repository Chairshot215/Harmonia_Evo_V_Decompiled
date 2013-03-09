.class public Lcom/coremobility/app/vnotes/CM_VnoteSharedPhoneLinesSettingsForm;
.super Lcom/coremobility/integration/app/CM_PreferenceForm;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private a:Landroid/preference/PreferenceScreen;

.field private b:Landroid/preference/PreferenceScreen;

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/coremobility/integration/app/CM_PreferenceForm;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/coremobility/app/vnotes/CM_VnoteSharedPhoneLinesSettingsForm;)I
    .locals 1

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSharedPhoneLinesSettingsForm;->c:I

    return v0
.end method

.method static synthetic a(Lcom/coremobility/app/vnotes/CM_VnoteSharedPhoneLinesSettingsForm;I)I
    .locals 0

    iput p1, p0, Lcom/coremobility/app/vnotes/CM_VnoteSharedPhoneLinesSettingsForm;->c:I

    return p1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/coremobility/integration/app/CM_PreferenceForm;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSharedPhoneLinesSettingsForm;->c:I

    const v0, 0x7f050005

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteSharedPhoneLinesSettingsForm;->addPreferencesFromResource(I)V

    const-string v0, "preference_friendly_names"

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteSharedPhoneLinesSettingsForm;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSharedPhoneLinesSettingsForm;->a:Landroid/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSharedPhoneLinesSettingsForm;->a:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/coremobility/app/vnotes/cq;->c()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSharedPhoneLinesSettingsForm;->a:Landroid/preference/PreferenceScreen;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSharedPhoneLinesSettingsForm;->a:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_1
    const-string v0, "preference_inbox_filter"

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteSharedPhoneLinesSettingsForm;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSharedPhoneLinesSettingsForm;->b:Landroid/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSharedPhoneLinesSettingsForm;->b:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSharedPhoneLinesSettingsForm;->b:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_2
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteSharedPhoneLinesSettingsForm;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "preference_inbox_filter"

    const v2, 0x1869f

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c0171

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-static {}, Lcom/coremobility/app/vnotes/cq;->d()[Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v0}, Lcom/coremobility/app/vnotes/cq;->d(I)I

    move-result v0

    new-instance v3, Lcom/coremobility/app/vnotes/jt;

    invoke-direct {v3, p0}, Lcom/coremobility/app/vnotes/jt;-><init>(Lcom/coremobility/app/vnotes/CM_VnoteSharedPhoneLinesSettingsForm;)V

    invoke-virtual {v1, v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c00f2

    new-instance v2, Lcom/coremobility/app/vnotes/js;

    invoke-direct {v2, p0}, Lcom/coremobility/app/vnotes/js;-><init>(Lcom/coremobility/app/vnotes/CM_VnoteSharedPhoneLinesSettingsForm;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c00f3

    new-instance v2, Lcom/coremobility/app/vnotes/jr;

    invoke-direct {v2, p0}, Lcom/coremobility/app/vnotes/jr;-><init>(Lcom/coremobility/app/vnotes/CM_VnoteSharedPhoneLinesSettingsForm;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/coremobility/app/vnotes/jq;

    invoke-direct {v1, p0}, Lcom/coremobility/app/vnotes/jq;-><init>(Lcom/coremobility/app/vnotes/CM_VnoteSharedPhoneLinesSettingsForm;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteSharedPhoneLinesSettingsForm;->b:Landroid/preference/PreferenceScreen;

    if-ne p1, v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteSharedPhoneLinesSettingsForm;->showDialog(I)V

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

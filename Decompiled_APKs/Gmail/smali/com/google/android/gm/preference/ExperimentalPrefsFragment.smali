.class public Lcom/google/android/gm/preference/ExperimentalPrefsFragment;
.super Landroid/preference/PreferenceFragment;
.source "ExperimentalPrefsFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 24
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 26
    invoke-virtual {p0}, Lcom/google/android/gm/preference/ExperimentalPrefsFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    const-string v1, "Gmail"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    .line 27
    const v0, 0x7f070001

    invoke-virtual {p0, v0}, Lcom/google/android/gm/preference/ExperimentalPrefsFragment;->addPreferencesFromResource(I)V

    .line 28
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gm/preference/ExperimentalPrefsFragment;->setHasOptionsMenu(Z)V

    .line 29
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0
    .parameter "menu"

    .prologue
    .line 33
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 34
    return-void
.end method

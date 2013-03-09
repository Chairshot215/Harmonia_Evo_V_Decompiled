.class public Lcom/htc/android/htcime/settings/HTCIMEFactoryMode;
.super Lcom/htc/android/htcime/settings/HtcInternalPreferenceActivity;
.source "HTCIMEFactoryMode.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/htc/android/htcime/settings/HtcInternalPreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 23
    invoke-super {p0, p1}, Lcom/htc/android/htcime/settings/HtcInternalPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    const v0, 0x7f030012

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/settings/HTCIMEFactoryMode;->addPreferencesFromResource(I)V

    .line 26
    invoke-virtual {p0}, Lcom/htc/android/htcime/settings/HTCIMEFactoryMode;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/preference/HtcPreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 27
    return-void
.end method

.method public onPause()V
    .locals 4

    .prologue
    const/4 v3, 0x5

    .line 43
    invoke-super {p0}, Lcom/htc/android/htcime/settings/HtcInternalPreferenceActivity;->onPause()V

    .line 44
    invoke-virtual {p0}, Lcom/htc/android/htcime/settings/HTCIMEFactoryMode;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/android/htcime/util/SIPUtils;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 45
    .local v0, sp:Landroid/content/SharedPreferences;
    if-nez v0, :cond_1

    .line 50
    :cond_0
    :goto_0
    return-void

    .line 47
    :cond_1
    const-string v1, "MODIFIED"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ge v1, v3, :cond_0

    .line 48
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "MODIFIED"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 4
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v3, 0x5

    .line 35
    invoke-virtual {p0}, Lcom/htc/android/htcime/settings/HTCIMEFactoryMode;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/android/htcime/util/SIPUtils;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 36
    .local v0, sp:Landroid/content/SharedPreferences;
    if-nez v0, :cond_1

    .line 40
    :cond_0
    :goto_0
    return-void

    .line 38
    :cond_1
    const-string v1, "MODIFIED"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ge v1, v3, :cond_0

    .line 39
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "MODIFIED"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

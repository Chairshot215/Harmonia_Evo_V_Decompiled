.class public Lcom/coremobility/app/vnotes/SM_SocialAccountSettings;
.super Lcom/coremobility/integration/app/CM_PreferenceForm;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lcom/coremobility/app/vnotes/cc;


# instance fields
.field private a:Landroid/preference/PreferenceScreen;

.field private b:Landroid/preference/PreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/coremobility/integration/app/CM_PreferenceForm;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/coremobility/app/vnotes/SM_SocialAccountSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/SM_SocialAccountSettings;->c()V

    return-void
.end method

.method private c()V
    .locals 7

    const v3, 0x7f0c01f2

    const v6, 0x7f0c01f0

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/SM_SocialAccountSettings;->b:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/coremobility/app/vnotes/bw;->a()Lcom/coremobility/app/vnotes/bw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/bw;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "preference_twitter_user_screen_name"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/coremobility/app/vnotes/SM_SocialAccountSettings;->b:Landroid/preference/PreferenceScreen;

    const v2, 0x7f0c01f4

    invoke-virtual {p0, v2}, Lcom/coremobility/app/vnotes/SM_SocialAccountSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/coremobility/app/vnotes/SM_SocialAccountSettings;->a:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/coremobility/app/vnotes/bw;->a()Lcom/coremobility/app/vnotes/bw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/bw;->d()Lcom/a/a/e;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/coremobility/app/vnotes/bw;->a()Lcom/coremobility/app/vnotes/bw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/bw;->d()Lcom/a/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/e;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "preference_facebook_name"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/coremobility/app/vnotes/SM_SocialAccountSettings;->a:Landroid/preference/PreferenceScreen;

    const v2, 0x7f0c01f3

    invoke-virtual {p0, v2}, Lcom/coremobility/app/vnotes/SM_SocialAccountSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/coremobility/app/vnotes/SM_SocialAccountSettings;->b:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/coremobility/app/vnotes/SM_SocialAccountSettings;->b:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/coremobility/app/vnotes/SM_SocialAccountSettings;->a:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/coremobility/app/vnotes/SM_SocialAccountSettings;->a:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_1
.end method


# virtual methods
.method public final a(ILcom/coremobility/app/vnotes/cb;)V
    .locals 0

    return-void
.end method

.method public final a_()V
    .locals 3

    const/4 v0, 0x6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSocialStatusOAuthSuccess StatusMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/coremobility/app/vnotes/ko;

    invoke-direct {v0, p0}, Lcom/coremobility/app/vnotes/ko;-><init>(Lcom/coremobility/app/vnotes/SM_SocialAccountSettings;)V

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/SM_SocialAccountSettings;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b_(I)V
    .locals 0

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    const/4 v3, 0x6

    const/4 v2, 0x0

    const/4 v0, -0x1

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/coremobility/integration/app/CM_PreferenceForm;->onActivityResult(IILandroid/content/Intent;)V

    return-void

    :sswitch_0
    if-ne p2, v0, :cond_0

    const-string v0, "ACTIVITY_RESULT_FACEBOOK_OAUTH"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/coremobility/app/vnotes/bw;->a()Lcom/coremobility/app/vnotes/bw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/bw;->d()Lcom/a/a/e;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/a/a/e;->a(IILandroid/content/Intent;)V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/SM_SocialAccountSettings;->c()V

    goto :goto_0

    :sswitch_1
    if-ne p2, v0, :cond_0

    :try_start_0
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "oauth_verifier"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/coremobility/app/vnotes/bw;->a()Lcom/coremobility/app/vnotes/bw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/coremobility/app/vnotes/bw;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/SM_SocialAccountSettings;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "Exception in onActivityResult "

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0xf -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/coremobility/integration/app/CM_PreferenceForm;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f050009

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/SM_SocialAccountSettings;->addPreferencesFromResource(I)V

    const-string v0, "preference_facebook_account"

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/SM_SocialAccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/SM_SocialAccountSettings;->a:Landroid/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/SM_SocialAccountSettings;->a:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/SM_SocialAccountSettings;->a:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_0
    const-string v0, "preference_twitter_account"

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/SM_SocialAccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/SM_SocialAccountSettings;->b:Landroid/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/SM_SocialAccountSettings;->b:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coremobility/app/vnotes/SM_SocialAccountSettings;->b:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_1
    return-void
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Lcom/coremobility/integration/app/CM_PreferenceForm;->onPause()V

    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/coremobility/app/vnotes/SM_SocialAccountSettings;->a:Landroid/preference/PreferenceScreen;

    if-ne p1, v2, :cond_1

    invoke-static {}, Lcom/coremobility/app/vnotes/bw;->a()Lcom/coremobility/app/vnotes/bw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coremobility/app/vnotes/bw;->d()Lcom/a/a/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/e;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/coremobility/app/vnotes/bw;->a()Lcom/coremobility/app/vnotes/bw;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/coremobility/app/vnotes/bw;->c(Landroid/app/Activity;)V

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/coremobility/app/vnotes/bw;->a()Lcom/coremobility/app/vnotes/bw;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/coremobility/app/vnotes/bw;->d(Landroid/app/Activity;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/coremobility/app/vnotes/SM_SocialAccountSettings;->b:Landroid/preference/PreferenceScreen;

    if-ne p1, v2, :cond_3

    invoke-static {}, Lcom/coremobility/app/vnotes/bw;->a()Lcom/coremobility/app/vnotes/bw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coremobility/app/vnotes/bw;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/coremobility/app/vnotes/bw;->a()Lcom/coremobility/app/vnotes/bw;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/coremobility/app/vnotes/bw;->a(Landroid/app/Activity;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/coremobility/app/vnotes/bw;->a()Lcom/coremobility/app/vnotes/bw;

    move-result-object v1

    const/16 v2, 0xf

    invoke-virtual {v1, p0, v2}, Lcom/coremobility/app/vnotes/bw;->a(Landroid/app/Activity;I)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Lcom/coremobility/integration/app/CM_PreferenceForm;->onResume()V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/SM_SocialAccountSettings;->c()V

    return-void
.end method

.method protected onStart()V
    .locals 1

    const/16 v0, 0x6f

    invoke-super {p0, v0}, Lcom/coremobility/integration/app/CM_PreferenceForm;->b(I)V

    invoke-static {}, Lcom/coremobility/app/vnotes/bw;->a()Lcom/coremobility/app/vnotes/bw;

    invoke-static {p0}, Lcom/coremobility/app/vnotes/bw;->a(Lcom/coremobility/app/vnotes/cc;)V

    return-void
.end method

.method protected onStop()V
    .locals 0

    invoke-super {p0}, Lcom/coremobility/integration/app/CM_PreferenceForm;->b()V

    invoke-static {}, Lcom/coremobility/app/vnotes/bw;->a()Lcom/coremobility/app/vnotes/bw;

    invoke-static {p0}, Lcom/coremobility/app/vnotes/bw;->b(Lcom/coremobility/app/vnotes/cc;)V

    return-void
.end method

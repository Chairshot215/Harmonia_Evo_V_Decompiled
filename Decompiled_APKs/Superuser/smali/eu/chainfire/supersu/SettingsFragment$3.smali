.class Leu/chainfire/supersu/SettingsFragment$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field final synthetic a:Leu/chainfire/supersu/SettingsFragment;


# direct methods
.method constructor <init>(Leu/chainfire/supersu/SettingsFragment;)V
    .locals 0

    iput-object p1, p0, Leu/chainfire/supersu/SettingsFragment$3;->a:Leu/chainfire/supersu/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Leu/chainfire/supersu/SettingsFragment$3;)Leu/chainfire/supersu/SettingsFragment;
    .locals 1

    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment$3;->a:Leu/chainfire/supersu/SettingsFragment;

    return-object v0
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment$3;->a:Leu/chainfire/supersu/SettingsFragment;

    invoke-static {v0}, Leu/chainfire/supersu/SettingsFragment;->a(Leu/chainfire/supersu/SettingsFragment;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "superuser"

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    new-instance v0, Leu/chainfire/supersu/Installer;

    invoke-direct {v0}, Leu/chainfire/supersu/Installer;-><init>()V

    iget-object v1, p0, Leu/chainfire/supersu/SettingsFragment$3;->a:Leu/chainfire/supersu/SettingsFragment;

    invoke-virtual {v1}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Leu/chainfire/supersu/Installer;->a(Landroid/content/Context;)V

    iget-object v1, p0, Leu/chainfire/supersu/SettingsFragment$3;->a:Leu/chainfire/supersu/SettingsFragment;

    invoke-static {v1}, Leu/chainfire/supersu/SettingsFragment;->a(Leu/chainfire/supersu/SettingsFragment;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "superuser"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Leu/chainfire/supersu/SettingsFragment$3;->a:Leu/chainfire/supersu/SettingsFragment;

    invoke-virtual {v1}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Leu/chainfire/supersu/SettingsFragment$3$1;

    invoke-direct {v3, p0}, Leu/chainfire/supersu/SettingsFragment$3$1;-><init>(Leu/chainfire/supersu/SettingsFragment$3;)V

    invoke-virtual {v0, v1, v2, v3}, Leu/chainfire/supersu/Installer;->a(Landroid/content/Context;ZLjava/lang/Runnable;)V

    :goto_0
    return v4

    :cond_0
    iget-object v1, p0, Leu/chainfire/supersu/SettingsFragment$3;->a:Leu/chainfire/supersu/SettingsFragment;

    invoke-virtual {v1}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Leu/chainfire/supersu/Installer$UninstallMode;->a:Leu/chainfire/supersu/Installer$UninstallMode;

    invoke-virtual {v0, v1, v2}, Leu/chainfire/supersu/Installer;->b(Landroid/content/Context;Leu/chainfire/supersu/Installer$UninstallMode;)V

    goto :goto_0
.end method

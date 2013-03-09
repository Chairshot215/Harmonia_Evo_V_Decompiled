.class public Leu/chainfire/supersu/SuperUserIntentService;
.super Landroid/app/IntentService;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "SuperUserIntentService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Leu/chainfire/supersu/SuperUserIntentService;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Leu/chainfire/supersu/SuperUserIntentService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p2, :cond_2

    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_2
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "boot_complete"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Leu/chainfire/supersu/Installer;

    invoke-direct {v1}, Leu/chainfire/supersu/Installer;-><init>()V

    invoke-virtual {v1, p0}, Leu/chainfire/supersu/Installer;->a(Landroid/content/Context;)V

    invoke-virtual {v1}, Leu/chainfire/supersu/Installer;->b()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "survival"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p0}, Leu/chainfire/supersu/Settings;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v1}, Leu/chainfire/supersu/Installer;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v1, p0}, Leu/chainfire/supersu/Installer;->b(Landroid/content/Context;)Z

    invoke-virtual {p0}, Leu/chainfire/supersu/SuperUserIntentService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090026

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz p0, :cond_2

    instance-of v0, p0, Leu/chainfire/supersu/Application;

    if-nez v0, :cond_5

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    :goto_1
    instance-of v2, v0, Leu/chainfire/supersu/Application;

    if-eqz v2, :cond_2

    sget-object v2, Leu/chainfire/supersu/Application;->a:Landroid/os/Handler;

    new-instance v3, Leu/chainfire/supersu/SuperUserIntentService$1;

    invoke-direct {v3, v0, v1}, Leu/chainfire/supersu/SuperUserIntentService$1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_2
    new-instance v0, Leu/chainfire/supersu/Logs;

    invoke-direct {v0, p0}, Leu/chainfire/supersu/Logs;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Leu/chainfire/supersu/Installer;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v1, p0}, Leu/chainfire/supersu/Installer;->b(Landroid/content/Context;)Z

    goto :goto_2

    :cond_4
    const-string v1, "package_removed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "package_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "reauthenticate"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Leu/chainfire/supersu/Settings;

    invoke-direct {v1, p0}, Leu/chainfire/supersu/Settings;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Leu/chainfire/supersu/Settings;->a(Ljava/lang/String;)Leu/chainfire/supersu/Settings$App;

    move-result-object v0

    invoke-virtual {v0}, Leu/chainfire/supersu/Settings$App;->f()V

    invoke-virtual {v1, p0}, Leu/chainfire/supersu/Settings;->a(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_5
    move-object v0, p0

    goto :goto_1
.end method

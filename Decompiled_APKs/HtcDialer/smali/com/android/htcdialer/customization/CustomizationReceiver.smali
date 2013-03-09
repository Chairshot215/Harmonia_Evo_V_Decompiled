.class public Lcom/android/htcdialer/customization/CustomizationReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CustomizationReceiver.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "CustomizationReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 22
    return-void
.end method

.method private setCustomizeSharePreference(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 7
    .parameter "context"
    .parameter "customizeBundle"

    .prologue
    .line 50
    const-string v4, "dialer"

    const-string v5, "brought_number_savable"

    invoke-static {p2, v4, v5}, Lcom/android/htcdialer/customization/CustomizationUtility;->getSingleValueInBundle(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 53
    .local v3, value:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 55
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 56
    .local v0, broughtNumberSaveable:Z
    if-eqz p1, :cond_0

    .line 57
    const-string v4, "com.android.htcdialer_preferences"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 59
    .local v2, settings:Landroid/content/SharedPreferences;
    if-eqz v2, :cond_0

    .line 60
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 61
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    if-eqz v1, :cond_0

    .line 62
    const-string v4, "brought_number_savable"

    invoke-interface {v1, v4, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 63
    const-string v4, "customized"

    const/4 v5, 0x1

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 64
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 65
    const-string v4, "CustomizationReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setCustomizeSharePreference: broughtNumberSaveable = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .end local v0           #broughtNumberSaveable:Z
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v2           #settings:Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    const-string v4, "CustomizationReceiver"

    const-string v5, "setCustomizeSharePreference: broughtNumberSaveable is null "

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 27
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 28
    .local v0, action:Ljava/lang/String;
    const-string v2, "CustomizationReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    const-string v2, "android.htc.intent.action.CUSTOMIZATION_CHANGE"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.htc.intent.action.CUSTOMIZATION_CHANGE_FAKE"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 32
    :cond_0
    const-string v2, "CustomizationReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive(): action = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    invoke-static {}, Lcom/android/htcdialer/customization/CustomizationUtility;->getCustomizationUri()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p1, v2, v3}, Lcom/android/htcdialer/customization/CustomizationUtility;->loadCustomizationData(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 39
    .local v1, bundle:Landroid/os/Bundle;
    if-eqz v1, :cond_2

    .line 40
    const-string v2, "CustomizationReceiver"

    const-string v3, "Load customization data successfully. "

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    invoke-direct {p0, p1, v1}, Lcom/android/htcdialer/customization/CustomizationReceiver;->setCustomizeSharePreference(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 46
    .end local v1           #bundle:Landroid/os/Bundle;
    :cond_1
    :goto_0
    return-void

    .line 43
    .restart local v1       #bundle:Landroid/os/Bundle;
    :cond_2
    const-string v2, "CustomizationReceiver"

    const-string v3, "no customize data. "

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

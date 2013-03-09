.class public Lcom/htc/clock3dwidget/idlescreen/IdleScreenSettings;
.super Landroid/app/Activity;
.source "IdleScreenSettings.java"


# static fields
.field private static final DEFAULT_CLOCK_TYPE:Ljava/lang/String; = "0"

.field public static final EXTRA_KEY_PREFIX:Ljava/lang/String; = "com.htc.launcher.intent"

.field public static final EXTRA_KEY_WIDGET_PROVIDER_ARRAY:Ljava/lang/String; = "com.htc.launcher.intent.EXTRA_KEY_WIDGET_PROVIDER_ARRAY"

.field public static final EXTRA_KEY_WIDGET_PROVIDER_ARRAY_INDEX_FILTER:Ljava/lang/String; = "com.htc.launcher.intent.EXTRA_KEY_WIDGET_PROVIDER_ARRAY_INDEX_FILTER"

.field public static final EXTRA_KEY_WIDGET_PROVIDER_ARRAY_INDEX_SELECT:Ljava/lang/String; = "com.htc.launcher.intent.EXTRA_KEY_WIDGET_PROVIDER_ARRAY_INDEX_SELECT"

.field public static final FIRST_SET:Ljava/lang/String; = "first_set"

.field public static final IS_APPLY:Ljava/lang/String; = "is_apply"

.field private static final KEY_CLOCK_TYPE:Ljava/lang/String; = "clock_type"

.field private static final PREFERENCE_NAME:Ljava/lang/String; = "com.htc.clock3dwidget_preferences"


# instance fields
.field private mFirstSet:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private getApply()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 78
    invoke-virtual {p0}, Lcom/htc/clock3dwidget/idlescreen/IdleScreenSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 79
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 80
    const-string v2, "is_apply"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 81
    const-string v2, "is_apply"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 82
    const/4 v1, 0x1

    .line 86
    :cond_0
    return v1
.end method

.method public static getClockType(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    .line 69
    const-string v2, "com.htc.clock3dwidget_preferences"

    const/4 v3, 0x4

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 71
    .local v0, settings:Landroid/content/SharedPreferences;
    const-string v2, "clock_type"

    const-string v3, "0"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, type:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getClockType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V

    .line 74
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method private getFirstSet()Z
    .locals 3

    .prologue
    .line 90
    const-string v1, "com.htc.clock3dwidget_preferences"

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Lcom/htc/clock3dwidget/idlescreen/IdleScreenSettings;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 92
    .local v0, settings:Landroid/content/SharedPreferences;
    const-string v1, "first_set"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/clock3dwidget/idlescreen/IdleScreenSettings;->mFirstSet:Z

    .line 93
    iget-boolean v1, p0, Lcom/htc/clock3dwidget/idlescreen/IdleScreenSettings;->mFirstSet:Z

    return v1
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 98
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 99
    if-eqz p3, :cond_1

    .line 100
    const-string v2, "com.htc.launcher.intent.EXTRA_KEY_WIDGET_PROVIDER_ARRAY_INDEX_SELECT"

    const/4 v3, 0x0

    invoke-virtual {p3, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 102
    .local v0, index:I
    const-string v2, "com.htc.clock3dwidget_preferences"

    const/4 v3, 0x4

    invoke-virtual {p0, v2, v3}, Lcom/htc/clock3dwidget/idlescreen/IdleScreenSettings;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 104
    .local v1, settings:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "clock_type"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 106
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setClockType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V

    .line 107
    iget-boolean v2, p0, Lcom/htc/clock3dwidget/idlescreen/IdleScreenSettings;->mFirstSet:Z

    if-nez v2, :cond_0

    .line 108
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "first_set"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 110
    :cond_0
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/htc/clock3dwidget/idlescreen/IdleScreenSettings;->setResult(I)V

    .line 112
    .end local v0           #index:I
    .end local v1           #settings:Landroid/content/SharedPreferences;
    :cond_1
    invoke-virtual {p0}, Lcom/htc/clock3dwidget/idlescreen/IdleScreenSettings;->finish()V

    .line 113
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const/4 v9, 0x0

    .line 33
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    invoke-direct {p0}, Lcom/htc/clock3dwidget/idlescreen/IdleScreenSettings;->getApply()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-direct {p0}, Lcom/htc/clock3dwidget/idlescreen/IdleScreenSettings;->getFirstSet()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 35
    const/4 v6, -0x1

    invoke-virtual {p0, v6}, Lcom/htc/clock3dwidget/idlescreen/IdleScreenSettings;->setResult(I)V

    .line 36
    invoke-virtual {p0}, Lcom/htc/clock3dwidget/idlescreen/IdleScreenSettings;->finish()V

    .line 61
    :goto_0
    return-void

    .line 40
    :cond_0
    const-string v1, "com.htc.AddProgramWidget"

    .line 41
    .local v1, PKG:Ljava/lang/String;
    const-string v0, ".fusionwidget.StyleChooser"

    .line 42
    .local v0, CLASS:Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 43
    .local v3, intent:Landroid/content/Intent;
    new-instance v6, Landroid/content/ComponentName;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".fusionwidget.StyleChooser"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v1, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 44
    invoke-virtual {p0}, Lcom/htc/clock3dwidget/idlescreen/IdleScreenSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, v3, v9}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    if-nez v6, :cond_1

    .line 45
    const-string v1, "com.htc.home.personalize"

    .line 46
    new-instance v6, Landroid/content/ComponentName;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".fusionwidget.StyleChooser"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v1, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 48
    :cond_1
    const/4 v6, 0x1

    new-array v4, v6, [Landroid/content/ComponentName;

    .line 49
    .local v4, p:[Landroid/content/ComponentName;
    new-instance v6, Landroid/content/ComponentName;

    const-string v7, "com.htc.clock3dwidget"

    const-string v8, "com.htc.clock3dwidget.ClockWidgetProvider"

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v4, v9

    .line 52
    const/16 v6, 0xb

    new-array v5, v6, [I

    fill-array-data v5, :array_0

    .line 55
    .local v5, value:[I
    :try_start_0
    const-string v6, "com.htc.launcher.intent.EXTRA_KEY_WIDGET_PROVIDER_ARRAY"

    invoke-virtual {v3, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 56
    const-string v6, "com.htc.launcher.intent.EXTRA_KEY_WIDGET_PROVIDER_ARRAY_INDEX_FILTER"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 57
    const/4 v6, 0x0

    invoke-virtual {p0, v3, v6}, Lcom/htc/clock3dwidget/idlescreen/IdleScreenSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 58
    :catch_0
    move-exception v2

    .line 59
    .local v2, ex:Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "exception"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/htc/clock/util/MyLog;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 52
    :array_0
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 65
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 66
    return-void
.end method

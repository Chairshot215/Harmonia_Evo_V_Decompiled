.class abstract Lcom/android/server/HtcPowerSaver$Feature;
.super Ljava/lang/Object;
.source "HtcPowerSaver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/HtcPowerSaver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "Feature"
.end annotation


# instance fields
.field private final DEFAULT_SWITCH_VALUE:Z

.field private final KEY_FEATURE_SWITCH:Ljava/lang/String;

.field private final KEY_FEATURE_SYSPROP:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private mApplied:Z

.field final synthetic this$0:Lcom/android/server/HtcPowerSaver;


# direct methods
.method constructor <init>(Lcom/android/server/HtcPowerSaver;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/HtcPowerSaver$Feature;->this$0:Lcom/android/server/HtcPowerSaver;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/HtcPowerSaver$Feature;->mApplied:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HtcPowerSaver-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/HtcPowerSaver$Feature;->TAG:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/HtcPowerSaver$Feature;->KEY_FEATURE_SWITCH:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/android/server/HtcPowerSaver$Feature;->DEFAULT_SWITCH_VALUE:Z

    iput-object p5, p0, Lcom/android/server/HtcPowerSaver$Feature;->KEY_FEATURE_SYSPROP:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/server/HtcPowerSaver$Feature;->updateSystemProperties()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/HtcPowerSaver$Feature;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/HtcPowerSaver$Feature;->apply()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/HtcPowerSaver$Feature;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/HtcPowerSaver$Feature;->restore()V

    return-void
.end method

.method private apply()Z
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/HtcPowerSaver$Feature;->mApplied:Z

    invoke-virtual {p0}, Lcom/android/server/HtcPowerSaver$Feature;->saveSystemSettings()I

    invoke-direct {p0}, Lcom/android/server/HtcPowerSaver$Feature;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/HtcPowerSaver$Feature;->applyPowerSaverSettings()I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/HtcPowerSaver$Feature;->mApplied:Z

    iget-object v0, p0, Lcom/android/server/HtcPowerSaver$Feature;->TAG:Ljava/lang/String;

    const-string v1, "Applied."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-direct {p0}, Lcom/android/server/HtcPowerSaver$Feature;->updateSystemProperties()V

    iget-boolean v0, p0, Lcom/android/server/HtcPowerSaver$Feature;->mApplied:Z

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/HtcPowerSaver$Feature;->TAG:Ljava/lang/String;

    const-string v1, "Not enabled. Skip applying."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getSettingsSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 5

    const/4 v2, 0x0

    if-nez p1, :cond_0

    iget-object v3, p0, Lcom/android/server/HtcPowerSaver$Feature;->TAG:Ljava/lang/String;

    const-string v4, "getSettingsSharedPreferences: Context is null."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v2

    :cond_0
    :try_start_0
    const-string v3, "com.android.settings"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    const-string v2, "powersaver_shared"

    const/4 v3, 0x7

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private isEnable()Z
    .locals 5

    iget-object v2, p0, Lcom/android/server/HtcPowerSaver$Feature;->this$0:Lcom/android/server/HtcPowerSaver;

    #getter for: Lcom/android/server/HtcPowerSaver;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/HtcPowerSaver;->access$200(Lcom/android/server/HtcPowerSaver;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/HtcPowerSaver$Feature;->getSettingsSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/android/server/HtcPowerSaver$Feature;->TAG:Ljava/lang/String;

    const-string v3, "isEnable: Get SharedPreferences fail."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lcom/android/server/HtcPowerSaver$Feature;->KEY_FEATURE_SWITCH:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/android/server/HtcPowerSaver$Feature;->DEFAULT_SWITCH_VALUE:Z

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v2, p0, Lcom/android/server/HtcPowerSaver$Feature;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/server/HtcPowerSaver$Feature;->KEY_FEATURE_SWITCH:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/HtcPowerSaver$Feature;->DEFAULT_SWITCH_VALUE:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private restore()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/HtcPowerSaver$Feature;->mApplied:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/HtcPowerSaver$Feature;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/HtcPowerSaver$Feature;->this$0:Lcom/android/server/HtcPowerSaver;

    #getter for: Lcom/android/server/HtcPowerSaver;->mBootNotify:Z
    invoke-static {v0}, Lcom/android/server/HtcPowerSaver;->access$300(Lcom/android/server/HtcPowerSaver;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/HtcPowerSaver$Feature;->restoreSystemSettings()I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/HtcPowerSaver$Feature;->mApplied:Z

    iget-object v0, p0, Lcom/android/server/HtcPowerSaver$Feature;->TAG:Ljava/lang/String;

    const-string v1, "Restored."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-direct {p0}, Lcom/android/server/HtcPowerSaver$Feature;->updateSystemProperties()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/HtcPowerSaver$Feature;->TAG:Ljava/lang/String;

    const-string v1, "Not enabled. Skip restoring."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateSystemProperties()V
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/android/server/HtcPowerSaver$Feature;->KEY_FEATURE_SYSPROP:Ljava/lang/String;

    new-instance v2, Ljava/lang/Boolean;

    iget-boolean v3, p0, Lcom/android/server/HtcPowerSaver$Feature;->mApplied:Z

    invoke-direct {v2, v3}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/HtcPowerSaver$Feature;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateSystemProperties: Unable to set SystemProperties: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/HtcPowerSaver$Feature;->KEY_FEATURE_SYSPROP:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected abstract applyPowerSaverSettings()I
.end method

.method protected abstract restoreSystemSettings()I
.end method

.method protected abstract saveSystemSettings()I
.end method

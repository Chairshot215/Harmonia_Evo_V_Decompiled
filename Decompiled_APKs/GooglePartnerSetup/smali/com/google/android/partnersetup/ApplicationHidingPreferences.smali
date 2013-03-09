.class public Lcom/google/android/partnersetup/ApplicationHidingPreferences;
.super Ljava/lang/Object;
.source "ApplicationHidingPreferences.java"


# static fields
.field private static mPreferences:Lcom/google/android/partnersetup/ApplicationHidingPreferences;


# instance fields
.field private final sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string v0, "ApplicationHidingPreferences"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/partnersetup/ApplicationHidingPreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 26
    return-void
.end method

.method public static declared-synchronized getPreferences(Landroid/content/Context;)Lcom/google/android/partnersetup/ApplicationHidingPreferences;
    .locals 2
    .parameter "context"

    .prologue
    .line 29
    const-class v1, Lcom/google/android/partnersetup/ApplicationHidingPreferences;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/partnersetup/ApplicationHidingPreferences;->mPreferences:Lcom/google/android/partnersetup/ApplicationHidingPreferences;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/google/android/partnersetup/ApplicationHidingPreferences;

    invoke-direct {v0, p0}, Lcom/google/android/partnersetup/ApplicationHidingPreferences;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/partnersetup/ApplicationHidingPreferences;->mPreferences:Lcom/google/android/partnersetup/ApplicationHidingPreferences;

    .line 32
    :cond_0
    sget-object v0, Lcom/google/android/partnersetup/ApplicationHidingPreferences;->mPreferences:Lcom/google/android/partnersetup/ApplicationHidingPreferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 29
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getHidingRunCount()I
    .locals 3

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/partnersetup/ApplicationHidingPreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "hiding_run_count"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getHidingVersionNumber()I
    .locals 3

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/partnersetup/ApplicationHidingPreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "hiding_version_number"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public incrementHidingRunCount()V
    .locals 2

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/google/android/partnersetup/ApplicationHidingPreferences;->getHidingRunCount()I

    move-result v0

    .line 73
    .local v0, bootCount:I
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Lcom/google/android/partnersetup/ApplicationHidingPreferences;->setHidingRunCount(I)Z

    .line 74
    return-void
.end method

.method public setHidingRunCount(I)Z
    .locals 2
    .parameter "value"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/partnersetup/ApplicationHidingPreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "hiding_run_count"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method

.method public setHidingVersionNumber(I)Z
    .locals 2
    .parameter "value"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/partnersetup/ApplicationHidingPreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "hiding_version_number"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method

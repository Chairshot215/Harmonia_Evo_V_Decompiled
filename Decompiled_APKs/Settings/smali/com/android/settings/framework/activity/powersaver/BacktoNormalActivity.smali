.class public Lcom/android/settings/framework/activity/powersaver/BacktoNormalActivity;
.super Landroid/app/Activity;
.source "BacktoNormalActivity.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private mContentresolver:Landroid/content/ContentResolver;

.field private mPowerSaverSharedpref:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 31
    const-string v0, "BacktoNormalActivity"

    iput-object v0, p0, Lcom/android/settings/framework/activity/powersaver/BacktoNormalActivity;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/high16 v8, 0x3f80

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 37
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    iget-object v1, p0, Lcom/android/settings/framework/activity/powersaver/BacktoNormalActivity;->TAG:Ljava/lang/String;

    const-string v2, "[PSaver]onCreate Start"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/powersaver/BacktoNormalActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/framework/activity/powersaver/BacktoNormalActivity;->mContentresolver:Landroid/content/ContentResolver;

    .line 41
    const-string v1, "powersaver_shared"

    invoke-virtual {p0, v1, v6}, Lcom/android/settings/framework/activity/powersaver/BacktoNormalActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/framework/activity/powersaver/BacktoNormalActivity;->mPowerSaverSharedpref:Landroid/content/SharedPreferences;

    .line 43
    iget-object v1, p0, Lcom/android/settings/framework/activity/powersaver/BacktoNormalActivity;->mContentresolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/settings/framework/activity/powersaver/BacktoNormalActivity;->mPowerSaverSharedpref:Landroid/content/SharedPreferences;

    const-string v3, "psaver_normal_bgdata"

    invoke-interface {v2, v3, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v1, v2, p0}, Lcom/android/settings/framework/activity/powersaver/Powersaver;->setSysBackgroundData(Landroid/content/ContentResolver;ILandroid/content/Context;)V

    .line 44
    iget-object v1, p0, Lcom/android/settings/framework/activity/powersaver/BacktoNormalActivity;->mPowerSaverSharedpref:Landroid/content/SharedPreferences;

    const-string v2, "psaver_normal_bluetooth"

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Lcom/android/settings/framework/activity/powersaver/Powersaver;->setSysBluetooth(Z)V

    .line 45
    iget-object v1, p0, Lcom/android/settings/framework/activity/powersaver/BacktoNormalActivity;->mPowerSaverSharedpref:Landroid/content/SharedPreferences;

    const-string v2, "psaver_normal_wifi"

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {p0, v1}, Lcom/android/settings/framework/activity/powersaver/Powersaver;->setSysWifi(Landroid/content/Context;Z)V

    .line 46
    iget-object v1, p0, Lcom/android/settings/framework/activity/powersaver/BacktoNormalActivity;->mContentresolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/settings/framework/activity/powersaver/BacktoNormalActivity;->mPowerSaverSharedpref:Landroid/content/SharedPreferences;

    const-string v3, "psaver_normal_autobrightness"

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/framework/activity/powersaver/BacktoNormalActivity;->mPowerSaverSharedpref:Landroid/content/SharedPreferences;

    const-string v4, "psaver_normal_brightness"

    const/16 v5, 0x66

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/android/settings/framework/activity/powersaver/Powersaver;->setSysBrightness(Landroid/content/ContentResolver;II)V

    .line 49
    iget-object v1, p0, Lcom/android/settings/framework/activity/powersaver/BacktoNormalActivity;->mContentresolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/settings/framework/activity/powersaver/BacktoNormalActivity;->mPowerSaverSharedpref:Landroid/content/SharedPreferences;

    const-string v3, "psaver_normal_haptic_feedback"

    invoke-interface {v2, v3, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/settings/framework/activity/powersaver/Powersaver;->setSysHapicFeedback(Landroid/content/ContentResolver;I)V

    .line 50
    iget-object v1, p0, Lcom/android/settings/framework/activity/powersaver/BacktoNormalActivity;->mContentresolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/settings/framework/activity/powersaver/BacktoNormalActivity;->mPowerSaverSharedpref:Landroid/content/SharedPreferences;

    const-string v3, "psaver_normal_screen_timeout"

    const/16 v4, 0x1770

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/settings/framework/activity/powersaver/Powersaver;->setSysTimeOut(Landroid/content/ContentResolver;I)V

    .line 52
    const/4 v1, 0x2

    new-array v0, v1, [F

    fill-array-data v0, :array_0

    .line 53
    .local v0, animation:[F
    iget-object v1, p0, Lcom/android/settings/framework/activity/powersaver/BacktoNormalActivity;->mPowerSaverSharedpref:Landroid/content/SharedPreferences;

    const-string v2, "psaver_normal_animation_0"

    invoke-interface {v1, v2, v8}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    aput v1, v0, v6

    .line 54
    iget-object v1, p0, Lcom/android/settings/framework/activity/powersaver/BacktoNormalActivity;->mPowerSaverSharedpref:Landroid/content/SharedPreferences;

    const-string v2, "psaver_normal_animation_1"

    invoke-interface {v1, v2, v8}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    aput v1, v0, v7

    .line 55
    invoke-static {v0}, Lcom/android/settings/framework/activity/powersaver/Powersaver;->setSysOnscreenAnimations([F)V

    .line 57
    iget-object v1, p0, Lcom/android/settings/framework/activity/powersaver/BacktoNormalActivity;->mContentresolver:Landroid/content/ContentResolver;

    const/16 v2, 0x1f40

    invoke-static {v1, v2}, Lcom/android/settings/framework/activity/powersaver/Powersaver;->setStatus(Landroid/content/ContentResolver;I)V

    .line 58
    iget-object v1, p0, Lcom/android/settings/framework/activity/powersaver/BacktoNormalActivity;->TAG:Ljava/lang/String;

    const-string v2, "[PSaver]onCreate Done"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/powersaver/BacktoNormalActivity;->finish()V

    .line 60
    return-void

    .line 52
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

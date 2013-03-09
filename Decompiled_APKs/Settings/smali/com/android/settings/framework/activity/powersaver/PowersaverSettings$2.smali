.class Lcom/android/settings/framework/activity/powersaver/PowersaverSettings$2;
.super Ljava/lang/Object;
.source "PowersaverSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;->onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 248
    iput-object p1, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverSettings$2;->this$0:Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 252
    iget-object v1, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverSettings$2;->this$0:Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;

    invoke-virtual {v1}, Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 253
    .local v0, contentResolver:Landroid/content/ContentResolver;
    invoke-static {v0, v2}, Lcom/android/settings/framework/activity/powersaver/Powersaver;->setPowerEfficiencyEnable(Landroid/content/ContentResolver;I)V

    .line 254
    iget-object v1, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverSettings$2;->this$0:Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;

    #getter for: Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;->mEnablePowerEfficiencyPref:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-static {v1}, Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;->access$000(Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 256
    iget-object v1, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverSettings$2;->this$0:Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;

    #calls: Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;->storePowerEfficiencyNormalsettings()V
    invoke-static {v1}, Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;->access$100(Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;)V

    .line 257
    iget-object v1, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverSettings$2;->this$0:Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;

    invoke-virtual {v1, v3}, Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;->set_WIFI_SLEEP_POLICY(I)V

    .line 258
    iget-object v1, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverSettings$2;->this$0:Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;

    invoke-virtual {v1, v2}, Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;->set_POWER_SAVE_3G(I)V

    .line 259
    iget-object v1, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverSettings$2;->this$0:Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;

    invoke-virtual {v1, v3}, Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;->setAutoSync(Z)V

    .line 261
    iget-object v1, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverSettings$2;->this$0:Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;

    #calls: Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;->setBrightness()V
    invoke-static {v1}, Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;->access$200(Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;)V

    .line 262
    return-void
.end method

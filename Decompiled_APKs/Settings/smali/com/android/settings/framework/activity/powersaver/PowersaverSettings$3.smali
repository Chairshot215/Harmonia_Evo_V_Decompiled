.class Lcom/android/settings/framework/activity/powersaver/PowersaverSettings$3;
.super Ljava/lang/Object;
.source "PowersaverSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
    .line 239
    iput-object p1, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverSettings$3;->this$0:Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    const/4 v1, 0x0

    .line 242
    iget-object v0, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverSettings$3;->this$0:Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;

    invoke-virtual {v0}, Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/settings/framework/activity/powersaver/Powersaver;->setPowerEfficiencyEnable(Landroid/content/ContentResolver;I)V

    .line 243
    iget-object v0, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverSettings$3;->this$0:Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;

    #getter for: Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;->mEnablePowerEfficiencyPref:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;->access$000(Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 244
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 245
    return-void
.end method

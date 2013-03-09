.class final Lcom/android/settings/HtcCdmaGPSLocationSettingV2$setupVZW;
.super Ljava/lang/Object;
.source "HtcCdmaGPSLocationSettingV2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/HtcCdmaGPSLocationSettingV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "setupVZW"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/HtcCdmaGPSLocationSettingV2;


# direct methods
.method private constructor <init>(Lcom/android/settings/HtcCdmaGPSLocationSettingV2;)V
    .locals 0
    .parameter

    .prologue
    .line 336
    iput-object p1, p0, Lcom/android/settings/HtcCdmaGPSLocationSettingV2$setupVZW;->this$0:Lcom/android/settings/HtcCdmaGPSLocationSettingV2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/HtcCdmaGPSLocationSettingV2;Lcom/android/settings/HtcCdmaGPSLocationSettingV2$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 336
    invoke-direct {p0, p1}, Lcom/android/settings/HtcCdmaGPSLocationSettingV2$setupVZW;-><init>(Lcom/android/settings/HtcCdmaGPSLocationSettingV2;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 339
    const-string v0, "HtcCdmaGPSLocationSetting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVZW ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/HtcCdmaGPSLocationSettingV2$setupVZW;->this$0:Lcom/android/settings/HtcCdmaGPSLocationSettingV2;

    #getter for: Lcom/android/settings/HtcCdmaGPSLocationSettingV2;->mCB_VerizonLocatonService:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-static {v2}, Lcom/android/settings/HtcCdmaGPSLocationSettingV2;->access$300(Lcom/android/settings/HtcCdmaGPSLocationSettingV2;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    iget-object v0, p0, Lcom/android/settings/HtcCdmaGPSLocationSettingV2$setupVZW;->this$0:Lcom/android/settings/HtcCdmaGPSLocationSettingV2;

    invoke-virtual {v0}, Lcom/android/settings/HtcCdmaGPSLocationSettingV2;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "vzw_lbs"

    iget-object v2, p0, Lcom/android/settings/HtcCdmaGPSLocationSettingV2$setupVZW;->this$0:Lcom/android/settings/HtcCdmaGPSLocationSettingV2;

    #getter for: Lcom/android/settings/HtcCdmaGPSLocationSettingV2;->mCB_VerizonLocatonService:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-static {v2}, Lcom/android/settings/HtcCdmaGPSLocationSettingV2;->access$300(Lcom/android/settings/HtcCdmaGPSLocationSettingV2;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 342
    return-void
.end method

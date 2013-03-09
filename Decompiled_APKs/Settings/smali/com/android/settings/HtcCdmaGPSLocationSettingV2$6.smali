.class Lcom/android/settings/HtcCdmaGPSLocationSettingV2$6;
.super Ljava/lang/Object;
.source "HtcCdmaGPSLocationSettingV2.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/HtcCdmaGPSLocationSettingV2;->onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/HtcCdmaGPSLocationSettingV2;


# direct methods
.method constructor <init>(Lcom/android/settings/HtcCdmaGPSLocationSettingV2;)V
    .locals 0
    .parameter

    .prologue
    .line 396
    iput-object p1, p0, Lcom/android/settings/HtcCdmaGPSLocationSettingV2$6;->this$0:Lcom/android/settings/HtcCdmaGPSLocationSettingV2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 398
    iget-object v0, p0, Lcom/android/settings/HtcCdmaGPSLocationSettingV2$6;->this$0:Lcom/android/settings/HtcCdmaGPSLocationSettingV2;

    iget-object v1, p0, Lcom/android/settings/HtcCdmaGPSLocationSettingV2$6;->this$0:Lcom/android/settings/HtcCdmaGPSLocationSettingV2;

    #getter for: Lcom/android/settings/HtcCdmaGPSLocationSettingV2;->mCB_VerizonLocatonService:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-static {v1}, Lcom/android/settings/HtcCdmaGPSLocationSettingV2;->access$300(Lcom/android/settings/HtcCdmaGPSLocationSettingV2;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v1

    #calls: Lcom/android/settings/HtcCdmaGPSLocationSettingV2;->set_GPS_One_enable(Z)V
    invoke-static {v0, v1}, Lcom/android/settings/HtcCdmaGPSLocationSettingV2;->access$1000(Lcom/android/settings/HtcCdmaGPSLocationSettingV2;Z)V

    .line 399
    iget-object v0, p0, Lcom/android/settings/HtcCdmaGPSLocationSettingV2$6;->this$0:Lcom/android/settings/HtcCdmaGPSLocationSettingV2;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/settings/HtcCdmaGPSLocationSettingV2;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 400
    return-void
.end method

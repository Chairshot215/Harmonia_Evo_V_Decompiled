.class Lcom/android/settings/HtcCdmaGPSLocationSettingV2$7;
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
    .line 426
    iput-object p1, p0, Lcom/android/settings/HtcCdmaGPSLocationSettingV2$7;->this$0:Lcom/android/settings/HtcCdmaGPSLocationSettingV2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 428
    iget-object v0, p0, Lcom/android/settings/HtcCdmaGPSLocationSettingV2$7;->this$0:Lcom/android/settings/HtcCdmaGPSLocationSettingV2;

    #getter for: Lcom/android/settings/HtcCdmaGPSLocationSettingV2;->mCB_3rdPartyLocationService:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings/HtcCdmaGPSLocationSettingV2;->access$500(Lcom/android/settings/HtcCdmaGPSLocationSettingV2;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 429
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 430
    iget-object v0, p0, Lcom/android/settings/HtcCdmaGPSLocationSettingV2$7;->this$0:Lcom/android/settings/HtcCdmaGPSLocationSettingV2;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/settings/HtcCdmaGPSLocationSettingV2;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 431
    return-void
.end method

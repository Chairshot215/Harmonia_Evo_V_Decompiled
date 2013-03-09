.class Lcom/android/settings/HtcCdmaGPSLocationSetting$2;
.super Ljava/lang/Object;
.source "HtcCdmaGPSLocationSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/HtcCdmaGPSLocationSetting;->onCheckedChanged(Landroid/widget/RadioGroup;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/HtcCdmaGPSLocationSetting;


# direct methods
.method constructor <init>(Lcom/android/settings/HtcCdmaGPSLocationSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/settings/HtcCdmaGPSLocationSetting$2;->this$0:Lcom/android/settings/HtcCdmaGPSLocationSetting;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v1, 0x1

    .line 109
    iget-object v0, p0, Lcom/android/settings/HtcCdmaGPSLocationSetting$2;->this$0:Lcom/android/settings/HtcCdmaGPSLocationSetting;

    #calls: Lcom/android/settings/HtcCdmaGPSLocationSetting;->setGPSONEenable(Z)V
    invoke-static {v0, v1}, Lcom/android/settings/HtcCdmaGPSLocationSetting;->access$100(Lcom/android/settings/HtcCdmaGPSLocationSetting;Z)V

    .line 110
    iget-object v0, p0, Lcom/android/settings/HtcCdmaGPSLocationSetting$2;->this$0:Lcom/android/settings/HtcCdmaGPSLocationSetting;

    #getter for: Lcom/android/settings/HtcCdmaGPSLocationSetting;->mRadioButton_1:Landroid/widget/RadioButton;
    invoke-static {v0}, Lcom/android/settings/HtcCdmaGPSLocationSetting;->access$200(Lcom/android/settings/HtcCdmaGPSLocationSetting;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 111
    sget-boolean v0, Lcom/android/settings/HtcFeatureList;->FEATURE_GPSONE_WARNING_ON_BOOT_AND_DBOULECHECK:Z

    if-ne v0, v1, :cond_0

    .line 112
    iget-object v0, p0, Lcom/android/settings/HtcCdmaGPSLocationSetting$2;->this$0:Lcom/android/settings/HtcCdmaGPSLocationSetting;

    invoke-virtual {v0, v1}, Lcom/android/settings/HtcCdmaGPSLocationSetting;->setshowGPSONEforWarning(Z)V

    .line 114
    :cond_0
    return-void
.end method

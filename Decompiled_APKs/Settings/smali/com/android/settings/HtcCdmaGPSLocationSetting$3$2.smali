.class Lcom/android/settings/HtcCdmaGPSLocationSetting$3$2;
.super Ljava/lang/Object;
.source "HtcCdmaGPSLocationSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/HtcCdmaGPSLocationSetting$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/HtcCdmaGPSLocationSetting$3;


# direct methods
.method constructor <init>(Lcom/android/settings/HtcCdmaGPSLocationSetting$3;)V
    .locals 0
    .parameter

    .prologue
    .line 168
    iput-object p1, p0, Lcom/android/settings/HtcCdmaGPSLocationSetting$3$2;->this$1:Lcom/android/settings/HtcCdmaGPSLocationSetting$3;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v2, 0x1

    .line 172
    iget-object v0, p0, Lcom/android/settings/HtcCdmaGPSLocationSetting$3$2;->this$1:Lcom/android/settings/HtcCdmaGPSLocationSetting$3;

    iget-object v0, v0, Lcom/android/settings/HtcCdmaGPSLocationSetting$3;->this$0:Lcom/android/settings/HtcCdmaGPSLocationSetting;

    #calls: Lcom/android/settings/HtcCdmaGPSLocationSetting;->setGPSONEenable(Z)V
    invoke-static {v0, v2}, Lcom/android/settings/HtcCdmaGPSLocationSetting;->access$100(Lcom/android/settings/HtcCdmaGPSLocationSetting;Z)V

    .line 173
    iget-object v0, p0, Lcom/android/settings/HtcCdmaGPSLocationSetting$3$2;->this$1:Lcom/android/settings/HtcCdmaGPSLocationSetting$3;

    iget-object v0, v0, Lcom/android/settings/HtcCdmaGPSLocationSetting$3;->this$0:Lcom/android/settings/HtcCdmaGPSLocationSetting;

    const/4 v1, 0x0

    #calls: Lcom/android/settings/HtcCdmaGPSLocationSetting;->allowChangeRadio(Z)V
    invoke-static {v0, v1}, Lcom/android/settings/HtcCdmaGPSLocationSetting;->access$300(Lcom/android/settings/HtcCdmaGPSLocationSetting;Z)V

    .line 174
    iget-object v0, p0, Lcom/android/settings/HtcCdmaGPSLocationSetting$3$2;->this$1:Lcom/android/settings/HtcCdmaGPSLocationSetting$3;

    iget-object v0, v0, Lcom/android/settings/HtcCdmaGPSLocationSetting$3;->this$0:Lcom/android/settings/HtcCdmaGPSLocationSetting;

    #getter for: Lcom/android/settings/HtcCdmaGPSLocationSetting;->mRadioButton_1:Landroid/widget/RadioButton;
    invoke-static {v0}, Lcom/android/settings/HtcCdmaGPSLocationSetting;->access$200(Lcom/android/settings/HtcCdmaGPSLocationSetting;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 175
    iget-object v0, p0, Lcom/android/settings/HtcCdmaGPSLocationSetting$3$2;->this$1:Lcom/android/settings/HtcCdmaGPSLocationSetting$3;

    iget-object v0, v0, Lcom/android/settings/HtcCdmaGPSLocationSetting$3;->this$0:Lcom/android/settings/HtcCdmaGPSLocationSetting;

    #calls: Lcom/android/settings/HtcCdmaGPSLocationSetting;->allowChangeRadio(Z)V
    invoke-static {v0, v2}, Lcom/android/settings/HtcCdmaGPSLocationSetting;->access$300(Lcom/android/settings/HtcCdmaGPSLocationSetting;Z)V

    .line 176
    sget-boolean v0, Lcom/android/settings/HtcFeatureList;->FEATURE_GPSONE_WARNING_ON_BOOT_AND_DBOULECHECK:Z

    if-ne v0, v2, :cond_0

    .line 177
    iget-object v0, p0, Lcom/android/settings/HtcCdmaGPSLocationSetting$3$2;->this$1:Lcom/android/settings/HtcCdmaGPSLocationSetting$3;

    iget-object v0, v0, Lcom/android/settings/HtcCdmaGPSLocationSetting$3;->this$0:Lcom/android/settings/HtcCdmaGPSLocationSetting;

    invoke-virtual {v0, v2}, Lcom/android/settings/HtcCdmaGPSLocationSetting;->setshowGPSONEforWarning(Z)V

    .line 179
    :cond_0
    return-void
.end method

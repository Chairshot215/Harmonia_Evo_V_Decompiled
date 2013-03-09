.class Lcom/android/settings/HtcCdmaGPSLocationSetting$3$1;
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
    .line 181
    iput-object p1, p0, Lcom/android/settings/HtcCdmaGPSLocationSetting$3$1;->this$1:Lcom/android/settings/HtcCdmaGPSLocationSetting$3;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/settings/HtcCdmaGPSLocationSetting$3$1;->this$1:Lcom/android/settings/HtcCdmaGPSLocationSetting$3;

    iget-object v0, v0, Lcom/android/settings/HtcCdmaGPSLocationSetting$3;->this$0:Lcom/android/settings/HtcCdmaGPSLocationSetting;

    #getter for: Lcom/android/settings/HtcCdmaGPSLocationSetting;->mRadioButton_2:Landroid/widget/RadioButton;
    invoke-static {v0}, Lcom/android/settings/HtcCdmaGPSLocationSetting;->access$000(Lcom/android/settings/HtcCdmaGPSLocationSetting;)Landroid/widget/RadioButton;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 184
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 185
    return-void
.end method

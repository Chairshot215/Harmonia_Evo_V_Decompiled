.class Lcom/android/settings/HtcCdmaGPSLocationSetting$3;
.super Ljava/lang/Object;
.source "HtcCdmaGPSLocationSetting.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/HtcCdmaGPSLocationSetting;
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
    .line 144
    iput-object p1, p0, Lcom/android/settings/HtcCdmaGPSLocationSetting$3;->this$0:Lcom/android/settings/HtcCdmaGPSLocationSetting;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    .line 147
    move-object v0, p1

    check-cast v0, Landroid/widget/RadioButton;

    .line 149
    .local v0, rb:Landroid/widget/RadioButton;
    invoke-virtual {v0}, Landroid/widget/RadioButton;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/HtcCdmaGPSLocationSetting$3;->this$0:Lcom/android/settings/HtcCdmaGPSLocationSetting;

    #getter for: Lcom/android/settings/HtcCdmaGPSLocationSetting;->mRadioButton_1:Landroid/widget/RadioButton;
    invoke-static {v2}, Lcom/android/settings/HtcCdmaGPSLocationSetting;->access$200(Lcom/android/settings/HtcCdmaGPSLocationSetting;)Landroid/widget/RadioButton;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/RadioButton;->getId()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 151
    const-string v1, "HtcCdmaGPSLocationSetting"

    const-string v2, "OoO onClick Radio 1"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    sget-boolean v1, Lcom/android/settings/HtcFeatureList;->FEATURE_GPSONE_WARNING_ON_BOOT_AND_DBOULECHECK:Z

    if-nez v1, :cond_1

    .line 161
    iget-object v1, p0, Lcom/android/settings/HtcCdmaGPSLocationSetting$3;->this$0:Lcom/android/settings/HtcCdmaGPSLocationSetting;

    #calls: Lcom/android/settings/HtcCdmaGPSLocationSetting;->setGPSONEenable(Z)V
    invoke-static {v1, v3}, Lcom/android/settings/HtcCdmaGPSLocationSetting;->access$100(Lcom/android/settings/HtcCdmaGPSLocationSetting;Z)V

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    iget-object v1, p0, Lcom/android/settings/HtcCdmaGPSLocationSetting$3;->this$0:Lcom/android/settings/HtcCdmaGPSLocationSetting;

    #getter for: Lcom/android/settings/HtcCdmaGPSLocationSetting;->mRadioButton_2:Landroid/widget/RadioButton;
    invoke-static {v1}, Lcom/android/settings/HtcCdmaGPSLocationSetting;->access$000(Lcom/android/settings/HtcCdmaGPSLocationSetting;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 165
    iget-object v1, p0, Lcom/android/settings/HtcCdmaGPSLocationSetting$3;->this$0:Lcom/android/settings/HtcCdmaGPSLocationSetting;

    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v3, p0, Lcom/android/settings/HtcCdmaGPSLocationSetting$3;->this$0:Lcom/android/settings/HtcCdmaGPSLocationSetting;

    invoke-direct {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0c03f8

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0c03f2

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lcom/android/settings/HtcCdmaGPSLocationSetting$3$2;

    invoke-direct {v4, p0}, Lcom/android/settings/HtcCdmaGPSLocationSetting$3$2;-><init>(Lcom/android/settings/HtcCdmaGPSLocationSetting$3;)V

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x104

    new-instance v4, Lcom/android/settings/HtcCdmaGPSLocationSetting$3$1;

    invoke-direct {v4, p0}, Lcom/android/settings/HtcCdmaGPSLocationSetting$3$1;-><init>(Lcom/android/settings/HtcCdmaGPSLocationSetting$3;)V

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    iput-object v2, v1, Lcom/android/settings/HtcCdmaGPSLocationSetting;->dialogForDoubleConfirm:Lcom/htc/widget/HtcAlertDialog;

    goto :goto_0

    .line 190
    :cond_2
    invoke-virtual {v0}, Landroid/widget/RadioButton;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/HtcCdmaGPSLocationSetting$3;->this$0:Lcom/android/settings/HtcCdmaGPSLocationSetting;

    #getter for: Lcom/android/settings/HtcCdmaGPSLocationSetting;->mRadioButton_2:Landroid/widget/RadioButton;
    invoke-static {v2}, Lcom/android/settings/HtcCdmaGPSLocationSetting;->access$000(Lcom/android/settings/HtcCdmaGPSLocationSetting;)Landroid/widget/RadioButton;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/RadioButton;->getId()I

    move-result v2

    if-ne v1, v2, :cond_0

    goto :goto_0
.end method

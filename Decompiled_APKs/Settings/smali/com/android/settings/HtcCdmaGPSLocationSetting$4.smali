.class Lcom/android/settings/HtcCdmaGPSLocationSetting$4;
.super Ljava/lang/Object;
.source "HtcCdmaGPSLocationSetting.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/HtcCdmaGPSLocationSetting;->onCreate(Landroid/os/Bundle;)V
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
    .line 244
    iput-object p1, p0, Lcom/android/settings/HtcCdmaGPSLocationSetting$4;->this$0:Lcom/android/settings/HtcCdmaGPSLocationSetting;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 246
    const-string v0, "HtcCdmaGPSLocationSetting"

    const-string v1, "OoO onClick: mCbDoNotShowAgain"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-object v1, p0, Lcom/android/settings/HtcCdmaGPSLocationSetting$4;->this$0:Lcom/android/settings/HtcCdmaGPSLocationSetting;

    iget-object v0, p0, Lcom/android/settings/HtcCdmaGPSLocationSetting$4;->this$0:Lcom/android/settings/HtcCdmaGPSLocationSetting;

    #getter for: Lcom/android/settings/HtcCdmaGPSLocationSetting;->mCbDoNotShowAgain:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/settings/HtcCdmaGPSLocationSetting;->access$400(Lcom/android/settings/HtcCdmaGPSLocationSetting;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    #calls: Lcom/android/settings/HtcCdmaGPSLocationSetting;->setShowEuraEnabled(Z)V
    invoke-static {v1, v0}, Lcom/android/settings/HtcCdmaGPSLocationSetting;->access$500(Lcom/android/settings/HtcCdmaGPSLocationSetting;Z)V

    .line 248
    return-void

    .line 247
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

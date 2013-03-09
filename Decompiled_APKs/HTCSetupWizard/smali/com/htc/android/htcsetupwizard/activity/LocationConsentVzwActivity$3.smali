.class Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity$3;
.super Ljava/lang/Object;
.source "LocationConsentVzwActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;


# direct methods
.method constructor <init>(Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 189
    iput-object p1, p0, Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity$3;->this$0:Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 192
    move v0, p2

    .line 194
    .local v0, enable:Z
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity$3;->this$0:Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;

    #getter for: Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;->mbAllowCheckLocation:Z
    invoke-static {v2}, Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;->access$400(Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;)Z

    move-result v2

    if-eq v2, v0, :cond_0

    .line 195
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity$3;->this$0:Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;

    const/4 v3, 0x1

    #setter for: Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;->mbGoogleSettingChanged:Z
    invoke-static {v2, v3}, Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;->access$502(Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;Z)Z

    .line 197
    :cond_0
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity$3;->this$0:Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;

    #getter for: Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;->mbGoogleSettingChanged:Z
    invoke-static {v2}, Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;->access$500(Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 198
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity$3;->this$0:Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;

    #setter for: Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;->mbAllowCheckLocation:Z
    invoke-static {v2, v0}, Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;->access$402(Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;Z)Z

    .line 199
    if-eqz v0, :cond_2

    .line 200
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity$3;->this$0:Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;

    invoke-virtual {v2}, Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "network"

    iget-object v4, p0, Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity$3;->this$0:Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;

    #getter for: Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;->mbAllowCheckLocation:Z
    invoke-static {v4}, Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;->access$400(Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;)Z

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 203
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.app.autosetting.location"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 204
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity$3;->this$0:Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;

    invoke-virtual {v2, v1}, Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 209
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    const-string v2, "LocationConsentVzwActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mAllowCheckLocation Check box is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity$3;->this$0:Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;

    #getter for: Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;->mAllowCheckLocation:Landroid/widget/CheckBox;
    invoke-static {v4}, Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;->access$600(Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;)Landroid/widget/CheckBox;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity$3;->this$0:Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;

    const/4 v3, 0x0

    #setter for: Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;->mbGoogleSettingChanged:Z
    invoke-static {v2, v3}, Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;->access$502(Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;Z)Z

    .line 213
    :cond_1
    return-void

    .line 206
    :cond_2
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity$3;->this$0:Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;

    invoke-virtual {v2}, Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;->showDisableWarningMessage()V

    goto :goto_0
.end method

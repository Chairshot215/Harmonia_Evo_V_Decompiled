.class Lcom/android/settings/SettingsLicenseActivity$3;
.super Landroid/webkit/WebViewClient;
.source "SettingsLicenseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SettingsLicenseActivity;->showPageOfText(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SettingsLicenseActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/SettingsLicenseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 208
    iput-object p1, p0, Lcom/android/settings/SettingsLicenseActivity$3;->this$0:Lcom/android/settings/SettingsLicenseActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .parameter "view"
    .parameter "url"

    .prologue
    const/4 v1, 0x0

    .line 211
    iget-object v0, p0, Lcom/android/settings/SettingsLicenseActivity$3;->this$0:Lcom/android/settings/SettingsLicenseActivity;

    #getter for: Lcom/android/settings/SettingsLicenseActivity;->mSpinnerDlg:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v0}, Lcom/android/settings/SettingsLicenseActivity;->access$200(Lcom/android/settings/SettingsLicenseActivity;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/android/settings/SettingsLicenseActivity$3;->this$0:Lcom/android/settings/SettingsLicenseActivity;

    #getter for: Lcom/android/settings/SettingsLicenseActivity;->mSpinnerDlg:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v0}, Lcom/android/settings/SettingsLicenseActivity;->access$200(Lcom/android/settings/SettingsLicenseActivity;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 213
    iget-object v0, p0, Lcom/android/settings/SettingsLicenseActivity$3;->this$0:Lcom/android/settings/SettingsLicenseActivity;

    #setter for: Lcom/android/settings/SettingsLicenseActivity;->mSpinnerDlg:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v0, v1}, Lcom/android/settings/SettingsLicenseActivity;->access$202(Lcom/android/settings/SettingsLicenseActivity;Lcom/htc/app/HtcProgressDialog;)Lcom/htc/app/HtcProgressDialog;

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/android/settings/SettingsLicenseActivity$3;->this$0:Lcom/android/settings/SettingsLicenseActivity;

    #getter for: Lcom/android/settings/SettingsLicenseActivity;->mTextDlg:Lcom/htc/widget/HtcAlertDialog;
    invoke-static {v0}, Lcom/android/settings/SettingsLicenseActivity;->access$300(Lcom/android/settings/SettingsLicenseActivity;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 216
    iget-object v0, p0, Lcom/android/settings/SettingsLicenseActivity$3;->this$0:Lcom/android/settings/SettingsLicenseActivity;

    #getter for: Lcom/android/settings/SettingsLicenseActivity;->mTextDlg:Lcom/htc/widget/HtcAlertDialog;
    invoke-static {v0}, Lcom/android/settings/SettingsLicenseActivity;->access$300(Lcom/android/settings/SettingsLicenseActivity;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 217
    iget-object v0, p0, Lcom/android/settings/SettingsLicenseActivity$3;->this$0:Lcom/android/settings/SettingsLicenseActivity;

    #setter for: Lcom/android/settings/SettingsLicenseActivity;->mTextDlg:Lcom/htc/widget/HtcAlertDialog;
    invoke-static {v0, v1}, Lcom/android/settings/SettingsLicenseActivity;->access$302(Lcom/android/settings/SettingsLicenseActivity;Lcom/htc/widget/HtcAlertDialog;)Lcom/htc/widget/HtcAlertDialog;

    .line 219
    :cond_1
    return-void
.end method

.class Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController$4;
.super Landroid/webkit/WebViewClient;
.source "OpenSourceLicensesPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController;->showPageOfText(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController;


# direct methods
.method constructor <init>(Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController;)V
    .locals 0
    .parameter

    .prologue
    .line 151
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController$4;->this$0:Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController;

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

    .line 154
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController$4;->this$0:Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController;

    #getter for: Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController;->mSpinnerDlg:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController;->access$400(Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController$4;->this$0:Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController;

    #getter for: Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController;->mTextDlg:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController;->access$500(Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController$4;->this$0:Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController;

    #getter for: Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController;->mSpinnerDlg:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController;->access$400(Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController$4;->this$0:Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController;->mShowingOpenSourceLicences:Z
    invoke-static {v0, v1}, Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController;->access$302(Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController;Z)Z

    .line 163
    :goto_0
    return-void

    .line 159
    :cond_1
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController$4;->this$0:Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController;

    #getter for: Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController;->mSpinnerDlg:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController;->access$400(Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 160
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController$4;->this$0:Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController;

    #getter for: Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController;->mTextDlg:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController;->access$500(Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 161
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController$4;->this$0:Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController;

    #setter for: Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController;->mSpinnerDlg:Landroid/app/ProgressDialog;
    invoke-static {v0, v1}, Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController;->access$402(Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 162
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController$4;->this$0:Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController;

    #setter for: Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController;->mTextDlg:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController;->access$502(Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    goto :goto_0
.end method

.class Lcom/google/android/tts/GeneralSettingsFragment$3;
.super Landroid/webkit/WebViewClient;
.source "GeneralSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/tts/GeneralSettingsFragment;->showPageOfText(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/tts/GeneralSettingsFragment;


# direct methods
.method constructor <init>(Lcom/google/android/tts/GeneralSettingsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/google/android/tts/GeneralSettingsFragment$3;->this$0:Lcom/google/android/tts/GeneralSettingsFragment;

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

    .line 102
    iget-object v0, p0, Lcom/google/android/tts/GeneralSettingsFragment$3;->this$0:Lcom/google/android/tts/GeneralSettingsFragment;

    #getter for: Lcom/google/android/tts/GeneralSettingsFragment;->mSpinnerDlg:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/google/android/tts/GeneralSettingsFragment;->access$300(Lcom/google/android/tts/GeneralSettingsFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 103
    iget-object v0, p0, Lcom/google/android/tts/GeneralSettingsFragment$3;->this$0:Lcom/google/android/tts/GeneralSettingsFragment;

    #setter for: Lcom/google/android/tts/GeneralSettingsFragment;->mSpinnerDlg:Landroid/app/ProgressDialog;
    invoke-static {v0, v1}, Lcom/google/android/tts/GeneralSettingsFragment;->access$302(Lcom/google/android/tts/GeneralSettingsFragment;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 104
    iget-object v0, p0, Lcom/google/android/tts/GeneralSettingsFragment$3;->this$0:Lcom/google/android/tts/GeneralSettingsFragment;

    #getter for: Lcom/google/android/tts/GeneralSettingsFragment;->mTextDlg:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/google/android/tts/GeneralSettingsFragment;->access$400(Lcom/google/android/tts/GeneralSettingsFragment;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 105
    iget-object v0, p0, Lcom/google/android/tts/GeneralSettingsFragment$3;->this$0:Lcom/google/android/tts/GeneralSettingsFragment;

    #setter for: Lcom/google/android/tts/GeneralSettingsFragment;->mTextDlg:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/google/android/tts/GeneralSettingsFragment;->access$402(Lcom/google/android/tts/GeneralSettingsFragment;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 106
    return-void
.end method

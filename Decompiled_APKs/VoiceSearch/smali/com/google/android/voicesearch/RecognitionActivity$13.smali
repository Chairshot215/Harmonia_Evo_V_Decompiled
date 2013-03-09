.class Lcom/google/android/voicesearch/RecognitionActivity$13;
.super Ljava/lang/Object;
.source "RecognitionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/voicesearch/RecognitionActivity;->getLanguageWarningDialog(IILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/voicesearch/RecognitionActivity;


# direct methods
.method constructor <init>(Lcom/google/android/voicesearch/RecognitionActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 940
    iput-object p1, p0, Lcom/google/android/voicesearch/RecognitionActivity$13;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 943
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity$13;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    #getter for: Lcom/google/android/voicesearch/RecognitionActivity;->mLanguagePrefManager:Lcom/google/android/voicesearch/LanguagePrefManager;
    invoke-static {v0}, Lcom/google/android/voicesearch/RecognitionActivity;->access$3100(Lcom/google/android/voicesearch/RecognitionActivity;)Lcom/google/android/voicesearch/LanguagePrefManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/voicesearch/LanguagePrefManager;->acknowledgeUnsupportedDeviceLanguage()V

    .line 944
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity$13;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    #getter for: Lcom/google/android/voicesearch/RecognitionActivity;->mLanguagePrefManager:Lcom/google/android/voicesearch/LanguagePrefManager;
    invoke-static {v0}, Lcom/google/android/voicesearch/RecognitionActivity;->access$3100(Lcom/google/android/voicesearch/RecognitionActivity;)Lcom/google/android/voicesearch/LanguagePrefManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/voicesearch/LanguagePrefManager;->resetDefaultLanguageChange()V

    .line 945
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity$13;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    const/4 v1, 0x1

    #setter for: Lcom/google/android/voicesearch/RecognitionActivity;->mRestoreRecognizingScreen:Z
    invoke-static {v0, v1}, Lcom/google/android/voicesearch/RecognitionActivity;->access$3302(Lcom/google/android/voicesearch/RecognitionActivity;Z)Z

    .line 946
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity$13;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/google/android/voicesearch/RecognitionActivity$13;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    const-class v3, Lcom/google/android/voicesearch/VoiceSearchPreferences;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/RecognitionActivity;->startActivity(Landroid/content/Intent;)V

    .line 949
    return-void
.end method

.class Lcom/google/android/voicesearch/RecognitionActivity$11;
.super Ljava/lang/Object;
.source "RecognitionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/voicesearch/RecognitionActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
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
    .line 891
    iput-object p1, p0, Lcom/google/android/voicesearch/RecognitionActivity$11;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 894
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity$11;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    #getter for: Lcom/google/android/voicesearch/RecognitionActivity;->mLanguagePrefManager:Lcom/google/android/voicesearch/LanguagePrefManager;
    invoke-static {v0}, Lcom/google/android/voicesearch/RecognitionActivity;->access$3100(Lcom/google/android/voicesearch/RecognitionActivity;)Lcom/google/android/voicesearch/LanguagePrefManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/voicesearch/LanguagePrefManager;->resetDefaultLanguageChange()V

    .line 895
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity$11;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    #calls: Lcom/google/android/voicesearch/RecognitionActivity;->continueStartRecognitionTask()V
    invoke-static {v0}, Lcom/google/android/voicesearch/RecognitionActivity;->access$3200(Lcom/google/android/voicesearch/RecognitionActivity;)V

    .line 896
    return-void
.end method

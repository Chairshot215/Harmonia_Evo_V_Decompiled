.class Lcom/google/android/voicesearch/RecognitionActivity$14;
.super Ljava/lang/Object;
.source "RecognitionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/voicesearch/RecognitionActivity;->getActionWarningDialog(Lcom/google/android/voicesearch/actions/VoiceAction;Ljava/lang/String;Z)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/voicesearch/RecognitionActivity;

.field final synthetic val$showDisambigAfter:Z


# direct methods
.method constructor <init>(Lcom/google/android/voicesearch/RecognitionActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 990
    iput-object p1, p0, Lcom/google/android/voicesearch/RecognitionActivity$14;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    iput-boolean p2, p0, Lcom/google/android/voicesearch/RecognitionActivity$14;->val$showDisambigAfter:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 993
    iget-boolean v0, p0, Lcom/google/android/voicesearch/RecognitionActivity$14;->val$showDisambigAfter:Z

    if-eqz v0, :cond_0

    .line 994
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity$14;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    const/4 v1, 0x1

    #calls: Lcom/google/android/voicesearch/RecognitionActivity;->showDisambig(Z)V
    invoke-static {v0, v1}, Lcom/google/android/voicesearch/RecognitionActivity;->access$1500(Lcom/google/android/voicesearch/RecognitionActivity;Z)V

    .line 998
    :goto_0
    return-void

    .line 996
    :cond_0
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity$14;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    #calls: Lcom/google/android/voicesearch/RecognitionActivity;->continueShowingResults()V
    invoke-static {v0}, Lcom/google/android/voicesearch/RecognitionActivity;->access$3400(Lcom/google/android/voicesearch/RecognitionActivity;)V

    goto :goto_0
.end method

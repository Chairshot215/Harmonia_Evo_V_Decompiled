.class Lcom/google/android/voicesearch/RecognitionActivity$2;
.super Ljava/lang/Object;
.source "RecognitionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/voicesearch/RecognitionActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 535
    iput-object p1, p0, Lcom/google/android/voicesearch/RecognitionActivity$2;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 538
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity$2;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    #getter for: Lcom/google/android/voicesearch/RecognitionActivity;->mDisambigDialog:Lcom/google/android/voicesearch/DisambigDialog;
    invoke-static {v0}, Lcom/google/android/voicesearch/RecognitionActivity;->access$2500(Lcom/google/android/voicesearch/RecognitionActivity;)Lcom/google/android/voicesearch/DisambigDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/voicesearch/DisambigDialog;->dismiss()V

    .line 539
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity$2;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/RecognitionActivity;->finish()V

    .line 540
    return-void
.end method

.class Lcom/google/android/voicesearch/RecognitionDialog$2;
.super Ljava/lang/Object;
.source "RecognitionDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/voicesearch/RecognitionDialog;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/voicesearch/RecognitionDialog;


# direct methods
.method constructor <init>(Lcom/google/android/voicesearch/RecognitionDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/google/android/voicesearch/RecognitionDialog$2;->this$0:Lcom/google/android/voicesearch/RecognitionDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionDialog$2;->this$0:Lcom/google/android/voicesearch/RecognitionDialog;

    #getter for: Lcom/google/android/voicesearch/RecognitionDialog;->mListener:Lcom/google/android/voicesearch/RecognitionDialog$Listener;
    invoke-static {v0}, Lcom/google/android/voicesearch/RecognitionDialog;->access$000(Lcom/google/android/voicesearch/RecognitionDialog;)Lcom/google/android/voicesearch/RecognitionDialog$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionDialog$2;->this$0:Lcom/google/android/voicesearch/RecognitionDialog;

    #getter for: Lcom/google/android/voicesearch/RecognitionDialog;->mListener:Lcom/google/android/voicesearch/RecognitionDialog$Listener;
    invoke-static {v0}, Lcom/google/android/voicesearch/RecognitionDialog;->access$000(Lcom/google/android/voicesearch/RecognitionDialog;)Lcom/google/android/voicesearch/RecognitionDialog$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/voicesearch/RecognitionDialog$Listener;->onCancel()V

    .line 107
    :cond_0
    return-void
.end method

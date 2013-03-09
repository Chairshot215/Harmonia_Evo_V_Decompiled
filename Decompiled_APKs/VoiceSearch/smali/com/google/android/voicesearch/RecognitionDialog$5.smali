.class Lcom/google/android/voicesearch/RecognitionDialog$5;
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
    .line 128
    iput-object p1, p0, Lcom/google/android/voicesearch/RecognitionDialog$5;->this$0:Lcom/google/android/voicesearch/RecognitionDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionDialog$5;->this$0:Lcom/google/android/voicesearch/RecognitionDialog;

    #getter for: Lcom/google/android/voicesearch/RecognitionDialog;->mListener:Lcom/google/android/voicesearch/RecognitionDialog$Listener;
    invoke-static {v0}, Lcom/google/android/voicesearch/RecognitionDialog;->access$000(Lcom/google/android/voicesearch/RecognitionDialog;)Lcom/google/android/voicesearch/RecognitionDialog$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionDialog$5;->this$0:Lcom/google/android/voicesearch/RecognitionDialog;

    #getter for: Lcom/google/android/voicesearch/RecognitionDialog;->mListener:Lcom/google/android/voicesearch/RecognitionDialog$Listener;
    invoke-static {v0}, Lcom/google/android/voicesearch/RecognitionDialog;->access$000(Lcom/google/android/voicesearch/RecognitionDialog;)Lcom/google/android/voicesearch/RecognitionDialog$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/voicesearch/RecognitionDialog$Listener;->onSettings()V

    .line 134
    :cond_0
    return-void
.end method

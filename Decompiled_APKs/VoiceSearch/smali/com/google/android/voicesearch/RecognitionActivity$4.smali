.class Lcom/google/android/voicesearch/RecognitionActivity$4;
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
    .line 586
    iput-object p1, p0, Lcom/google/android/voicesearch/RecognitionActivity$4;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 589
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity$4;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    const/4 v1, 0x1

    #calls: Lcom/google/android/voicesearch/RecognitionActivity;->showDisambig(Z)V
    invoke-static {v0, v1}, Lcom/google/android/voicesearch/RecognitionActivity;->access$1500(Lcom/google/android/voicesearch/RecognitionActivity;Z)V

    .line 590
    return-void
.end method

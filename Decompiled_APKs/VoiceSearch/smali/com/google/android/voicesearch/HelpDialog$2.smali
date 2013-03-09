.class Lcom/google/android/voicesearch/HelpDialog$2;
.super Ljava/lang/Object;
.source "HelpDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/voicesearch/HelpDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/voicesearch/HelpDialog;


# direct methods
.method constructor <init>(Lcom/google/android/voicesearch/HelpDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 165
    iput-object p1, p0, Lcom/google/android/voicesearch/HelpDialog$2;->this$0:Lcom/google/android/voicesearch/HelpDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog$2;->this$0:Lcom/google/android/voicesearch/HelpDialog;

    #getter for: Lcom/google/android/voicesearch/HelpDialog;->mListener:Lcom/google/android/voicesearch/HelpDialog$Listener;
    invoke-static {v0}, Lcom/google/android/voicesearch/HelpDialog;->access$400(Lcom/google/android/voicesearch/HelpDialog;)Lcom/google/android/voicesearch/HelpDialog$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog$2;->this$0:Lcom/google/android/voicesearch/HelpDialog;

    #getter for: Lcom/google/android/voicesearch/HelpDialog;->mListener:Lcom/google/android/voicesearch/HelpDialog$Listener;
    invoke-static {v0}, Lcom/google/android/voicesearch/HelpDialog;->access$400(Lcom/google/android/voicesearch/HelpDialog;)Lcom/google/android/voicesearch/HelpDialog$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/voicesearch/HelpDialog$Listener;->onSpeakAgain()V

    .line 171
    :cond_0
    return-void
.end method

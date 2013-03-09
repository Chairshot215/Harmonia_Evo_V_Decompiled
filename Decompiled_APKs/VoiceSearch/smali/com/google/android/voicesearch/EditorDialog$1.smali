.class Lcom/google/android/voicesearch/EditorDialog$1;
.super Ljava/lang/Object;
.source "EditorDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/voicesearch/EditorDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/voicesearch/EditorDialog;


# direct methods
.method constructor <init>(Lcom/google/android/voicesearch/EditorDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/google/android/voicesearch/EditorDialog$1;->this$0:Lcom/google/android/voicesearch/EditorDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 97
    iget-object v1, p0, Lcom/google/android/voicesearch/EditorDialog$1;->this$0:Lcom/google/android/voicesearch/EditorDialog;

    #getter for: Lcom/google/android/voicesearch/EditorDialog;->mEditor:Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;
    invoke-static {v1}, Lcom/google/android/voicesearch/EditorDialog;->access$000(Lcom/google/android/voicesearch/EditorDialog;)Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->validateSlots()Z

    move-result v1

    if-nez v1, :cond_1

    .line 98
    iget-object v1, p0, Lcom/google/android/voicesearch/EditorDialog$1;->this$0:Lcom/google/android/voicesearch/EditorDialog;

    invoke-virtual {v1}, Lcom/google/android/voicesearch/EditorDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a07f8

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 100
    .local v0, toast:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 104
    .end local v0           #toast:Landroid/widget/Toast;
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    iget-object v1, p0, Lcom/google/android/voicesearch/EditorDialog$1;->this$0:Lcom/google/android/voicesearch/EditorDialog;

    #getter for: Lcom/google/android/voicesearch/EditorDialog;->mListener:Lcom/google/android/voicesearch/EditorDialog$Listener;
    invoke-static {v1}, Lcom/google/android/voicesearch/EditorDialog;->access$100(Lcom/google/android/voicesearch/EditorDialog;)Lcom/google/android/voicesearch/EditorDialog$Listener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 102
    iget-object v1, p0, Lcom/google/android/voicesearch/EditorDialog$1;->this$0:Lcom/google/android/voicesearch/EditorDialog;

    #getter for: Lcom/google/android/voicesearch/EditorDialog;->mListener:Lcom/google/android/voicesearch/EditorDialog$Listener;
    invoke-static {v1}, Lcom/google/android/voicesearch/EditorDialog;->access$100(Lcom/google/android/voicesearch/EditorDialog;)Lcom/google/android/voicesearch/EditorDialog$Listener;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/voicesearch/EditorDialog$1;->this$0:Lcom/google/android/voicesearch/EditorDialog;

    #getter for: Lcom/google/android/voicesearch/EditorDialog;->mAction:Lcom/google/android/voicesearch/actions/MultislotVoiceAction;
    invoke-static {v2}, Lcom/google/android/voicesearch/EditorDialog;->access$200(Lcom/google/android/voicesearch/EditorDialog;)Lcom/google/android/voicesearch/actions/MultislotVoiceAction;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/voicesearch/EditorDialog$Listener;->onGo(Lcom/google/android/voicesearch/actions/MultislotVoiceAction;)V

    goto :goto_0
.end method

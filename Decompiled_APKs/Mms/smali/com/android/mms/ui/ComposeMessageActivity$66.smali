.class Lcom/android/mms/ui/ComposeMessageActivity$66;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Lcom/android/mms/ui/StateWatcher$OnStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->initStateWatcher()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 12111
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$66;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(Z)V
    .locals 5
    .parameter "state"

    .prologue
    .line 12114
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportEmptySms()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$66;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mEditorPanel:Lcom/android/mms/ui/MessageEditorPanel;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$300(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageEditorPanel;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$66;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mEditorPanel:Lcom/android/mms/ui/MessageEditorPanel;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$300(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageEditorPanel;

    move-result-object v2

    iget-object v2, v2, Lcom/android/mms/ui/MessageEditorPanel;->mSendButton:Landroid/view/View;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$66;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMsgTextEditor:Lcom/android/mms/ui/MessageTextEditor;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageTextEditor;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 12116
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$66;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mStateWatcher:Lcom/android/mms/ui/StateWatcher;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/StateWatcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/StateWatcher;->testMessageIntegrity()Z

    move-result v0

    .line 12118
    .local v0, bEnable:Z
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$66;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mInputManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$12700(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    if-nez v2, :cond_0

    .line 12119
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$66;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$66;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const-string v4, "input_method"

    invoke-virtual {v2, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    #setter for: Lcom/android/mms/ui/ComposeMessageActivity;->mInputManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v3, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$12702(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/InputMethodManager;

    .line 12121
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 12122
    .local v1, param:Landroid/os/Bundle;
    const-string v3, "DISABLE_SEND_BTN"

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 12123
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$66;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mInputManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$12700(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$66;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMsgTextEditor:Lcom/android/mms/ui/MessageTextEditor;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageTextEditor;

    move-result-object v3

    const-string v4, "ControlMMSBtn"

    invoke-virtual {v2, v3, v4, v1}, Landroid/view/inputmethod/InputMethodManager;->sendAppPrivateCommand(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 12125
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$66;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mEditorPanel:Lcom/android/mms/ui/MessageEditorPanel;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$300(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageEditorPanel;

    move-result-object v2

    iget-object v2, v2, Lcom/android/mms/ui/MessageEditorPanel;->mSendButton:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 12126
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$66;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mEditorPanel:Lcom/android/mms/ui/MessageEditorPanel;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$300(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageEditorPanel;

    move-result-object v2

    iget-object v2, v2, Lcom/android/mms/ui/MessageEditorPanel;->mSendButton:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setClickable(Z)V

    .line 12128
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$66;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mEditorPanel:Lcom/android/mms/ui/MessageEditorPanel;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$300(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageEditorPanel;

    move-result-object v2

    iget-object v2, v2, Lcom/android/mms/ui/MessageEditorPanel;->mSendButton:Landroid/view/View;

    instance-of v2, v2, Landroid/widget/ImageButton;

    if-eqz v2, :cond_1

    .line 12129
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$66;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mEditorPanel:Lcom/android/mms/ui/MessageEditorPanel;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$300(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageEditorPanel;

    move-result-object v2

    iget-object v2, v2, Lcom/android/mms/ui/MessageEditorPanel;->mSendButton:Landroid/view/View;

    check-cast v2, Landroid/widget/ImageButton;

    if-eqz v0, :cond_3

    const/16 v3, 0xff

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setAlpha(I)V

    .line 12134
    .end local v0           #bEnable:Z
    .end local v1           #param:Landroid/os/Bundle;
    :cond_1
    return-void

    .line 12122
    .restart local v0       #bEnable:Z
    .restart local v1       #param:Landroid/os/Bundle;
    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    .line 12129
    :cond_3
    const/16 v3, 0x80

    goto :goto_1
.end method

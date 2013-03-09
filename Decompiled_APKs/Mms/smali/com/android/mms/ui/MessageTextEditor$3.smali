.class Lcom/android/mms/ui/MessageTextEditor$3;
.super Ljava/lang/Object;
.source "MessageTextEditor.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageTextEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field bSelStart:I

.field beforeText:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/android/mms/ui/MessageTextEditor;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageTextEditor;)V
    .locals 0
    .parameter

    .prologue
    .line 911
    iput-object p1, p0, Lcom/android/mms/ui/MessageTextEditor$3;->this$0:Lcom/android/mms/ui/MessageTextEditor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 952
    iget-object v0, p0, Lcom/android/mms/ui/MessageTextEditor$3;->this$0:Lcom/android/mms/ui/MessageTextEditor;

    #getter for: Lcom/android/mms/ui/MessageTextEditor;->mBlockCompletion:Z
    invoke-static {v0}, Lcom/android/mms/ui/MessageTextEditor;->access$000(Lcom/android/mms/ui/MessageTextEditor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 954
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 915
    iget-object v0, p0, Lcom/android/mms/ui/MessageTextEditor$3;->this$0:Lcom/android/mms/ui/MessageTextEditor;

    #getter for: Lcom/android/mms/ui/MessageTextEditor;->mBlockCompletion:Z
    invoke-static {v0}, Lcom/android/mms/ui/MessageTextEditor;->access$000(Lcom/android/mms/ui/MessageTextEditor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 920
    :goto_0
    return-void

    .line 918
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/android/mms/ui/MessageTextEditor$3;->beforeText:Ljava/lang/CharSequence;

    .line 919
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/MessageTextEditor$3;->this$0:Lcom/android/mms/ui/MessageTextEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageTextEditor;->getSelectionStart()I

    move-result v0

    :goto_2
    iput v0, p0, Lcom/android/mms/ui/MessageTextEditor$3;->bSelStart:I

    goto :goto_0

    .line 918
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 919
    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 6
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    const/4 v2, 0x1

    .line 923
    iget-object v3, p0, Lcom/android/mms/ui/MessageTextEditor$3;->this$0:Lcom/android/mms/ui/MessageTextEditor;

    #getter for: Lcom/android/mms/ui/MessageTextEditor;->mBlockCompletion:Z
    invoke-static {v3}, Lcom/android/mms/ui/MessageTextEditor;->access$000(Lcom/android/mms/ui/MessageTextEditor;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 949
    :cond_0
    :goto_0
    return-void

    .line 927
    :cond_1
    if-nez p1, :cond_2

    const-string p1, ""

    .line 928
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 931
    .local v1, text:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/custom/CustomizedManager;->getInstance()Lcom/android/mms/custom/CustomizedManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/mms/custom/CustomizedManager;->kddiCalculateMsgSize(Ljava/lang/String;)I

    move-result v0

    .line 932
    .local v0, byteSize:I
    invoke-static {}, Lcom/android/mms/ui/MessageTextEditor;->access$900()I

    move-result v3

    if-le v0, v3, :cond_3

    .line 933
    iget-object v2, p0, Lcom/android/mms/ui/MessageTextEditor$3;->this$0:Lcom/android/mms/ui/MessageTextEditor;

    iget-object v3, p0, Lcom/android/mms/ui/MessageTextEditor$3;->beforeText:Ljava/lang/CharSequence;

    #calls: Lcom/android/mms/ui/MessageTextEditor;->setTextWithoutWatcher(Ljava/lang/CharSequence;)V
    invoke-static {v2, v3}, Lcom/android/mms/ui/MessageTextEditor;->access$1000(Lcom/android/mms/ui/MessageTextEditor;Ljava/lang/CharSequence;)V

    .line 934
    iget-object v2, p0, Lcom/android/mms/ui/MessageTextEditor$3;->this$0:Lcom/android/mms/ui/MessageTextEditor;

    iget v3, p0, Lcom/android/mms/ui/MessageTextEditor$3;->bSelStart:I

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/MessageTextEditor;->setSelection(I)V

    .line 935
    iget-object v2, p0, Lcom/android/mms/ui/MessageTextEditor$3;->this$0:Lcom/android/mms/ui/MessageTextEditor;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageTextEditor;->getHandler()Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 936
    iget-object v2, p0, Lcom/android/mms/ui/MessageTextEditor$3;->this$0:Lcom/android/mms/ui/MessageTextEditor;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageTextEditor;->getHandler()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/MessageTextEditor$3;->this$0:Lcom/android/mms/ui/MessageTextEditor;

    #getter for: Lcom/android/mms/ui/MessageTextEditor;->mReachLimitRunnable:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/android/mms/ui/MessageTextEditor;->access$1100(Lcom/android/mms/ui/MessageTextEditor;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 937
    iget-object v2, p0, Lcom/android/mms/ui/MessageTextEditor$3;->this$0:Lcom/android/mms/ui/MessageTextEditor;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageTextEditor;->getHandler()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/MessageTextEditor$3;->this$0:Lcom/android/mms/ui/MessageTextEditor;

    #getter for: Lcom/android/mms/ui/MessageTextEditor;->mReachLimitRunnable:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/android/mms/ui/MessageTextEditor;->access$1100(Lcom/android/mms/ui/MessageTextEditor;)Ljava/lang/Runnable;

    move-result-object v3

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 942
    :cond_3
    iget-object v3, p0, Lcom/android/mms/ui/MessageTextEditor$3;->this$0:Lcom/android/mms/ui/MessageTextEditor;

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageTextEditor;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v2, :cond_4

    .line 944
    iget-object v3, p0, Lcom/android/mms/ui/MessageTextEditor$3;->this$0:Lcom/android/mms/ui/MessageTextEditor;

    iget-object v4, p0, Lcom/android/mms/ui/MessageTextEditor$3;->this$0:Lcom/android/mms/ui/MessageTextEditor;

    #getter for: Lcom/android/mms/ui/MessageTextEditor;->mSmsToMmsThreshold:I
    invoke-static {v4}, Lcom/android/mms/ui/MessageTextEditor;->access$500(Lcom/android/mms/ui/MessageTextEditor;)I

    move-result v4

    invoke-static {}, Lcom/android/mms/ui/MessageTextEditor;->access$900()I

    move-result v5

    #calls: Lcom/android/mms/ui/MessageTextEditor;->kddiUpdateTextCounter(III)V
    invoke-static {v3, v4, v0, v5}, Lcom/android/mms/ui/MessageTextEditor;->access$1200(Lcom/android/mms/ui/MessageTextEditor;III)V

    .line 948
    :goto_1
    iget-object v3, p0, Lcom/android/mms/ui/MessageTextEditor$3;->this$0:Lcom/android/mms/ui/MessageTextEditor;

    #getter for: Lcom/android/mms/ui/MessageTextEditor;->mWatcher:Lcom/android/mms/ui/StateWatcher;
    invoke-static {v3}, Lcom/android/mms/ui/MessageTextEditor;->access$100(Lcom/android/mms/ui/MessageTextEditor;)Lcom/android/mms/ui/StateWatcher;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/mms/ui/MessageTextEditor$3;->this$0:Lcom/android/mms/ui/MessageTextEditor;

    #getter for: Lcom/android/mms/ui/MessageTextEditor;->mWatcher:Lcom/android/mms/ui/StateWatcher;
    invoke-static {v3}, Lcom/android/mms/ui/MessageTextEditor;->access$100(Lcom/android/mms/ui/MessageTextEditor;)Lcom/android/mms/ui/StateWatcher;

    move-result-object v3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    :goto_2
    invoke-virtual {v3, v2}, Lcom/android/mms/ui/StateWatcher;->updateHasText(Z)V

    goto/16 :goto_0

    .line 946
    :cond_4
    iget-object v3, p0, Lcom/android/mms/ui/MessageTextEditor$3;->this$0:Lcom/android/mms/ui/MessageTextEditor;

    iget-object v4, p0, Lcom/android/mms/ui/MessageTextEditor$3;->this$0:Lcom/android/mms/ui/MessageTextEditor;

    #getter for: Lcom/android/mms/ui/MessageTextEditor;->mSmsToMmsThreshold:I
    invoke-static {v4}, Lcom/android/mms/ui/MessageTextEditor;->access$500(Lcom/android/mms/ui/MessageTextEditor;)I

    move-result v4

    invoke-static {}, Lcom/android/mms/ui/MessageTextEditor;->access$900()I

    move-result v5

    invoke-virtual {v3, v4, v0, v5}, Lcom/android/mms/ui/MessageTextEditor;->updateLandscapeCounter(III)V

    goto :goto_1

    .line 948
    :cond_5
    const/4 v2, 0x0

    goto :goto_2
.end method

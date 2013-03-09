.class Lcom/android/mms/ui/ComposeMessageActivity$RecipientsTextWatcher;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecipientsTextWatcher"
.end annotation


# instance fields
.field private m_blockCompletion:Z

.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method private constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 2547
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$RecipientsTextWatcher;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2550
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$RecipientsTextWatcher;->m_blockCompletion:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/ComposeMessageActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2547
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity$RecipientsTextWatcher;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5
    .parameter "s"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2584
    iget-boolean v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$RecipientsTextWatcher;->m_blockCompletion:Z

    if-eqz v3, :cond_1

    .line 2587
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$RecipientsTextWatcher;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$100(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/RecipientsEditor;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2588
    invoke-interface {p1}, Landroid/text/Editable;->clear()V

    .line 2608
    :cond_0
    :goto_0
    return-void

    .line 2592
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2595
    .local v0, recipients:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$RecipientsTextWatcher;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientList:Lcom/android/mms/ui/RecipientList;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2200(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/RecipientList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/RecipientList;->size()I

    move-result v3

    if-nez v3, :cond_4

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 2596
    invoke-static {v0}, Lcom/android/mms/ui/RecipientList$Recipient;->isValid(Ljava/lang/String;)Z

    move-result v3

    if-ne v3, v1, :cond_2

    .line 2597
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$RecipientsTextWatcher;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mStateWatcher:Lcom/android/mms/ui/StateWatcher;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/StateWatcher;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/mms/ui/StateWatcher;->updateHasRecipients(Z)V

    .line 2603
    :cond_2
    :goto_1
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$RecipientsTextWatcher;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mIsRecipientsEditFocus:Z
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$5700(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2604
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$RecipientsTextWatcher;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->createRecipientListByEditor(Z)V
    invoke-static {v1, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$5800(Lcom/android/mms/ui/ComposeMessageActivity;Z)V

    goto :goto_0

    .line 2599
    :cond_4
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$RecipientsTextWatcher;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mStateWatcher:Lcom/android/mms/ui/StateWatcher;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/StateWatcher;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity$RecipientsTextWatcher;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientList:Lcom/android/mms/ui/RecipientList;
    invoke-static {v4}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2200(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/RecipientList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/ui/RecipientList;->size()I

    move-result v4

    if-lez v4, :cond_5

    :goto_2
    invoke-virtual {v3, v1}, Lcom/android/mms/ui/StateWatcher;->updateHasRecipients(Z)V

    goto :goto_1

    :cond_5
    move v1, v2

    goto :goto_2
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 2559
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$RecipientsTextWatcher;->m_blockCompletion:Z

    if-eqz v0, :cond_0

    .line 2560
    :cond_0
    return-void
.end method

.method public enableTextWatcher(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 2554
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$RecipientsTextWatcher;->m_blockCompletion:Z

    if-ne v0, p1, :cond_0

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$RecipientsTextWatcher;->m_blockCompletion:Z

    .line 2555
    :cond_0
    return-void

    .line 2554
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 8
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    const/16 v5, 0x14

    .line 2563
    iget-boolean v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$RecipientsTextWatcher;->m_blockCompletion:Z

    if-eqz v3, :cond_1

    .line 2581
    :cond_0
    :goto_0
    return-void

    .line 2566
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2567
    .local v2, recipients:Ljava/lang/String;
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0x50

    if-ne v3, v4, :cond_0

    if-eqz v2, :cond_0

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 2570
    invoke-static {v2}, Lcom/android/mms/ui/RecipientList$Recipient;->filterPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2571
    .local v1, realnum:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 2572
    .local v0, len:I
    if-le v0, v5, :cond_0

    invoke-static {v1}, Lcom/android/mms/ui/RecipientList$Recipient;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2574
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$RecipientsTextWatcher;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$100(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/RecipientsEditor;->setText(Ljava/lang/CharSequence;)V

    .line 2575
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$RecipientsTextWatcher;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$100(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/android/mms/ui/RecipientsEditor;->setSelection(I)V

    .line 2576
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$RecipientsTextWatcher;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mEditorHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3100(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity$RecipientsTextWatcher;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mEditorHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3100(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x17

    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity$RecipientsTextWatcher;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v6}, Lcom/android/mms/ui/ComposeMessageActivity;->getApplication()Landroid/app/Application;

    move-result-object v6

    const v7, 0x7f0903d9

    invoke-virtual {v6, v7}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

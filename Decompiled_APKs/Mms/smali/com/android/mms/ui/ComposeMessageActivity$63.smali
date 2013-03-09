.class Lcom/android/mms/ui/ComposeMessageActivity$63;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mBeforeLength:I

.field private mCharcountStart:I

.field private mInsertCount:I

.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 11945
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$63;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 8
    .parameter "s"

    .prologue
    const/4 v4, 0x0

    .line 11951
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$63;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mEnableTextLimitWatcher:Z
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$12400(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11952
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v6, v0

    .line 11953
    .local v6, length:I
    iget v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$63;->mBeforeLength:I

    if-ge v0, v6, :cond_0

    .line 11954
    invoke-static {}, Lcom/android/mms/MmsApp;->getMaxTextSize()I

    move-result v7

    .line 11955
    .local v7, maxSize:I
    if-le v6, v7, :cond_0

    .line 11956
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$63;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$63;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const v2, 0x7f09026c

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 11959
    iget v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$63;->mCharcountStart:I

    iget v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$63;->mCharcountStart:I

    iget v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$63;->mInsertCount:I

    add-int/2addr v2, v0

    const-string v3, ""

    move-object v0, p1

    move v5, v4

    invoke-interface/range {v0 .. v5}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;II)Landroid/text/Editable;

    .line 11962
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$63;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMsgTextEditor:Lcom/android/mms/ui/MessageTextEditor;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageTextEditor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 11963
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$63;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMsgTextEditor:Lcom/android/mms/ui/MessageTextEditor;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageTextEditor;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageTextEditor;->setText(Ljava/lang/CharSequence;)V

    .line 11969
    .end local v6           #length:I
    .end local v7           #maxSize:I
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$63;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMessageBodyEditor:Lcom/android/mms/ui/MessageBodyEditor;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1300(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageBodyEditor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 11970
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$63;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMessageBodyEditor:Lcom/android/mms/ui/MessageBodyEditor;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1300(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageBodyEditor;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageBodyEditor;->setText(Ljava/lang/String;)V

    .line 11972
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportMMSShowSize()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$63;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mStateWatcher:Lcom/android/mms/ui/StateWatcher;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/StateWatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/StateWatcher;->isMultimediaMessage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11973
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$63;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMessageBodyEditor:Lcom/android/mms/ui/MessageBodyEditor;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1300(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageBodyEditor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageBodyEditor;->SetMmsSize()V

    .line 11976
    :cond_1
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 11979
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    iput v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$63;->mBeforeLength:I

    .line 11980
    iput p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$63;->mCharcountStart:I

    .line 11981
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 11984
    iput p4, p0, Lcom/android/mms/ui/ComposeMessageActivity$63;->mInsertCount:I

    .line 11985
    return-void
.end method

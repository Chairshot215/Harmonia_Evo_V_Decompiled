.class Lcom/htc/android/mail/ComposeActivity$106;
.super Ljava/lang/Object;
.source "ComposeActivity.java"

# interfaces
.implements Landroid/webkit/EditableWebView$OnContentChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/ComposeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/ComposeActivity;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/ComposeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 12592
    iput-object p1, p0, Lcom/htc/android/mail/ComposeActivity$106;->this$0:Lcom/htc/android/mail/ComposeActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentChanged(Landroid/webkit/WebView;I)V
    .locals 4
    .parameter "wv"
    .parameter "pointer"

    .prologue
    const/4 v3, 0x1

    .line 12594
    invoke-static {}, Lcom/htc/android/mail/ComposeActivity;->access$1600()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ComposeActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mEditableWebviewContentChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/ComposeActivity$106;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mEditableWebviewContentChanged:Z
    invoke-static {v2}, Lcom/htc/android/mail/ComposeActivity;->access$9100(Lcom/htc/android/mail/ComposeActivity;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12595
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$106;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #setter for: Lcom/htc/android/mail/ComposeActivity;->mEditableWebviewContentChanged:Z
    invoke-static {v0, v3}, Lcom/htc/android/mail/ComposeActivity;->access$9102(Lcom/htc/android/mail/ComposeActivity;Z)Z

    .line 12596
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$106;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #calls: Lcom/htc/android/mail/ComposeActivity;->setSavedFlag2False()V
    invoke-static {v0}, Lcom/htc/android/mail/ComposeActivity;->access$10500(Lcom/htc/android/mail/ComposeActivity;)V

    .line 12597
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$106;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mbRemovedServerAttach:Z
    invoke-static {v0}, Lcom/htc/android/mail/ComposeActivity;->access$14100(Lcom/htc/android/mail/ComposeActivity;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 12598
    invoke-static {}, Lcom/htc/android/mail/ComposeActivity;->access$1600()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ComposeActivity"

    const-string v1, "onContentChanged: sendMail instead forward"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12599
    :cond_1
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$106;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #setter for: Lcom/htc/android/mail/ComposeActivity;->mbSendMail_instead_Forward:Z
    invoke-static {v0, v3}, Lcom/htc/android/mail/ComposeActivity;->access$8102(Lcom/htc/android/mail/ComposeActivity;Z)Z

    .line 12600
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$106;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #setter for: Lcom/htc/android/mail/ComposeActivity;->mbMailbodyChanged:Z
    invoke-static {v0, v3}, Lcom/htc/android/mail/ComposeActivity;->access$14202(Lcom/htc/android/mail/ComposeActivity;Z)Z

    .line 12601
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$106;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->Exchg_smartCommand:I
    invoke-static {v0}, Lcom/htc/android/mail/ComposeActivity;->access$8000(Lcom/htc/android/mail/ComposeActivity;)I

    move-result v0

    if-eq v0, v3, :cond_2

    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$106;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->Exchg_smartCommand:I
    invoke-static {v0}, Lcom/htc/android/mail/ComposeActivity;->access$8000(Lcom/htc/android/mail/ComposeActivity;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$106;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->Exchg_smartCommand:I
    invoke-static {v0}, Lcom/htc/android/mail/ComposeActivity;->access$8000(Lcom/htc/android/mail/ComposeActivity;)I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 12605
    :cond_2
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$106;->this$0:Lcom/htc/android/mail/ComposeActivity;

    const/4 v1, 0x0

    #setter for: Lcom/htc/android/mail/ComposeActivity;->Exchg_smartCommand:I
    invoke-static {v0, v1}, Lcom/htc/android/mail/ComposeActivity;->access$8002(Lcom/htc/android/mail/ComposeActivity;I)I

    .line 12607
    :cond_3
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$106;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #calls: Lcom/htc/android/mail/ComposeActivity;->removeServerAttachments()I
    invoke-static {v0}, Lcom/htc/android/mail/ComposeActivity;->access$14300(Lcom/htc/android/mail/ComposeActivity;)I

    .line 12608
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$106;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #setter for: Lcom/htc/android/mail/ComposeActivity;->mbRemovedServerAttach:Z
    invoke-static {v0, v3}, Lcom/htc/android/mail/ComposeActivity;->access$14102(Lcom/htc/android/mail/ComposeActivity;Z)Z

    .line 12610
    :cond_4
    return-void
.end method

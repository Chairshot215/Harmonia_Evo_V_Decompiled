.class Lcom/htc/android/mail/ComposeActivity$111;
.super Ljava/lang/Object;
.source "ComposeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/ComposeActivity;->inflateQuotedTextBar()V
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
    .line 13461
    iput-object p1, p0, Lcom/htc/android/mail/ComposeActivity$111;->this$0:Lcom/htc/android/mail/ComposeActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 13463
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$111;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mAccount:Lcom/htc/android/mail/Account;
    invoke-static {v0}, Lcom/htc/android/mail/ComposeActivity;->access$5200(Lcom/htc/android/mail/ComposeActivity;)Lcom/htc/android/mail/Account;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 13464
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$111;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->Exchg_smartCommand:I
    invoke-static {v0}, Lcom/htc/android/mail/ComposeActivity;->access$8000(Lcom/htc/android/mail/ComposeActivity;)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 13479
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$111;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$111;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-object v1, v1, Lcom/htc/android/mail/ComposeActivity;->mWebViewFrameLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/htc/android/mail/ComposeActivity$111;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mQuotedTextBar:Landroid/view/View;
    invoke-static {v2}, Lcom/htc/android/mail/ComposeActivity;->access$14700(Lcom/htc/android/mail/ComposeActivity;)Landroid/view/View;

    move-result-object v2

    #calls: Lcom/htc/android/mail/ComposeActivity;->CloseReplyText(Landroid/widget/FrameLayout;Landroid/view/View;)V
    invoke-static {v0, v1, v2}, Lcom/htc/android/mail/ComposeActivity;->access$14800(Lcom/htc/android/mail/ComposeActivity;Landroid/widget/FrameLayout;Landroid/view/View;)V

    .line 13480
    return-void

    .line 13468
    :sswitch_0
    invoke-static {}, Lcom/htc/android/mail/ComposeActivity;->access$1600()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13469
    const-string v0, "ComposeActivity"

    const-string v1, "quotedTextDelete: sendMail instead forward"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13470
    :cond_1
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$111;->this$0:Lcom/htc/android/mail/ComposeActivity;

    const/4 v1, 0x1

    #setter for: Lcom/htc/android/mail/ComposeActivity;->mbSendMail_instead_Forward:Z
    invoke-static {v0, v1}, Lcom/htc/android/mail/ComposeActivity;->access$8102(Lcom/htc/android/mail/ComposeActivity;Z)Z

    .line 13471
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$111;->this$0:Lcom/htc/android/mail/ComposeActivity;

    const/4 v1, 0x0

    #setter for: Lcom/htc/android/mail/ComposeActivity;->Exchg_smartCommand:I
    invoke-static {v0, v1}, Lcom/htc/android/mail/ComposeActivity;->access$8002(Lcom/htc/android/mail/ComposeActivity;I)I

    .line 13472
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$111;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #calls: Lcom/htc/android/mail/ComposeActivity;->removeServerAttachments()I
    invoke-static {v0}, Lcom/htc/android/mail/ComposeActivity;->access$14300(Lcom/htc/android/mail/ComposeActivity;)I

    goto :goto_0

    .line 13464
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

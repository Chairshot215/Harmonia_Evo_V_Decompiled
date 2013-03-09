.class Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener$1;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;

.field final synthetic val$MsgToList:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4747
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;

    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener$1;->val$MsgToList:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 4750
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const-class v2, Lcom/android/mms/ui/RecipientsViewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4753
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener$1;->val$MsgToList:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 4754
    const-string v1, "To"

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener$1;->val$MsgToList:Ljava/lang/String;

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 4758
    :goto_0
    const-string v1, "Cc"

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMsgCcList:[Ljava/lang/String;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$7400(Lcom/android/mms/ui/ComposeMessageActivity;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 4760
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportShowBccRecipientStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4761
    const-string v1, "Bcc"

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMsgBccList:[Ljava/lang/String;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$8100(Lcom/android/mms/ui/ComposeMessageActivity;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 4763
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->startActivity(Landroid/content/Intent;)V

    .line 4765
    return-void

    .line 4756
    :cond_1
    const-string v1, "To"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

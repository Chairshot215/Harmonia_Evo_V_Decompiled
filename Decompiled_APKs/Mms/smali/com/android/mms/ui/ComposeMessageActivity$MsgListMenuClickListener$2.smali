.class Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener$2;
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

.field final synthetic val$smsIdList:Ljava/lang/String;

.field final synthetic val$smsToList:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4775
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener$2;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;

    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener$2;->val$smsToList:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener$2;->val$smsIdList:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 4777
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener$2;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const-class v2, Lcom/android/mms/ui/RecipientsViewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4779
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "To"

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener$2;->val$smsToList:Ljava/lang/String;

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 4780
    const-string v1, "Id"

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener$2;->val$smsIdList:Ljava/lang/String;

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 4781
    const-string v1, "IsSms"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4782
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener$2;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->startActivity(Landroid/content/Intent;)V

    .line 4783
    return-void
.end method

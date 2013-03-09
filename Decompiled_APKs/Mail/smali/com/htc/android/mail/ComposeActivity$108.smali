.class Lcom/htc/android/mail/ComposeActivity$108;
.super Ljava/lang/Object;
.source "ComposeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 12896
    iput-object p1, p0, Lcom/htc/android/mail/ComposeActivity$108;->this$0:Lcom/htc/android/mail/ComposeActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 12898
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 12899
    .local v0, recipientIntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$108;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->myContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/htc/android/mail/ComposeActivity;->access$1200(Lcom/htc/android/mail/ComposeActivity;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/htc/android/mail/ManageRecipient;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 12900
    const-string v1, "to"

    iget-object v2, p0, Lcom/htc/android/mail/ComposeActivity$108;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->addrList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/android/mail/ComposeActivity;->access$8400(Lcom/htc/android/mail/ComposeActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 12901
    const-string v1, "cc"

    iget-object v2, p0, Lcom/htc/android/mail/ComposeActivity$108;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->addrList_cc:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/android/mail/ComposeActivity;->access$8600(Lcom/htc/android/mail/ComposeActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 12902
    const-string v1, "bcc"

    iget-object v2, p0, Lcom/htc/android/mail/ComposeActivity$108;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->addrList_bcc:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/android/mail/ComposeActivity;->access$8700(Lcom/htc/android/mail/ComposeActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 12903
    const-string v2, "target_tab"

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 12904
    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$108;->this$0:Lcom/htc/android/mail/ComposeActivity;

    const/16 v2, 0x18

    invoke-virtual {v1, v0, v2}, Lcom/htc/android/mail/ComposeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 12905
    return-void
.end method

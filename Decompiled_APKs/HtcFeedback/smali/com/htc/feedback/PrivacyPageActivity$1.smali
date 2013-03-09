.class Lcom/htc/feedback/PrivacyPageActivity$1;
.super Landroid/os/Handler;
.source "PrivacyPageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/feedback/PrivacyPageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/feedback/PrivacyPageActivity;


# direct methods
.method constructor <init>(Lcom/htc/feedback/PrivacyPageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/htc/feedback/PrivacyPageActivity$1;->this$0:Lcom/htc/feedback/PrivacyPageActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x0

    .line 94
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/feedback/PrivacyPageActivity$1;->this$0:Lcom/htc/feedback/PrivacyPageActivity;

    #getter for: Lcom/htc/feedback/PrivacyPageActivity;->isActivityDestroyed:Z
    invoke-static {v0}, Lcom/htc/feedback/PrivacyPageActivity;->access$000(Lcom/htc/feedback/PrivacyPageActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 95
    iget-object v0, p0, Lcom/htc/feedback/PrivacyPageActivity$1;->this$0:Lcom/htc/feedback/PrivacyPageActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/feedback/PrivacyPageActivity;->removeDialog(I)V

    .line 96
    iget-object v0, p0, Lcom/htc/feedback/PrivacyPageActivity$1;->this$0:Lcom/htc/feedback/PrivacyPageActivity;

    #getter for: Lcom/htc/feedback/PrivacyPageActivity;->mParentPanel:Landroid/view/View;
    invoke-static {v0}, Lcom/htc/feedback/PrivacyPageActivity;->access$100(Lcom/htc/feedback/PrivacyPageActivity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/htc/feedback/PrivacyPageActivity$1;->this$0:Lcom/htc/feedback/PrivacyPageActivity;

    #getter for: Lcom/htc/feedback/PrivacyPageActivity;->mParentPanel:Landroid/view/View;
    invoke-static {v0}, Lcom/htc/feedback/PrivacyPageActivity;->access$100(Lcom/htc/feedback/PrivacyPageActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 99
    :cond_0
    invoke-virtual {p0, v2}, Lcom/htc/feedback/PrivacyPageActivity$1;->removeMessages(I)V

    .line 101
    :cond_1
    return-void
.end method

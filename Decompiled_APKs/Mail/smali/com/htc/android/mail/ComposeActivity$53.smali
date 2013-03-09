.class Lcom/htc/android/mail/ComposeActivity$53;
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
    .line 6940
    iput-object p1, p0, Lcom/htc/android/mail/ComposeActivity$53;->this$0:Lcom/htc/android/mail/ComposeActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 6942
    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$53;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$53;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->expandAttachmentView:Z
    invoke-static {v0}, Lcom/htc/android/mail/ComposeActivity;->access$5800(Lcom/htc/android/mail/ComposeActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    #setter for: Lcom/htc/android/mail/ComposeActivity;->expandAttachmentView:Z
    invoke-static {v1, v0}, Lcom/htc/android/mail/ComposeActivity;->access$5802(Lcom/htc/android/mail/ComposeActivity;Z)Z

    .line 6943
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$53;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mTotalAttachmentCount:I
    invoke-static {v0}, Lcom/htc/android/mail/ComposeActivity;->access$5600(Lcom/htc/android/mail/ComposeActivity;)I

    move-result v0

    if-nez v0, :cond_2

    .line 6944
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$53;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mAttachlist:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/htc/android/mail/ComposeActivity;->access$5500(Lcom/htc/android/mail/ComposeActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$53;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mAttachlist:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/htc/android/mail/ComposeActivity;->access$5500(Lcom/htc/android/mail/ComposeActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6948
    :cond_0
    :goto_1
    return-void

    .line 6942
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 6947
    :cond_2
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$53;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$53;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->expandAttachmentView:Z
    invoke-static {v1}, Lcom/htc/android/mail/ComposeActivity;->access$5800(Lcom/htc/android/mail/ComposeActivity;)Z

    move-result v1

    #calls: Lcom/htc/android/mail/ComposeActivity;->updateAttachmentView(Z)V
    invoke-static {v0, v1}, Lcom/htc/android/mail/ComposeActivity;->access$7900(Lcom/htc/android/mail/ComposeActivity;Z)V

    goto :goto_1
.end method

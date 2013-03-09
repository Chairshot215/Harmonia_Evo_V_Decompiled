.class Lcom/htc/feedback/PreviewInfoActivity$2;
.super Landroid/os/Handler;
.source "PreviewInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/feedback/PreviewInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/feedback/PreviewInfoActivity;


# direct methods
.method constructor <init>(Lcom/htc/feedback/PreviewInfoActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/htc/feedback/PreviewInfoActivity$2;->this$0:Lcom/htc/feedback/PreviewInfoActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x0

    .line 50
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/htc/feedback/PreviewInfoActivity$2;->this$0:Lcom/htc/feedback/PreviewInfoActivity;

    iget-object v1, v0, Lcom/htc/feedback/PreviewInfoActivity;->mTextView:Landroid/widget/TextView;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    iget-object v0, p0, Lcom/htc/feedback/PreviewInfoActivity$2;->this$0:Lcom/htc/feedback/PreviewInfoActivity;

    invoke-virtual {v0, v2}, Lcom/htc/feedback/PreviewInfoActivity;->setProgressBarIndeterminateVisibility(Z)V

    .line 53
    invoke-virtual {p0, v2}, Lcom/htc/feedback/PreviewInfoActivity$2;->removeMessages(I)V

    .line 55
    :cond_0
    return-void
.end method

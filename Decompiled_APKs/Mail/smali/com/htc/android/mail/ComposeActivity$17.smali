.class Lcom/htc/android/mail/ComposeActivity$17;
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
    .line 1877
    iput-object p1, p0, Lcom/htc/android/mail/ComposeActivity$17;->this$0:Lcom/htc/android/mail/ComposeActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    const/4 v1, 0x1

    .line 1879
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$17;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #setter for: Lcom/htc/android/mail/ComposeActivity;->mIsSaved:Z
    invoke-static {v0, v1}, Lcom/htc/android/mail/ComposeActivity;->access$2702(Lcom/htc/android/mail/ComposeActivity;Z)Z

    .line 1880
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$17;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #setter for: Lcom/htc/android/mail/ComposeActivity;->mbNoContactQuery:Z
    invoke-static {v0, v1}, Lcom/htc/android/mail/ComposeActivity;->access$2802(Lcom/htc/android/mail/ComposeActivity;Z)Z

    .line 1881
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$17;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #calls: Lcom/htc/android/mail/ComposeActivity;->sendClearWebViewMessage()V
    invoke-static {v0}, Lcom/htc/android/mail/ComposeActivity;->access$2900(Lcom/htc/android/mail/ComposeActivity;)V

    .line 1882
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/android/mail/ComposeActivity$17$1;

    invoke-direct {v1, p0}, Lcom/htc/android/mail/ComposeActivity$17$1;-><init>(Lcom/htc/android/mail/ComposeActivity$17;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1889
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$17;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mbNeedNotifyReadScreenContactStatusChanged:Z
    invoke-static {v0}, Lcom/htc/android/mail/ComposeActivity;->access$3100(Lcom/htc/android/mail/ComposeActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1890
    sget-object v0, Lcom/htc/android/mail/Mail;->mMailEvent:Lcom/htc/android/mail/MailEventBroadcaster;

    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$17;->this$0:Lcom/htc/android/mail/ComposeActivity;

    invoke-virtual {v1}, Lcom/htc/android/mail/ComposeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/MailEventBroadcaster;->sendContactChangeStatus(Landroid/content/Context;)V

    .line 1891
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$17;->this$0:Lcom/htc/android/mail/ComposeActivity;

    const/4 v1, 0x0

    #setter for: Lcom/htc/android/mail/ComposeActivity;->mbNeedNotifyReadScreenContactStatusChanged:Z
    invoke-static {v0, v1}, Lcom/htc/android/mail/ComposeActivity;->access$3102(Lcom/htc/android/mail/ComposeActivity;Z)Z

    .line 1894
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$17;->this$0:Lcom/htc/android/mail/ComposeActivity;

    invoke-virtual {v0}, Lcom/htc/android/mail/ComposeActivity;->finish()V

    .line 1895
    return-void
.end method

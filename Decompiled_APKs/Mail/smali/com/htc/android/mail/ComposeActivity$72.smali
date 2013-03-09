.class Lcom/htc/android/mail/ComposeActivity$72;
.super Ljava/lang/Object;
.source "ComposeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/ComposeActivity;->onCreateDialog(I)Landroid/app/Dialog;
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
    .line 8360
    iput-object p1, p0, Lcom/htc/android/mail/ComposeActivity$72;->this$0:Lcom/htc/android/mail/ComposeActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "button"

    .prologue
    const/4 v1, 0x1

    .line 8362
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$72;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #setter for: Lcom/htc/android/mail/ComposeActivity;->mIsSaved:Z
    invoke-static {v0, v1}, Lcom/htc/android/mail/ComposeActivity;->access$2702(Lcom/htc/android/mail/ComposeActivity;Z)Z

    .line 8363
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$72;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #setter for: Lcom/htc/android/mail/ComposeActivity;->mbNoContactQuery:Z
    invoke-static {v0, v1}, Lcom/htc/android/mail/ComposeActivity;->access$2802(Lcom/htc/android/mail/ComposeActivity;Z)Z

    .line 8364
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$72;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #calls: Lcom/htc/android/mail/ComposeActivity;->sendClearWebViewMessage()V
    invoke-static {v0}, Lcom/htc/android/mail/ComposeActivity;->access$2900(Lcom/htc/android/mail/ComposeActivity;)V

    .line 8365
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/android/mail/ComposeActivity$72$1;

    invoke-direct {v1, p0}, Lcom/htc/android/mail/ComposeActivity$72$1;-><init>(Lcom/htc/android/mail/ComposeActivity$72;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 8372
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$72;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mbNeedNotifyReadScreenContactStatusChanged:Z
    invoke-static {v0}, Lcom/htc/android/mail/ComposeActivity;->access$3100(Lcom/htc/android/mail/ComposeActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8373
    sget-object v0, Lcom/htc/android/mail/Mail;->mMailEvent:Lcom/htc/android/mail/MailEventBroadcaster;

    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$72;->this$0:Lcom/htc/android/mail/ComposeActivity;

    invoke-virtual {v1}, Lcom/htc/android/mail/ComposeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/MailEventBroadcaster;->sendContactChangeStatus(Landroid/content/Context;)V

    .line 8374
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$72;->this$0:Lcom/htc/android/mail/ComposeActivity;

    const/4 v1, 0x0

    #setter for: Lcom/htc/android/mail/ComposeActivity;->mbNeedNotifyReadScreenContactStatusChanged:Z
    invoke-static {v0, v1}, Lcom/htc/android/mail/ComposeActivity;->access$3102(Lcom/htc/android/mail/ComposeActivity;Z)Z

    .line 8377
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$72;->this$0:Lcom/htc/android/mail/ComposeActivity;

    invoke-virtual {v0}, Lcom/htc/android/mail/ComposeActivity;->finish()V

    .line 8378
    return-void
.end method

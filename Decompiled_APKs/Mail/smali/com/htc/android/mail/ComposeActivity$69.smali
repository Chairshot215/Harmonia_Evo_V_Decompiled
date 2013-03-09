.class Lcom/htc/android/mail/ComposeActivity$69;
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
    .line 8298
    iput-object p1, p0, Lcom/htc/android/mail/ComposeActivity$69;->this$0:Lcom/htc/android/mail/ComposeActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "button"

    .prologue
    .line 8300
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$69;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mDraftMessageId:J
    invoke-static {v0}, Lcom/htc/android/mail/ComposeActivity;->access$3300(Lcom/htc/android/mail/ComposeActivity;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 8301
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$69;->this$0:Lcom/htc/android/mail/ComposeActivity;

    const/4 v1, 0x1

    #setter for: Lcom/htc/android/mail/ComposeActivity;->mIsSaved:Z
    invoke-static {v0, v1}, Lcom/htc/android/mail/ComposeActivity;->access$2702(Lcom/htc/android/mail/ComposeActivity;Z)Z

    .line 8304
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$69;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mbNeedNotifyReadScreenContactStatusChanged:Z
    invoke-static {v0}, Lcom/htc/android/mail/ComposeActivity;->access$3100(Lcom/htc/android/mail/ComposeActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8305
    sget-object v0, Lcom/htc/android/mail/Mail;->mMailEvent:Lcom/htc/android/mail/MailEventBroadcaster;

    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$69;->this$0:Lcom/htc/android/mail/ComposeActivity;

    invoke-virtual {v1}, Lcom/htc/android/mail/ComposeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/MailEventBroadcaster;->sendContactChangeStatus(Landroid/content/Context;)V

    .line 8306
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$69;->this$0:Lcom/htc/android/mail/ComposeActivity;

    const/4 v1, 0x0

    #setter for: Lcom/htc/android/mail/ComposeActivity;->mbNeedNotifyReadScreenContactStatusChanged:Z
    invoke-static {v0, v1}, Lcom/htc/android/mail/ComposeActivity;->access$3102(Lcom/htc/android/mail/ComposeActivity;Z)Z

    .line 8309
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$69;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #calls: Lcom/htc/android/mail/ComposeActivity;->deleteVCardFile()V
    invoke-static {v0}, Lcom/htc/android/mail/ComposeActivity;->access$10200(Lcom/htc/android/mail/ComposeActivity;)V

    .line 8311
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$69;->this$0:Lcom/htc/android/mail/ComposeActivity;

    invoke-virtual {v0}, Lcom/htc/android/mail/ComposeActivity;->finish()V

    .line 8315
    :goto_0
    return-void

    .line 8313
    :cond_1
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$69;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #calls: Lcom/htc/android/mail/ComposeActivity;->deleteMail()V
    invoke-static {v0}, Lcom/htc/android/mail/ComposeActivity;->access$5300(Lcom/htc/android/mail/ComposeActivity;)V

    goto :goto_0
.end method

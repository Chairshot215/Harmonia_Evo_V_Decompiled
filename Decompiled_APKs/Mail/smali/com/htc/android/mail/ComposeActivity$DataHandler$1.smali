.class Lcom/htc/android/mail/ComposeActivity$DataHandler$1;
.super Ljava/lang/Object;
.source "ComposeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/ComposeActivity$DataHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/android/mail/ComposeActivity$DataHandler;

.field final synthetic val$email:Lcom/htc/android/mail/Mailaddress;

.field final synthetic val$mode:I


# direct methods
.method constructor <init>(Lcom/htc/android/mail/ComposeActivity$DataHandler;Lcom/htc/android/mail/Mailaddress;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 578
    iput-object p1, p0, Lcom/htc/android/mail/ComposeActivity$DataHandler$1;->this$1:Lcom/htc/android/mail/ComposeActivity$DataHandler;

    iput-object p2, p0, Lcom/htc/android/mail/ComposeActivity$DataHandler$1;->val$email:Lcom/htc/android/mail/Mailaddress;

    iput p3, p0, Lcom/htc/android/mail/ComposeActivity$DataHandler$1;->val$mode:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 580
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$DataHandler$1;->this$1:Lcom/htc/android/mail/ComposeActivity$DataHandler;

    iget-object v0, v0, Lcom/htc/android/mail/ComposeActivity$DataHandler;->this$0:Lcom/htc/android/mail/ComposeActivity;

    invoke-virtual {v0}, Lcom/htc/android/mail/ComposeActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 581
    const/16 v0, 0x13

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 582
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$DataHandler$1;->this$1:Lcom/htc/android/mail/ComposeActivity$DataHandler;

    iget-object v0, v0, Lcom/htc/android/mail/ComposeActivity$DataHandler;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$DataHandler$1;->val$email:Lcom/htc/android/mail/Mailaddress;

    iget v2, p0, Lcom/htc/android/mail/ComposeActivity$DataHandler$1;->val$mode:I

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/mail/ComposeActivity;->getContactInfo(Lcom/htc/android/mail/Mailaddress;I)V

    .line 585
    :cond_0
    return-void
.end method

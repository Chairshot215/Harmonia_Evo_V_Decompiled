.class Lcom/htc/android/mail/mailservice/MailService$DelayHandler$2;
.super Ljava/lang/Object;
.source "MailService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/mailservice/MailService$DelayHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/android/mail/mailservice/MailService$DelayHandler;

.field final synthetic val$startId:I


# direct methods
.method constructor <init>(Lcom/htc/android/mail/mailservice/MailService$DelayHandler;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1220
    iput-object p1, p0, Lcom/htc/android/mail/mailservice/MailService$DelayHandler$2;->this$1:Lcom/htc/android/mail/mailservice/MailService$DelayHandler;

    iput p2, p0, Lcom/htc/android/mail/mailservice/MailService$DelayHandler$2;->val$startId:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1222
    iget-object v0, p0, Lcom/htc/android/mail/mailservice/MailService$DelayHandler$2;->this$1:Lcom/htc/android/mail/mailservice/MailService$DelayHandler;

    iget-object v0, v0, Lcom/htc/android/mail/mailservice/MailService$DelayHandler;->this$0:Lcom/htc/android/mail/mailservice/MailService;

    const/4 v1, 0x1

    #calls: Lcom/htc/android/mail/mailservice/MailService;->reschedule(Z)V
    invoke-static {v0, v1}, Lcom/htc/android/mail/mailservice/MailService;->access$700(Lcom/htc/android/mail/mailservice/MailService;Z)V

    .line 1223
    iget-object v0, p0, Lcom/htc/android/mail/mailservice/MailService$DelayHandler$2;->this$1:Lcom/htc/android/mail/mailservice/MailService$DelayHandler;

    iget-object v0, v0, Lcom/htc/android/mail/mailservice/MailService$DelayHandler;->this$0:Lcom/htc/android/mail/mailservice/MailService;

    #calls: Lcom/htc/android/mail/mailservice/MailService;->setPowerRelease()V
    invoke-static {v0}, Lcom/htc/android/mail/mailservice/MailService;->access$800(Lcom/htc/android/mail/mailservice/MailService;)V

    .line 1224
    iget-object v0, p0, Lcom/htc/android/mail/mailservice/MailService$DelayHandler$2;->this$1:Lcom/htc/android/mail/mailservice/MailService$DelayHandler;

    iget-object v0, v0, Lcom/htc/android/mail/mailservice/MailService$DelayHandler;->this$0:Lcom/htc/android/mail/mailservice/MailService;

    #getter for: Lcom/htc/android/mail/mailservice/MailService;->mServiceIds:Lcom/htc/android/mail/mailservice/MailService$ServiceIds;
    invoke-static {v0}, Lcom/htc/android/mail/mailservice/MailService;->access$500(Lcom/htc/android/mail/mailservice/MailService;)Lcom/htc/android/mail/mailservice/MailService$ServiceIds;

    move-result-object v0

    iget v1, p0, Lcom/htc/android/mail/mailservice/MailService$DelayHandler$2;->val$startId:I

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/mailservice/MailService$ServiceIds;->removeAndTryStop(I)V

    .line 1225
    return-void
.end method

.class Lcom/htc/android/mail/mailservice/MailService$18;
.super Ljava/lang/Object;
.source "MailService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/mailservice/MailService;->onStart(Landroid/content/Intent;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/mailservice/MailService;

.field final synthetic val$startId:I

.field final synthetic val$state:I


# direct methods
.method constructor <init>(Lcom/htc/android/mail/mailservice/MailService;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 439
    iput-object p1, p0, Lcom/htc/android/mail/mailservice/MailService$18;->this$0:Lcom/htc/android/mail/mailservice/MailService;

    iput p2, p0, Lcom/htc/android/mail/mailservice/MailService$18;->val$state:I

    iput p3, p0, Lcom/htc/android/mail/mailservice/MailService$18;->val$startId:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 441
    invoke-static {}, Lcom/htc/android/mail/mailservice/MailService;->access$400()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MailService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SMART_WIFI_STATE_CHANGED_ACTION :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/android/mail/mailservice/MailService$18;->val$state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    :cond_0
    iget v0, p0, Lcom/htc/android/mail/mailservice/MailService$18;->val$state:I

    if-ne v0, v4, :cond_2

    .line 444
    iget-object v0, p0, Lcom/htc/android/mail/mailservice/MailService$18;->this$0:Lcom/htc/android/mail/mailservice/MailService;

    #setter for: Lcom/htc/android/mail/mailservice/MailService;->mIsSmartWifi:Z
    invoke-static {v0, v4}, Lcom/htc/android/mail/mailservice/MailService;->access$1102(Lcom/htc/android/mail/mailservice/MailService;Z)Z

    .line 445
    invoke-static {}, Lcom/htc/android/mail/mailservice/MailService;->access$400()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "MailService"

    const-string v1, "set mIsSmartWifi = true"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    :cond_1
    iget-object v0, p0, Lcom/htc/android/mail/mailservice/MailService$18;->this$0:Lcom/htc/android/mail/mailservice/MailService;

    #calls: Lcom/htc/android/mail/mailservice/MailService;->reschedulePeak(Z)V
    invoke-static {v0, v3}, Lcom/htc/android/mail/mailservice/MailService;->access$1000(Lcom/htc/android/mail/mailservice/MailService;Z)V

    .line 452
    :goto_0
    iget-object v0, p0, Lcom/htc/android/mail/mailservice/MailService$18;->this$0:Lcom/htc/android/mail/mailservice/MailService;

    #calls: Lcom/htc/android/mail/mailservice/MailService;->setPowerRelease()V
    invoke-static {v0}, Lcom/htc/android/mail/mailservice/MailService;->access$800(Lcom/htc/android/mail/mailservice/MailService;)V

    .line 453
    iget-object v0, p0, Lcom/htc/android/mail/mailservice/MailService$18;->this$0:Lcom/htc/android/mail/mailservice/MailService;

    #getter for: Lcom/htc/android/mail/mailservice/MailService;->mServiceIds:Lcom/htc/android/mail/mailservice/MailService$ServiceIds;
    invoke-static {v0}, Lcom/htc/android/mail/mailservice/MailService;->access$500(Lcom/htc/android/mail/mailservice/MailService;)Lcom/htc/android/mail/mailservice/MailService$ServiceIds;

    move-result-object v0

    iget v1, p0, Lcom/htc/android/mail/mailservice/MailService$18;->val$startId:I

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/mailservice/MailService$ServiceIds;->removeAndTryStop(I)V

    .line 454
    return-void

    .line 448
    :cond_2
    iget-object v0, p0, Lcom/htc/android/mail/mailservice/MailService$18;->this$0:Lcom/htc/android/mail/mailservice/MailService;

    #setter for: Lcom/htc/android/mail/mailservice/MailService;->mIsSmartWifi:Z
    invoke-static {v0, v3}, Lcom/htc/android/mail/mailservice/MailService;->access$1102(Lcom/htc/android/mail/mailservice/MailService;Z)Z

    .line 449
    invoke-static {}, Lcom/htc/android/mail/mailservice/MailService;->access$400()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "MailService"

    const-string v1, "set mIsSmartWifi = false"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    :cond_3
    iget-object v0, p0, Lcom/htc/android/mail/mailservice/MailService$18;->this$0:Lcom/htc/android/mail/mailservice/MailService;

    #calls: Lcom/htc/android/mail/mailservice/MailService;->reschedulePeak(Z)V
    invoke-static {v0, v3}, Lcom/htc/android/mail/mailservice/MailService;->access$1000(Lcom/htc/android/mail/mailservice/MailService;Z)V

    goto :goto_0
.end method

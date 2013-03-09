.class Lcom/htc/android/mail/easclient/EASClient$2$1;
.super Ljava/lang/Object;
.source "EASClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/easclient/EASClient$2;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/android/mail/easclient/EASClient$2;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/easclient/EASClient$2;)V
    .locals 0
    .parameter

    .prologue
    .line 252
    iput-object p1, p0, Lcom/htc/android/mail/easclient/EASClient$2$1;->this$1:Lcom/htc/android/mail/easclient/EASClient$2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 256
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/easclient/EASClient$2$1;->this$1:Lcom/htc/android/mail/easclient/EASClient$2;

    iget-object v1, v1, Lcom/htc/android/mail/easclient/EASClient$2;->this$0:Lcom/htc/android/mail/easclient/EASClient;

    iget-object v2, p0, Lcom/htc/android/mail/easclient/EASClient$2$1;->this$1:Lcom/htc/android/mail/easclient/EASClient$2;

    iget-object v2, v2, Lcom/htc/android/mail/easclient/EASClient$2;->this$0:Lcom/htc/android/mail/easclient/EASClient;

    iget-object v2, v2, Lcom/htc/android/mail/easclient/EASClient;->account:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    #setter for: Lcom/htc/android/mail/easclient/EASClient;->AccountName:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/htc/android/mail/easclient/EASClient;->access$902(Lcom/htc/android/mail/easclient/EASClient;Ljava/lang/String;)Ljava/lang/String;

    .line 257
    iget-object v1, p0, Lcom/htc/android/mail/easclient/EASClient$2$1;->this$1:Lcom/htc/android/mail/easclient/EASClient$2;

    iget-object v1, v1, Lcom/htc/android/mail/easclient/EASClient$2;->this$0:Lcom/htc/android/mail/easclient/EASClient;

    iget-object v2, p0, Lcom/htc/android/mail/easclient/EASClient$2$1;->this$1:Lcom/htc/android/mail/easclient/EASClient$2;

    iget-object v2, v2, Lcom/htc/android/mail/easclient/EASClient$2;->this$0:Lcom/htc/android/mail/easclient/EASClient;

    #getter for: Lcom/htc/android/mail/easclient/EASClient;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;
    invoke-static {v2}, Lcom/htc/android/mail/easclient/EASClient;->access$000(Lcom/htc/android/mail/easclient/EASClient;)Lcom/htc/android/mail/eassvc/pim/IEASService;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/mail/easclient/EASClient$2$1;->this$1:Lcom/htc/android/mail/easclient/EASClient$2;

    iget-object v3, v3, Lcom/htc/android/mail/easclient/EASClient$2;->this$0:Lcom/htc/android/mail/easclient/EASClient;

    iget-object v3, v3, Lcom/htc/android/mail/easclient/EASClient;->account:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/htc/android/mail/eassvc/pim/IEASService;->getAccountId(Ljava/lang/String;)J

    move-result-wide v2

    #setter for: Lcom/htc/android/mail/easclient/EASClient;->AccountId:J
    invoke-static {v1, v2, v3}, Lcom/htc/android/mail/easclient/EASClient;->access$102(Lcom/htc/android/mail/easclient/EASClient;J)J

    .line 258
    iget-object v1, p0, Lcom/htc/android/mail/easclient/EASClient$2$1;->this$1:Lcom/htc/android/mail/easclient/EASClient$2;

    iget-object v1, v1, Lcom/htc/android/mail/easclient/EASClient$2;->this$0:Lcom/htc/android/mail/easclient/EASClient;

    iget-object v2, p0, Lcom/htc/android/mail/easclient/EASClient$2$1;->this$1:Lcom/htc/android/mail/easclient/EASClient$2;

    iget-object v2, v2, Lcom/htc/android/mail/easclient/EASClient$2;->this$0:Lcom/htc/android/mail/easclient/EASClient;

    #getter for: Lcom/htc/android/mail/easclient/EASClient;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;
    invoke-static {v2}, Lcom/htc/android/mail/easclient/EASClient;->access$000(Lcom/htc/android/mail/easclient/EASClient;)Lcom/htc/android/mail/eassvc/pim/IEASService;

    move-result-object v2

    invoke-interface {v2}, Lcom/htc/android/mail/eassvc/pim/IEASService;->getPhoneStatus()I

    move-result v2

    #setter for: Lcom/htc/android/mail/easclient/EASClient;->mPhoneStatus:I
    invoke-static {v1, v2}, Lcom/htc/android/mail/easclient/EASClient;->access$502(Lcom/htc/android/mail/easclient/EASClient;I)I

    .line 260
    iget-object v1, p0, Lcom/htc/android/mail/easclient/EASClient$2$1;->this$1:Lcom/htc/android/mail/easclient/EASClient$2;

    iget-object v1, v1, Lcom/htc/android/mail/easclient/EASClient$2;->this$0:Lcom/htc/android/mail/easclient/EASClient;

    #getter for: Lcom/htc/android/mail/easclient/EASClient;->AccountId:J
    invoke-static {v1}, Lcom/htc/android/mail/easclient/EASClient;->access$100(Lcom/htc/android/mail/easclient/EASClient;)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 261
    iget-object v1, p0, Lcom/htc/android/mail/easclient/EASClient$2$1;->this$1:Lcom/htc/android/mail/easclient/EASClient$2;

    iget-object v1, v1, Lcom/htc/android/mail/easclient/EASClient$2;->this$0:Lcom/htc/android/mail/easclient/EASClient;

    #getter for: Lcom/htc/android/mail/easclient/EASClient;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/android/mail/easclient/EASClient;->access$1000(Lcom/htc/android/mail/easclient/EASClient;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/htc/android/mail/easclient/EASClient$2$1$1;

    invoke-direct {v2, p0}, Lcom/htc/android/mail/easclient/EASClient$2$1$1;-><init>(Lcom/htc/android/mail/easclient/EASClient$2$1;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 265
    iget-object v1, p0, Lcom/htc/android/mail/easclient/EASClient$2$1;->this$1:Lcom/htc/android/mail/easclient/EASClient$2;

    iget-object v1, v1, Lcom/htc/android/mail/easclient/EASClient$2;->this$0:Lcom/htc/android/mail/easclient/EASClient;

    #getter for: Lcom/htc/android/mail/easclient/EASClient;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;
    invoke-static {v1}, Lcom/htc/android/mail/easclient/EASClient;->access$000(Lcom/htc/android/mail/easclient/EASClient;)Lcom/htc/android/mail/eassvc/pim/IEASService;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/android/mail/eassvc/pim/IEASService;->deleteExchangeRemainDatas()Z

    .line 266
    iget-object v1, p0, Lcom/htc/android/mail/easclient/EASClient$2$1;->this$1:Lcom/htc/android/mail/easclient/EASClient$2;

    iget-object v1, v1, Lcom/htc/android/mail/easclient/EASClient$2;->this$0:Lcom/htc/android/mail/easclient/EASClient;

    #getter for: Lcom/htc/android/mail/easclient/EASClient;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/android/mail/easclient/EASClient;->access$1000(Lcom/htc/android/mail/easclient/EASClient;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 275
    :goto_0
    return-void

    .line 269
    :cond_0
    iget-object v1, p0, Lcom/htc/android/mail/easclient/EASClient$2$1;->this$1:Lcom/htc/android/mail/easclient/EASClient$2;

    iget-object v1, v1, Lcom/htc/android/mail/easclient/EASClient$2;->this$0:Lcom/htc/android/mail/easclient/EASClient;

    #getter for: Lcom/htc/android/mail/easclient/EASClient;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/android/mail/easclient/EASClient;->access$1000(Lcom/htc/android/mail/easclient/EASClient;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 270
    iget-object v1, p0, Lcom/htc/android/mail/easclient/EASClient$2$1;->this$1:Lcom/htc/android/mail/easclient/EASClient$2;

    iget-object v1, v1, Lcom/htc/android/mail/easclient/EASClient$2;->this$0:Lcom/htc/android/mail/easclient/EASClient;

    #getter for: Lcom/htc/android/mail/easclient/EASClient;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;
    invoke-static {v1}, Lcom/htc/android/mail/easclient/EASClient;->access$000(Lcom/htc/android/mail/easclient/EASClient;)Lcom/htc/android/mail/eassvc/pim/IEASService;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/easclient/EASClient$2$1;->this$1:Lcom/htc/android/mail/easclient/EASClient$2;

    iget-object v2, v2, Lcom/htc/android/mail/easclient/EASClient$2;->this$0:Lcom/htc/android/mail/easclient/EASClient;

    #getter for: Lcom/htc/android/mail/easclient/EASClient;->AccountId:J
    invoke-static {v2}, Lcom/htc/android/mail/easclient/EASClient;->access$100(Lcom/htc/android/mail/easclient/EASClient;)J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/htc/android/mail/eassvc/pim/IEASService;->cancelErrorNotification(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 272
    :catch_0
    move-exception v0

    .line 273
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

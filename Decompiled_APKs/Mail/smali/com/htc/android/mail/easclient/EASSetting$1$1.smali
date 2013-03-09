.class Lcom/htc/android/mail/easclient/EASSetting$1$1;
.super Ljava/lang/Object;
.source "EASSetting.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/easclient/EASSetting$1;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/android/mail/easclient/EASSetting$1;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/easclient/EASSetting$1;)V
    .locals 0
    .parameter

    .prologue
    .line 151
    iput-object p1, p0, Lcom/htc/android/mail/easclient/EASSetting$1$1;->this$1:Lcom/htc/android/mail/easclient/EASSetting$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 154
    :try_start_0
    iget-object v3, p0, Lcom/htc/android/mail/easclient/EASSetting$1$1;->this$1:Lcom/htc/android/mail/easclient/EASSetting$1;

    iget-object v3, v3, Lcom/htc/android/mail/easclient/EASSetting$1;->this$0:Lcom/htc/android/mail/easclient/EASSetting;

    #getter for: Lcom/htc/android/mail/easclient/EASSetting;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;
    invoke-static {v3}, Lcom/htc/android/mail/easclient/EASSetting;->access$300(Lcom/htc/android/mail/easclient/EASSetting;)Lcom/htc/android/mail/eassvc/pim/IEASService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 155
    iget-object v3, p0, Lcom/htc/android/mail/easclient/EASSetting$1$1;->this$1:Lcom/htc/android/mail/easclient/EASSetting$1;

    iget-object v3, v3, Lcom/htc/android/mail/easclient/EASSetting$1;->this$0:Lcom/htc/android/mail/easclient/EASSetting;

    iget-object v4, p0, Lcom/htc/android/mail/easclient/EASSetting$1$1;->this$1:Lcom/htc/android/mail/easclient/EASSetting$1;

    iget-object v4, v4, Lcom/htc/android/mail/easclient/EASSetting$1;->this$0:Lcom/htc/android/mail/easclient/EASSetting;

    #getter for: Lcom/htc/android/mail/easclient/EASSetting;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;
    invoke-static {v4}, Lcom/htc/android/mail/easclient/EASSetting;->access$300(Lcom/htc/android/mail/easclient/EASSetting;)Lcom/htc/android/mail/eassvc/pim/IEASService;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/android/mail/easclient/EASSetting$1$1;->this$1:Lcom/htc/android/mail/easclient/EASSetting$1;

    iget-object v5, v5, Lcom/htc/android/mail/easclient/EASSetting$1;->this$0:Lcom/htc/android/mail/easclient/EASSetting;

    #getter for: Lcom/htc/android/mail/easclient/EASSetting;->mAccountId:J
    invoke-static {v5}, Lcom/htc/android/mail/easclient/EASSetting;->access$200(Lcom/htc/android/mail/easclient/EASSetting;)J

    move-result-wide v5

    invoke-interface {v4, v5, v6}, Lcom/htc/android/mail/eassvc/pim/IEASService;->getServerProtocol(J)D

    move-result-wide v4

    #setter for: Lcom/htc/android/mail/easclient/EASSetting;->serverProtocol:D
    invoke-static {v3, v4, v5}, Lcom/htc/android/mail/easclient/EASSetting;->access$402(Lcom/htc/android/mail/easclient/EASSetting;D)D

    .line 156
    iget-object v3, p0, Lcom/htc/android/mail/easclient/EASSetting$1$1;->this$1:Lcom/htc/android/mail/easclient/EASSetting$1;

    iget-object v3, v3, Lcom/htc/android/mail/easclient/EASSetting$1;->this$0:Lcom/htc/android/mail/easclient/EASSetting;

    iget-object v4, p0, Lcom/htc/android/mail/easclient/EASSetting$1$1;->this$1:Lcom/htc/android/mail/easclient/EASSetting$1;

    iget-object v4, v4, Lcom/htc/android/mail/easclient/EASSetting$1;->this$0:Lcom/htc/android/mail/easclient/EASSetting;

    #getter for: Lcom/htc/android/mail/easclient/EASSetting;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;
    invoke-static {v4}, Lcom/htc/android/mail/easclient/EASSetting;->access$300(Lcom/htc/android/mail/easclient/EASSetting;)Lcom/htc/android/mail/eassvc/pim/IEASService;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/android/mail/easclient/EASSetting$1$1;->this$1:Lcom/htc/android/mail/easclient/EASSetting$1;

    iget-object v5, v5, Lcom/htc/android/mail/easclient/EASSetting$1;->this$0:Lcom/htc/android/mail/easclient/EASSetting;

    #getter for: Lcom/htc/android/mail/easclient/EASSetting;->mAccountId:J
    invoke-static {v5}, Lcom/htc/android/mail/easclient/EASSetting;->access$200(Lcom/htc/android/mail/easclient/EASSetting;)J

    move-result-wide v5

    invoke-interface {v4, v5, v6}, Lcom/htc/android/mail/eassvc/pim/IEASService;->getProvisionDoc(J)Landroid/os/Bundle;

    move-result-object v4

    #setter for: Lcom/htc/android/mail/easclient/EASSetting;->mPolicyDoc:Landroid/os/Bundle;
    invoke-static {v3, v4}, Lcom/htc/android/mail/easclient/EASSetting;->access$502(Lcom/htc/android/mail/easclient/EASSetting;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 158
    :cond_0
    iget-object v3, p0, Lcom/htc/android/mail/easclient/EASSetting$1$1;->this$1:Lcom/htc/android/mail/easclient/EASSetting$1;

    iget-object v3, v3, Lcom/htc/android/mail/easclient/EASSetting$1;->this$0:Lcom/htc/android/mail/easclient/EASSetting;

    #getter for: Lcom/htc/android/mail/easclient/EASSetting;->mPolicyDoc:Landroid/os/Bundle;
    invoke-static {v3}, Lcom/htc/android/mail/easclient/EASSetting;->access$500(Lcom/htc/android/mail/easclient/EASSetting;)Landroid/os/Bundle;

    move-result-object v3

    if-nez v3, :cond_1

    .line 159
    iget-object v3, p0, Lcom/htc/android/mail/easclient/EASSetting$1$1;->this$1:Lcom/htc/android/mail/easclient/EASSetting$1;

    iget-object v3, v3, Lcom/htc/android/mail/easclient/EASSetting$1;->this$0:Lcom/htc/android/mail/easclient/EASSetting;

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    #setter for: Lcom/htc/android/mail/easclient/EASSetting;->mPolicyDoc:Landroid/os/Bundle;
    invoke-static {v3, v4}, Lcom/htc/android/mail/easclient/EASSetting;->access$502(Lcom/htc/android/mail/easclient/EASSetting;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 161
    :cond_1
    iget-object v3, p0, Lcom/htc/android/mail/easclient/EASSetting$1$1;->this$1:Lcom/htc/android/mail/easclient/EASSetting$1;

    iget-object v3, v3, Lcom/htc/android/mail/easclient/EASSetting$1;->this$0:Lcom/htc/android/mail/easclient/EASSetting;

    #getter for: Lcom/htc/android/mail/easclient/EASSetting;->menuCategory:I
    invoke-static {v3}, Lcom/htc/android/mail/easclient/EASSetting;->access$600(Lcom/htc/android/mail/easclient/EASSetting;)I

    move-result v3

    if-ne v3, v7, :cond_3

    .line 162
    iget-object v3, p0, Lcom/htc/android/mail/easclient/EASSetting$1$1;->this$1:Lcom/htc/android/mail/easclient/EASSetting$1;

    iget-object v3, v3, Lcom/htc/android/mail/easclient/EASSetting$1;->this$0:Lcom/htc/android/mail/easclient/EASSetting;

    new-instance v4, Lcom/htc/android/mail/easclient/EASSetting$ExchangeExtraInfo;

    iget-object v5, p0, Lcom/htc/android/mail/easclient/EASSetting$1$1;->this$1:Lcom/htc/android/mail/easclient/EASSetting$1;

    iget-object v5, v5, Lcom/htc/android/mail/easclient/EASSetting$1;->this$0:Lcom/htc/android/mail/easclient/EASSetting;

    invoke-direct {v4, v5}, Lcom/htc/android/mail/easclient/EASSetting$ExchangeExtraInfo;-><init>(Lcom/htc/android/mail/easclient/EASSetting;)V

    #setter for: Lcom/htc/android/mail/easclient/EASSetting;->exExtraInfo:Lcom/htc/android/mail/easclient/EASSetting$ExchangeExtraInfo;
    invoke-static {v3, v4}, Lcom/htc/android/mail/easclient/EASSetting;->access$702(Lcom/htc/android/mail/easclient/EASSetting;Lcom/htc/android/mail/easclient/EASSetting$ExchangeExtraInfo;)Lcom/htc/android/mail/easclient/EASSetting$ExchangeExtraInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    const/4 v0, 0x0

    .line 165
    .local v0, cursor:Landroid/database/Cursor;
    const/4 v3, 0x4

    :try_start_1
    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "_replyWithText"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "_alwaysBccMyself"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "_downloadMessageWhenScroll"

    aput-object v4, v2, v3

    .line 166
    .local v2, projection:[Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/android/mail/easclient/EASSetting$1$1;->this$1:Lcom/htc/android/mail/easclient/EASSetting$1;

    iget-object v3, v3, Lcom/htc/android/mail/easclient/EASSetting$1;->this$0:Lcom/htc/android/mail/easclient/EASSetting;

    iget-object v4, p0, Lcom/htc/android/mail/easclient/EASSetting$1$1;->this$1:Lcom/htc/android/mail/easclient/EASSetting$1;

    iget-object v4, v4, Lcom/htc/android/mail/easclient/EASSetting$1;->this$0:Lcom/htc/android/mail/easclient/EASSetting;

    #getter for: Lcom/htc/android/mail/easclient/EASSetting;->mAccountId:J
    invoke-static {v4}, Lcom/htc/android/mail/easclient/EASSetting;->access$200(Lcom/htc/android/mail/easclient/EASSetting;)J

    move-result-wide v4

    #calls: Lcom/htc/android/mail/easclient/EASSetting;->getExchangeAccount(J[Ljava/lang/String;)Landroid/database/Cursor;
    invoke-static {v3, v4, v5, v2}, Lcom/htc/android/mail/easclient/EASSetting;->access$800(Lcom/htc/android/mail/easclient/EASSetting;J[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 167
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 169
    iget-object v3, p0, Lcom/htc/android/mail/easclient/EASSetting$1$1;->this$1:Lcom/htc/android/mail/easclient/EASSetting$1;

    iget-object v3, v3, Lcom/htc/android/mail/easclient/EASSetting$1;->this$0:Lcom/htc/android/mail/easclient/EASSetting;

    #getter for: Lcom/htc/android/mail/easclient/EASSetting;->exExtraInfo:Lcom/htc/android/mail/easclient/EASSetting$ExchangeExtraInfo;
    invoke-static {v3}, Lcom/htc/android/mail/easclient/EASSetting;->access$700(Lcom/htc/android/mail/easclient/EASSetting;)Lcom/htc/android/mail/easclient/EASSetting$ExchangeExtraInfo;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v3, Lcom/htc/android/mail/easclient/EASSetting$ExchangeExtraInfo;->replyWithText:I

    .line 170
    iget-object v3, p0, Lcom/htc/android/mail/easclient/EASSetting$1$1;->this$1:Lcom/htc/android/mail/easclient/EASSetting$1;

    iget-object v3, v3, Lcom/htc/android/mail/easclient/EASSetting$1;->this$0:Lcom/htc/android/mail/easclient/EASSetting;

    #getter for: Lcom/htc/android/mail/easclient/EASSetting;->exExtraInfo:Lcom/htc/android/mail/easclient/EASSetting$ExchangeExtraInfo;
    invoke-static {v3}, Lcom/htc/android/mail/easclient/EASSetting;->access$700(Lcom/htc/android/mail/easclient/EASSetting;)Lcom/htc/android/mail/easclient/EASSetting$ExchangeExtraInfo;

    move-result-object v3

    const/4 v4, 0x2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v3, Lcom/htc/android/mail/easclient/EASSetting$ExchangeExtraInfo;->alwaysBccSelf:I

    .line 171
    iget-object v3, p0, Lcom/htc/android/mail/easclient/EASSetting$1$1;->this$1:Lcom/htc/android/mail/easclient/EASSetting$1;

    iget-object v3, v3, Lcom/htc/android/mail/easclient/EASSetting$1;->this$0:Lcom/htc/android/mail/easclient/EASSetting;

    #getter for: Lcom/htc/android/mail/easclient/EASSetting;->exExtraInfo:Lcom/htc/android/mail/easclient/EASSetting$ExchangeExtraInfo;
    invoke-static {v3}, Lcom/htc/android/mail/easclient/EASSetting;->access$700(Lcom/htc/android/mail/easclient/EASSetting;)Lcom/htc/android/mail/easclient/EASSetting$ExchangeExtraInfo;

    move-result-object v3

    const/4 v4, 0x3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v3, Lcom/htc/android/mail/easclient/EASSetting$ExchangeExtraInfo;->downloadMessageWhenScroll:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 174
    :cond_2
    if-eqz v0, :cond_3

    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_3

    .line 175
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 178
    .end local v0           #cursor:Landroid/database/Cursor;
    .end local v2           #projection:[Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/htc/android/mail/easclient/EASSetting$1$1;->this$1:Lcom/htc/android/mail/easclient/EASSetting$1;

    iget-object v3, v3, Lcom/htc/android/mail/easclient/EASSetting$1;->this$0:Lcom/htc/android/mail/easclient/EASSetting;

    #getter for: Lcom/htc/android/mail/easclient/EASSetting;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/htc/android/mail/easclient/EASSetting;->access$900(Lcom/htc/android/mail/easclient/EASSetting;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 182
    :goto_0
    return-void

    .line 174
    .restart local v0       #cursor:Landroid/database/Cursor;
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_4

    .line 175
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 174
    :cond_4
    throw v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 179
    .end local v0           #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v1

    .line 180
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

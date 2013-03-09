.class Lcom/htc/cs/activity/accountactivities/CS_login$DeleteAccountFromServer;
.super Ljava/lang/Thread;
.source "CS_login.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cs/activity/accountactivities/CS_login;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteAccountFromServer"
.end annotation


# instance fields
.field private logger:Lcom/htc/cs/util/Logger;

.field private mContext:Landroid/content/Context;

.field mEndMsg:Landroid/os/Message;

.field final synthetic this$0:Lcom/htc/cs/activity/accountactivities/CS_login;


# direct methods
.method constructor <init>(Lcom/htc/cs/activity/accountactivities/CS_login;Landroid/content/Context;Landroid/os/Message;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "mMsg"

    .prologue
    .line 365
    iput-object p1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$DeleteAccountFromServer;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 361
    invoke-static {p0}, Lcom/htc/cs/util/Logger;->getLogger(Ljava/lang/Object;)Lcom/htc/cs/util/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login$DeleteAccountFromServer;->logger:Lcom/htc/cs/util/Logger;

    .line 366
    iput-object p2, p0, Lcom/htc/cs/activity/accountactivities/CS_login$DeleteAccountFromServer;->mContext:Landroid/content/Context;

    .line 367
    iput-object p3, p0, Lcom/htc/cs/activity/accountactivities/CS_login$DeleteAccountFromServer;->mEndMsg:Landroid/os/Message;

    .line 368
    return-void
.end method

.method private sendMessage(I)V
    .locals 2
    .parameter "arg"

    .prologue
    .line 371
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login$DeleteAccountFromServer;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/cs/activity/accountactivities/CS_login;->removeDialog(I)V

    .line 372
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login$DeleteAccountFromServer;->mEndMsg:Landroid/os/Message;

    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 373
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login$DeleteAccountFromServer;->mEndMsg:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 374
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 378
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$DeleteAccountFromServer;->logger:Lcom/htc/cs/util/Logger;

    invoke-virtual {v1}, Lcom/htc/cs/util/Logger;->logMethodName()V

    .line 380
    :try_start_0
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$DeleteAccountFromServer;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    iget-object v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login$DeleteAccountFromServer;->mContext:Landroid/content/Context;

    #calls: Lcom/htc/cs/activity/accountactivities/CS_login;->removeAccountfromServer(Landroid/content/Context;)V
    invoke-static {v1, v2}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$900(Lcom/htc/cs/activity/accountactivities/CS_login;Landroid/content/Context;)V

    .line 381
    const/16 v1, 0x1e

    invoke-direct {p0, v1}, Lcom/htc/cs/activity/accountactivities/CS_login$DeleteAccountFromServer;->sendMessage(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 386
    :goto_0
    return-void

    .line 382
    :catch_0
    move-exception v0

    .line 383
    .local v0, e:Ljava/lang/Exception;
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$DeleteAccountFromServer;->logger:Lcom/htc/cs/util/Logger;

    invoke-virtual {v1, v0}, Lcom/htc/cs/util/Logger;->exception(Ljava/lang/Throwable;)V

    .line 384
    const/16 v1, 0x1a

    invoke-direct {p0, v1}, Lcom/htc/cs/activity/accountactivities/CS_login$DeleteAccountFromServer;->sendMessage(I)V

    goto :goto_0
.end method

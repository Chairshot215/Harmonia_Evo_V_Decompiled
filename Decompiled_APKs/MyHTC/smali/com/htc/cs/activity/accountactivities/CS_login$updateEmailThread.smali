.class Lcom/htc/cs/activity/accountactivities/CS_login$updateEmailThread;
.super Ljava/lang/Thread;
.source "CS_login.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cs/activity/accountactivities/CS_login;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "updateEmailThread"
.end annotation


# instance fields
.field logger:Lcom/htc/cs/util/Logger;

.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/htc/cs/activity/accountactivities/CS_login;


# direct methods
.method constructor <init>(Lcom/htc/cs/activity/accountactivities/CS_login;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 943
    iput-object p1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$updateEmailThread;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 940
    invoke-static {p0}, Lcom/htc/cs/util/Logger;->getLogger(Ljava/lang/Object;)Lcom/htc/cs/util/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login$updateEmailThread;->logger:Lcom/htc/cs/util/Logger;

    .line 944
    iput-object p2, p0, Lcom/htc/cs/activity/accountactivities/CS_login$updateEmailThread;->mContext:Landroid/content/Context;

    .line 945
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 949
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login$updateEmailThread;->logger:Lcom/htc/cs/util/Logger;

    invoke-virtual {v0}, Lcom/htc/cs/util/Logger;->logMethodName()V

    .line 950
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login$updateEmailThread;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    #calls: Lcom/htc/cs/activity/accountactivities/CS_login;->activityDestroyed()Z
    invoke-static {v0}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$000(Lcom/htc/cs/activity/accountactivities/CS_login;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login$updateEmailThread;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    #getter for: Lcom/htc/cs/activity/accountactivities/CS_login;->editEmailAddr:Landroid/widget/AutoCompleteTextView;
    invoke-static {v0}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$1600(Lcom/htc/cs/activity/accountactivities/CS_login;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login$updateEmailThread;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 956
    :cond_0
    :goto_0
    return-void

    .line 954
    :cond_1
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login$updateEmailThread;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$updateEmailThread;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    #getter for: Lcom/htc/cs/activity/accountactivities/CS_login;->editEmailAddr:Landroid/widget/AutoCompleteTextView;
    invoke-static {v1}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$1600(Lcom/htc/cs/activity/accountactivities/CS_login;)Landroid/widget/AutoCompleteTextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login$updateEmailThread;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/htc/cs/activity/accountactivities/CS_login;->updateEmailAddrToPublicAccount(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0
.end method

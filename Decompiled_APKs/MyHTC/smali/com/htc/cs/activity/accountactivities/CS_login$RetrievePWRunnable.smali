.class Lcom/htc/cs/activity/accountactivities/CS_login$RetrievePWRunnable;
.super Ljava/lang/Object;
.source "CS_login.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cs/activity/accountactivities/CS_login;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RetrievePWRunnable"
.end annotation


# instance fields
.field logger:Lcom/htc/cs/util/Logger;

.field mEndMsg:Landroid/os/Message;

.field final synthetic this$0:Lcom/htc/cs/activity/accountactivities/CS_login;


# direct methods
.method public constructor <init>(Lcom/htc/cs/activity/accountactivities/CS_login;Landroid/os/Message;)V
    .locals 1
    .parameter
    .parameter "msg"

    .prologue
    .line 882
    iput-object p1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$RetrievePWRunnable;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 879
    invoke-static {p0}, Lcom/htc/cs/util/Logger;->getLogger(Ljava/lang/Object;)Lcom/htc/cs/util/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login$RetrievePWRunnable;->logger:Lcom/htc/cs/util/Logger;

    .line 883
    iput-object p2, p0, Lcom/htc/cs/activity/accountactivities/CS_login$RetrievePWRunnable;->mEndMsg:Landroid/os/Message;

    .line 884
    return-void
.end method

.method private sendMessage()V
    .locals 2

    .prologue
    .line 893
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login$RetrievePWRunnable;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/htc/cs/activity/accountactivities/CS_login;->removeDialog(I)V

    .line 894
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login$RetrievePWRunnable;->mEndMsg:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 895
    return-void
.end method

.method private sendMessage(I)V
    .locals 2
    .parameter "arg"

    .prologue
    .line 887
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login$RetrievePWRunnable;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/htc/cs/activity/accountactivities/CS_login;->removeDialog(I)V

    .line 888
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login$RetrievePWRunnable;->mEndMsg:Landroid/os/Message;

    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 889
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login$RetrievePWRunnable;->mEndMsg:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 890
    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v2, 0x0

    .line 899
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$RetrievePWRunnable;->logger:Lcom/htc/cs/util/Logger;

    invoke-virtual {v1}, Lcom/htc/cs/util/Logger;->logMethodName()V

    .line 900
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$RetrievePWRunnable;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    #calls: Lcom/htc/cs/activity/accountactivities/CS_login;->activityDestroyed()Z
    invoke-static {v1}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$000(Lcom/htc/cs/activity/accountactivities/CS_login;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 936
    :goto_0
    return-void

    .line 905
    :cond_0
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$RetrievePWRunnable;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    invoke-static {v1, v2}, Lcom/htc/cs/util/NetworkCheck;->isNetworkOK(Landroid/content/Context;Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 906
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/htc/cs/activity/accountactivities/CS_login$RetrievePWRunnable;->sendMessage(I)V

    goto :goto_0

    .line 910
    :cond_1
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$RetrievePWRunnable;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    #calls: Lcom/htc/cs/activity/accountactivities/CS_login;->getDeviceID()Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$1300(Lcom/htc/cs/activity/accountactivities/CS_login;)Ljava/lang/String;

    move-result-object v10

    .line 911
    .local v10, temp:Ljava/lang/String;
    invoke-static {v10}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v4

    .line 914
    .local v4, deviceUUID:Ljava/util/UUID;
    :try_start_0
    new-instance v0, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;

    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$RetrievePWRunnable;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    invoke-virtual {v1}, Lcom/htc/cs/activity/accountactivities/CS_login;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cs/util/CSUserPreferenceUtil;->getServerName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const/4 v3, 0x0

    const-string v5, ""

    const-string v6, ""

    iget-object v7, p0, Lcom/htc/cs/activity/accountactivities/CS_login$RetrievePWRunnable;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    invoke-virtual {v7}, Lcom/htc/cs/activity/accountactivities/CS_login;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/util/UUID;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 920
    .local v0, rest:Lcom/htc/cscore/restapi/proxy/RestServicesProxy;
    new-instance v9, Lcom/htc/cscore/restapi/proxy/WebClasses$WPasswordRequest;

    invoke-direct {v9}, Lcom/htc/cscore/restapi/proxy/WebClasses$WPasswordRequest;-><init>()V

    .line 921
    .local v9, passwordRequest:Lcom/htc/cscore/restapi/proxy/WebClasses$WPasswordRequest;
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$RetrievePWRunnable;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    #getter for: Lcom/htc/cs/activity/accountactivities/CS_login;->editsecurityAnswer:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$2200(Lcom/htc/cs/activity/accountactivities/CS_login;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Lcom/htc/cscore/restapi/proxy/WebClasses$WPasswordRequest;->SecurityAnswer:Ljava/lang/String;

    .line 923
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$RetrievePWRunnable;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    invoke-static {v1}, Lcom/htc/cs/util/CSUserPreferenceUtil;->getEmail(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Lcom/htc/cscore/restapi/proxy/WebClasses$WPasswordRequest;->EmailAddress:Ljava/lang/String;

    .line 925
    const-string v1, ""

    iput-object v1, v9, Lcom/htc/cscore/restapi/proxy/WebClasses$WPasswordRequest;->CaptchaChallengeField:Ljava/lang/String;

    .line 926
    const-string v1, ""

    iput-object v1, v9, Lcom/htc/cscore/restapi/proxy/WebClasses$WPasswordRequest;->CaptchaResponseField:Ljava/lang/String;

    .line 928
    invoke-virtual {v0, v9}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->ForgotPassword(Lcom/htc/cscore/restapi/proxy/WebClasses$WPasswordRequest;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 935
    invoke-direct {p0}, Lcom/htc/cs/activity/accountactivities/CS_login$RetrievePWRunnable;->sendMessage()V

    goto :goto_0

    .line 930
    .end local v0           #rest:Lcom/htc/cscore/restapi/proxy/RestServicesProxy;
    .end local v9           #passwordRequest:Lcom/htc/cscore/restapi/proxy/WebClasses$WPasswordRequest;
    :catch_0
    move-exception v8

    .line 931
    .local v8, e:Ljava/lang/Exception;
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$RetrievePWRunnable;->logger:Lcom/htc/cs/util/Logger;

    invoke-virtual {v1, v8}, Lcom/htc/cs/util/Logger;->exception(Ljava/lang/Throwable;)V

    .line 932
    const/16 v1, 0x12

    invoke-direct {p0, v1}, Lcom/htc/cs/activity/accountactivities/CS_login$RetrievePWRunnable;->sendMessage(I)V

    goto :goto_0
.end method

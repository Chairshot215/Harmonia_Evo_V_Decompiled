.class Lcom/htc/cs/activity/accountactivities/CS_login$CheckAccountStateRunnable;
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
    name = "CheckAccountStateRunnable"
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
    .line 146
    iput-object p1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$CheckAccountStateRunnable;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 143
    invoke-static {p0}, Lcom/htc/cs/util/Logger;->getLogger(Ljava/lang/Object;)Lcom/htc/cs/util/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login$CheckAccountStateRunnable;->logger:Lcom/htc/cs/util/Logger;

    .line 147
    iput-object p2, p0, Lcom/htc/cs/activity/accountactivities/CS_login$CheckAccountStateRunnable;->mEndMsg:Landroid/os/Message;

    .line 148
    return-void
.end method

.method private sendMessage(I)V
    .locals 2
    .parameter "arg"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login$CheckAccountStateRunnable;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/htc/cs/activity/accountactivities/CS_login;->removeDialog(I)V

    .line 152
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login$CheckAccountStateRunnable;->mEndMsg:Landroid/os/Message;

    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 153
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login$CheckAccountStateRunnable;->mEndMsg:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 154
    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    .line 158
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$CheckAccountStateRunnable;->logger:Lcom/htc/cs/util/Logger;

    invoke-virtual {v1}, Lcom/htc/cs/util/Logger;->logMethodName()V

    .line 160
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$CheckAccountStateRunnable;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    #calls: Lcom/htc/cs/activity/accountactivities/CS_login;->activityDestroyed()Z
    invoke-static {v1}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$000(Lcom/htc/cs/activity/accountactivities/CS_login;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 163
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$CheckAccountStateRunnable;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/htc/cs/util/NetworkCheck;->isNetworkOK(Landroid/content/Context;Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 164
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/htc/cs/activity/accountactivities/CS_login$CheckAccountStateRunnable;->sendMessage(I)V

    .line 275
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$CheckAccountStateRunnable;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    #getter for: Lcom/htc/cs/activity/accountactivities/CS_login;->contentObserverDeviceConfig:Lcom/htc/cs/activity/accountactivities/CS_login$ContentObserverDeviceConfig;
    invoke-static {v1}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$100(Lcom/htc/cs/activity/accountactivities/CS_login;)Lcom/htc/cs/activity/accountactivities/CS_login$ContentObserverDeviceConfig;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$CheckAccountStateRunnable;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    #calls: Lcom/htc/cs/activity/accountactivities/CS_login;->isTtlExpired()Z
    invoke-static {v1}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$200(Lcom/htc/cs/activity/accountactivities/CS_login;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$CheckAccountStateRunnable;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    #getter for: Lcom/htc/cs/activity/accountactivities/CS_login;->test_:Z
    invoke-static {v1}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$300(Lcom/htc/cs/activity/accountactivities/CS_login;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    .line 172
    :cond_3
    const/4 v11, 0x0

    .line 173
    .local v11, time:I
    :goto_1
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$CheckAccountStateRunnable;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    #getter for: Lcom/htc/cs/activity/accountactivities/CS_login;->provisioningUpdated:Z
    invoke-static {v1}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$400(Lcom/htc/cs/activity/accountactivities/CS_login;)Z

    move-result v1

    if-nez v1, :cond_4

    const/16 v1, 0x32

    if-ge v11, v1, :cond_4

    .line 174
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$CheckAccountStateRunnable;->logger:Lcom/htc/cs/util/Logger;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "Updated = "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/htc/cs/activity/accountactivities/CS_login$CheckAccountStateRunnable;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    #getter for: Lcom/htc/cs/activity/accountactivities/CS_login;->provisioningUpdated:Z
    invoke-static {v4}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$400(Lcom/htc/cs/activity/accountactivities/CS_login;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/htc/cs/util/Logger;->debug([Ljava/lang/Object;)V

    .line 176
    const-wide/16 v1, 0x1f4

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 178
    :catch_0
    move-exception v9

    .line 179
    .local v9, e:Ljava/lang/InterruptedException;
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$CheckAccountStateRunnable;->logger:Lcom/htc/cs/util/Logger;

    invoke-virtual {v1, v9}, Lcom/htc/cs/util/Logger;->exception(Ljava/lang/Throwable;)V

    .line 180
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/htc/cs/activity/accountactivities/CS_login$CheckAccountStateRunnable;->sendMessage(I)V

    goto :goto_0

    .line 186
    .end local v9           #e:Ljava/lang/InterruptedException;
    :cond_4
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$CheckAccountStateRunnable;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    #getter for: Lcom/htc/cs/activity/accountactivities/CS_login;->provisioningUpdated:Z
    invoke-static {v1}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$400(Lcom/htc/cs/activity/accountactivities/CS_login;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 187
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$CheckAccountStateRunnable;->logger:Lcom/htc/cs/util/Logger;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "Provisioning failed."

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/htc/cs/util/Logger;->error([Ljava/lang/Object;)V

    .line 188
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/htc/cs/activity/accountactivities/CS_login$CheckAccountStateRunnable;->sendMessage(I)V

    goto :goto_0

    .line 193
    :cond_5
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$CheckAccountStateRunnable;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    #getter for: Lcom/htc/cs/activity/accountactivities/CS_login;->contentObserverDeviceConfig:Lcom/htc/cs/activity/accountactivities/CS_login$ContentObserverDeviceConfig;
    invoke-static {v1}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$100(Lcom/htc/cs/activity/accountactivities/CS_login;)Lcom/htc/cs/activity/accountactivities/CS_login$ContentObserverDeviceConfig;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 194
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$CheckAccountStateRunnable;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    invoke-virtual {v1}, Lcom/htc/cs/activity/accountactivities/CS_login;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login$CheckAccountStateRunnable;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    #getter for: Lcom/htc/cs/activity/accountactivities/CS_login;->contentObserverDeviceConfig:Lcom/htc/cs/activity/accountactivities/CS_login$ContentObserverDeviceConfig;
    invoke-static {v2}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$100(Lcom/htc/cs/activity/accountactivities/CS_login;)Lcom/htc/cs/activity/accountactivities/CS_login$ContentObserverDeviceConfig;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 202
    .end local v11           #time:I
    :cond_6
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$CheckAccountStateRunnable;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    invoke-static {v1}, Lcom/htc/cs/util/CSDatabaseUtil;->updateURL(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    .line 203
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$CheckAccountStateRunnable;->logger:Lcom/htc/cs/util/Logger;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "Update URL failed."

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/htc/cs/util/Logger;->error([Ljava/lang/Object;)V

    .line 204
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/htc/cs/activity/accountactivities/CS_login$CheckAccountStateRunnable;->sendMessage(I)V

    goto/16 :goto_0

    .line 209
    :cond_7
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    .line 210
    .local v10, retry:Ljava/lang/Boolean;
    :goto_2
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 212
    const/4 v1, 0x0

    :try_start_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    .line 213
    new-instance v0, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;

    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$CheckAccountStateRunnable;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    invoke-virtual {v1}, Lcom/htc/cs/activity/accountactivities/CS_login;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cs/util/CSUserPreferenceUtil;->getServerName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login$CheckAccountStateRunnable;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    invoke-virtual {v2}, Lcom/htc/cs/activity/accountactivities/CS_login;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/cs/util/CSUserPreferenceUtil;->getCMSURI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/htc/cs/activity/accountactivities/CS_login$CheckAccountStateRunnable;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    invoke-virtual {v4}, Lcom/htc/cs/activity/accountactivities/CS_login;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/cs/util/CSUserPreferenceUtil;->getPhoneUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/cs/activity/accountactivities/CS_login$CheckAccountStateRunnable;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    invoke-virtual {v5}, Lcom/htc/cs/activity/accountactivities/CS_login;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/cs/util/CSUserPreferenceUtil;->getEmail(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$500()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/cs/activity/accountactivities/CS_login$CheckAccountStateRunnable;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    invoke-virtual {v7}, Lcom/htc/cs/activity/accountactivities/CS_login;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/util/UUID;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 224
    .local v0, restServicesProxy:Lcom/htc/cscore/restapi/proxy/RestServicesProxy;
    if-eqz v0, :cond_8

    .line 225
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$CheckAccountStateRunnable;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    #getter for: Lcom/htc/cs/activity/accountactivities/CS_login;->serviceBinder:Lcom/htc/cs/service/ConnectedService;
    invoke-static {v1}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$600(Lcom/htc/cs/activity/accountactivities/CS_login;)Lcom/htc/cs/service/ConnectedService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cs/service/ConnectedService;->readServerTime()V

    .line 226
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$CheckAccountStateRunnable;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    invoke-virtual {v1}, Lcom/htc/cs/activity/accountactivities/CS_login;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/util/CSUtil;->getAccountID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login$CheckAccountStateRunnable;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    invoke-virtual {v2}, Lcom/htc/cs/activity/accountactivities/CS_login;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/cscore/util/CSUtil;->getDeviceID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/cs/activity/accountactivities/CS_login$CheckAccountStateRunnable;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    invoke-virtual {v3}, Lcom/htc/cs/activity/accountactivities/CS_login;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/cscore/util/CSUtil;->getAuthTicket(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/cs/activity/accountactivities/CS_login$CheckAccountStateRunnable;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    invoke-virtual {v4}, Lcom/htc/cs/activity/accountactivities/CS_login;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/cs/activity/accountactivities/CS_login$CheckAccountStateRunnable;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    invoke-virtual {v5}, Lcom/htc/cs/activity/accountactivities/CS_login;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->HandsetLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageManager;)Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;

    .line 240
    :cond_8
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$CheckAccountStateRunnable;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/htc/cs/activity/accountactivities/CS_login;->getRegion(I)V
    :try_end_1
    .catch Lcom/htc/cscore/restapi/exceptions/CSException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    .line 242
    .end local v0           #restServicesProxy:Lcom/htc/cscore/restapi/proxy/RestServicesProxy;
    :catch_1
    move-exception v9

    .line 243
    .local v9, e:Lcom/htc/cscore/restapi/exceptions/CSException;
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$CheckAccountStateRunnable;->logger:Lcom/htc/cs/util/Logger;

    invoke-virtual {v1, v9}, Lcom/htc/cs/util/Logger;->exception(Ljava/lang/Throwable;)V

    .line 245
    invoke-virtual {v9}, Lcom/htc/cscore/restapi/exceptions/CSException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/htc/cscore/restapi/exceptions/MissingDeviceException;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 247
    const/16 v1, 0x16

    invoke-direct {p0, v1}, Lcom/htc/cs/activity/accountactivities/CS_login$CheckAccountStateRunnable;->sendMessage(I)V

    .line 271
    :goto_3
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$CheckAccountStateRunnable;->logger:Lcom/htc/cs/util/Logger;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "retry =  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/htc/cs/util/Logger;->debug([Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 249
    :cond_9
    invoke-virtual {v9}, Lcom/htc/cscore/restapi/exceptions/CSException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/htc/cscore/restapi/exceptions/WrongDataCenterException;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 251
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$CheckAccountStateRunnable;->logger:Lcom/htc/cs/util/Logger;

    invoke-virtual {v9}, Lcom/htc/cscore/restapi/exceptions/CSException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/cs/util/Logger;->exception(Ljava/lang/Throwable;)V

    .line 252
    invoke-virtual {v9}, Lcom/htc/cscore/restapi/exceptions/CSException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v12

    check-cast v12, Lcom/htc/cscore/restapi/exceptions/WebException;

    .line 254
    .local v12, webException:Lcom/htc/cscore/restapi/exceptions/WebException;
    invoke-virtual {v12}, Lcom/htc/cscore/restapi/exceptions/WebException;->getCustomErrorMessage()Lcom/htc/cscore/restapi/exceptions/CustomErrorMessage;

    move-result-object v8

    .line 256
    .local v8, cem:Lcom/htc/cscore/restapi/exceptions/CustomErrorMessage;
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$CheckAccountStateRunnable;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    invoke-virtual {v1}, Lcom/htc/cs/activity/accountactivities/CS_login;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, v8, Lcom/htc/cscore/restapi/exceptions/CustomErrorMessage;->ErrorString:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/htc/cs/util/CSUserPreferenceUtil;->setServeName(Landroid/content/Context;Ljava/lang/String;)V

    .line 258
    iget-object v1, v8, Lcom/htc/cscore/restapi/exceptions/CustomErrorMessage;->ErrorString:Ljava/lang/String;

    sput-object v1, Lcom/htc/cs/util/Keys;->SERVER_URL:Ljava/lang/String;

    .line 259
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$CheckAccountStateRunnable;->logger:Lcom/htc/cs/util/Logger;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "DataCenter Changed URL = "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, v8, Lcom/htc/cscore/restapi/exceptions/CustomErrorMessage;->ErrorString:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/htc/cs/util/Logger;->debug([Ljava/lang/Object;)V

    .line 261
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    .line 264
    goto :goto_3

    .end local v8           #cem:Lcom/htc/cscore/restapi/exceptions/CustomErrorMessage;
    .end local v12           #webException:Lcom/htc/cscore/restapi/exceptions/WebException;
    :cond_a
    invoke-static {v9}, Lcom/htc/cscore/util/CSUtil;->getExceptionErrorCode(Lcom/htc/cscore/restapi/exceptions/CSException;)Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    move-result-object v1

    sget-object v2, Lcom/htc/cscore/restapi/exceptions/ErrorCode;->EmailNotVerified:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    if-ne v1, v2, :cond_b

    .line 265
    const/16 v1, 0x17

    invoke-direct {p0, v1}, Lcom/htc/cs/activity/accountactivities/CS_login$CheckAccountStateRunnable;->sendMessage(I)V

    goto :goto_3

    .line 268
    :cond_b
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/htc/cs/activity/accountactivities/CS_login$CheckAccountStateRunnable;->sendMessage(I)V

    goto :goto_3
.end method

.class Lcom/htc/android/mail/mailservice/MailService$RequestHandler;
.super Lcom/htc/android/mail/MailRequestHandler;
.source "MailService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/mailservice/MailService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RequestHandler"
.end annotation


# instance fields
.field private id:J

.field private mRequestController:Lcom/htc/android/mail/AbsRequestController;

.field final synthetic this$0:Lcom/htc/android/mail/mailservice/MailService;


# direct methods
.method public constructor <init>(Lcom/htc/android/mail/mailservice/MailService;J)V
    .locals 2
    .parameter
    .parameter "id"

    .prologue
    .line 1102
    iput-object p1, p0, Lcom/htc/android/mail/mailservice/MailService$RequestHandler;->this$0:Lcom/htc/android/mail/mailservice/MailService;

    invoke-direct {p0}, Lcom/htc/android/mail/MailRequestHandler;-><init>()V

    .line 1098
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/android/mail/mailservice/MailService$RequestHandler;->id:J

    .line 1103
    iput-wide p2, p0, Lcom/htc/android/mail/mailservice/MailService$RequestHandler;->id:J

    .line 1104
    return-void
.end method

.method public constructor <init>(Lcom/htc/android/mail/mailservice/MailService;JLandroid/os/Looper;)V
    .locals 2
    .parameter
    .parameter "id"
    .parameter "looper"

    .prologue
    .line 1106
    iput-object p1, p0, Lcom/htc/android/mail/mailservice/MailService$RequestHandler;->this$0:Lcom/htc/android/mail/mailservice/MailService;

    .line 1107
    invoke-direct {p0, p4}, Lcom/htc/android/mail/MailRequestHandler;-><init>(Landroid/os/Looper;)V

    .line 1098
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/android/mail/mailservice/MailService$RequestHandler;->id:J

    .line 1108
    iput-wide p2, p0, Lcom/htc/android/mail/mailservice/MailService$RequestHandler;->id:J

    .line 1109
    return-void
.end method


# virtual methods
.method public onRefreshComplete(Lcom/htc/android/mail/Account;Lcom/htc/android/mail/Request;Landroid/os/Message;)V
    .locals 12
    .parameter "account"
    .parameter "r"
    .parameter "msg"

    .prologue
    .line 1117
    if-nez p1, :cond_1

    .line 1172
    :cond_0
    :goto_0
    return-void

    .line 1118
    :cond_1
    invoke-virtual {p1}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v7

    iget-wide v9, p0, Lcom/htc/android/mail/mailservice/MailService$RequestHandler;->id:J

    cmp-long v7, v7, v9

    if-nez v7, :cond_0

    .line 1120
    :try_start_0
    invoke-static {}, Lcom/htc/android/mail/mailservice/MailService;->access$400()Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "MailService"

    const-string v8, "onRefreshComplete"

    invoke-static {v7, v8}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1122
    :cond_2
    invoke-static {}, Lcom/htc/android/mail/mailservice/MailService;->access$400()Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "MailService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "refresh complete:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v9, p0, Lcom/htc/android/mail/mailservice/MailService$RequestHandler;->id:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1123
    :cond_3
    if-eqz p3, :cond_4

    invoke-virtual {p3}, Landroid/os/Message;->getData()Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    if-nez v7, :cond_9

    .line 1136
    :cond_4
    iget-object v7, p0, Lcom/htc/android/mail/mailservice/MailService$RequestHandler;->this$0:Lcom/htc/android/mail/mailservice/MailService;

    #getter for: Lcom/htc/android/mail/mailservice/MailService;->mPowerManagerService:Landroid/os/IPowerManager;
    invoke-static {v7}, Lcom/htc/android/mail/mailservice/MailService;->access$1300(Lcom/htc/android/mail/mailservice/MailService;)Landroid/os/IPowerManager;

    move-result-object v7

    if-eqz v7, :cond_18

    .line 1138
    :try_start_1
    iget-object v7, p0, Lcom/htc/android/mail/mailservice/MailService$RequestHandler;->this$0:Lcom/htc/android/mail/mailservice/MailService;

    #getter for: Lcom/htc/android/mail/mailservice/MailService;->mPowerManagerService:Landroid/os/IPowerManager;
    invoke-static {v7}, Lcom/htc/android/mail/mailservice/MailService;->access$1300(Lcom/htc/android/mail/mailservice/MailService;)Landroid/os/IPowerManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/os/IPowerManager;->timeSinceScreenOn()J

    move-result-wide v4

    .line 1139
    .local v4, time:J
    iget-object v8, p0, Lcom/htc/android/mail/mailservice/MailService$RequestHandler;->this$0:Lcom/htc/android/mail/mailservice/MailService;

    const-wide/16 v9, 0x0

    cmp-long v7, v4, v9

    if-nez v7, :cond_1a

    const/4 v7, 0x1

    :goto_1
    #setter for: Lcom/htc/android/mail/mailservice/MailService;->mIsScreenOn:Z
    invoke-static {v8, v7}, Lcom/htc/android/mail/mailservice/MailService;->access$1402(Lcom/htc/android/mail/mailservice/MailService;Z)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1148
    .end local v4           #time:J
    :cond_5
    :goto_2
    invoke-static {}, Lcom/htc/android/mail/mailservice/MailService;->access$400()Z

    move-result v7

    if-eqz v7, :cond_6

    const-string v7, "MailService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mWasWakeupWifi is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lcom/htc/android/mail/mailservice/MailService;->access$1500()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mIsScreenOn is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/android/mail/mailservice/MailService$RequestHandler;->this$0:Lcom/htc/android/mail/mailservice/MailService;

    #getter for: Lcom/htc/android/mail/mailservice/MailService;->mIsScreenOn:Z
    invoke-static {v9}, Lcom/htc/android/mail/mailservice/MailService;->access$1400(Lcom/htc/android/mail/mailservice/MailService;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mWasScreenOn is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/android/mail/mailservice/MailService$RequestHandler;->this$0:Lcom/htc/android/mail/mailservice/MailService;

    #getter for: Lcom/htc/android/mail/mailservice/MailService;->mWasScreenOn:Z
    invoke-static {v9}, Lcom/htc/android/mail/mailservice/MailService;->access$1600(Lcom/htc/android/mail/mailservice/MailService;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1149
    :cond_6
    invoke-static {}, Lcom/htc/android/mail/mailservice/MailService;->access$1500()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1150
    iget-object v7, p0, Lcom/htc/android/mail/mailservice/MailService$RequestHandler;->this$0:Lcom/htc/android/mail/mailservice/MailService;

    #getter for: Lcom/htc/android/mail/mailservice/MailService;->mWasScreenOn:Z
    invoke-static {v7}, Lcom/htc/android/mail/mailservice/MailService;->access$1600(Lcom/htc/android/mail/mailservice/MailService;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 1151
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.WIFIIDLE"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1152
    .local v6, wifiIDle:Landroid/content/Intent;
    iget-object v7, p0, Lcom/htc/android/mail/mailservice/MailService$RequestHandler;->this$0:Lcom/htc/android/mail/mailservice/MailService;

    invoke-virtual {v7, v6}, Lcom/htc/android/mail/mailservice/MailService;->sendBroadcast(Landroid/content/Intent;)V

    .line 1154
    .end local v6           #wifiIDle:Landroid/content/Intent;
    :cond_7
    const/4 v7, 0x0

    invoke-static {v7}, Lcom/htc/android/mail/mailservice/MailService;->access$1502(Z)Z

    .line 1156
    :cond_8
    iget-object v7, p0, Lcom/htc/android/mail/mailservice/MailService$RequestHandler;->this$0:Lcom/htc/android/mail/mailservice/MailService;

    const/4 v8, 0x0

    #setter for: Lcom/htc/android/mail/mailservice/MailService;->mWasScreenOn:Z
    invoke-static {v7, v8}, Lcom/htc/android/mail/mailservice/MailService;->access$1602(Lcom/htc/android/mail/mailservice/MailService;Z)Z

    .line 1158
    iget-object v7, p0, Lcom/htc/android/mail/mailservice/MailService$RequestHandler;->mRequestController:Lcom/htc/android/mail/AbsRequestController;

    if-eqz v7, :cond_0

    if-eqz p2, :cond_0

    iget-object v7, p2, Lcom/htc/android/mail/Request;->weakHandler:Ljava/lang/ref/WeakReference;

    if-eqz v7, :cond_0

    .line 1159
    iget-object v7, p2, Lcom/htc/android/mail/Request;->weakHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    .line 1160
    .local v1, handler:Landroid/os/Handler;
    if-eqz v1, :cond_0

    if-ne v1, p0, :cond_0

    .line 1161
    iget-object v7, p0, Lcom/htc/android/mail/mailservice/MailService$RequestHandler;->mRequestController:Lcom/htc/android/mail/AbsRequestController;

    iget-object v8, p2, Lcom/htc/android/mail/Request;->weakHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7, v8}, Lcom/htc/android/mail/AbsRequestController;->removeWeakHandler(Ljava/lang/ref/WeakReference;)V

    .line 1162
    iget-object v7, p0, Lcom/htc/android/mail/mailservice/MailService$RequestHandler;->mRequestController:Lcom/htc/android/mail/AbsRequestController;

    iget-object v8, p2, Lcom/htc/android/mail/Request;->weakHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7, p1, v8}, Lcom/htc/android/mail/AbsRequestController;->unregisterWeakMailRequestHandler(Lcom/htc/android/mail/Account;Ljava/lang/ref/WeakReference;)V

    .line 1163
    iget v7, p2, Lcom/htc/android/mail/Request;->serviceStartId:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_0

    .line 1164
    iget-object v7, p0, Lcom/htc/android/mail/mailservice/MailService$RequestHandler;->this$0:Lcom/htc/android/mail/mailservice/MailService;

    #getter for: Lcom/htc/android/mail/mailservice/MailService;->mRequestHandlerMap:Lcom/htc/android/mail/mailservice/MailService$RequestHandlerMap;
    invoke-static {v7}, Lcom/htc/android/mail/mailservice/MailService;->access$1700(Lcom/htc/android/mail/mailservice/MailService;)Lcom/htc/android/mail/mailservice/MailService$RequestHandlerMap;

    move-result-object v7

    iget v8, p2, Lcom/htc/android/mail/Request;->serviceStartId:I

    invoke-virtual {v7, v8, v1}, Lcom/htc/android/mail/mailservice/MailService$RequestHandlerMap;->remove(ILandroid/os/Handler;)V

    .line 1165
    iget-object v7, p0, Lcom/htc/android/mail/mailservice/MailService$RequestHandler;->this$0:Lcom/htc/android/mail/mailservice/MailService;

    #getter for: Lcom/htc/android/mail/mailservice/MailService;->mRequestHandlerMap:Lcom/htc/android/mail/mailservice/MailService$RequestHandlerMap;
    invoke-static {v7}, Lcom/htc/android/mail/mailservice/MailService;->access$1700(Lcom/htc/android/mail/mailservice/MailService;)Lcom/htc/android/mail/mailservice/MailService$RequestHandlerMap;

    move-result-object v7

    iget v8, p2, Lcom/htc/android/mail/Request;->serviceStartId:I

    invoke-virtual {v7, v8}, Lcom/htc/android/mail/mailservice/MailService$RequestHandlerMap;->size(I)I

    move-result v7

    if-nez v7, :cond_0

    .line 1166
    iget-object v7, p0, Lcom/htc/android/mail/mailservice/MailService$RequestHandler;->this$0:Lcom/htc/android/mail/mailservice/MailService;

    #getter for: Lcom/htc/android/mail/mailservice/MailService;->mServiceIds:Lcom/htc/android/mail/mailservice/MailService$ServiceIds;
    invoke-static {v7}, Lcom/htc/android/mail/mailservice/MailService;->access$500(Lcom/htc/android/mail/mailservice/MailService;)Lcom/htc/android/mail/mailservice/MailService$ServiceIds;

    move-result-object v7

    iget v8, p2, Lcom/htc/android/mail/Request;->serviceStartId:I

    :goto_3
    invoke-virtual {v7, v8}, Lcom/htc/android/mail/mailservice/MailService$ServiceIds;->removeAndTryStop(I)V

    goto/16 :goto_0

    .line 1126
    .end local v1           #handler:Landroid/os/Handler;
    :cond_9
    :try_start_2
    iget-object v7, p0, Lcom/htc/android/mail/mailservice/MailService$RequestHandler;->this$0:Lcom/htc/android/mail/mailservice/MailService;

    invoke-virtual {p3}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "NewUnreadMail"

    const/4 v10, -0x1

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    #setter for: Lcom/htc/android/mail/mailservice/MailService;->mNewUnreadMail:I
    invoke-static {v7, v8}, Lcom/htc/android/mail/mailservice/MailService;->access$1202(Lcom/htc/android/mail/mailservice/MailService;I)I

    .line 1127
    invoke-virtual {p3}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "FirstMessageId"

    const-wide/16 v9, -0x1

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 1128
    .local v2, messageId:J
    invoke-static {}, Lcom/htc/android/mail/mailservice/MailService;->access$400()Z

    move-result v7

    if-eqz v7, :cond_a

    const-string v7, "MailService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "NewUnreadMail is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/android/mail/mailservice/MailService$RequestHandler;->this$0:Lcom/htc/android/mail/mailservice/MailService;

    #getter for: Lcom/htc/android/mail/mailservice/MailService;->mNewUnreadMail:I
    invoke-static {v9}, Lcom/htc/android/mail/mailservice/MailService;->access$1200(Lcom/htc/android/mail/mailservice/MailService;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1129
    :cond_a
    if-eqz p2, :cond_b

    iget-object v7, p2, Lcom/htc/android/mail/Request;->weakHandler:Ljava/lang/ref/WeakReference;

    if-eqz v7, :cond_b

    .line 1130
    iget-object v7, p2, Lcom/htc/android/mail/Request;->weakHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1131
    .restart local v1       #handler:Landroid/os/Handler;
    if-eqz v1, :cond_b

    if-ne v1, p0, :cond_b

    .line 1136
    .end local v1           #handler:Landroid/os/Handler;
    :cond_b
    iget-object v7, p0, Lcom/htc/android/mail/mailservice/MailService$RequestHandler;->this$0:Lcom/htc/android/mail/mailservice/MailService;

    #getter for: Lcom/htc/android/mail/mailservice/MailService;->mPowerManagerService:Landroid/os/IPowerManager;
    invoke-static {v7}, Lcom/htc/android/mail/mailservice/MailService;->access$1300(Lcom/htc/android/mail/mailservice/MailService;)Landroid/os/IPowerManager;

    move-result-object v7

    if-eqz v7, :cond_1b

    .line 1138
    :try_start_3
    iget-object v7, p0, Lcom/htc/android/mail/mailservice/MailService$RequestHandler;->this$0:Lcom/htc/android/mail/mailservice/MailService;

    #getter for: Lcom/htc/android/mail/mailservice/MailService;->mPowerManagerService:Landroid/os/IPowerManager;
    invoke-static {v7}, Lcom/htc/android/mail/mailservice/MailService;->access$1300(Lcom/htc/android/mail/mailservice/MailService;)Landroid/os/IPowerManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/os/IPowerManager;->timeSinceScreenOn()J

    move-result-wide v4

    .line 1139
    .restart local v4       #time:J
    iget-object v8, p0, Lcom/htc/android/mail/mailservice/MailService$RequestHandler;->this$0:Lcom/htc/android/mail/mailservice/MailService;

    const-wide/16 v9, 0x0

    cmp-long v7, v4, v9

    if-nez v7, :cond_1d

    const/4 v7, 0x1

    :goto_4
    #setter for: Lcom/htc/android/mail/mailservice/MailService;->mIsScreenOn:Z
    invoke-static {v8, v7}, Lcom/htc/android/mail/mailservice/MailService;->access$1402(Lcom/htc/android/mail/mailservice/MailService;Z)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1148
    .end local v4           #time:J
    :cond_c
    :goto_5
    invoke-static {}, Lcom/htc/android/mail/mailservice/MailService;->access$400()Z

    move-result v7

    if-eqz v7, :cond_d

    const-string v7, "MailService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mWasWakeupWifi is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lcom/htc/android/mail/mailservice/MailService;->access$1500()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mIsScreenOn is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/android/mail/mailservice/MailService$RequestHandler;->this$0:Lcom/htc/android/mail/mailservice/MailService;

    #getter for: Lcom/htc/android/mail/mailservice/MailService;->mIsScreenOn:Z
    invoke-static {v9}, Lcom/htc/android/mail/mailservice/MailService;->access$1400(Lcom/htc/android/mail/mailservice/MailService;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mWasScreenOn is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/android/mail/mailservice/MailService$RequestHandler;->this$0:Lcom/htc/android/mail/mailservice/MailService;

    #getter for: Lcom/htc/android/mail/mailservice/MailService;->mWasScreenOn:Z
    invoke-static {v9}, Lcom/htc/android/mail/mailservice/MailService;->access$1600(Lcom/htc/android/mail/mailservice/MailService;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1149
    :cond_d
    invoke-static {}, Lcom/htc/android/mail/mailservice/MailService;->access$1500()Z

    move-result v7

    if-eqz v7, :cond_f

    .line 1150
    iget-object v7, p0, Lcom/htc/android/mail/mailservice/MailService$RequestHandler;->this$0:Lcom/htc/android/mail/mailservice/MailService;

    #getter for: Lcom/htc/android/mail/mailservice/MailService;->mWasScreenOn:Z
    invoke-static {v7}, Lcom/htc/android/mail/mailservice/MailService;->access$1600(Lcom/htc/android/mail/mailservice/MailService;)Z

    move-result v7

    if-nez v7, :cond_e

    .line 1151
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.WIFIIDLE"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1152
    .restart local v6       #wifiIDle:Landroid/content/Intent;
    iget-object v7, p0, Lcom/htc/android/mail/mailservice/MailService$RequestHandler;->this$0:Lcom/htc/android/mail/mailservice/MailService;

    invoke-virtual {v7, v6}, Lcom/htc/android/mail/mailservice/MailService;->sendBroadcast(Landroid/content/Intent;)V

    .line 1154
    .end local v6           #wifiIDle:Landroid/content/Intent;
    :cond_e
    const/4 v7, 0x0

    invoke-static {v7}, Lcom/htc/android/mail/mailservice/MailService;->access$1502(Z)Z

    .line 1156
    :cond_f
    iget-object v7, p0, Lcom/htc/android/mail/mailservice/MailService$RequestHandler;->this$0:Lcom/htc/android/mail/mailservice/MailService;

    const/4 v8, 0x0

    #setter for: Lcom/htc/android/mail/mailservice/MailService;->mWasScreenOn:Z
    invoke-static {v7, v8}, Lcom/htc/android/mail/mailservice/MailService;->access$1602(Lcom/htc/android/mail/mailservice/MailService;Z)Z

    .line 1158
    iget-object v7, p0, Lcom/htc/android/mail/mailservice/MailService$RequestHandler;->mRequestController:Lcom/htc/android/mail/AbsRequestController;

    if-eqz v7, :cond_0

    if-eqz p2, :cond_0

    iget-object v7, p2, Lcom/htc/android/mail/Request;->weakHandler:Ljava/lang/ref/WeakReference;

    if-eqz v7, :cond_0

    .line 1159
    iget-object v7, p2, Lcom/htc/android/mail/Request;->weakHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    .line 1160
    .restart local v1       #handler:Landroid/os/Handler;
    if-eqz v1, :cond_0

    if-ne v1, p0, :cond_0

    .line 1161
    iget-object v7, p0, Lcom/htc/android/mail/mailservice/MailService$RequestHandler;->mRequestController:Lcom/htc/android/mail/AbsRequestController;

    iget-object v8, p2, Lcom/htc/android/mail/Request;->weakHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7, v8}, Lcom/htc/android/mail/AbsRequestController;->removeWeakHandler(Ljava/lang/ref/WeakReference;)V

    .line 1162
    iget-object v7, p0, Lcom/htc/android/mail/mailservice/MailService$RequestHandler;->mRequestController:Lcom/htc/android/mail/AbsRequestController;

    iget-object v8, p2, Lcom/htc/android/mail/Request;->weakHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7, p1, v8}, Lcom/htc/android/mail/AbsRequestController;->unregisterWeakMailRequestHandler(Lcom/htc/android/mail/Account;Ljava/lang/ref/WeakReference;)V

    .line 1163
    iget v7, p2, Lcom/htc/android/mail/Request;->serviceStartId:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_0

    .line 1164
    iget-object v7, p0, Lcom/htc/android/mail/mailservice/MailService$RequestHandler;->this$0:Lcom/htc/android/mail/mailservice/MailService;

    #getter for: Lcom/htc/android/mail/mailservice/MailService;->mRequestHandlerMap:Lcom/htc/android/mail/mailservice/MailService$RequestHandlerMap;
    invoke-static {v7}, Lcom/htc/android/mail/mailservice/MailService;->access$1700(Lcom/htc/android/mail/mailservice/MailService;)Lcom/htc/android/mail/mailservice/MailService$RequestHandlerMap;

    move-result-object v7

    iget v8, p2, Lcom/htc/android/mail/Request;->serviceStartId:I

    invoke-virtual {v7, v8, v1}, Lcom/htc/android/mail/mailservice/MailService$RequestHandlerMap;->remove(ILandroid/os/Handler;)V

    .line 1165
    iget-object v7, p0, Lcom/htc/android/mail/mailservice/MailService$RequestHandler;->this$0:Lcom/htc/android/mail/mailservice/MailService;

    #getter for: Lcom/htc/android/mail/mailservice/MailService;->mRequestHandlerMap:Lcom/htc/android/mail/mailservice/MailService$RequestHandlerMap;
    invoke-static {v7}, Lcom/htc/android/mail/mailservice/MailService;->access$1700(Lcom/htc/android/mail/mailservice/MailService;)Lcom/htc/android/mail/mailservice/MailService$RequestHandlerMap;

    move-result-object v7

    iget v8, p2, Lcom/htc/android/mail/Request;->serviceStartId:I

    invoke-virtual {v7, v8}, Lcom/htc/android/mail/mailservice/MailService$RequestHandlerMap;->size(I)I

    move-result v7

    if-nez v7, :cond_0

    .line 1166
    iget-object v7, p0, Lcom/htc/android/mail/mailservice/MailService$RequestHandler;->this$0:Lcom/htc/android/mail/mailservice/MailService;

    #getter for: Lcom/htc/android/mail/mailservice/MailService;->mServiceIds:Lcom/htc/android/mail/mailservice/MailService$ServiceIds;
    invoke-static {v7}, Lcom/htc/android/mail/mailservice/MailService;->access$500(Lcom/htc/android/mail/mailservice/MailService;)Lcom/htc/android/mail/mailservice/MailService$ServiceIds;

    move-result-object v7

    iget v8, p2, Lcom/htc/android/mail/Request;->serviceStartId:I

    goto/16 :goto_3

    .line 1136
    .end local v1           #handler:Landroid/os/Handler;
    .end local v2           #messageId:J
    :catchall_0
    move-exception v7

    iget-object v8, p0, Lcom/htc/android/mail/mailservice/MailService$RequestHandler;->this$0:Lcom/htc/android/mail/mailservice/MailService;

    #getter for: Lcom/htc/android/mail/mailservice/MailService;->mPowerManagerService:Landroid/os/IPowerManager;
    invoke-static {v8}, Lcom/htc/android/mail/mailservice/MailService;->access$1300(Lcom/htc/android/mail/mailservice/MailService;)Landroid/os/IPowerManager;

    move-result-object v8

    if-eqz v8, :cond_15

    .line 1138
    :try_start_4
    iget-object v8, p0, Lcom/htc/android/mail/mailservice/MailService$RequestHandler;->this$0:Lcom/htc/android/mail/mailservice/MailService;

    #getter for: Lcom/htc/android/mail/mailservice/MailService;->mPowerManagerService:Landroid/os/IPowerManager;
    invoke-static {v8}, Lcom/htc/android/mail/mailservice/MailService;->access$1300(Lcom/htc/android/mail/mailservice/MailService;)Landroid/os/IPowerManager;

    move-result-object v8

    invoke-interface {v8}, Landroid/os/IPowerManager;->timeSinceScreenOn()J

    move-result-wide v4

    .line 1139
    .restart local v4       #time:J
    iget-object v9, p0, Lcom/htc/android/mail/mailservice/MailService$RequestHandler;->this$0:Lcom/htc/android/mail/mailservice/MailService;

    const-wide/16 v10, 0x0

    cmp-long v8, v4, v10

    if-nez v8, :cond_17

    const/4 v8, 0x1

    :goto_6
    #setter for: Lcom/htc/android/mail/mailservice/MailService;->mIsScreenOn:Z
    invoke-static {v9, v8}, Lcom/htc/android/mail/mailservice/MailService;->access$1402(Lcom/htc/android/mail/mailservice/MailService;Z)Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1148
    .end local v4           #time:J
    :cond_10
    :goto_7
    invoke-static {}, Lcom/htc/android/mail/mailservice/MailService;->access$400()Z

    move-result v8

    if-eqz v8, :cond_11

    const-string v8, "MailService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mWasWakeupWifi is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Lcom/htc/android/mail/mailservice/MailService;->access$1500()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mIsScreenOn is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/android/mail/mailservice/MailService$RequestHandler;->this$0:Lcom/htc/android/mail/mailservice/MailService;

    #getter for: Lcom/htc/android/mail/mailservice/MailService;->mIsScreenOn:Z
    invoke-static {v10}, Lcom/htc/android/mail/mailservice/MailService;->access$1400(Lcom/htc/android/mail/mailservice/MailService;)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mWasScreenOn is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/android/mail/mailservice/MailService$RequestHandler;->this$0:Lcom/htc/android/mail/mailservice/MailService;

    #getter for: Lcom/htc/android/mail/mailservice/MailService;->mWasScreenOn:Z
    invoke-static {v10}, Lcom/htc/android/mail/mailservice/MailService;->access$1600(Lcom/htc/android/mail/mailservice/MailService;)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1149
    :cond_11
    invoke-static {}, Lcom/htc/android/mail/mailservice/MailService;->access$1500()Z

    move-result v8

    if-eqz v8, :cond_13

    .line 1150
    iget-object v8, p0, Lcom/htc/android/mail/mailservice/MailService$RequestHandler;->this$0:Lcom/htc/android/mail/mailservice/MailService;

    #getter for: Lcom/htc/android/mail/mailservice/MailService;->mWasScreenOn:Z
    invoke-static {v8}, Lcom/htc/android/mail/mailservice/MailService;->access$1600(Lcom/htc/android/mail/mailservice/MailService;)Z

    move-result v8

    if-nez v8, :cond_12

    .line 1151
    new-instance v6, Landroid/content/Intent;

    const-string v8, "android.intent.action.WIFIIDLE"

    invoke-direct {v6, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1152
    .restart local v6       #wifiIDle:Landroid/content/Intent;
    iget-object v8, p0, Lcom/htc/android/mail/mailservice/MailService$RequestHandler;->this$0:Lcom/htc/android/mail/mailservice/MailService;

    invoke-virtual {v8, v6}, Lcom/htc/android/mail/mailservice/MailService;->sendBroadcast(Landroid/content/Intent;)V

    .line 1154
    .end local v6           #wifiIDle:Landroid/content/Intent;
    :cond_12
    const/4 v8, 0x0

    invoke-static {v8}, Lcom/htc/android/mail/mailservice/MailService;->access$1502(Z)Z

    .line 1156
    :cond_13
    iget-object v8, p0, Lcom/htc/android/mail/mailservice/MailService$RequestHandler;->this$0:Lcom/htc/android/mail/mailservice/MailService;

    const/4 v9, 0x0

    #setter for: Lcom/htc/android/mail/mailservice/MailService;->mWasScreenOn:Z
    invoke-static {v8, v9}, Lcom/htc/android/mail/mailservice/MailService;->access$1602(Lcom/htc/android/mail/mailservice/MailService;Z)Z

    .line 1158
    iget-object v8, p0, Lcom/htc/android/mail/mailservice/MailService$RequestHandler;->mRequestController:Lcom/htc/android/mail/AbsRequestController;

    if-eqz v8, :cond_14

    if-eqz p2, :cond_14

    iget-object v8, p2, Lcom/htc/android/mail/Request;->weakHandler:Ljava/lang/ref/WeakReference;

    if-eqz v8, :cond_14

    .line 1159
    iget-object v8, p2, Lcom/htc/android/mail/Request;->weakHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    .line 1160
    .restart local v1       #handler:Landroid/os/Handler;
    if-eqz v1, :cond_14

    if-ne v1, p0, :cond_14

    .line 1161
    iget-object v8, p0, Lcom/htc/android/mail/mailservice/MailService$RequestHandler;->mRequestController:Lcom/htc/android/mail/AbsRequestController;

    iget-object v9, p2, Lcom/htc/android/mail/Request;->weakHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8, v9}, Lcom/htc/android/mail/AbsRequestController;->removeWeakHandler(Ljava/lang/ref/WeakReference;)V

    .line 1162
    iget-object v8, p0, Lcom/htc/android/mail/mailservice/MailService$RequestHandler;->mRequestController:Lcom/htc/android/mail/AbsRequestController;

    iget-object v9, p2, Lcom/htc/android/mail/Request;->weakHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8, p1, v9}, Lcom/htc/android/mail/AbsRequestController;->unregisterWeakMailRequestHandler(Lcom/htc/android/mail/Account;Ljava/lang/ref/WeakReference;)V

    .line 1163
    iget v8, p2, Lcom/htc/android/mail/Request;->serviceStartId:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_14

    .line 1164
    iget-object v8, p0, Lcom/htc/android/mail/mailservice/MailService$RequestHandler;->this$0:Lcom/htc/android/mail/mailservice/MailService;

    #getter for: Lcom/htc/android/mail/mailservice/MailService;->mRequestHandlerMap:Lcom/htc/android/mail/mailservice/MailService$RequestHandlerMap;
    invoke-static {v8}, Lcom/htc/android/mail/mailservice/MailService;->access$1700(Lcom/htc/android/mail/mailservice/MailService;)Lcom/htc/android/mail/mailservice/MailService$RequestHandlerMap;

    move-result-object v8

    iget v9, p2, Lcom/htc/android/mail/Request;->serviceStartId:I

    invoke-virtual {v8, v9, v1}, Lcom/htc/android/mail/mailservice/MailService$RequestHandlerMap;->remove(ILandroid/os/Handler;)V

    .line 1165
    iget-object v8, p0, Lcom/htc/android/mail/mailservice/MailService$RequestHandler;->this$0:Lcom/htc/android/mail/mailservice/MailService;

    #getter for: Lcom/htc/android/mail/mailservice/MailService;->mRequestHandlerMap:Lcom/htc/android/mail/mailservice/MailService$RequestHandlerMap;
    invoke-static {v8}, Lcom/htc/android/mail/mailservice/MailService;->access$1700(Lcom/htc/android/mail/mailservice/MailService;)Lcom/htc/android/mail/mailservice/MailService$RequestHandlerMap;

    move-result-object v8

    iget v9, p2, Lcom/htc/android/mail/Request;->serviceStartId:I

    invoke-virtual {v8, v9}, Lcom/htc/android/mail/mailservice/MailService$RequestHandlerMap;->size(I)I

    move-result v8

    if-nez v8, :cond_14

    .line 1166
    iget-object v8, p0, Lcom/htc/android/mail/mailservice/MailService$RequestHandler;->this$0:Lcom/htc/android/mail/mailservice/MailService;

    #getter for: Lcom/htc/android/mail/mailservice/MailService;->mServiceIds:Lcom/htc/android/mail/mailservice/MailService$ServiceIds;
    invoke-static {v8}, Lcom/htc/android/mail/mailservice/MailService;->access$500(Lcom/htc/android/mail/mailservice/MailService;)Lcom/htc/android/mail/mailservice/MailService$ServiceIds;

    move-result-object v8

    iget v9, p2, Lcom/htc/android/mail/Request;->serviceStartId:I

    invoke-virtual {v8, v9}, Lcom/htc/android/mail/mailservice/MailService$ServiceIds;->removeAndTryStop(I)V

    .line 1136
    .end local v1           #handler:Landroid/os/Handler;
    :cond_14
    throw v7

    .line 1144
    :cond_15
    invoke-static {}, Lcom/htc/android/mail/mailservice/MailService;->access$400()Z

    move-result v8

    if-eqz v8, :cond_16

    const-string v8, "MailService"

    const-string v9, "mPowerManagerService is null"

    invoke-static {v8, v9}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1145
    :cond_16
    iget-object v8, p0, Lcom/htc/android/mail/mailservice/MailService$RequestHandler;->this$0:Lcom/htc/android/mail/mailservice/MailService;

    const/4 v9, 0x0

    #setter for: Lcom/htc/android/mail/mailservice/MailService;->mIsScreenOn:Z
    invoke-static {v8, v9}, Lcom/htc/android/mail/mailservice/MailService;->access$1402(Lcom/htc/android/mail/mailservice/MailService;Z)Z

    goto/16 :goto_7

    .line 1140
    :catch_0
    move-exception v0

    .line 1141
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Lcom/htc/android/mail/mailservice/MailService;->access$400()Z

    move-result v8

    if-eqz v8, :cond_10

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_7

    .line 1139
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v4       #time:J
    :cond_17
    const/4 v8, 0x0

    goto/16 :goto_6

    .line 1144
    .end local v4           #time:J
    :cond_18
    invoke-static {}, Lcom/htc/android/mail/mailservice/MailService;->access$400()Z

    move-result v7

    if-eqz v7, :cond_19

    const-string v7, "MailService"

    const-string v8, "mPowerManagerService is null"

    invoke-static {v7, v8}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1145
    :cond_19
    iget-object v7, p0, Lcom/htc/android/mail/mailservice/MailService$RequestHandler;->this$0:Lcom/htc/android/mail/mailservice/MailService;

    const/4 v8, 0x0

    #setter for: Lcom/htc/android/mail/mailservice/MailService;->mIsScreenOn:Z
    invoke-static {v7, v8}, Lcom/htc/android/mail/mailservice/MailService;->access$1402(Lcom/htc/android/mail/mailservice/MailService;Z)Z

    goto/16 :goto_2

    .line 1140
    :catch_1
    move-exception v0

    .line 1141
    .restart local v0       #e:Landroid/os/RemoteException;
    invoke-static {}, Lcom/htc/android/mail/mailservice/MailService;->access$400()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_2

    .line 1139
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v4       #time:J
    :cond_1a
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 1144
    .end local v4           #time:J
    .restart local v2       #messageId:J
    :cond_1b
    invoke-static {}, Lcom/htc/android/mail/mailservice/MailService;->access$400()Z

    move-result v7

    if-eqz v7, :cond_1c

    const-string v7, "MailService"

    const-string v8, "mPowerManagerService is null"

    invoke-static {v7, v8}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1145
    :cond_1c
    iget-object v7, p0, Lcom/htc/android/mail/mailservice/MailService$RequestHandler;->this$0:Lcom/htc/android/mail/mailservice/MailService;

    const/4 v8, 0x0

    #setter for: Lcom/htc/android/mail/mailservice/MailService;->mIsScreenOn:Z
    invoke-static {v7, v8}, Lcom/htc/android/mail/mailservice/MailService;->access$1402(Lcom/htc/android/mail/mailservice/MailService;Z)Z

    goto/16 :goto_5

    .line 1140
    :catch_2
    move-exception v0

    .line 1141
    .restart local v0       #e:Landroid/os/RemoteException;
    invoke-static {}, Lcom/htc/android/mail/mailservice/MailService;->access$400()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_5

    .line 1139
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v4       #time:J
    :cond_1d
    const/4 v7, 0x0

    goto/16 :goto_4
.end method

.method public setRequestController(Lcom/htc/android/mail/AbsRequestController;)V
    .locals 0
    .parameter "requestController"

    .prologue
    .line 1112
    iput-object p1, p0, Lcom/htc/android/mail/mailservice/MailService$RequestHandler;->mRequestController:Lcom/htc/android/mail/AbsRequestController;

    .line 1113
    return-void
.end method

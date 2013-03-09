.class Lcom/htc/cs/activity/accountactivities/CS_login$WorkerHandler;
.super Landroid/os/Handler;
.source "CS_login.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cs/activity/accountactivities/CS_login;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkerHandler"
.end annotation


# static fields
.field public static final ALMOST_DONE:I = 0x402

.field public static final CHECK_ACCOUNT_STATE:I = 0x401

.field public static final CONFIRM_ACCOUNT:I = 0x3fc

.field public static final GET_REGIONS:I = 0x3fe

.field public static final GET_SECURITY_Q:I = 0x3ff

.field public static final POST_SIGN_IN_PROVISIONING:I = 0x403

.field public static final REQUEST_BINDING:I = 0x3fd

.field public static final RETRIEVE_PW:I = 0x400


# instance fields
.field private logger:Lcom/htc/cs/util/Logger;

.field final synthetic this$0:Lcom/htc/cs/activity/accountactivities/CS_login;


# direct methods
.method public constructor <init>(Lcom/htc/cs/activity/accountactivities/CS_login;Landroid/os/Looper;)V
    .locals 1
    .parameter
    .parameter "looper"

    .prologue
    .line 970
    iput-object p1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$WorkerHandler;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    .line 971
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 968
    invoke-static {p0}, Lcom/htc/cs/util/Logger;->getLogger(Ljava/lang/Object;)Lcom/htc/cs/util/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login$WorkerHandler;->logger:Lcom/htc/cs/util/Logger;

    .line 972
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 16
    .parameter "msg"

    .prologue
    .line 976
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/cs/activity/accountactivities/CS_login$WorkerHandler;->logger:Lcom/htc/cs/util/Logger;

    invoke-virtual {v12}, Lcom/htc/cs/util/Logger;->logMethodName()V

    .line 977
    const/4 v5, 0x0

    .line 978
    .local v5, endMsg:Landroid/os/Message;
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->what:I

    packed-switch v12, :pswitch_data_0

    .line 1118
    :goto_0
    return-void

    .line 980
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/cs/activity/accountactivities/CS_login$WorkerHandler;->logger:Lcom/htc/cs/util/Logger;

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const-string v15, "CONFIRM_ACCOUNT"

    aput-object v15, v13, v14

    invoke-virtual {v12, v13}, Lcom/htc/cs/util/Logger;->verbose([Ljava/lang/Object;)V

    .line 981
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v5           #endMsg:Landroid/os/Message;
    check-cast v5, Landroid/os/Message;

    .line 982
    .restart local v5       #endMsg:Landroid/os/Message;
    new-instance v3, Lcom/htc/cs/activity/accountactivities/CS_login$ConfirmAccountRunnable;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/cs/activity/accountactivities/CS_login$WorkerHandler;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    invoke-direct {v3, v12, v5}, Lcom/htc/cs/activity/accountactivities/CS_login$ConfirmAccountRunnable;-><init>(Lcom/htc/cs/activity/accountactivities/CS_login;Landroid/os/Message;)V

    .line 983
    .local v3, confirmAcct:Ljava/lang/Runnable;
    new-instance v11, Lcom/htc/cs/activity/accountactivities/CS_login$InterruptOnConnectivityChangeThread;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/cs/activity/accountactivities/CS_login$WorkerHandler;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    invoke-direct {v11, v12, v3}, Lcom/htc/cs/activity/accountactivities/CS_login$InterruptOnConnectivityChangeThread;-><init>(Lcom/htc/cs/activity/accountactivities/CS_login;Ljava/lang/Runnable;)V

    .line 985
    .local v11, thread:Lcom/htc/cs/activity/accountactivities/CS_login$InterruptOnConnectivityChangeThread;
    invoke-virtual {v11}, Lcom/htc/cs/activity/accountactivities/CS_login$InterruptOnConnectivityChangeThread;->start()V

    .line 987
    :try_start_0
    invoke-virtual {v11}, Lcom/htc/cs/activity/accountactivities/CS_login$InterruptOnConnectivityChangeThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 993
    :goto_1
    const/16 v12, 0x3fc

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/htc/cs/activity/accountactivities/CS_login$WorkerHandler;->removeMessages(I)V

    goto :goto_0

    .line 988
    :catch_0
    move-exception v4

    .line 989
    .local v4, e:Ljava/lang/InterruptedException;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/cs/activity/accountactivities/CS_login$WorkerHandler;->logger:Lcom/htc/cs/util/Logger;

    invoke-virtual {v12, v4}, Lcom/htc/cs/util/Logger;->exception(Ljava/lang/Throwable;)V

    .line 990
    const/4 v12, 0x4

    iput v12, v5, Landroid/os/Message;->arg1:I

    .line 991
    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 997
    .end local v3           #confirmAcct:Ljava/lang/Runnable;
    .end local v4           #e:Ljava/lang/InterruptedException;
    .end local v11           #thread:Lcom/htc/cs/activity/accountactivities/CS_login$InterruptOnConnectivityChangeThread;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/cs/activity/accountactivities/CS_login$WorkerHandler;->logger:Lcom/htc/cs/util/Logger;

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const-string v15, "POST_SIGN_IN_PROVISIONING"

    aput-object v15, v13, v14

    invoke-virtual {v12, v13}, Lcom/htc/cs/util/Logger;->verbose([Ljava/lang/Object;)V

    .line 999
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v5           #endMsg:Landroid/os/Message;
    check-cast v5, Landroid/os/Message;

    .line 1000
    .restart local v5       #endMsg:Landroid/os/Message;
    new-instance v8, Lcom/htc/cs/activity/accountactivities/CS_login$PostSignInProvRunnable;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/cs/activity/accountactivities/CS_login$WorkerHandler;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    invoke-direct {v8, v12, v5}, Lcom/htc/cs/activity/accountactivities/CS_login$PostSignInProvRunnable;-><init>(Lcom/htc/cs/activity/accountactivities/CS_login;Landroid/os/Message;)V

    .line 1001
    .local v8, provWAcct:Ljava/lang/Runnable;
    new-instance v11, Lcom/htc/cs/activity/accountactivities/CS_login$InterruptOnConnectivityChangeThread;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/cs/activity/accountactivities/CS_login$WorkerHandler;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    invoke-direct {v11, v12, v8}, Lcom/htc/cs/activity/accountactivities/CS_login$InterruptOnConnectivityChangeThread;-><init>(Lcom/htc/cs/activity/accountactivities/CS_login;Ljava/lang/Runnable;)V

    .line 1003
    .restart local v11       #thread:Lcom/htc/cs/activity/accountactivities/CS_login$InterruptOnConnectivityChangeThread;
    invoke-virtual {v11}, Lcom/htc/cs/activity/accountactivities/CS_login$InterruptOnConnectivityChangeThread;->start()V

    .line 1005
    :try_start_1
    invoke-virtual {v11}, Lcom/htc/cs/activity/accountactivities/CS_login$InterruptOnConnectivityChangeThread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1011
    :goto_2
    const/16 v12, 0x403

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/htc/cs/activity/accountactivities/CS_login$WorkerHandler;->removeMessages(I)V

    goto :goto_0

    .line 1006
    :catch_1
    move-exception v4

    .line 1007
    .restart local v4       #e:Ljava/lang/InterruptedException;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/cs/activity/accountactivities/CS_login$WorkerHandler;->logger:Lcom/htc/cs/util/Logger;

    invoke-virtual {v12, v4}, Lcom/htc/cs/util/Logger;->exception(Ljava/lang/Throwable;)V

    .line 1008
    const/4 v12, 0x4

    iput v12, v5, Landroid/os/Message;->arg1:I

    .line 1009
    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2

    .line 1015
    .end local v4           #e:Ljava/lang/InterruptedException;
    .end local v8           #provWAcct:Ljava/lang/Runnable;
    .end local v11           #thread:Lcom/htc/cs/activity/accountactivities/CS_login$InterruptOnConnectivityChangeThread;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/cs/activity/accountactivities/CS_login$WorkerHandler;->logger:Lcom/htc/cs/util/Logger;

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const-string v15, "ALMOST_DONE"

    aput-object v15, v13, v14

    invoke-virtual {v12, v13}, Lcom/htc/cs/util/Logger;->verbose([Ljava/lang/Object;)V

    .line 1016
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v5           #endMsg:Landroid/os/Message;
    check-cast v5, Landroid/os/Message;

    .line 1017
    .restart local v5       #endMsg:Landroid/os/Message;
    new-instance v1, Lcom/htc/cs/activity/accountactivities/CS_login$AlmostDoneRunnable;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/cs/activity/accountactivities/CS_login$WorkerHandler;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    invoke-direct {v1, v12, v5}, Lcom/htc/cs/activity/accountactivities/CS_login$AlmostDoneRunnable;-><init>(Lcom/htc/cs/activity/accountactivities/CS_login;Landroid/os/Message;)V

    .line 1018
    .local v1, almostDone:Ljava/lang/Runnable;
    new-instance v11, Lcom/htc/cs/activity/accountactivities/CS_login$InterruptOnConnectivityChangeThread;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/cs/activity/accountactivities/CS_login$WorkerHandler;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    invoke-direct {v11, v12, v1}, Lcom/htc/cs/activity/accountactivities/CS_login$InterruptOnConnectivityChangeThread;-><init>(Lcom/htc/cs/activity/accountactivities/CS_login;Ljava/lang/Runnable;)V

    .line 1020
    .restart local v11       #thread:Lcom/htc/cs/activity/accountactivities/CS_login$InterruptOnConnectivityChangeThread;
    invoke-virtual {v11}, Lcom/htc/cs/activity/accountactivities/CS_login$InterruptOnConnectivityChangeThread;->start()V

    .line 1022
    :try_start_2
    invoke-virtual {v11}, Lcom/htc/cs/activity/accountactivities/CS_login$InterruptOnConnectivityChangeThread;->join()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1028
    :goto_3
    const/16 v12, 0x402

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/htc/cs/activity/accountactivities/CS_login$WorkerHandler;->removeMessages(I)V

    goto/16 :goto_0

    .line 1023
    :catch_2
    move-exception v4

    .line 1024
    .restart local v4       #e:Ljava/lang/InterruptedException;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/cs/activity/accountactivities/CS_login$WorkerHandler;->logger:Lcom/htc/cs/util/Logger;

    invoke-virtual {v12, v4}, Lcom/htc/cs/util/Logger;->exception(Ljava/lang/Throwable;)V

    .line 1025
    const/4 v12, 0x4

    iput v12, v5, Landroid/os/Message;->arg1:I

    .line 1026
    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto :goto_3

    .line 1032
    .end local v1           #almostDone:Ljava/lang/Runnable;
    .end local v4           #e:Ljava/lang/InterruptedException;
    .end local v11           #thread:Lcom/htc/cs/activity/accountactivities/CS_login$InterruptOnConnectivityChangeThread;
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/cs/activity/accountactivities/CS_login$WorkerHandler;->logger:Lcom/htc/cs/util/Logger;

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const-string v15, "REQUEST_BINDING"

    aput-object v15, v13, v14

    invoke-virtual {v12, v13}, Lcom/htc/cs/util/Logger;->verbose([Ljava/lang/Object;)V

    .line 1033
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v5           #endMsg:Landroid/os/Message;
    check-cast v5, Landroid/os/Message;

    .line 1034
    .restart local v5       #endMsg:Landroid/os/Message;
    new-instance v9, Lcom/htc/cs/activity/accountactivities/CS_login$RequestBindingRunnable;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/cs/activity/accountactivities/CS_login$WorkerHandler;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    invoke-direct {v9, v12, v5, v13}, Lcom/htc/cs/activity/accountactivities/CS_login$RequestBindingRunnable;-><init>(Lcom/htc/cs/activity/accountactivities/CS_login;Landroid/os/Message;I)V

    .line 1036
    .local v9, requestBinding:Ljava/lang/Runnable;
    new-instance v11, Lcom/htc/cs/activity/accountactivities/CS_login$InterruptOnConnectivityChangeThread;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/cs/activity/accountactivities/CS_login$WorkerHandler;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    invoke-direct {v11, v12, v9}, Lcom/htc/cs/activity/accountactivities/CS_login$InterruptOnConnectivityChangeThread;-><init>(Lcom/htc/cs/activity/accountactivities/CS_login;Ljava/lang/Runnable;)V

    .line 1038
    .restart local v11       #thread:Lcom/htc/cs/activity/accountactivities/CS_login$InterruptOnConnectivityChangeThread;
    invoke-virtual {v11}, Lcom/htc/cs/activity/accountactivities/CS_login$InterruptOnConnectivityChangeThread;->start()V

    .line 1040
    :try_start_3
    invoke-virtual {v11}, Lcom/htc/cs/activity/accountactivities/CS_login$InterruptOnConnectivityChangeThread;->join()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1046
    :goto_4
    const/16 v12, 0x3fd

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/htc/cs/activity/accountactivities/CS_login$WorkerHandler;->removeMessages(I)V

    goto/16 :goto_0

    .line 1041
    :catch_3
    move-exception v4

    .line 1042
    .restart local v4       #e:Ljava/lang/InterruptedException;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/cs/activity/accountactivities/CS_login$WorkerHandler;->logger:Lcom/htc/cs/util/Logger;

    invoke-virtual {v12, v4}, Lcom/htc/cs/util/Logger;->exception(Ljava/lang/Throwable;)V

    .line 1043
    const/4 v12, 0x4

    iput v12, v5, Landroid/os/Message;->arg1:I

    .line 1044
    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto :goto_4

    .line 1050
    .end local v4           #e:Ljava/lang/InterruptedException;
    .end local v9           #requestBinding:Ljava/lang/Runnable;
    .end local v11           #thread:Lcom/htc/cs/activity/accountactivities/CS_login$InterruptOnConnectivityChangeThread;
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/cs/activity/accountactivities/CS_login$WorkerHandler;->logger:Lcom/htc/cs/util/Logger;

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const-string v15, "GET_REGIONS"

    aput-object v15, v13, v14

    invoke-virtual {v12, v13}, Lcom/htc/cs/util/Logger;->verbose([Ljava/lang/Object;)V

    .line 1051
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v5           #endMsg:Landroid/os/Message;
    check-cast v5, Landroid/os/Message;

    .line 1052
    .restart local v5       #endMsg:Landroid/os/Message;
    new-instance v6, Lcom/htc/cs/activity/accountactivities/CS_login$GetRegionsRunnable;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/cs/activity/accountactivities/CS_login$WorkerHandler;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    invoke-direct {v6, v12, v5}, Lcom/htc/cs/activity/accountactivities/CS_login$GetRegionsRunnable;-><init>(Lcom/htc/cs/activity/accountactivities/CS_login;Landroid/os/Message;)V

    .line 1053
    .local v6, getRegions:Ljava/lang/Runnable;
    new-instance v11, Lcom/htc/cs/activity/accountactivities/CS_login$InterruptOnConnectivityChangeThread;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/cs/activity/accountactivities/CS_login$WorkerHandler;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    invoke-direct {v11, v12, v6}, Lcom/htc/cs/activity/accountactivities/CS_login$InterruptOnConnectivityChangeThread;-><init>(Lcom/htc/cs/activity/accountactivities/CS_login;Ljava/lang/Runnable;)V

    .line 1055
    .restart local v11       #thread:Lcom/htc/cs/activity/accountactivities/CS_login$InterruptOnConnectivityChangeThread;
    invoke-virtual {v11}, Lcom/htc/cs/activity/accountactivities/CS_login$InterruptOnConnectivityChangeThread;->start()V

    .line 1057
    :try_start_4
    invoke-virtual {v11}, Lcom/htc/cs/activity/accountactivities/CS_login$InterruptOnConnectivityChangeThread;->join()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_4

    .line 1063
    :goto_5
    const/16 v12, 0x3fe

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/htc/cs/activity/accountactivities/CS_login$WorkerHandler;->removeMessages(I)V

    goto/16 :goto_0

    .line 1058
    :catch_4
    move-exception v4

    .line 1059
    .restart local v4       #e:Ljava/lang/InterruptedException;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/cs/activity/accountactivities/CS_login$WorkerHandler;->logger:Lcom/htc/cs/util/Logger;

    invoke-virtual {v12, v4}, Lcom/htc/cs/util/Logger;->exception(Ljava/lang/Throwable;)V

    .line 1060
    const/4 v12, 0x4

    iput v12, v5, Landroid/os/Message;->arg1:I

    .line 1061
    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto :goto_5

    .line 1067
    .end local v4           #e:Ljava/lang/InterruptedException;
    .end local v6           #getRegions:Ljava/lang/Runnable;
    .end local v11           #thread:Lcom/htc/cs/activity/accountactivities/CS_login$InterruptOnConnectivityChangeThread;
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/cs/activity/accountactivities/CS_login$WorkerHandler;->logger:Lcom/htc/cs/util/Logger;

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const-string v15, "GET_SECURITY_Q"

    aput-object v15, v13, v14

    invoke-virtual {v12, v13}, Lcom/htc/cs/util/Logger;->verbose([Ljava/lang/Object;)V

    .line 1068
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v5           #endMsg:Landroid/os/Message;
    check-cast v5, Landroid/os/Message;

    .line 1069
    .restart local v5       #endMsg:Landroid/os/Message;
    new-instance v7, Lcom/htc/cs/activity/accountactivities/CS_login$GetSecurityQRunnable;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/cs/activity/accountactivities/CS_login$WorkerHandler;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    invoke-direct {v7, v12, v5}, Lcom/htc/cs/activity/accountactivities/CS_login$GetSecurityQRunnable;-><init>(Lcom/htc/cs/activity/accountactivities/CS_login;Landroid/os/Message;)V

    .line 1070
    .local v7, getSecurityQ:Ljava/lang/Runnable;
    new-instance v11, Lcom/htc/cs/activity/accountactivities/CS_login$InterruptOnConnectivityChangeThread;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/cs/activity/accountactivities/CS_login$WorkerHandler;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    invoke-direct {v11, v12, v7}, Lcom/htc/cs/activity/accountactivities/CS_login$InterruptOnConnectivityChangeThread;-><init>(Lcom/htc/cs/activity/accountactivities/CS_login;Ljava/lang/Runnable;)V

    .line 1072
    .restart local v11       #thread:Lcom/htc/cs/activity/accountactivities/CS_login$InterruptOnConnectivityChangeThread;
    invoke-virtual {v11}, Lcom/htc/cs/activity/accountactivities/CS_login$InterruptOnConnectivityChangeThread;->start()V

    .line 1074
    :try_start_5
    invoke-virtual {v11}, Lcom/htc/cs/activity/accountactivities/CS_login$InterruptOnConnectivityChangeThread;->join()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_5

    .line 1080
    :goto_6
    const/16 v12, 0x3ff

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/htc/cs/activity/accountactivities/CS_login$WorkerHandler;->removeMessages(I)V

    goto/16 :goto_0

    .line 1075
    :catch_5
    move-exception v4

    .line 1076
    .restart local v4       #e:Ljava/lang/InterruptedException;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/cs/activity/accountactivities/CS_login$WorkerHandler;->logger:Lcom/htc/cs/util/Logger;

    invoke-virtual {v12, v4}, Lcom/htc/cs/util/Logger;->exception(Ljava/lang/Throwable;)V

    .line 1077
    const/4 v12, 0x4

    iput v12, v5, Landroid/os/Message;->arg1:I

    .line 1078
    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto :goto_6

    .line 1084
    .end local v4           #e:Ljava/lang/InterruptedException;
    .end local v7           #getSecurityQ:Ljava/lang/Runnable;
    .end local v11           #thread:Lcom/htc/cs/activity/accountactivities/CS_login$InterruptOnConnectivityChangeThread;
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/cs/activity/accountactivities/CS_login$WorkerHandler;->logger:Lcom/htc/cs/util/Logger;

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const-string v15, "RETRIEVE_PW"

    aput-object v15, v13, v14

    invoke-virtual {v12, v13}, Lcom/htc/cs/util/Logger;->verbose([Ljava/lang/Object;)V

    .line 1085
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v5           #endMsg:Landroid/os/Message;
    check-cast v5, Landroid/os/Message;

    .line 1086
    .restart local v5       #endMsg:Landroid/os/Message;
    new-instance v10, Lcom/htc/cs/activity/accountactivities/CS_login$RetrievePWRunnable;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/cs/activity/accountactivities/CS_login$WorkerHandler;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    invoke-direct {v10, v12, v5}, Lcom/htc/cs/activity/accountactivities/CS_login$RetrievePWRunnable;-><init>(Lcom/htc/cs/activity/accountactivities/CS_login;Landroid/os/Message;)V

    .line 1087
    .local v10, retrievePW:Ljava/lang/Runnable;
    new-instance v11, Lcom/htc/cs/activity/accountactivities/CS_login$InterruptOnConnectivityChangeThread;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/cs/activity/accountactivities/CS_login$WorkerHandler;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    invoke-direct {v11, v12, v10}, Lcom/htc/cs/activity/accountactivities/CS_login$InterruptOnConnectivityChangeThread;-><init>(Lcom/htc/cs/activity/accountactivities/CS_login;Ljava/lang/Runnable;)V

    .line 1089
    .restart local v11       #thread:Lcom/htc/cs/activity/accountactivities/CS_login$InterruptOnConnectivityChangeThread;
    invoke-virtual {v11}, Lcom/htc/cs/activity/accountactivities/CS_login$InterruptOnConnectivityChangeThread;->start()V

    .line 1091
    :try_start_6
    invoke-virtual {v11}, Lcom/htc/cs/activity/accountactivities/CS_login$InterruptOnConnectivityChangeThread;->join()V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_6

    .line 1097
    :goto_7
    const/16 v12, 0x400

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/htc/cs/activity/accountactivities/CS_login$WorkerHandler;->removeMessages(I)V

    goto/16 :goto_0

    .line 1092
    :catch_6
    move-exception v4

    .line 1093
    .restart local v4       #e:Ljava/lang/InterruptedException;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/cs/activity/accountactivities/CS_login$WorkerHandler;->logger:Lcom/htc/cs/util/Logger;

    invoke-virtual {v12, v4}, Lcom/htc/cs/util/Logger;->exception(Ljava/lang/Throwable;)V

    .line 1094
    const/4 v12, 0x4

    iput v12, v5, Landroid/os/Message;->arg1:I

    .line 1095
    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto :goto_7

    .line 1101
    .end local v4           #e:Ljava/lang/InterruptedException;
    .end local v10           #retrievePW:Ljava/lang/Runnable;
    .end local v11           #thread:Lcom/htc/cs/activity/accountactivities/CS_login$InterruptOnConnectivityChangeThread;
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/cs/activity/accountactivities/CS_login$WorkerHandler;->logger:Lcom/htc/cs/util/Logger;

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const-string v15, "CHECK_ACCOUNT_STATE"

    aput-object v15, v13, v14

    invoke-virtual {v12, v13}, Lcom/htc/cs/util/Logger;->verbose([Ljava/lang/Object;)V

    .line 1102
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v5           #endMsg:Landroid/os/Message;
    check-cast v5, Landroid/os/Message;

    .line 1103
    .restart local v5       #endMsg:Landroid/os/Message;
    new-instance v2, Lcom/htc/cs/activity/accountactivities/CS_login$CheckAccountStateRunnable;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/cs/activity/accountactivities/CS_login$WorkerHandler;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    invoke-direct {v2, v12, v5}, Lcom/htc/cs/activity/accountactivities/CS_login$CheckAccountStateRunnable;-><init>(Lcom/htc/cs/activity/accountactivities/CS_login;Landroid/os/Message;)V

    .line 1105
    .local v2, checkAccountState:Ljava/lang/Runnable;
    new-instance v11, Lcom/htc/cs/activity/accountactivities/CS_login$InterruptOnConnectivityChangeThread;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/cs/activity/accountactivities/CS_login$WorkerHandler;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    invoke-direct {v11, v12, v2}, Lcom/htc/cs/activity/accountactivities/CS_login$InterruptOnConnectivityChangeThread;-><init>(Lcom/htc/cs/activity/accountactivities/CS_login;Ljava/lang/Runnable;)V

    .line 1107
    .restart local v11       #thread:Lcom/htc/cs/activity/accountactivities/CS_login$InterruptOnConnectivityChangeThread;
    invoke-virtual {v11}, Lcom/htc/cs/activity/accountactivities/CS_login$InterruptOnConnectivityChangeThread;->start()V

    .line 1109
    :try_start_7
    invoke-virtual {v11}, Lcom/htc/cs/activity/accountactivities/CS_login$InterruptOnConnectivityChangeThread;->join()V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_7

    .line 1115
    :goto_8
    const/16 v12, 0x401

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/htc/cs/activity/accountactivities/CS_login$WorkerHandler;->removeMessages(I)V

    goto/16 :goto_0

    .line 1110
    :catch_7
    move-exception v4

    .line 1111
    .restart local v4       #e:Ljava/lang/InterruptedException;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/cs/activity/accountactivities/CS_login$WorkerHandler;->logger:Lcom/htc/cs/util/Logger;

    invoke-virtual {v12, v4}, Lcom/htc/cs/util/Logger;->exception(Ljava/lang/Throwable;)V

    .line 1112
    const/4 v12, 0x4

    iput v12, v5, Landroid/os/Message;->arg1:I

    .line 1113
    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto :goto_8

    .line 978
    :pswitch_data_0
    .packed-switch 0x3fc
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

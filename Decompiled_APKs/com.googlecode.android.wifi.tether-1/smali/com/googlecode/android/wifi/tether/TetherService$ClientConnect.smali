.class Lcom/googlecode/android/wifi/tether/TetherService$ClientConnect;
.super Ljava/lang/Object;
.source "TetherService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/android/wifi/tether/TetherService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ClientConnect"
.end annotation


# instance fields
.field private currentLeases:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/googlecode/android/wifi/tether/data/ClientData;",
            ">;"
        }
    .end annotation
.end field

.field private knownLeases:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private knownWhitelists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/googlecode/android/wifi/tether/TetherService;

.field private timestampLeasefile:J

.field private timestampWhitelistfile:J


# direct methods
.method constructor <init>(Lcom/googlecode/android/wifi/tether/TetherService;)V
    .locals 3
    .parameter

    .prologue
    const-wide/16 v1, -0x1

    .line 855
    iput-object p1, p0, Lcom/googlecode/android/wifi/tether/TetherService$ClientConnect;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 857
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/TetherService$ClientConnect;->knownWhitelists:Ljava/util/ArrayList;

    .line 858
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/TetherService$ClientConnect;->knownLeases:Ljava/util/ArrayList;

    .line 859
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/TetherService$ClientConnect;->currentLeases:Ljava/util/Hashtable;

    .line 860
    iput-wide v1, p0, Lcom/googlecode/android/wifi/tether/TetherService$ClientConnect;->timestampLeasefile:J

    .line 861
    iput-wide v1, p0, Lcom/googlecode/android/wifi/tether/TetherService$ClientConnect;->timestampWhitelistfile:J

    return-void
.end method

.method private notifyActivity()V
    .locals 2

    .prologue
    .line 951
    sget-object v0, Lcom/googlecode/android/wifi/tether/AccessControlActivity;->currentInstance:Lcom/googlecode/android/wifi/tether/AccessControlActivity;

    if-eqz v0, :cond_0

    .line 952
    sget-object v0, Lcom/googlecode/android/wifi/tether/AccessControlActivity;->currentInstance:Lcom/googlecode/android/wifi/tether/AccessControlActivity;

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/AccessControlActivity;->clientConnectHandler:Landroid/os/Handler;

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 954
    :cond_0
    return-void
.end method

.method private sendClientMessage(Lcom/googlecode/android/wifi/tether/data/ClientData;I)V
    .locals 2
    .parameter "clientData"
    .parameter "connectType"

    .prologue
    .line 957
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 958
    .local v0, m:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 959
    iput p2, v0, Landroid/os/Message;->what:I

    .line 960
    iget-object v1, p0, Lcom/googlecode/android/wifi/tether/TetherService$ClientConnect;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    #getter for: Lcom/googlecode/android/wifi/tether/TetherService;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;
    invoke-static {v1}, Lcom/googlecode/android/wifi/tether/TetherService;->access$0(Lcom/googlecode/android/wifi/tether/TetherService;)Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-result-object v1

    iget-object v1, v1, Lcom/googlecode/android/wifi/tether/TetherApplication;->clientConnectHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 961
    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 865
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 948
    return-void

    .line 868
    :cond_0
    iget-object v11, p0, Lcom/googlecode/android/wifi/tether/TetherService$ClientConnect;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    #getter for: Lcom/googlecode/android/wifi/tether/TetherService;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;
    invoke-static {v11}, Lcom/googlecode/android/wifi/tether/TetherService;->access$0(Lcom/googlecode/android/wifi/tether/TetherService;)Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-result-object v11

    invoke-virtual {v11}, Lcom/googlecode/android/wifi/tether/TetherApplication;->getNotificationType()I

    move-result v10

    .line 870
    .local v10, notificationType:I
    iget-object v11, p0, Lcom/googlecode/android/wifi/tether/TetherService$ClientConnect;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    #getter for: Lcom/googlecode/android/wifi/tether/TetherService;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;
    invoke-static {v11}, Lcom/googlecode/android/wifi/tether/TetherService;->access$0(Lcom/googlecode/android/wifi/tether/TetherService;)Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-result-object v11

    iget-object v11, v11, Lcom/googlecode/android/wifi/tether/TetherApplication;->whitelist:Lcom/googlecode/android/wifi/tether/system/CoreTask$Whitelist;

    invoke-virtual {v11}, Lcom/googlecode/android/wifi/tether/system/CoreTask$Whitelist;->exists()Z

    move-result v0

    .line 872
    .local v0, accessControlActive:Z
    if-eqz v0, :cond_1

    .line 874
    iget-object v11, p0, Lcom/googlecode/android/wifi/tether/TetherService$ClientConnect;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    #getter for: Lcom/googlecode/android/wifi/tether/TetherService;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;
    invoke-static {v11}, Lcom/googlecode/android/wifi/tether/TetherService;->access$0(Lcom/googlecode/android/wifi/tether/TetherService;)Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-result-object v11

    iget-object v11, v11, Lcom/googlecode/android/wifi/tether/TetherApplication;->coretask:Lcom/googlecode/android/wifi/tether/system/CoreTask;

    new-instance v12, Ljava/lang/StringBuilder;

    iget-object v13, p0, Lcom/googlecode/android/wifi/tether/TetherService$ClientConnect;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    #getter for: Lcom/googlecode/android/wifi/tether/TetherService;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;
    invoke-static {v13}, Lcom/googlecode/android/wifi/tether/TetherService;->access$0(Lcom/googlecode/android/wifi/tether/TetherService;)Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-result-object v13

    iget-object v13, v13, Lcom/googlecode/android/wifi/tether/TetherApplication;->coretask:Lcom/googlecode/android/wifi/tether/system/CoreTask;

    iget-object v13, v13, Lcom/googlecode/android/wifi/tether/system/CoreTask;->DATA_FILE_PATH:Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v13, "/conf/whitelist_mac.conf"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/googlecode/android/wifi/tether/system/CoreTask;->getModifiedDate(Ljava/lang/String;)J

    move-result-wide v4

    .line 875
    .local v4, currentTimestampWhitelistFile:J
    iget-wide v11, p0, Lcom/googlecode/android/wifi/tether/TetherService$ClientConnect;->timestampWhitelistfile:J

    cmp-long v11, v11, v4

    if-eqz v11, :cond_1

    .line 876
    iget-object v11, p0, Lcom/googlecode/android/wifi/tether/TetherService$ClientConnect;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    #getter for: Lcom/googlecode/android/wifi/tether/TetherService;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;
    invoke-static {v11}, Lcom/googlecode/android/wifi/tether/TetherService;->access$0(Lcom/googlecode/android/wifi/tether/TetherService;)Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-result-object v11

    iget-object v11, v11, Lcom/googlecode/android/wifi/tether/TetherApplication;->whitelist:Lcom/googlecode/android/wifi/tether/system/CoreTask$Whitelist;

    invoke-virtual {v11}, Lcom/googlecode/android/wifi/tether/system/CoreTask$Whitelist;->get()Ljava/util/ArrayList;

    move-result-object v11

    iput-object v11, p0, Lcom/googlecode/android/wifi/tether/TetherService$ClientConnect;->knownWhitelists:Ljava/util/ArrayList;

    .line 877
    iput-wide v4, p0, Lcom/googlecode/android/wifi/tether/TetherService$ClientConnect;->timestampWhitelistfile:J

    .line 882
    .end local v4           #currentTimestampWhitelistFile:J
    :cond_1
    iget-object v11, p0, Lcom/googlecode/android/wifi/tether/TetherService$ClientConnect;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    #getter for: Lcom/googlecode/android/wifi/tether/TetherService;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;
    invoke-static {v11}, Lcom/googlecode/android/wifi/tether/TetherService;->access$0(Lcom/googlecode/android/wifi/tether/TetherService;)Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-result-object v11

    iget-object v11, v11, Lcom/googlecode/android/wifi/tether/TetherApplication;->coretask:Lcom/googlecode/android/wifi/tether/system/CoreTask;

    new-instance v12, Ljava/lang/StringBuilder;

    iget-object v13, p0, Lcom/googlecode/android/wifi/tether/TetherService$ClientConnect;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    #getter for: Lcom/googlecode/android/wifi/tether/TetherService;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;
    invoke-static {v13}, Lcom/googlecode/android/wifi/tether/TetherService;->access$0(Lcom/googlecode/android/wifi/tether/TetherService;)Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-result-object v13

    iget-object v13, v13, Lcom/googlecode/android/wifi/tether/TetherApplication;->coretask:Lcom/googlecode/android/wifi/tether/system/CoreTask;

    iget-object v13, v13, Lcom/googlecode/android/wifi/tether/system/CoreTask;->DATA_FILE_PATH:Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v13, "/var/dnsmasq.leases"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/googlecode/android/wifi/tether/system/CoreTask;->getModifiedDate(Ljava/lang/String;)J

    move-result-wide v2

    .line 883
    .local v2, currentTimestampLeaseFile:J
    iget-wide v11, p0, Lcom/googlecode/android/wifi/tether/TetherService$ClientConnect;->timestampLeasefile:J

    cmp-long v11, v11, v2

    if-eqz v11, :cond_4

    .line 886
    :try_start_0
    iget-object v11, p0, Lcom/googlecode/android/wifi/tether/TetherService$ClientConnect;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    #getter for: Lcom/googlecode/android/wifi/tether/TetherService;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;
    invoke-static {v11}, Lcom/googlecode/android/wifi/tether/TetherService;->access$0(Lcom/googlecode/android/wifi/tether/TetherService;)Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-result-object v11

    iget-object v11, v11, Lcom/googlecode/android/wifi/tether/TetherApplication;->coretask:Lcom/googlecode/android/wifi/tether/system/CoreTask;

    invoke-virtual {v11}, Lcom/googlecode/android/wifi/tether/system/CoreTask;->getLeases()Ljava/util/Hashtable;

    move-result-object v11

    iput-object v11, p0, Lcom/googlecode/android/wifi/tether/TetherService$ClientConnect;->currentLeases:Ljava/util/Hashtable;

    .line 889
    iget-object v11, p0, Lcom/googlecode/android/wifi/tether/TetherService$ClientConnect;->knownLeases:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_2
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_5

    .line 899
    iget-object v11, p0, Lcom/googlecode/android/wifi/tether/TetherService$ClientConnect;->currentLeases:Ljava/util/Hashtable;

    invoke-virtual {v11}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v8

    .line 900
    .local v8, leases:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_3
    :goto_2
    invoke-interface {v8}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v11

    if-nez v11, :cond_6

    .line 936
    iput-wide v2, p0, Lcom/googlecode/android/wifi/tether/TetherService$ClientConnect;->timestampLeasefile:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 943
    .end local v8           #leases:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_4
    :goto_3
    const-wide/16 v11, 0xbb8

    :try_start_1
    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 944
    :catch_0
    move-exception v6

    .line 945
    .local v6, e:Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Thread;->interrupt()V

    goto/16 :goto_0

    .line 889
    .end local v6           #e:Ljava/lang/InterruptedException;
    :cond_5
    :try_start_2
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 890
    .local v7, lease:Ljava/lang/String;
    iget-object v12, p0, Lcom/googlecode/android/wifi/tether/TetherService$ClientConnect;->currentLeases:Ljava/util/Hashtable;

    invoke-virtual {v12, v7}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 891
    const-string v12, "TetherService"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Removing \'"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\' from known-leases!"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    iget-object v12, p0, Lcom/googlecode/android/wifi/tether/TetherService$ClientConnect;->knownLeases:Ljava/util/ArrayList;

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 894
    invoke-direct {p0}, Lcom/googlecode/android/wifi/tether/TetherService$ClientConnect;->notifyActivity()V

    .line 895
    iget-object v12, p0, Lcom/googlecode/android/wifi/tether/TetherService$ClientConnect;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    #getter for: Lcom/googlecode/android/wifi/tether/TetherService;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;
    invoke-static {v12}, Lcom/googlecode/android/wifi/tether/TetherService;->access$0(Lcom/googlecode/android/wifi/tether/TetherService;)Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-result-object v12

    invoke-virtual {v12, v7}, Lcom/googlecode/android/wifi/tether/TetherApplication;->removeClientMac(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 937
    .end local v7           #lease:Ljava/lang/String;
    :catch_1
    move-exception v6

    .line 938
    .local v6, e:Ljava/lang/Exception;
    const-string v11, "TetherService"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Unexpected error detected - Here is what I know: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 901
    .end local v6           #e:Ljava/lang/Exception;
    .restart local v8       #leases:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_6
    :try_start_3
    invoke-interface {v8}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 902
    .local v9, mac:Ljava/lang/String;
    const-string v11, "TetherService"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Mac-Address: \'"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\' - Known Whitelist: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/googlecode/android/wifi/tether/TetherService$ClientConnect;->knownWhitelists:Ljava/util/ArrayList;

    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " - Known Lease: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/googlecode/android/wifi/tether/TetherService$ClientConnect;->knownLeases:Ljava/util/ArrayList;

    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    iget-object v11, p0, Lcom/googlecode/android/wifi/tether/TetherService$ClientConnect;->knownLeases:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 904
    iget-object v11, p0, Lcom/googlecode/android/wifi/tether/TetherService$ClientConnect;->knownWhitelists:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_b

    .line 906
    iget-object v11, p0, Lcom/googlecode/android/wifi/tether/TetherService$ClientConnect;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    #getter for: Lcom/googlecode/android/wifi/tether/TetherService;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;
    invoke-static {v11}, Lcom/googlecode/android/wifi/tether/TetherService;->access$0(Lcom/googlecode/android/wifi/tether/TetherService;)Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-result-object v12

    iget-object v11, p0, Lcom/googlecode/android/wifi/tether/TetherService$ClientConnect;->currentLeases:Ljava/util/Hashtable;

    invoke-virtual {v11, v9}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/googlecode/android/wifi/tether/data/ClientData;

    invoke-virtual {v12, v11}, Lcom/googlecode/android/wifi/tether/TetherApplication;->addClientData(Lcom/googlecode/android/wifi/tether/data/ClientData;)V

    .line 908
    if-eqz v0, :cond_a

    .line 909
    const/4 v11, 0x1

    if-eq v10, v11, :cond_7

    const/4 v11, 0x2

    if-ne v10, v11, :cond_8

    .line 910
    :cond_7
    iget-object v11, p0, Lcom/googlecode/android/wifi/tether/TetherService$ClientConnect;->currentLeases:Ljava/util/Hashtable;

    invoke-virtual {v11, v9}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/googlecode/android/wifi/tether/data/ClientData;

    .line 911
    const/4 v12, 0x2

    .line 910
    invoke-direct {p0, v11, v12}, Lcom/googlecode/android/wifi/tether/TetherService$ClientConnect;->sendClientMessage(Lcom/googlecode/android/wifi/tether/data/ClientData;I)V

    .line 920
    :cond_8
    :goto_4
    iget-object v11, p0, Lcom/googlecode/android/wifi/tether/TetherService$ClientConnect;->knownLeases:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 933
    :cond_9
    :goto_5
    invoke-direct {p0}, Lcom/googlecode/android/wifi/tether/TetherService$ClientConnect;->notifyActivity()V

    goto/16 :goto_2

    .line 915
    :cond_a
    const/4 v11, 0x2

    if-ne v10, v11, :cond_8

    .line 916
    iget-object v11, p0, Lcom/googlecode/android/wifi/tether/TetherService$ClientConnect;->currentLeases:Ljava/util/Hashtable;

    invoke-virtual {v11, v9}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/googlecode/android/wifi/tether/data/ClientData;

    .line 917
    const/4 v12, 0x0

    .line 916
    invoke-direct {p0, v11, v12}, Lcom/googlecode/android/wifi/tether/TetherService$ClientConnect;->sendClientMessage(Lcom/googlecode/android/wifi/tether/data/ClientData;I)V

    goto :goto_4

    .line 921
    :cond_b
    iget-object v11, p0, Lcom/googlecode/android/wifi/tether/TetherService$ClientConnect;->knownWhitelists:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 923
    iget-object v11, p0, Lcom/googlecode/android/wifi/tether/TetherService$ClientConnect;->currentLeases:Ljava/util/Hashtable;

    invoke-virtual {v11, v9}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/googlecode/android/wifi/tether/data/ClientData;

    .line 924
    .local v1, clientData:Lcom/googlecode/android/wifi/tether/data/ClientData;
    const/4 v11, 0x1

    invoke-virtual {v1, v11}, Lcom/googlecode/android/wifi/tether/data/ClientData;->setAccessAllowed(Z)V

    .line 925
    iget-object v11, p0, Lcom/googlecode/android/wifi/tether/TetherService$ClientConnect;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    #getter for: Lcom/googlecode/android/wifi/tether/TetherService;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;
    invoke-static {v11}, Lcom/googlecode/android/wifi/tether/TetherService;->access$0(Lcom/googlecode/android/wifi/tether/TetherService;)Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-result-object v11

    invoke-virtual {v11, v1}, Lcom/googlecode/android/wifi/tether/TetherApplication;->addClientData(Lcom/googlecode/android/wifi/tether/data/ClientData;)V

    .line 927
    const/4 v11, 0x2

    if-ne v10, v11, :cond_9

    .line 928
    iget-object v11, p0, Lcom/googlecode/android/wifi/tether/TetherService$ClientConnect;->currentLeases:Ljava/util/Hashtable;

    invoke-virtual {v11, v9}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/googlecode/android/wifi/tether/data/ClientData;

    .line 929
    const/4 v12, 0x1

    .line 928
    invoke-direct {p0, v11, v12}, Lcom/googlecode/android/wifi/tether/TetherService$ClientConnect;->sendClientMessage(Lcom/googlecode/android/wifi/tether/data/ClientData;I)V

    .line 930
    iget-object v11, p0, Lcom/googlecode/android/wifi/tether/TetherService$ClientConnect;->knownLeases:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_5
.end method

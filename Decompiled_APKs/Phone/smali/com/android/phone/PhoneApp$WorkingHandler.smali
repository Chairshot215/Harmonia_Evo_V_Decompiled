.class Lcom/android/phone/PhoneApp$WorkingHandler;
.super Landroid/os/Handler;
.source "PhoneApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkingHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneApp;


# direct methods
.method public constructor <init>(Lcom/android/phone/PhoneApp;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 5516
    iput-object p1, p0, Lcom/android/phone/PhoneApp$WorkingHandler;->this$0:Lcom/android/phone/PhoneApp;

    .line 5517
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 5518
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .parameter "msg"

    .prologue
    const/4 v12, 0x0

    const/16 v11, 0x63

    .line 5523
    iget v8, p1, Landroid/os/Message;->what:I

    sparse-switch v8, :sswitch_data_0

    .line 5575
    :goto_0
    return-void

    .line 5525
    :sswitch_0
    const-string v8, "PhoneApp"

    const-string v9, "EVENT_QUERY_MO_PACKAGES"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5527
    new-instance v6, Landroid/content/Intent;

    const-string v8, "android.intent.action.NEW_OUTGOING_CALL"

    invoke-direct {v6, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5529
    .local v6, intent:Landroid/content/Intent;
    iget-object v8, p0, Lcom/android/phone/PhoneApp$WorkingHandler;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v8}, Lcom/android/phone/PhoneApp;->access$6100(Lcom/android/phone/PhoneApp;)Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v8, v6, v11}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 5534
    .local v4, broadcastReceivers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    .line 5536
    .local v0, N1:I
    const-string v8, "PhoneApp"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "-- N1 ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5538
    iget-object v8, p0, Lcom/android/phone/PhoneApp$WorkingHandler;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v8}, Lcom/android/phone/PhoneApp;->access$6100(Lcom/android/phone/PhoneApp;)Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v8, v6, v11}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 5543
    .local v3, activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 5545
    .local v1, N2:I
    const-string v8, "PhoneApp"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "-- N2 ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5547
    iget-object v8, p0, Lcom/android/phone/PhoneApp$WorkingHandler;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v8}, Lcom/android/phone/PhoneApp;->access$6100(Lcom/android/phone/PhoneApp;)Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v8, v6, v11}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    .line 5552
    .local v7, services:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    .line 5554
    .local v2, N3:I
    const-string v8, "PhoneApp"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "-- N3 ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5556
    add-int v8, v0, v1

    add-int/2addr v8, v2

    if-lez v8, :cond_0

    .line 5557
    iget-object v8, p0, Lcom/android/phone/PhoneApp$WorkingHandler;->this$0:Lcom/android/phone/PhoneApp;

    const/4 v9, 0x1

    iput-boolean v9, v8, Lcom/android/phone/PhoneApp;->mNeedToBroadcast:Z

    goto/16 :goto_0

    .line 5559
    :cond_0
    iget-object v8, p0, Lcom/android/phone/PhoneApp$WorkingHandler;->this$0:Lcom/android/phone/PhoneApp;

    iput-boolean v12, v8, Lcom/android/phone/PhoneApp;->mNeedToBroadcast:Z

    goto/16 :goto_0

    .line 5565
    .end local v0           #N1:I
    .end local v1           #N2:I
    .end local v2           #N3:I
    .end local v3           #activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v4           #broadcastReceivers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v6           #intent:Landroid/content/Intent;
    .end local v7           #services:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :sswitch_1
    const-string v8, "PhoneApp"

    const-string v9, "EVENT_FORCE_SCREEN_ON"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5567
    :try_start_0
    iget-object v8, p0, Lcom/android/phone/PhoneApp$WorkingHandler;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mPowerManagerService:Landroid/os/IPowerManager;
    invoke-static {v8}, Lcom/android/phone/PhoneApp;->access$6200(Lcom/android/phone/PhoneApp;)Landroid/os/IPowerManager;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Landroid/os/IPowerManager;->preventScreenOn(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 5568
    :catch_0
    move-exception v5

    .line 5569
    .local v5, e:Landroid/os/RemoteException;
    const-string v8, "PhoneApp"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mPowerManagerService.preventScreenOn() failed: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 5523
    nop

    :sswitch_data_0
    .sparse-switch
        0x258 -> :sswitch_1
        0x323 -> :sswitch_0
    .end sparse-switch
.end method

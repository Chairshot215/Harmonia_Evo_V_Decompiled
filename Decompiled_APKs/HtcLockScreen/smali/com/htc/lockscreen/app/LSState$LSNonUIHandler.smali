.class Lcom/htc/lockscreen/app/LSState$LSNonUIHandler;
.super Landroid/os/Handler;
.source "LSState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/lockscreen/app/LSState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LSNonUIHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/lockscreen/app/LSState;


# direct methods
.method constructor <init>(Lcom/htc/lockscreen/app/LSState;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 424
    iput-object p1, p0, Lcom/htc/lockscreen/app/LSState$LSNonUIHandler;->this$0:Lcom/htc/lockscreen/app/LSState;

    .line 425
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 426
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .parameter "msg"

    .prologue
    .line 429
    iget v7, p1, Landroid/os/Message;->what:I

    .line 430
    .local v7, what:I
    packed-switch v7, :pswitch_data_0

    .line 483
    :cond_0
    :goto_0
    return-void

    .line 432
    :pswitch_0
    iget-object v9, p0, Lcom/htc/lockscreen/app/LSState$LSNonUIHandler;->this$0:Lcom/htc/lockscreen/app/LSState;

    monitor-enter v9

    .line 433
    :try_start_0
    iget-object v8, p0, Lcom/htc/lockscreen/app/LSState$LSNonUIHandler;->this$0:Lcom/htc/lockscreen/app/LSState;

    #getter for: Lcom/htc/lockscreen/app/LSState;->mKgMonitor:Lcom/htc/lockscreen/app/LSState$LSKeyguardMonitor;
    invoke-static {v8}, Lcom/htc/lockscreen/app/LSState;->access$1100(Lcom/htc/lockscreen/app/LSState;)Lcom/htc/lockscreen/app/LSState$LSKeyguardMonitor;

    move-result-object v8

    if-nez v8, :cond_2

    .line 434
    iget-object v8, p0, Lcom/htc/lockscreen/app/LSState$LSNonUIHandler;->this$0:Lcom/htc/lockscreen/app/LSState;

    new-instance v10, Lcom/htc/lockscreen/app/LSState$LSKeyguardMonitor;

    iget-object v11, p0, Lcom/htc/lockscreen/app/LSState$LSNonUIHandler;->this$0:Lcom/htc/lockscreen/app/LSState;

    const/4 v12, 0x0

    invoke-direct {v10, v11, v12}, Lcom/htc/lockscreen/app/LSState$LSKeyguardMonitor;-><init>(Lcom/htc/lockscreen/app/LSState;Lcom/htc/lockscreen/app/LSState$1;)V

    #setter for: Lcom/htc/lockscreen/app/LSState;->mKgMonitor:Lcom/htc/lockscreen/app/LSState$LSKeyguardMonitor;
    invoke-static {v8, v10}, Lcom/htc/lockscreen/app/LSState;->access$1102(Lcom/htc/lockscreen/app/LSState;Lcom/htc/lockscreen/app/LSState$LSKeyguardMonitor;)Lcom/htc/lockscreen/app/LSState$LSKeyguardMonitor;

    .line 435
    iget-object v8, p0, Lcom/htc/lockscreen/app/LSState$LSNonUIHandler;->this$0:Lcom/htc/lockscreen/app/LSState;

    #getter for: Lcom/htc/lockscreen/app/LSState;->mKgUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static {v8}, Lcom/htc/lockscreen/app/LSState;->access$1300(Lcom/htc/lockscreen/app/LSState;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v8

    iget-object v10, p0, Lcom/htc/lockscreen/app/LSState$LSNonUIHandler;->this$0:Lcom/htc/lockscreen/app/LSState;

    #getter for: Lcom/htc/lockscreen/app/LSState;->mKgMonitor:Lcom/htc/lockscreen/app/LSState$LSKeyguardMonitor;
    invoke-static {v10}, Lcom/htc/lockscreen/app/LSState;->access$1100(Lcom/htc/lockscreen/app/LSState;)Lcom/htc/lockscreen/app/LSState$LSKeyguardMonitor;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerInfoCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;)V

    .line 436
    iget-object v8, p0, Lcom/htc/lockscreen/app/LSState$LSNonUIHandler;->this$0:Lcom/htc/lockscreen/app/LSState;

    #getter for: Lcom/htc/lockscreen/app/LSState;->mKgUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static {v8}, Lcom/htc/lockscreen/app/LSState;->access$1300(Lcom/htc/lockscreen/app/LSState;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v8

    iget-object v10, p0, Lcom/htc/lockscreen/app/LSState$LSNonUIHandler;->this$0:Lcom/htc/lockscreen/app/LSState;

    #getter for: Lcom/htc/lockscreen/app/LSState;->mKgMonitor:Lcom/htc/lockscreen/app/LSState$LSKeyguardMonitor;
    invoke-static {v10}, Lcom/htc/lockscreen/app/LSState;->access$1100(Lcom/htc/lockscreen/app/LSState;)Lcom/htc/lockscreen/app/LSState$LSKeyguardMonitor;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerSimStateCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;)V

    .line 437
    const/4 v3, 0x0

    .line 438
    .local v3, isPeterUse:Z
    iget-object v8, p0, Lcom/htc/lockscreen/app/LSState$LSNonUIHandler;->this$0:Lcom/htc/lockscreen/app/LSState;

    #getter for: Lcom/htc/lockscreen/app/LSState;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/htc/lockscreen/app/LSState;->access$1400(Lcom/htc/lockscreen/app/LSState;)Landroid/content/Context;

    move-result-object v8

    const-string v10, "com.htc.lockscreen.peter"

    invoke-static {v8, v10}, Lcom/htc/lockscreen/app/util/MyUtil;->checkPackageExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 439
    const-string v8, "LSState"

    const-string v10, "onCreate Peter use"

    invoke-static {v8, v10}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    const/4 v3, 0x1

    .line 442
    :cond_1
    sget-boolean v8, Lcom/htc/lockscreen/app/MyProjectSettings;->USIM_4G:Z

    if-eqz v8, :cond_2

    if-nez v3, :cond_2

    .line 443
    const-string v8, "LSState"

    const-string v10, "onCreate register USIM"

    invoke-static {v8, v10}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    iget-object v8, p0, Lcom/htc/lockscreen/app/LSState$LSNonUIHandler;->this$0:Lcom/htc/lockscreen/app/LSState;

    #getter for: Lcom/htc/lockscreen/app/LSState;->mKgUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static {v8}, Lcom/htc/lockscreen/app/LSState;->access$1300(Lcom/htc/lockscreen/app/LSState;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v8

    iget-object v10, p0, Lcom/htc/lockscreen/app/LSState$LSNonUIHandler;->this$0:Lcom/htc/lockscreen/app/LSState;

    #getter for: Lcom/htc/lockscreen/app/LSState;->mKgMonitor:Lcom/htc/lockscreen/app/LSState$LSKeyguardMonitor;
    invoke-static {v10}, Lcom/htc/lockscreen/app/LSState;->access$1100(Lcom/htc/lockscreen/app/LSState;)Lcom/htc/lockscreen/app/LSState$LSKeyguardMonitor;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerSimExtraStateCallback(Lcom/android/internal/policy/impl/HtcIfSimExtraStateCallback;)V

    .line 448
    .end local v3           #isPeterUse:Z
    :cond_2
    iget-object v8, p0, Lcom/htc/lockscreen/app/LSState$LSNonUIHandler;->this$0:Lcom/htc/lockscreen/app/LSState;

    #getter for: Lcom/htc/lockscreen/app/LSState;->mOOBEMonitor:Lcom/htc/lockscreen/app/util/OOBEMonitor;
    invoke-static {v8}, Lcom/htc/lockscreen/app/LSState;->access$1600(Lcom/htc/lockscreen/app/LSState;)Lcom/htc/lockscreen/app/util/OOBEMonitor;

    move-result-object v8

    iget-object v10, p0, Lcom/htc/lockscreen/app/LSState$LSNonUIHandler;->this$0:Lcom/htc/lockscreen/app/LSState;

    #getter for: Lcom/htc/lockscreen/app/LSState;->mOOBEListener:Lcom/htc/lockscreen/app/util/OOBEMonitor$OOBEMonitorListener;
    invoke-static {v10}, Lcom/htc/lockscreen/app/LSState;->access$1500(Lcom/htc/lockscreen/app/LSState;)Lcom/htc/lockscreen/app/util/OOBEMonitor$OOBEMonitorListener;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/htc/lockscreen/app/util/OOBEMonitor;->startMonitor(Lcom/htc/lockscreen/app/util/OOBEMonitor$OOBEMonitorListener;)V

    .line 449
    iget-object v8, p0, Lcom/htc/lockscreen/app/LSState$LSNonUIHandler;->this$0:Lcom/htc/lockscreen/app/LSState;

    iget-object v10, p0, Lcom/htc/lockscreen/app/LSState$LSNonUIHandler;->this$0:Lcom/htc/lockscreen/app/LSState;

    #getter for: Lcom/htc/lockscreen/app/LSState;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/htc/lockscreen/app/LSState;->access$1400(Lcom/htc/lockscreen/app/LSState;)Landroid/content/Context;

    move-result-object v10

    #calls: Lcom/htc/lockscreen/app/LSState;->registerLocked(Landroid/content/Context;)V
    invoke-static {v8, v10}, Lcom/htc/lockscreen/app/LSState;->access$1700(Lcom/htc/lockscreen/app/LSState;Landroid/content/Context;)V

    .line 451
    iget-object v8, p0, Lcom/htc/lockscreen/app/LSState$LSNonUIHandler;->this$0:Lcom/htc/lockscreen/app/LSState;

    iget-object v10, p0, Lcom/htc/lockscreen/app/LSState$LSNonUIHandler;->this$0:Lcom/htc/lockscreen/app/LSState;

    #getter for: Lcom/htc/lockscreen/app/LSState;->mKgUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static {v10}, Lcom/htc/lockscreen/app/LSState;->access$1300(Lcom/htc/lockscreen/app/LSState;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v10

    #setter for: Lcom/htc/lockscreen/app/LSState;->mSimState:Lcom/android/internal/telephony/IccCard$State;
    invoke-static {v8, v10}, Lcom/htc/lockscreen/app/LSState;->access$1802(Lcom/htc/lockscreen/app/LSState;Lcom/android/internal/telephony/IccCard$State;)Lcom/android/internal/telephony/IccCard$State;

    .line 452
    iget-object v8, p0, Lcom/htc/lockscreen/app/LSState$LSNonUIHandler;->this$0:Lcom/htc/lockscreen/app/LSState;

    iget-object v10, p0, Lcom/htc/lockscreen/app/LSState$LSNonUIHandler;->this$0:Lcom/htc/lockscreen/app/LSState;

    #getter for: Lcom/htc/lockscreen/app/LSState;->mKgUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static {v10}, Lcom/htc/lockscreen/app/LSState;->access$1300(Lcom/htc/lockscreen/app/LSState;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getNetowrkServiceStatus()I

    move-result v10

    #setter for: Lcom/htc/lockscreen/app/LSState;->mNetworkServiceStatus:I
    invoke-static {v8, v10}, Lcom/htc/lockscreen/app/LSState;->access$1902(Lcom/htc/lockscreen/app/LSState;I)I

    .line 453
    iget-object v8, p0, Lcom/htc/lockscreen/app/LSState$LSNonUIHandler;->this$0:Lcom/htc/lockscreen/app/LSState;

    #calls: Lcom/htc/lockscreen/app/LSState;->updateAirPlaneMode()V
    invoke-static {v8}, Lcom/htc/lockscreen/app/LSState;->access$900(Lcom/htc/lockscreen/app/LSState;)V

    .line 454
    iget-object v8, p0, Lcom/htc/lockscreen/app/LSState$LSNonUIHandler;->this$0:Lcom/htc/lockscreen/app/LSState;

    #getter for: Lcom/htc/lockscreen/app/LSState;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/htc/lockscreen/app/LSState;->access$1400(Lcom/htc/lockscreen/app/LSState;)Landroid/content/Context;

    move-result-object v8

    const-string v10, "phone"

    invoke-virtual {v8, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    .line 455
    .local v6, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v8

    const/4 v10, 0x2

    if-ne v8, v10, :cond_3

    const/4 v2, 0x1

    .line 457
    .local v2, isCDMA:Z
    :goto_1
    iget-object v10, p0, Lcom/htc/lockscreen/app/LSState$LSNonUIHandler;->this$0:Lcom/htc/lockscreen/app/LSState;

    if-nez v2, :cond_4

    const/4 v8, 0x1

    :goto_2
    #setter for: Lcom/htc/lockscreen/app/LSState;->mNeedShowSimState:Z
    invoke-static {v10, v8}, Lcom/htc/lockscreen/app/LSState;->access$802(Lcom/htc/lockscreen/app/LSState;Z)Z

    .line 458
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 459
    iget-object v8, p0, Lcom/htc/lockscreen/app/LSState$LSNonUIHandler;->this$0:Lcom/htc/lockscreen/app/LSState;

    #getter for: Lcom/htc/lockscreen/app/LSState;->mUIHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/htc/lockscreen/app/LSState;->access$500(Lcom/htc/lockscreen/app/LSState;)Landroid/os/Handler;

    move-result-object v8

    const/16 v9, 0x9

    invoke-static {v8, v9}, Lcom/htc/lockscreen/app/util/MyUtil;->sendMessage(Landroid/os/Handler;I)V

    goto/16 :goto_0

    .line 455
    .end local v2           #isCDMA:Z
    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 457
    .restart local v2       #isCDMA:Z
    :cond_4
    const/4 v8, 0x0

    goto :goto_2

    .line 458
    .end local v2           #isCDMA:Z
    .end local v6           #telephonyManager:Landroid/telephony/TelephonyManager;
    :catchall_0
    move-exception v8

    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8

    .line 462
    :pswitch_1
    const/16 v8, 0x65

    invoke-static {p0, v8}, Lcom/htc/lockscreen/app/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 463
    iget-object v8, p0, Lcom/htc/lockscreen/app/LSState$LSNonUIHandler;->this$0:Lcom/htc/lockscreen/app/LSState;

    #getter for: Lcom/htc/lockscreen/app/LSState;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/htc/lockscreen/app/LSState;->access$1400(Lcom/htc/lockscreen/app/LSState;)Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenSetting;->loadSIE(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    .line 464
    .local v0, compName:Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    .line 465
    iget-object v8, p0, Lcom/htc/lockscreen/app/LSState$LSNonUIHandler;->this$0:Lcom/htc/lockscreen/app/LSState;

    #getter for: Lcom/htc/lockscreen/app/LSState;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/htc/lockscreen/app/LSState;->access$1400(Lcom/htc/lockscreen/app/LSState;)Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v0}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->getIdleScreenInfo(Landroid/content/Context;Landroid/content/ComponentName;)Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;

    move-result-object v1

    .line 466
    .local v1, info:Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;
    if-eqz v1, :cond_0

    .line 467
    invoke-static {}, Lcom/htc/lockscreen/app/debug/MyLog;->IsDebugLog()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 468
    iget-object v8, p0, Lcom/htc/lockscreen/app/LSState$LSNonUIHandler;->this$0:Lcom/htc/lockscreen/app/LSState;

    #getter for: Lcom/htc/lockscreen/app/LSState;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/htc/lockscreen/app/LSState;->access$1400(Lcom/htc/lockscreen/app/LSState;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 469
    .local v5, pkgMng:Landroid/content/pm/PackageManager;
    const-string v8, "HtcLockScreen"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cust_idlescreen : idlescreen_widget_stytle> "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1, v5}, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    const-string v8, "HtcLockScreen"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cust_idlescreen : idlescreen_widget_PID> "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    const-string v8, "HtcLockScreen"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cust_idlescreen : idlescreen_widget_CID> "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    .end local v5           #pkgMng:Landroid/content/pm/PackageManager;
    :cond_5
    invoke-static {}, Lcom/htc/lockscreen/app/LSState;->getInstance()Lcom/htc/lockscreen/app/LSState;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/lockscreen/app/LSState;->getIdleScreenManager()Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->setIdleScreen(Landroid/content/ComponentName;)V

    goto/16 :goto_0

    .line 478
    .end local v0           #compName:Landroid/content/ComponentName;
    .end local v1           #info:Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;
    :pswitch_2
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 479
    .local v4, keycode:I
    iget-object v8, p0, Lcom/htc/lockscreen/app/LSState$LSNonUIHandler;->this$0:Lcom/htc/lockscreen/app/LSState;

    invoke-virtual {v8, v4}, Lcom/htc/lockscreen/app/LSState;->startCameraActivity(I)V

    goto/16 :goto_0

    .line 430
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

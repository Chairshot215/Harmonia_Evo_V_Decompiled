.class Lcom/android/htcdialer/DialerService$DialerBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DialerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htcdialer/DialerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DialerBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htcdialer/DialerService;


# direct methods
.method constructor <init>(Lcom/android/htcdialer/DialerService;)V
    .locals 0
    .parameter

    .prologue
    .line 1612
    iput-object p1, p0, Lcom/android/htcdialer/DialerService$DialerBroadcastReceiver;->this$0:Lcom/android/htcdialer/DialerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 21
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1614
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    .line 1615
    .local v12, action:Ljava/lang/String;
    const-string v2, "android.intent.action.ACTION_CHECK_CONTACT_DB_CORRUPT"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1617
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htcdialer/DialerService$DialerBroadcastReceiver;->this$0:Lcom/android/htcdialer/DialerService;

    const-string v3, "android.permission.WRITE_CONTACTS"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/htcdialer/DialerService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1619
    const-string v2, "DialerService"

    const-string v3, "ACTION_CHECK_CONTACT_DB_CORRUPT"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1621
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htcdialer/DialerService$DialerBroadcastReceiver;->this$0:Lcom/android/htcdialer/DialerService;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v20

    .line 1623
    .local v20, sharedPreference:Landroid/content/SharedPreferences;
    if-eqz v20, :cond_0

    .line 1625
    const-string v2, "corrupt_count"

    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v13

    .line 1627
    .local v13, count:I
    const-string v2, "DialerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1629
    add-int/lit8 v13, v13, 0x1

    .line 1631
    const/4 v2, 0x2

    if-ge v13, v2, :cond_2

    .line 1632
    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v16

    .line 1633
    .local v16, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "corrupt_count"

    move-object/from16 v0, v16

    invoke-interface {v0, v2, v13}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1634
    invoke-interface/range {v16 .. v16}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1636
    const-string v2, "DialerService"

    const-string v3, "Increase corrupt count"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1665
    .end local v13           #count:I
    .end local v16           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v18

    .line 1666
    .local v18, myPid:I
    invoke-static/range {v18 .. v18}, Landroid/os/Process;->killProcess(I)V

    .line 1708
    .end local v18           #myPid:I
    .end local v20           #sharedPreference:Landroid/content/SharedPreferences;
    :cond_1
    :goto_1
    return-void

    .line 1639
    .restart local v13       #count:I
    .restart local v20       #sharedPreference:Landroid/content/SharedPreferences;
    :cond_2
    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v16

    .line 1640
    .restart local v16       #editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "corrupt_count"

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1641
    invoke-interface/range {v16 .. v16}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1644
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/data/com.android.providers.contacts/databases/contacts2.db"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 1646
    const-string v2, "DialerService"

    const-string v3, "Contacts.db is corrupted. Delete the file"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1649
    new-instance p2, Landroid/content/Intent;

    .end local p2
    const-string v2, "android.intent.action.CONTACT_DB_CORRUPT"

    move-object/from16 v0, p2

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1650
    .restart local p2
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 1652
    .local v1, am:Landroid/app/IActivityManager;
    if-eqz v1, :cond_0

    .line 1654
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v3, p2

    :try_start_0
    invoke-interface/range {v1 .. v11}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ZZ)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1656
    :catch_0
    move-exception v15

    .line 1657
    .local v15, e:Ljava/lang/Exception;
    const-string v2, "DialerService"

    const-string v3, "Contacts.db Corrupt Exception but can not find activity manager to broadcast intent"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1667
    .end local v1           #am:Landroid/app/IActivityManager;
    .end local v13           #count:I
    .end local v15           #e:Ljava/lang/Exception;
    .end local v16           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v20           #sharedPreference:Landroid/content/SharedPreferences;
    :cond_3
    const-string v2, "com.htc.util.phone.DialUtils.QWERTY.action_key_event"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1671
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htcdialer/DialerService$DialerBroadcastReceiver;->this$0:Lcom/android/htcdialer/DialerService;

    move-object/from16 v0, p2

    #calls: Lcom/android/htcdialer/DialerService;->createDialerIntentFromBroadcast(Landroid/content/Intent;)Landroid/content/Intent;
    invoke-static {v2, v0}, Lcom/android/htcdialer/DialerService;->access$3500(Lcom/android/htcdialer/DialerService;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v14

    .line 1672
    .local v14, dialIntent:Landroid/content/Intent;
    if-eqz v14, :cond_1

    .line 1673
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 1675
    .end local v14           #dialIntent:Landroid/content/Intent;
    :cond_4
    const-string v2, "com.htc.laputa.HtcNavi.action.LOCATIONS_NAVI_ON"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1679
    const-string v2, "isNaviOn"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v17

    .line 1680
    .local v17, isNaviOn:Z
    invoke-static/range {v17 .. v17}, Lcom/android/htcdialer/util/ConfigUtils;->setNaviState(Z)V

    goto :goto_1

    .line 1686
    .end local v17           #isNaviOn:Z
    :cond_5
    const-string v2, "android.intent.action.TIMEFORMAT_CHANGED"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1687
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htcdialer/DialerService$DialerBroadcastReceiver;->this$0:Lcom/android/htcdialer/DialerService;

    invoke-virtual {v2}, Lcom/android/htcdialer/DialerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/htcdialer/util/TimeUtils;->loadSystemDateFormat(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 1690
    :cond_6
    const-string v2, "android.intent.action.TIME_SET"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_7

    .line 1691
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htcdialer/DialerService$DialerBroadcastReceiver;->this$0:Lcom/android/htcdialer/DialerService;

    invoke-virtual {v2}, Lcom/android/htcdialer/DialerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/htcdialer/util/TimeUtils;->loadSystemTimeFormat(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 1692
    :cond_7
    const-string v2, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1693
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htcdialer/DialerService$DialerBroadcastReceiver;->this$0:Lcom/android/htcdialer/DialerService;

    invoke-virtual {v2}, Lcom/android/htcdialer/DialerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/htcdialer/util/TimeUtils;->loadSystemTimeFormat(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 1697
    :cond_8
    const-string v2, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1698
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    .line 1700
    .local v19, oBluetoothDevice:Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htcdialer/DialerService$DialerBroadcastReceiver;->this$0:Lcom/android/htcdialer/DialerService;

    const-string v3, "android.intent.extra.DOCK_STATE"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/android/htcdialer/DialerService;->mDockState:I

    .line 1702
    const-string v2, "DialerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mDockState is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htcdialer/DialerService$DialerBroadcastReceiver;->this$0:Lcom/android/htcdialer/DialerService;

    iget v4, v4, Lcom/android/htcdialer/DialerService;->mDockState:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1703
    if-eqz v19, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htcdialer/DialerService$DialerBroadcastReceiver;->this$0:Lcom/android/htcdialer/DialerService;

    iget v2, v2, Lcom/android/htcdialer/DialerService;->mDockState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_9

    const/4 v2, 0x1

    :goto_2
    sput-boolean v2, Lcom/android/htcdialer/DialerService;->mBTDockConnected:Z

    .line 1704
    const-string v2, "DialerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mBTDockConnected is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/htcdialer/DialerService;->mBTDockConnected:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1703
    :cond_9
    const/4 v2, 0x0

    goto :goto_2
.end method

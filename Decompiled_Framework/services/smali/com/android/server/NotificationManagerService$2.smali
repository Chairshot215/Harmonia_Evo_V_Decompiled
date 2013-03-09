.class Lcom/android/server/NotificationManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/NotificationManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 22

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const/4 v15, 0x0

    const-string v18, "android.intent.action.ACTION_SHUTDOWN"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    const-string v18, "NotificationService"

    const-string v19, "mIntentReceiver() Intent.ACTION_SHUTDOWN"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/NotificationManagerService;->cancelAll_pd()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v18, "android.intent.action.QUICKBOOT_POWEROFF"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    const-string v18, "NotificationService"

    const-string v19, "mIntentReceiver() Intent.ACTION_QUICKBOOT_POWEROFF"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/NotificationManagerService;->cancelAll_pd()V

    goto :goto_0

    :cond_2
    const-string v18, "android.intent.action.BATTERY_CHANGED"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_8

    const-string v18, "NotificationService"

    const-string v19, "mIntentReceiver() Intent.ACTION_BATTERY_CHANGED"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v18, "plugged"

    const/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    if-eqz v18, :cond_5

    const/4 v6, 0x1

    :goto_1
    const-string v18, "level"

    const/16 v19, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    if-ltz v12, :cond_6

    const/16 v18, 0x9

    move/from16 v0, v18

    if-gt v12, v0, :cond_6

    const/4 v8, 0x1

    :goto_2
    const-string v18, "status"

    const/16 v19, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    const-string v18, "health"

    const/16 v19, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    const/16 v18, 0x5

    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_3

    const/16 v18, 0x64

    move/from16 v0, v18

    if-ne v12, v0, :cond_7

    :cond_3
    const/4 v7, 0x1

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/NotificationManagerService;->mBatteryCharging:Z
    invoke-static/range {v18 .. v18}, Lcom/android/server/NotificationManagerService;->access$1700(Lcom/android/server/NotificationManagerService;)Z

    move-result v18

    move/from16 v0, v18

    if-ne v6, v0, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/NotificationManagerService;->mBatteryLow:Z
    invoke-static/range {v18 .. v18}, Lcom/android/server/NotificationManagerService;->access$1800(Lcom/android/server/NotificationManagerService;)Z

    move-result v18

    move/from16 v0, v18

    if-ne v8, v0, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/NotificationManagerService;->mBatteryHealth:I
    invoke-static/range {v18 .. v18}, Lcom/android/server/NotificationManagerService;->access$1900(Lcom/android/server/NotificationManagerService;)I

    move-result v18

    move/from16 v0, v18

    if-ne v9, v0, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/NotificationManagerService;->mBatteryStatus:I
    invoke-static/range {v18 .. v18}, Lcom/android/server/NotificationManagerService;->access$2000(Lcom/android/server/NotificationManagerService;)I

    move-result v18

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/NotificationManagerService;->mBatteryFull:Z
    invoke-static/range {v18 .. v18}, Lcom/android/server/NotificationManagerService;->access$2100(Lcom/android/server/NotificationManagerService;)Z

    move-result v18

    move/from16 v0, v18

    if-eq v7, v0, :cond_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    #setter for: Lcom/android/server/NotificationManagerService;->mBatteryCharging:Z
    invoke-static {v0, v6}, Lcom/android/server/NotificationManagerService;->access$1702(Lcom/android/server/NotificationManagerService;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    #setter for: Lcom/android/server/NotificationManagerService;->mBatteryLow:Z
    invoke-static {v0, v8}, Lcom/android/server/NotificationManagerService;->access$1802(Lcom/android/server/NotificationManagerService;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    #setter for: Lcom/android/server/NotificationManagerService;->mBatteryFull:Z
    invoke-static {v0, v7}, Lcom/android/server/NotificationManagerService;->access$2102(Lcom/android/server/NotificationManagerService;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    #setter for: Lcom/android/server/NotificationManagerService;->mBatteryHealth:I
    invoke-static {v0, v9}, Lcom/android/server/NotificationManagerService;->access$1902(Lcom/android/server/NotificationManagerService;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v16

    #setter for: Lcom/android/server/NotificationManagerService;->mBatteryStatus:I
    invoke-static {v0, v1}, Lcom/android/server/NotificationManagerService;->access$2002(Lcom/android/server/NotificationManagerService;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v18, v0

    #calls: Lcom/android/server/NotificationManagerService;->updateLights()V
    invoke-static/range {v18 .. v18}, Lcom/android/server/NotificationManagerService;->access$2200(Lcom/android/server/NotificationManagerService;)V

    goto/16 :goto_0

    :cond_5
    const/4 v6, 0x0

    goto/16 :goto_1

    :cond_6
    const/4 v8, 0x0

    goto/16 :goto_2

    :cond_7
    const/4 v7, 0x0

    goto/16 :goto_3

    :cond_8
    const-string v18, "android.intent.action.PACKAGE_REMOVED"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_9

    const-string v18, "android.intent.action.PACKAGE_RESTARTED"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_9

    const-string v18, "android.intent.action.PACKAGE_CHANGED"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_9

    const-string v18, "android.intent.action.QUERY_PACKAGE_RESTART"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_9

    const-string v18, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_d

    :cond_9
    const/4 v13, 0x0

    const-string v18, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_a

    const-string v18, "android.intent.extra.changed_package_list"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    :goto_4
    if-eqz v13, :cond_0

    array-length v0, v13

    move/from16 v18, v0

    if-lez v18, :cond_0

    move-object v5, v13

    array-length v11, v5

    const/4 v10, 0x0

    :goto_5
    if-ge v10, v11, :cond_0

    aget-object v14, v5, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    if-nez v15, :cond_c

    const/16 v18, 0x1

    :goto_6
    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v18

    invoke-virtual {v0, v14, v1, v2, v3}, Lcom/android/server/NotificationManagerService;->cancelAllNotificationsInt(Ljava/lang/String;IIZ)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    :cond_a
    if-eqz v15, :cond_b

    const-string v18, "android.intent.extra.PACKAGES"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    goto :goto_4

    :cond_b
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v17

    if-eqz v17, :cond_0

    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_0

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v13, v0, [Ljava/lang/String;

    const/16 v18, 0x0

    aput-object v14, v13, v18

    goto :goto_4

    :cond_c
    const/16 v18, 0x0

    goto :goto_6

    :cond_d
    const-string v18, "android.intent.action.SCREEN_ON"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    #setter for: Lcom/android/server/NotificationManagerService;->mScreenOn:Z
    invoke-static/range {v18 .. v19}, Lcom/android/server/NotificationManagerService;->access$2302(Lcom/android/server/NotificationManagerService;Z)Z

    goto/16 :goto_0

    :cond_e
    const-string v18, "android.intent.action.SCREEN_OFF"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    #setter for: Lcom/android/server/NotificationManagerService;->mScreenOn:Z
    invoke-static/range {v18 .. v19}, Lcom/android/server/NotificationManagerService;->access$2302(Lcom/android/server/NotificationManagerService;Z)Z

    goto/16 :goto_0

    :cond_f
    const-string v18, "android.intent.action.PHONE_STATE"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v18, v0

    const-string v19, "state"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    sget-object v20, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    #setter for: Lcom/android/server/NotificationManagerService;->mInCall:Z
    invoke-static/range {v18 .. v19}, Lcom/android/server/NotificationManagerService;->access$2402(Lcom/android/server/NotificationManagerService;Z)Z

    goto/16 :goto_0

    :cond_10
    const-string v18, "android.intent.action.USER_PRESENT"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    goto/16 :goto_0
.end method

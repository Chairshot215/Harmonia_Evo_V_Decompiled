.class Lcom/google/android/finsky/billing/iab/PendingNotificationsService$2;
.super Ljava/lang/Object;
.source "PendingNotificationsService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/billing/iab/PendingNotificationsService;->restartAlarmsAfterBoot()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/billing/iab/PendingNotificationsService;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/billing/iab/PendingNotificationsService;)V
    .locals 0
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/google/android/finsky/billing/iab/PendingNotificationsService$2;->this$0:Lcom/google/android/finsky/billing/iab/PendingNotificationsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 21

    .prologue
    .line 112
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/billing/iab/PendingNotificationsService$2;->this$0:Lcom/google/android/finsky/billing/iab/PendingNotificationsService;

    invoke-static {v1}, Lcom/google/android/finsky/api/AccountHandler;->getAccounts(Landroid/content/Context;)[Landroid/accounts/Account;

    move-result-object v8

    .line 113
    .local v8, accounts:[Landroid/accounts/Account;
    move-object v9, v8

    .local v9, arr$:[Landroid/accounts/Account;
    array-length v15, v9

    .local v15, len$:I
    const/4 v12, 0x0

    .local v12, i$:I
    :goto_0
    if-ge v12, v15, :cond_1

    aget-object v7, v9, v12

    .line 114
    .local v7, account:Landroid/accounts/Account;
    iget-object v2, v7, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 115
    .local v2, acccountName:Ljava/lang/String;
    sget-boolean v1, Lcom/google/android/finsky/utils/FinskyLog;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 116
    const-string v1, "Checking for pending alarms for account=%s"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v2, v18, v19

    move-object/from16 v0, v18

    invoke-static {v1, v0}, Lcom/google/android/finsky/utils/FinskyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    :cond_0
    invoke-static {v2}, Lcom/google/android/finsky/utils/VendingPreferences;->getMarketAlarmStartTime(Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .line 119
    .local v16, startTime:J
    const-wide/16 v18, 0x0

    cmp-long v1, v16, v18

    if-nez v1, :cond_2

    .line 120
    sget-boolean v1, Lcom/google/android/finsky/utils/FinskyLog;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 121
    const-string v1, "No pending alarm."

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v1, v0}, Lcom/google/android/finsky/utils/FinskyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 149
    .end local v2           #acccountName:Ljava/lang/String;
    .end local v7           #account:Landroid/accounts/Account;
    .end local v16           #startTime:J
    :cond_1
    return-void

    .line 125
    .restart local v2       #acccountName:Ljava/lang/String;
    .restart local v7       #account:Landroid/accounts/Account;
    .restart local v16       #startTime:J
    :cond_2
    invoke-static {v2}, Lcom/google/android/finsky/utils/VendingPreferences;->getMarketAlarmTimeout(Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    .line 130
    .local v13, interval:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 131
    .local v5, now:J
    sub-long v10, v5, v16

    .line 132
    .local v10, elapsed:J
    const-wide/16 v18, 0x0

    cmp-long v1, v10, v18

    if-gez v1, :cond_3

    .line 134
    const-string v1, "Current time is wrong? current time=%d, alarm start time=%d"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, v18

    invoke-static {v1, v0}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    const-wide/16 v10, 0x0

    .line 138
    :cond_3
    sub-long v3, v13, v10

    .line 141
    .local v3, remaining:J
    const-wide/16 v18, 0x4e20

    cmp-long v1, v3, v18

    if-gez v1, :cond_5

    .line 142
    sget-boolean v1, Lcom/google/android/finsky/utils/FinskyLog;->DEBUG:Z

    if-eqz v1, :cond_4

    .line 143
    const-string v1, "remaining=%d, delaying alarm for a while."

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, v18

    invoke-static {v1, v0}, Lcom/google/android/finsky/utils/FinskyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 145
    :cond_4
    const-wide/16 v3, 0x4e20

    .line 147
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/billing/iab/PendingNotificationsService$2;->this$0:Lcom/google/android/finsky/billing/iab/PendingNotificationsService;

    invoke-static/range {v1 .. v6}, Lcom/google/android/finsky/billing/iab/PendingNotificationsService;->setMarketAlarm(Landroid/content/Context;Ljava/lang/String;JJ)V

    .line 113
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0
.end method

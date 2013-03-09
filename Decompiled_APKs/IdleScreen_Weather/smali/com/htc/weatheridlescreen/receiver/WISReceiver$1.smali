.class Lcom/htc/weatheridlescreen/receiver/WISReceiver$1;
.super Ljava/lang/Object;
.source "WISReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/weatheridlescreen/receiver/WISReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/weatheridlescreen/receiver/WISReceiver;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$strTimeZone:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/htc/weatheridlescreen/receiver/WISReceiver;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/htc/weatheridlescreen/receiver/WISReceiver$1;->this$0:Lcom/htc/weatheridlescreen/receiver/WISReceiver;

    iput-object p2, p0, Lcom/htc/weatheridlescreen/receiver/WISReceiver$1;->val$strTimeZone:Ljava/lang/String;

    iput-object p3, p0, Lcom/htc/weatheridlescreen/receiver/WISReceiver$1;->val$context:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 24

    .prologue
    .line 44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 45
    .local v9, mCurrentSystemTime:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/weatheridlescreen/receiver/WISReceiver$1;->val$strTimeZone:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v5

    .line 46
    .local v5, calendar1:Ljava/util/Calendar;
    if-nez v5, :cond_1

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 49
    :cond_1
    invoke-virtual {v5, v9, v10}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 50
    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/Date;->getHours()I

    move-result v7

    .line 51
    .local v7, hour:I
    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/Date;->getMinutes()I

    move-result v15

    .line 52
    .local v15, minute:I
    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/Date;->getSeconds()I

    move-result v19

    .line 54
    .local v19, second:I
    const-wide/16 v11, 0x0

    .line 55
    .local v11, mPendingTimeForDaytoNight:J
    const-wide/16 v13, 0x0

    .line 56
    .local v13, mPendingTimeForNightToDay:J
    const/16 v20, 0x6

    move/from16 v0, v20

    if-ne v7, v0, :cond_3

    if-nez v15, :cond_3

    .line 57
    const-wide/32 v11, 0x2932e00

    .line 90
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/weatheridlescreen/receiver/WISReceiver$1;->val$context:Landroid/content/Context;

    move-object/from16 v20, v0

    #calls: Lcom/htc/weatheridlescreen/receiver/WISReceiver;->generatePendingIntentForDayToNight(Landroid/content/Context;)Landroid/app/PendingIntent;
    invoke-static/range {v20 .. v20}, Lcom/htc/weatheridlescreen/receiver/WISReceiver;->access$000(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v16

    .line 91
    .local v16, pendingIntentDN:Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/weatheridlescreen/receiver/WISReceiver$1;->val$context:Landroid/content/Context;

    move-object/from16 v20, v0

    #calls: Lcom/htc/weatheridlescreen/receiver/WISReceiver;->generatePendingIntentForNightToDay(Landroid/content/Context;)Landroid/app/PendingIntent;
    invoke-static/range {v20 .. v20}, Lcom/htc/weatheridlescreen/receiver/WISReceiver;->access$100(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v17

    .line 92
    .local v17, pendingIntentND:Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/weatheridlescreen/receiver/WISReceiver$1;->val$context:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v21, "alarm"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AlarmManager;

    .line 93
    .local v4, am:Landroid/app/AlarmManager;
    if-eqz v4, :cond_0

    .line 94
    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 95
    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 96
    const/16 v20, 0x1

    add-long v21, v9, v11

    move/from16 v0, v20

    move-wide/from16 v1, v21

    move-object/from16 v3, v16

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 97
    const/16 v20, 0x1

    add-long v21, v9, v13

    move/from16 v0, v20

    move-wide/from16 v1, v21

    move-object/from16 v3, v17

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 58
    .end local v4           #am:Landroid/app/AlarmManager;
    .end local v16           #pendingIntentDN:Landroid/app/PendingIntent;
    .end local v17           #pendingIntentND:Landroid/app/PendingIntent;
    :cond_3
    const/16 v20, 0x12

    move/from16 v0, v20

    if-ne v7, v0, :cond_4

    if-nez v15, :cond_4

    .line 59
    const-wide/32 v13, 0x2932e00

    goto :goto_1

    .line 60
    :cond_4
    const/16 v20, 0x6

    move/from16 v0, v20

    if-lt v7, v0, :cond_5

    const/16 v20, 0x12

    move/from16 v0, v20

    if-ge v7, v0, :cond_5

    .line 61
    rsub-int/lit8 v6, v7, 0x11

    .line 62
    .local v6, h:I
    rsub-int/lit8 v8, v15, 0x3b

    .line 63
    .local v8, m:I
    rsub-int/lit8 v18, v19, 0x3c

    .line 64
    .local v18, s:I
    mul-int/lit8 v20, v6, 0x3c

    mul-int/lit8 v20, v20, 0x3c

    mul-int/lit8 v21, v8, 0x3c

    add-int v20, v20, v21

    add-int v20, v20, v18

    move/from16 v0, v20

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v11, v0

    .line 65
    const-wide/32 v20, 0x2932e00

    add-long v13, v11, v20

    .line 66
    goto :goto_1

    .end local v6           #h:I
    .end local v8           #m:I
    .end local v18           #s:I
    :cond_5
    if-ltz v7, :cond_6

    const/16 v20, 0x6

    move/from16 v0, v20

    if-ge v7, v0, :cond_6

    .line 67
    rsub-int/lit8 v6, v7, 0x5

    .line 68
    .restart local v6       #h:I
    rsub-int/lit8 v8, v15, 0x3b

    .line 69
    .restart local v8       #m:I
    rsub-int/lit8 v18, v19, 0x3c

    .line 70
    .restart local v18       #s:I
    mul-int/lit8 v20, v6, 0x3c

    mul-int/lit8 v20, v20, 0x3c

    mul-int/lit8 v21, v8, 0x3c

    add-int v20, v20, v21

    add-int v20, v20, v18

    move/from16 v0, v20

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v13, v0

    .line 71
    const-wide/32 v20, 0x2932e00

    add-long v11, v13, v20

    .line 72
    goto/16 :goto_1

    .end local v6           #h:I
    .end local v8           #m:I
    .end local v18           #s:I
    :cond_6
    const/16 v20, 0x12

    move/from16 v0, v20

    if-lt v7, v0, :cond_2

    const/16 v20, 0x17

    move/from16 v0, v20

    if-gt v7, v0, :cond_2

    .line 73
    rsub-int/lit8 v6, v7, 0x17

    .line 74
    .restart local v6       #h:I
    rsub-int/lit8 v8, v15, 0x3b

    .line 75
    .restart local v8       #m:I
    rsub-int/lit8 v18, v19, 0x3c

    .line 76
    .restart local v18       #s:I
    mul-int/lit8 v20, v6, 0x3c

    mul-int/lit8 v20, v20, 0x3c

    mul-int/lit8 v21, v8, 0x3c

    add-int v20, v20, v21

    add-int v20, v20, v18

    move/from16 v0, v20

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    const-wide/32 v22, 0x1499700

    add-long v13, v20, v22

    .line 77
    const-wide/32 v20, 0x2932e00

    add-long v11, v13, v20

    goto/16 :goto_1
.end method

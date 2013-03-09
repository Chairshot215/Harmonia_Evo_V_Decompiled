.class public Lcom/android/phone/CSMissedCallNotification;
.super Ljava/lang/Object;
.source "CSMissedCallNotification.java"


# static fields
.field private static final EXTRA_LATEST_DATE:Ljava/lang/String; = "LATEST_DATE"

.field private static final EXTRA_LATEST_DISPLAYNAME:Ljava/lang/String; = "LATEST_DISPLAYNAME"

.field private static final EXTRA_LATEST_PHONE:Ljava/lang/String; = "LATEST_PHONE"

.field private static final EXTRA_TOTAL_NUMBER:Ljava/lang/String; = "TOTAL_NUMBER"

.field public static final INTENT_ACTION:Ljava/lang/String; = "com.htc.phone.missedcall.update"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onIntent(Landroid/content/Intent;)Z
    .locals 11
    .parameter "intent"

    .prologue
    const/4 v8, 0x1

    const/4 v0, 0x0

    .line 20
    if-nez p0, :cond_1

    .line 45
    :cond_0
    :goto_0
    return v0

    .line 21
    :cond_1
    :try_start_0
    const-string v4, "com.htc.phone.missedcall.update"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 23
    const/4 v1, 0x0

    .line 24
    .local v1, totalNumber:I
    const/4 v3, 0x0

    .line 25
    .local v3, latestPhone:Ljava/lang/String;
    const-wide/16 v5, 0x0

    .line 26
    .local v5, latestDate:J
    const/4 v2, 0x0

    .line 28
    .local v2, latestDisplayName:Ljava/lang/String;
    const-string v0, "TOTAL_NUMBER"

    const/4 v4, 0x0

    invoke-virtual {p0, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 29
    const-string v0, "LATEST_PHONE"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 30
    const-string v0, "LATEST_DATE"

    const-wide/16 v9, 0x0

    invoke-virtual {p0, v0, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    .line 31
    const-string v0, "LATEST_DISPLAYNAME"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 33
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/NotificationMgr;->getNumberMissedCalls()I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v8

    .line 34
    goto :goto_0

    .line 36
    :cond_2
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/NotificationMgr;->cancelMissedCallNotification()V

    .line 38
    if-lez v1, :cond_3

    .line 39
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/android/phone/NotificationMgr;->notifyMissedCall(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #totalNumber:I
    .end local v2           #latestDisplayName:Ljava/lang/String;
    .end local v3           #latestPhone:Ljava/lang/String;
    .end local v5           #latestDate:J
    :cond_3
    :goto_1
    move v0, v8

    .line 45
    goto :goto_0

    .line 41
    :catch_0
    move-exception v7

    .line 42
    .local v7, e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

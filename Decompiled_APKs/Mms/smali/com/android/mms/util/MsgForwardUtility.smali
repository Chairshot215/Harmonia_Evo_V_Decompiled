.class Lcom/android/mms/util/MsgForwardUtility;
.super Ljava/lang/Object;
.source "MsgForwardHelper.java"


# static fields
.field private static final KEY_EMAIL:Ljava/lang/String; = "EMAIL"

.field private static final KEY_EMAIL_TIMESTAMP:Ljava/lang/String; = "EMAIL_TIMESTAMP"

.field private static final KEY_NUMBER:Ljava/lang/String; = "NUMBER"

.field private static final KEY_NUMBER_TIMESTAMP:Ljava/lang/String; = "NUMBER_TIMESTAMP"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1350
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static responseToCSServer(Landroid/content/Context;Lcom/android/mms/util/CForwardPreference$PREF_VALUE;)Z
    .locals 4
    .parameter "ctx"
    .parameter "valuePref"

    .prologue
    .line 1357
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 1358
    :cond_0
    const/4 v1, 0x0

    .line 1383
    :goto_0
    return v1

    .line 1361
    :cond_1
    const/4 v0, 0x0

    .line 1364
    .local v0, itBroadcast:Landroid/content/Intent;
    iget v1, p1, Lcom/android/mms/util/CForwardPreference$PREF_VALUE;->nType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 1365
    new-instance v0, Landroid/content/Intent;

    .end local v0           #itBroadcast:Landroid/content/Intent;
    const-string v1, "com.htc.msg.mfe.response"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1366
    .restart local v0       #itBroadcast:Landroid/content/Intent;
    iget-boolean v1, p1, Lcom/android/mms/util/CForwardPreference$PREF_VALUE;->bEnable:Z

    if-eqz v1, :cond_2

    .line 1367
    const-string v1, "EMAIL"

    iget-object v2, p1, Lcom/android/mms/util/CForwardPreference$PREF_VALUE;->strValue:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1370
    :cond_2
    const-string v1, "EMAIL_TIMESTAMP"

    iget-wide v2, p1, Lcom/android/mms/util/CForwardPreference$PREF_VALUE;->nTimestamp:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1381
    :goto_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1383
    const/4 v1, 0x1

    goto :goto_0

    .line 1373
    :cond_3
    new-instance v0, Landroid/content/Intent;

    .end local v0           #itBroadcast:Landroid/content/Intent;
    const-string v1, "com.htc.msg.mfn.response"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1374
    .restart local v0       #itBroadcast:Landroid/content/Intent;
    iget-boolean v1, p1, Lcom/android/mms/util/CForwardPreference$PREF_VALUE;->bEnable:Z

    if-eqz v1, :cond_4

    .line 1375
    const-string v1, "NUMBER"

    iget-object v2, p1, Lcom/android/mms/util/CForwardPreference$PREF_VALUE;->strValue:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1378
    :cond_4
    const-string v1, "NUMBER_TIMESTAMP"

    iget-wide v2, p1, Lcom/android/mms/util/CForwardPreference$PREF_VALUE;->nTimestamp:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_1
.end method

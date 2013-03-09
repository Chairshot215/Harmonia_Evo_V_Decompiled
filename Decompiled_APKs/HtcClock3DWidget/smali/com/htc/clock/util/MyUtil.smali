.class public Lcom/htc/clock/util/MyUtil;
.super Ljava/lang/Object;
.source "MyUtil.java"


# static fields
.field public static final TAB_WORLDCLOCK:Ljava/lang/String; = "1"

.field public static final WORLDCLOCK_ACTION:Ljava/lang/String; = "worldclock_action"

.field public static final WORLDCLOCK_EXTRA_CITY_CODE:Ljava/lang/String; = "worldclock_city_code"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compareString(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "a"
    .parameter "b"

    .prologue
    .line 36
    if-eqz p0, :cond_0

    .line 37
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 42
    :goto_0
    return v0

    .line 39
    :cond_0
    if-nez p1, :cond_1

    .line 40
    const/4 v0, 0x1

    goto :goto_0

    .line 42
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static launchWorldClockAp(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "code"

    .prologue
    .line 14
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 15
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 16
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 17
    const-string v1, "worldclock_action"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 18
    const-string v1, "worldclock_city_code"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 19
    const-string v1, "com.htc.android.worldclock"

    const-string v2, "com.htc.android.worldclock.WorldClockTabControl"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 21
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 22
    return-void
.end method

.method public static removeMessage(Landroid/os/Handler;I)V
    .locals 0
    .parameter "handler"
    .parameter "what"

    .prologue
    .line 77
    if-nez p0, :cond_0

    .line 81
    :goto_0
    return-void

    .line 80
    :cond_0
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method

.method public static safe_parseInt(Ljava/lang/String;)I
    .locals 4
    .parameter "intStr"

    .prologue
    .line 25
    const/4 v1, 0x0

    .line 27
    .local v1, iRet:I
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 32
    :goto_0
    return v1

    .line 28
    :catch_0
    move-exception v0

    .line 29
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "safe_parseInt~ parse error e:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V

    .line 30
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static sendMessage(Landroid/os/Handler;I)V
    .locals 2
    .parameter "handler"
    .parameter "what"

    .prologue
    .line 47
    const-wide/16 v0, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/htc/clock/util/MyUtil;->sendMessage(Landroid/os/Handler;IJ)V

    .line 48
    return-void
.end method

.method public static sendMessage(Landroid/os/Handler;IJ)V
    .locals 2
    .parameter "handler"
    .parameter "what"
    .parameter "delay"

    .prologue
    .line 51
    if-nez p0, :cond_0

    .line 59
    :goto_0
    return-void

    .line 54
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_1

    .line 55
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 57
    :cond_1
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public static sendMessage(Landroid/os/Handler;Landroid/os/Message;)V
    .locals 2
    .parameter "handler"
    .parameter "msg"

    .prologue
    .line 62
    const-wide/16 v0, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/htc/clock/util/MyUtil;->sendMessage(Landroid/os/Handler;Landroid/os/Message;J)V

    .line 63
    return-void
.end method

.method public static sendMessage(Landroid/os/Handler;Landroid/os/Message;J)V
    .locals 2
    .parameter "handler"
    .parameter "msg"
    .parameter "delay"

    .prologue
    .line 66
    if-nez p0, :cond_0

    .line 74
    :goto_0
    return-void

    .line 69
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_1

    .line 70
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 72
    :cond_1
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

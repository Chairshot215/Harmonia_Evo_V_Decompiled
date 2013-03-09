.class public Lcom/htc/weatheridlescreen/receiver/WISReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WISReceiver.java"


# static fields
.field private static final INTERVAL_TIME_SIX_HOURS:J = 0x1499700L

.field private static final INTERVAL_TIME_TWELVE_HOURS:J = 0x2932e00L

.field private static final INTERVAL_TIME_TWENTY_FOUR_HOURS:J = 0x5265c00L

.field private static final LOG_FLAG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "WIS"

.field private static final PREFIX:Ljava/lang/String; = "[WISReceiver] "

.field private static final mIsForTesting:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    invoke-static {p0}, Lcom/htc/weatheridlescreen/receiver/WISReceiver;->generatePendingIntentForDayToNight(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    invoke-static {p0}, Lcom/htc/weatheridlescreen/receiver/WISReceiver;->generatePendingIntentForNightToDay(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private static generatePendingIntentForDayToNight(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 142
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.weatheridlescreen.DayToNight"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 143
    .local v0, intent:Landroid/content/Intent;
    invoke-static {p0, v2, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method private static generatePendingIntentForNightToDay(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 148
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.weatheridlescreen.NightToDay"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 149
    .local v0, intent:Landroid/content/Intent;
    invoke-static {p0, v2, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 30
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 32
    .local v0, mAction:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 35
    :cond_1
    const-string v2, "com.htc.weatheridlescreen.PenddingBGEffectNotification"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 37
    const-string v2, "timezone"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 39
    .local v1, strTimeZone:Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 41
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/htc/weatheridlescreen/receiver/WISReceiver$1;

    invoke-direct {v3, p0, v1, p1}, Lcom/htc/weatheridlescreen/receiver/WISReceiver$1;-><init>(Lcom/htc/weatheridlescreen/receiver/WISReceiver;Ljava/lang/String;Landroid/content/Context;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 102
    .end local v1           #strTimeZone:Ljava/lang/String;
    :cond_2
    const-string v2, "com.htc.weatheridlescreen.DayToNight"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 104
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/htc/weatheridlescreen/receiver/WISReceiver$2;

    invoke-direct {v3, p0, p1}, Lcom/htc/weatheridlescreen/receiver/WISReceiver$2;-><init>(Lcom/htc/weatheridlescreen/receiver/WISReceiver;Landroid/content/Context;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 120
    :cond_3
    const-string v2, "com.htc.weatheridlescreen.NightToDay"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 122
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/htc/weatheridlescreen/receiver/WISReceiver$3;

    invoke-direct {v3, p0, p1}, Lcom/htc/weatheridlescreen/receiver/WISReceiver$3;-><init>(Lcom/htc/weatheridlescreen/receiver/WISReceiver;Landroid/content/Context;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

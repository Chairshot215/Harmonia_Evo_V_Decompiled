.class public Lcom/htc/android/worldclock/NightClock;
.super Landroid/app/Activity;
.source "NightClock.java"


# static fields
.field private static final SCREEN_DIMMED:Ljava/lang/String; = "screen_dimmed"

.field private static final SCREEN_SAVER_MODE:Ljava/lang/String; = "screen_saver_mode"

.field public static final TAB_ALARM:Ljava/lang/String; = "2"

.field public static final TAB_DESKCLOCK:Ljava/lang/String; = "0"

.field public static final TAB_STOPWATCH:Ljava/lang/String; = "3"

.field public static final TAB_TIMER:Ljava/lang/String; = "4"

.field public static final TAB_WORLDCLOCK:Ljava/lang/String; = "1"

.field public static final WORLDCLOCK_ACTION:Ljava/lang/String; = "worldclock_action"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x1

    .line 29
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 30
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 33
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 35
    const-string v1, "com.htc.android.worldclock"

    const-string v2, "com.htc.android.worldclock.WorldClockTabControl"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    const-string v1, "worldclock_action"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    const-string v1, "screen_dimmed"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 38
    const-string v1, "screen_saver_mode"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 39
    invoke-virtual {p0, v0}, Lcom/htc/android/worldclock/NightClock;->startActivity(Landroid/content/Intent;)V

    .line 40
    invoke-virtual {p0}, Lcom/htc/android/worldclock/NightClock;->finish()V

    .line 41
    return-void
.end method

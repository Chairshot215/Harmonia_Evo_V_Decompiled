.class public Lcom/htc/android/worldclock/ReLaunch;
.super Landroid/app/Activity;
.source "ReLaunch.java"


# static fields
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
    .line 18
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 19
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 23
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 24
    const-string v1, "com.htc.android.worldclock"

    const-string v2, "com.htc.android.worldclock.WorldClockTabControl"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 25
    const-string v1, "worldclock_action"

    invoke-virtual {p0}, Lcom/htc/android/worldclock/ReLaunch;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "worldclock_action"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 26
    invoke-virtual {p0, v0}, Lcom/htc/android/worldclock/ReLaunch;->startActivity(Landroid/content/Intent;)V

    .line 27
    invoke-virtual {p0}, Lcom/htc/android/worldclock/ReLaunch;->finish()V

    .line 28
    return-void
.end method

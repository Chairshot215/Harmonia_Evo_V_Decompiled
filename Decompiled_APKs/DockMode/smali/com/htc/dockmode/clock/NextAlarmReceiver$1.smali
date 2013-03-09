.class Lcom/htc/dockmode/clock/NextAlarmReceiver$1;
.super Ljava/lang/Object;
.source "NextAlarmReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/dockmode/clock/NextAlarmReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/dockmode/clock/NextAlarmReceiver;


# direct methods
.method constructor <init>(Lcom/htc/dockmode/clock/NextAlarmReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 21
    iput-object p1, p0, Lcom/htc/dockmode/clock/NextAlarmReceiver$1;->this$0:Lcom/htc/dockmode/clock/NextAlarmReceiver;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 23
    iget-object v2, p0, Lcom/htc/dockmode/clock/NextAlarmReceiver$1;->this$0:Lcom/htc/dockmode/clock/NextAlarmReceiver;

    #getter for: Lcom/htc/dockmode/clock/NextAlarmReceiver;->mIntent:Landroid/content/Intent;
    invoke-static {v2}, Lcom/htc/dockmode/clock/NextAlarmReceiver;->access$000(Lcom/htc/dockmode/clock/NextAlarmReceiver;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "snooze"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 24
    .local v1, snooze:Z
    iget-object v2, p0, Lcom/htc/dockmode/clock/NextAlarmReceiver$1;->this$0:Lcom/htc/dockmode/clock/NextAlarmReceiver;

    #getter for: Lcom/htc/dockmode/clock/NextAlarmReceiver;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/htc/dockmode/clock/NextAlarmReceiver;->access$100(Lcom/htc/dockmode/clock/NextAlarmReceiver;)Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/htc/dockmode/clock/ClockPref;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 26
    .local v0, settings:Landroid/content/SharedPreferences;
    const-string v2, "snooze"

    invoke-static {v0, v2, v1}, Lcom/htc/dockmode/utils/Preference;->setSettingBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;Z)Z

    .line 28
    return-void
.end method

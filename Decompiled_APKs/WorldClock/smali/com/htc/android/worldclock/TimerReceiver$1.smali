.class Lcom/htc/android/worldclock/TimerReceiver$1;
.super Ljava/lang/Object;
.source "TimerReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/worldclock/TimerReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/worldclock/TimerReceiver;


# direct methods
.method constructor <init>(Lcom/htc/android/worldclock/TimerReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/htc/android/worldclock/TimerReceiver$1;->this$0:Lcom/htc/android/worldclock/TimerReceiver;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 44
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/htc/android/worldclock/TimerReceiver$1;->this$0:Lcom/htc/android/worldclock/TimerReceiver;

    #getter for: Lcom/htc/android/worldclock/TimerReceiver;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/htc/android/worldclock/TimerReceiver;->access$000(Lcom/htc/android/worldclock/TimerReceiver;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/htc/android/worldclock/TimerService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 45
    .local v0, i:Landroid/content/Intent;
    iget-object v1, p0, Lcom/htc/android/worldclock/TimerReceiver$1;->this$0:Lcom/htc/android/worldclock/TimerReceiver;

    #getter for: Lcom/htc/android/worldclock/TimerReceiver;->mIntent:Landroid/content/Intent;
    invoke-static {v1}, Lcom/htc/android/worldclock/TimerReceiver;->access$100(Lcom/htc/android/worldclock/TimerReceiver;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    const-string v1, "alarm_time"

    iget-object v2, p0, Lcom/htc/android/worldclock/TimerReceiver$1;->this$0:Lcom/htc/android/worldclock/TimerReceiver;

    #getter for: Lcom/htc/android/worldclock/TimerReceiver;->mIntent:Landroid/content/Intent;
    invoke-static {v2}, Lcom/htc/android/worldclock/TimerReceiver;->access$100(Lcom/htc/android/worldclock/TimerReceiver;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "alarm_time"

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 47
    iget-object v1, p0, Lcom/htc/android/worldclock/TimerReceiver$1;->this$0:Lcom/htc/android/worldclock/TimerReceiver;

    #getter for: Lcom/htc/android/worldclock/TimerReceiver;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/htc/android/worldclock/TimerReceiver;->access$000(Lcom/htc/android/worldclock/TimerReceiver;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 48
    return-void
.end method

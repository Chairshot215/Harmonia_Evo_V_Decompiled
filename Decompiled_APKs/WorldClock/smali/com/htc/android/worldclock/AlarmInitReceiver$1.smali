.class Lcom/htc/android/worldclock/AlarmInitReceiver$1;
.super Ljava/lang/Object;
.source "AlarmInitReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/worldclock/AlarmInitReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/worldclock/AlarmInitReceiver;


# direct methods
.method constructor <init>(Lcom/htc/android/worldclock/AlarmInitReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/htc/android/worldclock/AlarmInitReceiver$1;->this$0:Lcom/htc/android/worldclock/AlarmInitReceiver;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 42
    iget-object v2, p0, Lcom/htc/android/worldclock/AlarmInitReceiver$1;->this$0:Lcom/htc/android/worldclock/AlarmInitReceiver;

    #getter for: Lcom/htc/android/worldclock/AlarmInitReceiver;->mIntent:Landroid/content/Intent;
    invoke-static {v2}, Lcom/htc/android/worldclock/AlarmInitReceiver;->access$000(Lcom/htc/android/worldclock/AlarmInitReceiver;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, action:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AlarmInitReceiver"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 44
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/htc/android/worldclock/AlarmInitReceiver$1;->this$0:Lcom/htc/android/worldclock/AlarmInitReceiver;

    #getter for: Lcom/htc/android/worldclock/AlarmInitReceiver;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/htc/android/worldclock/AlarmInitReceiver;->access$100(Lcom/htc/android/worldclock/AlarmInitReceiver;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/htc/android/worldclock/AlarmInitService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 45
    .local v1, i:Landroid/content/Intent;
    const-string v2, "Action"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    iget-object v2, p0, Lcom/htc/android/worldclock/AlarmInitReceiver$1;->this$0:Lcom/htc/android/worldclock/AlarmInitReceiver;

    #getter for: Lcom/htc/android/worldclock/AlarmInitReceiver;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/htc/android/worldclock/AlarmInitReceiver;->access$100(Lcom/htc/android/worldclock/AlarmInitReceiver;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 47
    return-void
.end method

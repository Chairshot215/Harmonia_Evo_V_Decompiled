.class Lcom/htc/android/worldclock/FotaReceiver$1;
.super Ljava/lang/Object;
.source "FotaReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/worldclock/FotaReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/worldclock/FotaReceiver;


# direct methods
.method constructor <init>(Lcom/htc/android/worldclock/FotaReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/htc/android/worldclock/FotaReceiver$1;->this$0:Lcom/htc/android/worldclock/FotaReceiver;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 41
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/htc/android/worldclock/FotaReceiver$1;->this$0:Lcom/htc/android/worldclock/FotaReceiver;

    #getter for: Lcom/htc/android/worldclock/FotaReceiver;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/htc/android/worldclock/FotaReceiver;->access$000(Lcom/htc/android/worldclock/FotaReceiver;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/htc/android/worldclock/FotaService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 42
    .local v0, i:Landroid/content/Intent;
    iget-object v1, p0, Lcom/htc/android/worldclock/FotaReceiver$1;->this$0:Lcom/htc/android/worldclock/FotaReceiver;

    #getter for: Lcom/htc/android/worldclock/FotaReceiver;->mIntent:Landroid/content/Intent;
    invoke-static {v1}, Lcom/htc/android/worldclock/FotaReceiver;->access$100(Lcom/htc/android/worldclock/FotaReceiver;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    iget-object v1, p0, Lcom/htc/android/worldclock/FotaReceiver$1;->this$0:Lcom/htc/android/worldclock/FotaReceiver;

    #getter for: Lcom/htc/android/worldclock/FotaReceiver;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/htc/android/worldclock/FotaReceiver;->access$000(Lcom/htc/android/worldclock/FotaReceiver;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 48
    return-void
.end method

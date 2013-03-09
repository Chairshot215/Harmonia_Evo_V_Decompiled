.class Lcom/google/android/finsky/receivers/BootCompletedReceiver$1;
.super Ljava/lang/Object;
.source "BootCompletedReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/receivers/BootCompletedReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/receivers/BootCompletedReceiver;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/receivers/BootCompletedReceiver;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/google/android/finsky/receivers/BootCompletedReceiver$1;->this$0:Lcom/google/android/finsky/receivers/BootCompletedReceiver;

    iput-object p2, p0, Lcom/google/android/finsky/receivers/BootCompletedReceiver$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 34
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/google/android/finsky/billing/iab/PendingNotificationsService;->ACTION_RESTART_ALARM:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 35
    iget-object v1, p0, Lcom/google/android/finsky/receivers/BootCompletedReceiver$1;->val$context:Landroid/content/Context;

    const-class v2, Lcom/google/android/finsky/billing/iab/PendingNotificationsService;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 36
    iget-object v1, p0, Lcom/google/android/finsky/receivers/BootCompletedReceiver$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 37
    iget-object v0, p0, Lcom/google/android/finsky/receivers/BootCompletedReceiver$1;->val$context:Landroid/content/Context;

    sget-wide v1, Lcom/google/android/finsky/services/DailyHygiene;->BOOT_DELAY_MS:J

    invoke-static {v0, v1, v2}, Lcom/google/android/finsky/services/DailyHygiene;->schedule(Landroid/content/Context;J)V

    .line 38
    return-void
.end method

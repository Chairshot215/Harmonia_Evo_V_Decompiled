.class Lcom/android/smith/NotificationReceiver$NotificationThread;
.super Ljava/lang/Object;
.source "NotificationReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/smith/NotificationReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotificationThread"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mIntent:Landroid/content/Intent;

.field final synthetic this$0:Lcom/android/smith/NotificationReceiver;


# direct methods
.method public constructor <init>(Lcom/android/smith/NotificationReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/smith/NotificationReceiver$NotificationThread;->this$0:Lcom/android/smith/NotificationReceiver;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p2, p0, Lcom/android/smith/NotificationReceiver$NotificationThread;->mContext:Landroid/content/Context;

    .line 49
    iput-object p3, p0, Lcom/android/smith/NotificationReceiver$NotificationThread;->mIntent:Landroid/content/Intent;

    .line 50
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/high16 v1, 0x7f02

    .line 53
    iget-object v0, p0, Lcom/android/smith/NotificationReceiver$NotificationThread;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 55
    .local v6, action:Ljava/lang/String;
    const-string v0, "com.android.smith.SYSTEMLOGGERS_STATUS"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    const-string v2, "SM: System Loggers"

    .line 58
    .local v2, ticket:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/smith/NotificationReceiver$NotificationThread;->mIntent:Landroid/content/Intent;

    const-string v3, "status"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 59
    .local v8, status:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/smith/NotificationReceiver$NotificationThread;->mIntent:Landroid/content/Intent;

    const-string v3, "path"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 61
    .local v7, path:Ljava/lang/String;
    const-string v0, "SM:NotificationReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "System Logger status = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", path = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/smith/Device$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string v0, "enabled"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    iget-object v0, p0, Lcom/android/smith/NotificationReceiver$NotificationThread;->mContext:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Enabled - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x20

    move-object v3, v2

    invoke-static/range {v0 .. v5}, Lcom/android/smith/Device;->sendNotification(Landroid/content/Context;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 73
    .end local v2           #ticket:Ljava/lang/String;
    .end local v7           #path:Ljava/lang/String;
    .end local v8           #status:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 67
    .restart local v2       #ticket:Ljava/lang/String;
    .restart local v7       #path:Ljava/lang/String;
    .restart local v8       #status:Ljava/lang/String;
    :cond_1
    const-string v0, "disabled"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/android/smith/NotificationReceiver$NotificationThread;->mContext:Landroid/content/Context;

    const-string v4, "Disabled - click here to open"

    const/16 v5, 0x10

    move-object v3, v2

    invoke-static/range {v0 .. v5}, Lcom/android/smith/Device;->sendNotification(Landroid/content/Context;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    goto :goto_0
.end method

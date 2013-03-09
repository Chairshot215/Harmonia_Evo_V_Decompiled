.class Lcom/htc/weatheridlescreen/receiver/WISReceiver$3;
.super Ljava/lang/Object;
.source "WISReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/weatheridlescreen/receiver/WISReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/weatheridlescreen/receiver/WISReceiver;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/htc/weatheridlescreen/receiver/WISReceiver;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 122
    iput-object p1, p0, Lcom/htc/weatheridlescreen/receiver/WISReceiver$3;->this$0:Lcom/htc/weatheridlescreen/receiver/WISReceiver;

    iput-object p2, p0, Lcom/htc/weatheridlescreen/receiver/WISReceiver$3;->val$context:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 125
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 126
    .local v1, mCurrentSystemTime:J
    iget-object v4, p0, Lcom/htc/weatheridlescreen/receiver/WISReceiver$3;->val$context:Landroid/content/Context;

    #calls: Lcom/htc/weatheridlescreen/receiver/WISReceiver;->generatePendingIntentForNightToDay(Landroid/content/Context;)Landroid/app/PendingIntent;
    invoke-static {v4}, Lcom/htc/weatheridlescreen/receiver/WISReceiver;->access$100(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v3

    .line 127
    .local v3, pendingIntentND:Landroid/app/PendingIntent;
    iget-object v4, p0, Lcom/htc/weatheridlescreen/receiver/WISReceiver$3;->val$context:Landroid/content/Context;

    const-string v5, "alarm"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 128
    .local v0, am:Landroid/app/AlarmManager;
    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {v0, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 133
    const/4 v4, 0x1

    const-wide/32 v5, 0x5265c00

    add-long/2addr v5, v1

    invoke-virtual {v0, v4, v5, v6, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 135
    :cond_0
    return-void
.end method

.class Lcom/android/mms/push/PushMessagesActivity$ExpiredMessagesLoop;
.super Ljava/lang/Object;
.source "PushMessagesActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/push/PushMessagesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ExpiredMessagesLoop"
.end annotation


# static fields
.field private static final TIMER_INTERVAL:I = 0xea60


# instance fields
.field final synthetic this$0:Lcom/android/mms/push/PushMessagesActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/push/PushMessagesActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 453
    iput-object p1, p0, Lcom/android/mms/push/PushMessagesActivity$ExpiredMessagesLoop;->this$0:Lcom/android/mms/push/PushMessagesActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 457
    :goto_0
    iget-object v1, p0, Lcom/android/mms/push/PushMessagesActivity$ExpiredMessagesLoop;->this$0:Lcom/android/mms/push/PushMessagesActivity;

    #getter for: Lcom/android/mms/push/PushMessagesActivity;->mTimerKeepRunning:Z
    invoke-static {v1}, Lcom/android/mms/push/PushMessagesActivity;->access$600(Lcom/android/mms/push/PushMessagesActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 458
    iget-object v1, p0, Lcom/android/mms/push/PushMessagesActivity$ExpiredMessagesLoop;->this$0:Lcom/android/mms/push/PushMessagesActivity;

    invoke-static {v1}, Lcom/android/mms/push/PushUtil;->deleteExpiredSi(Landroid/content/Context;)V

    .line 461
    const-wide/32 v1, 0xea60

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 462
    :catch_0
    move-exception v0

    .line 463
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "ExpiredMessagesLoop"

    const-string v2, "Interrupt of sleep"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 466
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_0
    return-void
.end method

.class final Lcom/android/mms/transaction/MessagingNotification$3;
.super Ljava/lang/Thread;
.source "MessagingNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/transaction/MessagingNotification;->updateNotification(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;IZLjava/lang/CharSequence;JLjava/lang/String;IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$cx:Landroid/content/Context;

.field final synthetic val$subject:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1520
    iput-object p1, p0, Lcom/android/mms/transaction/MessagingNotification$3;->val$cx:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/mms/transaction/MessagingNotification$3;->val$subject:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1523
    const-wide/16 v1, 0x1388

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1528
    :goto_0
    iget-object v1, p0, Lcom/android/mms/transaction/MessagingNotification$3;->val$cx:Landroid/content/Context;

    const-string v2, ""

    iget-object v3, p0, Lcom/android/mms/transaction/MessagingNotification$3;->val$subject:Ljava/lang/String;

    const-string v4, ""

    const/4 v5, 0x0

    #calls: Lcom/android/mms/transaction/MessagingNotification;->updateLockScreen(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/mms/transaction/MessagingNotification;->access$400(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 1529
    return-void

    .line 1524
    :catch_0
    move-exception v0

    .line 1526
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

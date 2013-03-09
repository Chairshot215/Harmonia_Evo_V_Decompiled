.class Lcom/google/android/talk/videochat/NotificationReceiver$1;
.super Ljava/lang/Object;
.source "NotificationReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/videochat/NotificationReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/videochat/NotificationReceiver;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$isVideo:Z

.field final synthetic val$localBareJid:Ljava/lang/String;

.field final synthetic val$notifier:Lcom/google/android/talk/videochat/IncomingCallNotifier;

.field final synthetic val$remoteJid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/talk/videochat/NotificationReceiver;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/talk/videochat/IncomingCallNotifier;Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/google/android/talk/videochat/NotificationReceiver$1;->this$0:Lcom/google/android/talk/videochat/NotificationReceiver;

    iput-object p2, p0, Lcom/google/android/talk/videochat/NotificationReceiver$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/talk/videochat/NotificationReceiver$1;->val$localBareJid:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/talk/videochat/NotificationReceiver$1;->val$notifier:Lcom/google/android/talk/videochat/IncomingCallNotifier;

    iput-object p5, p0, Lcom/google/android/talk/videochat/NotificationReceiver$1;->val$remoteJid:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/google/android/talk/videochat/NotificationReceiver$1;->val$isVideo:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/android/talk/videochat/NotificationReceiver$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/talk/videochat/NotificationReceiver$1;->val$localBareJid:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/talk/DatabaseUtils;->getAccountIdForUsername(Landroid/content/ContentResolver;Ljava/lang/String;)J

    move-result-wide v2

    .line 79
    .local v2, accountId:J
    iget-object v0, p0, Lcom/google/android/talk/videochat/NotificationReceiver$1;->val$notifier:Lcom/google/android/talk/videochat/IncomingCallNotifier;

    iget-object v1, p0, Lcom/google/android/talk/videochat/NotificationReceiver$1;->val$remoteJid:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/google/android/talk/videochat/NotificationReceiver$1;->val$isVideo:Z

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/talk/videochat/IncomingCallNotifier;->postNotification(Ljava/lang/String;JZLcom/google/android/videochat/CallState;)V

    .line 80
    return-void
.end method

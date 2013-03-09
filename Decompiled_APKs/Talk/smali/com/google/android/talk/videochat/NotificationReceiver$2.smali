.class Lcom/google/android/talk/videochat/NotificationReceiver$2;
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

.field final synthetic val$notifier:Lcom/google/android/talk/videochat/IncomingCallNotifier;


# direct methods
.method constructor <init>(Lcom/google/android/talk/videochat/NotificationReceiver;Lcom/google/android/talk/videochat/IncomingCallNotifier;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/google/android/talk/videochat/NotificationReceiver$2;->this$0:Lcom/google/android/talk/videochat/NotificationReceiver;

    iput-object p2, p0, Lcom/google/android/talk/videochat/NotificationReceiver$2;->val$notifier:Lcom/google/android/talk/videochat/IncomingCallNotifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/talk/videochat/NotificationReceiver$2;->val$notifier:Lcom/google/android/talk/videochat/IncomingCallNotifier;

    invoke-virtual {v0}, Lcom/google/android/talk/videochat/IncomingCallNotifier;->cancelNotification()V

    .line 92
    return-void
.end method

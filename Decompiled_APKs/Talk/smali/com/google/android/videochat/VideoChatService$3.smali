.class Lcom/google/android/videochat/VideoChatService$3;
.super Ljava/lang/Object;
.source "VideoChatService.java"

# interfaces
.implements Lcom/google/android/videochat/OngoingNotificationFactory$OngoingNotificationReadyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/videochat/VideoChatService;->postOngoingNotification(Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/videochat/VideoChatService;


# direct methods
.method constructor <init>(Lcom/google/android/videochat/VideoChatService;)V
    .locals 0
    .parameter

    .prologue
    .line 463
    iput-object p1, p0, Lcom/google/android/videochat/VideoChatService$3;->this$0:Lcom/google/android/videochat/VideoChatService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOngoingNotificationReady(Landroid/app/Notification;)V
    .locals 2
    .parameter "notification"

    .prologue
    .line 466
    if-eqz p1, :cond_0

    .line 467
    iget v0, p1, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p1, Landroid/app/Notification;->flags:I

    .line 468
    iget-object v0, p0, Lcom/google/android/videochat/VideoChatService$3;->this$0:Lcom/google/android/videochat/VideoChatService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/videochat/VideoChatService;->startForeground(ILandroid/app/Notification;)V

    .line 470
    :cond_0
    return-void
.end method

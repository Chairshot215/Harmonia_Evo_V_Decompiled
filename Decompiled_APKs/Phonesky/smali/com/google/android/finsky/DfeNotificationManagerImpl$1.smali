.class Lcom/google/android/finsky/DfeNotificationManagerImpl$1;
.super Ljava/lang/Object;
.source "DfeNotificationManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/DfeNotificationManagerImpl;->processNotification(Lcom/google/android/finsky/remoting/protos/Notifications$Notification;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/DfeNotificationManagerImpl;

.field final synthetic val$notification:Lcom/google/android/finsky/remoting/protos/Notifications$Notification;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/DfeNotificationManagerImpl;Lcom/google/android/finsky/remoting/protos/Notifications$Notification;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/google/android/finsky/DfeNotificationManagerImpl$1;->this$0:Lcom/google/android/finsky/DfeNotificationManagerImpl;

    iput-object p2, p0, Lcom/google/android/finsky/DfeNotificationManagerImpl$1;->val$notification:Lcom/google/android/finsky/remoting/protos/Notifications$Notification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/finsky/DfeNotificationManagerImpl$1;->this$0:Lcom/google/android/finsky/DfeNotificationManagerImpl;

    iget-object v1, p0, Lcom/google/android/finsky/DfeNotificationManagerImpl$1;->val$notification:Lcom/google/android/finsky/remoting/protos/Notifications$Notification;

    #calls: Lcom/google/android/finsky/DfeNotificationManagerImpl;->handleNotification(Lcom/google/android/finsky/remoting/protos/Notifications$Notification;)V
    invoke-static {v0, v1}, Lcom/google/android/finsky/DfeNotificationManagerImpl;->access$000(Lcom/google/android/finsky/DfeNotificationManagerImpl;Lcom/google/android/finsky/remoting/protos/Notifications$Notification;)V

    .line 94
    return-void
.end method

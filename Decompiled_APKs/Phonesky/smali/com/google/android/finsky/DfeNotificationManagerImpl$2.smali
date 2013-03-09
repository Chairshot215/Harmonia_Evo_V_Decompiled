.class Lcom/google/android/finsky/DfeNotificationManagerImpl$2;
.super Ljava/lang/Object;
.source "DfeNotificationManagerImpl.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/DfeNotificationManagerImpl;->ackNotification(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Lcom/google/android/finsky/remoting/protos/AckNotification$AckNotificationResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/DfeNotificationManagerImpl;

.field final synthetic val$notificationId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/DfeNotificationManagerImpl;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 342
    iput-object p1, p0, Lcom/google/android/finsky/DfeNotificationManagerImpl$2;->this$0:Lcom/google/android/finsky/DfeNotificationManagerImpl;

    iput-object p2, p0, Lcom/google/android/finsky/DfeNotificationManagerImpl$2;->val$notificationId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/google/android/finsky/remoting/protos/AckNotification$AckNotificationResponse;)V
    .locals 4
    .parameter "response"

    .prologue
    .line 345
    const-string v0, "Notification [%s] successfully ack\'d."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/finsky/DfeNotificationManagerImpl$2;->val$notificationId:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 346
    iget-object v0, p0, Lcom/google/android/finsky/DfeNotificationManagerImpl$2;->this$0:Lcom/google/android/finsky/DfeNotificationManagerImpl;

    #getter for: Lcom/google/android/finsky/DfeNotificationManagerImpl;->mPendingAcks:Ljava/util/List;
    invoke-static {v0}, Lcom/google/android/finsky/DfeNotificationManagerImpl;->access$100(Lcom/google/android/finsky/DfeNotificationManagerImpl;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/DfeNotificationManagerImpl$2;->val$notificationId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 347
    iget-object v0, p0, Lcom/google/android/finsky/DfeNotificationManagerImpl$2;->this$0:Lcom/google/android/finsky/DfeNotificationManagerImpl;

    #calls: Lcom/google/android/finsky/DfeNotificationManagerImpl;->savePendingAcks()V
    invoke-static {v0}, Lcom/google/android/finsky/DfeNotificationManagerImpl;->access$200(Lcom/google/android/finsky/DfeNotificationManagerImpl;)V

    .line 348
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 342
    check-cast p1, Lcom/google/android/finsky/remoting/protos/AckNotification$AckNotificationResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/DfeNotificationManagerImpl$2;->onResponse(Lcom/google/android/finsky/remoting/protos/AckNotification$AckNotificationResponse;)V

    return-void
.end method

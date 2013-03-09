.class Lcom/google/android/finsky/DfeNotificationManagerImpl$3;
.super Ljava/lang/Object;
.source "DfeNotificationManagerImpl.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/DfeNotificationManagerImpl;->ackNotification(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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
    .line 349
    iput-object p1, p0, Lcom/google/android/finsky/DfeNotificationManagerImpl$3;->this$0:Lcom/google/android/finsky/DfeNotificationManagerImpl;

    iput-object p2, p0, Lcom/google/android/finsky/DfeNotificationManagerImpl$3;->val$notificationId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 4
    .parameter "error"

    .prologue
    .line 352
    const-string v0, "Error acking notification [%s]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/finsky/DfeNotificationManagerImpl$3;->val$notificationId:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 353
    return-void
.end method

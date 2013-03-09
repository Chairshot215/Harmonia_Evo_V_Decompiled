.class Lcom/google/android/finsky/utils/UninstallSubscriptionsTracker$1;
.super Ljava/lang/Object;
.source "UninstallSubscriptionsTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/utils/UninstallSubscriptionsTracker;->onPackageRemoved(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/utils/UninstallSubscriptionsTracker;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/utils/UninstallSubscriptionsTracker;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lcom/google/android/finsky/utils/UninstallSubscriptionsTracker$1;->this$0:Lcom/google/android/finsky/utils/UninstallSubscriptionsTracker;

    iput-object p2, p0, Lcom/google/android/finsky/utils/UninstallSubscriptionsTracker$1;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/finsky/utils/UninstallSubscriptionsTracker$1;->this$0:Lcom/google/android/finsky/utils/UninstallSubscriptionsTracker;

    iget-object v1, p0, Lcom/google/android/finsky/utils/UninstallSubscriptionsTracker$1;->val$packageName:Ljava/lang/String;

    #calls: Lcom/google/android/finsky/utils/UninstallSubscriptionsTracker;->checkAndNotifyActiveSubscriptions(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/UninstallSubscriptionsTracker;->access$000(Lcom/google/android/finsky/utils/UninstallSubscriptionsTracker;Ljava/lang/String;)V

    .line 41
    return-void
.end method

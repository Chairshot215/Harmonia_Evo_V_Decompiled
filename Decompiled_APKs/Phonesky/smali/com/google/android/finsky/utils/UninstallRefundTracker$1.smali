.class Lcom/google/android/finsky/utils/UninstallRefundTracker$1;
.super Ljava/lang/Object;
.source "UninstallRefundTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/utils/UninstallRefundTracker;->onPackageRemoved(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/utils/UninstallRefundTracker;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/utils/UninstallRefundTracker;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/google/android/finsky/utils/UninstallRefundTracker$1;->this$0:Lcom/google/android/finsky/utils/UninstallRefundTracker;

    iput-object p2, p0, Lcom/google/android/finsky/utils/UninstallRefundTracker$1;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/finsky/utils/UninstallRefundTracker$1;->this$0:Lcom/google/android/finsky/utils/UninstallRefundTracker;

    iget-object v1, p0, Lcom/google/android/finsky/utils/UninstallRefundTracker$1;->val$packageName:Ljava/lang/String;

    #calls: Lcom/google/android/finsky/utils/UninstallRefundTracker;->refundIfNecessary(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/UninstallRefundTracker;->access$000(Lcom/google/android/finsky/utils/UninstallRefundTracker;Ljava/lang/String;)V

    .line 47
    return-void
.end method

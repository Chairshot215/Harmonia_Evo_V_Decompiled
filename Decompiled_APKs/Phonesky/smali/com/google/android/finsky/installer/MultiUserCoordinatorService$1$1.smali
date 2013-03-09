.class Lcom/google/android/finsky/installer/MultiUserCoordinatorService$1$1;
.super Ljava/lang/Object;
.source "MultiUserCoordinatorService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/installer/MultiUserCoordinatorService$1;->acquirePackage(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/finsky/installer/MultiUserCoordinatorService$1;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/installer/MultiUserCoordinatorService$1;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/google/android/finsky/installer/MultiUserCoordinatorService$1$1;->this$1:Lcom/google/android/finsky/installer/MultiUserCoordinatorService$1;

    iput-object p2, p0, Lcom/google/android/finsky/installer/MultiUserCoordinatorService$1$1;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/finsky/installer/MultiUserCoordinatorService$1$1;->this$1:Lcom/google/android/finsky/installer/MultiUserCoordinatorService$1;

    iget-object v0, v0, Lcom/google/android/finsky/installer/MultiUserCoordinatorService$1;->this$0:Lcom/google/android/finsky/installer/MultiUserCoordinatorService;

    iget-object v1, p0, Lcom/google/android/finsky/installer/MultiUserCoordinatorService$1$1;->val$packageName:Ljava/lang/String;

    #setter for: Lcom/google/android/finsky/installer/MultiUserCoordinatorService;->mDebugPackageJustReleased:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/google/android/finsky/installer/MultiUserCoordinatorService;->access$202(Lcom/google/android/finsky/installer/MultiUserCoordinatorService;Ljava/lang/String;)Ljava/lang/String;

    .line 90
    iget-object v0, p0, Lcom/google/android/finsky/installer/MultiUserCoordinatorService$1$1;->this$1:Lcom/google/android/finsky/installer/MultiUserCoordinatorService$1;

    iget-object v1, p0, Lcom/google/android/finsky/installer/MultiUserCoordinatorService$1$1;->val$packageName:Ljava/lang/String;

    #calls: Lcom/google/android/finsky/installer/MultiUserCoordinatorService$1;->notifyReleased(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/google/android/finsky/installer/MultiUserCoordinatorService$1;->access$300(Lcom/google/android/finsky/installer/MultiUserCoordinatorService$1;Ljava/lang/String;)V

    .line 91
    return-void
.end method

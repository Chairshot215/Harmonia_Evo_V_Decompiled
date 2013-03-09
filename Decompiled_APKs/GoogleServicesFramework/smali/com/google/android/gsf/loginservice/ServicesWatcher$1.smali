.class Lcom/google/android/gsf/loginservice/ServicesWatcher$1;
.super Ljava/lang/Thread;
.source "ServicesWatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/loginservice/ServicesWatcher;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/loginservice/ServicesWatcher;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$result:Landroid/content/BroadcastReceiver$PendingResult;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/loginservice/ServicesWatcher;Ljava/lang/String;Landroid/content/Context;Landroid/content/BroadcastReceiver$PendingResult;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/google/android/gsf/loginservice/ServicesWatcher$1;->this$0:Lcom/google/android/gsf/loginservice/ServicesWatcher;

    iput-object p3, p0, Lcom/google/android/gsf/loginservice/ServicesWatcher$1;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/android/gsf/loginservice/ServicesWatcher$1;->val$result:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/ServicesWatcher$1;->this$0:Lcom/google/android/gsf/loginservice/ServicesWatcher;

    iget-object v1, p0, Lcom/google/android/gsf/loginservice/ServicesWatcher$1;->val$context:Landroid/content/Context;

    #calls: Lcom/google/android/gsf/loginservice/ServicesWatcher;->updatePackages(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/google/android/gsf/loginservice/ServicesWatcher;->access$000(Lcom/google/android/gsf/loginservice/ServicesWatcher;Landroid/content/Context;)V

    .line 56
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/ServicesWatcher$1;->val$result:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-virtual {v0}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    .line 57
    return-void
.end method

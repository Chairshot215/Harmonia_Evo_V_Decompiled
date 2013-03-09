.class Lcom/android/bluetooth/opp/TestActivity$7$1;
.super Ljava/lang/Thread;
.source "TestActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/bluetooth/opp/TestActivity$7;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/bluetooth/opp/TestActivity$7;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/opp/TestActivity$7;)V
    .locals 0
    .parameter

    .prologue
    .line 334
    iput-object p1, p0, Lcom/android/bluetooth/opp/TestActivity$7$1;->this$1:Lcom/android/bluetooth/opp/TestActivity$7;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 336
    iget-object v0, p0, Lcom/android/bluetooth/opp/TestActivity$7$1;->this$1:Lcom/android/bluetooth/opp/TestActivity$7;

    iget-object v0, v0, Lcom/android/bluetooth/opp/TestActivity$7;->this$0:Lcom/android/bluetooth/opp/TestActivity;

    iget-object v1, v0, Lcom/android/bluetooth/opp/TestActivity;->server:Lcom/android/bluetooth/opp/TestTcpServer;

    monitor-enter v1

    .line 337
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/TestActivity$7$1;->this$1:Lcom/android/bluetooth/opp/TestActivity$7;

    iget-object v0, v0, Lcom/android/bluetooth/opp/TestActivity$7;->this$0:Lcom/android/bluetooth/opp/TestActivity;

    iget-object v0, v0, Lcom/android/bluetooth/opp/TestActivity;->server:Lcom/android/bluetooth/opp/TestTcpServer;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/bluetooth/opp/TestTcpServer;->a:Z

    .line 338
    iget-object v0, p0, Lcom/android/bluetooth/opp/TestActivity$7$1;->this$1:Lcom/android/bluetooth/opp/TestActivity$7;

    iget-object v0, v0, Lcom/android/bluetooth/opp/TestActivity$7;->this$0:Lcom/android/bluetooth/opp/TestActivity;

    iget-object v0, v0, Lcom/android/bluetooth/opp/TestActivity;->server:Lcom/android/bluetooth/opp/TestTcpServer;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 339
    monitor-exit v1

    .line 340
    return-void

    .line 339
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

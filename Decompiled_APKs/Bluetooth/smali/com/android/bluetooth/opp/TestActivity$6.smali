.class Lcom/android/bluetooth/opp/TestActivity$6;
.super Ljava/lang/Object;
.source "TestActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/opp/TestActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/opp/TestActivity;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/opp/TestActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 323
    iput-object p1, p0, Lcom/android/bluetooth/opp/TestActivity$6;->this$0:Lcom/android/bluetooth/opp/TestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 325
    iget-object v1, p0, Lcom/android/bluetooth/opp/TestActivity$6;->this$0:Lcom/android/bluetooth/opp/TestActivity;

    new-instance v2, Lcom/android/bluetooth/opp/TestTcpServer;

    invoke-direct {v2}, Lcom/android/bluetooth/opp/TestTcpServer;-><init>()V

    iput-object v2, v1, Lcom/android/bluetooth/opp/TestActivity;->server:Lcom/android/bluetooth/opp/TestTcpServer;

    .line 326
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/bluetooth/opp/TestActivity$6;->this$0:Lcom/android/bluetooth/opp/TestActivity;

    iget-object v1, v1, Lcom/android/bluetooth/opp/TestActivity;->server:Lcom/android/bluetooth/opp/TestTcpServer;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 327
    .local v0, server_thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 329
    return-void
.end method

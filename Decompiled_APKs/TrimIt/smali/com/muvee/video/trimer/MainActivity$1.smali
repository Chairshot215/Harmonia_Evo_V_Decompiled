.class Lcom/muvee/video/trimer/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/muvee/video/trimer/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/muvee/video/trimer/MainActivity;


# direct methods
.method constructor <init>(Lcom/muvee/video/trimer/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/muvee/video/trimer/MainActivity$1;->this$0:Lcom/muvee/video/trimer/MainActivity;

    .line 808
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 812
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity$1;->this$0:Lcom/muvee/video/trimer/MainActivity;

    #getter for: Lcom/muvee/video/trimer/MainActivity;->mHandler2:Landroid/os/Handler;
    invoke-static {v0}, Lcom/muvee/video/trimer/MainActivity;->access$0(Lcom/muvee/video/trimer/MainActivity;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 813
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity$1;->this$0:Lcom/muvee/video/trimer/MainActivity;

    #getter for: Lcom/muvee/video/trimer/MainActivity;->mHandler2:Landroid/os/Handler;
    invoke-static {v0}, Lcom/muvee/video/trimer/MainActivity;->access$0(Lcom/muvee/video/trimer/MainActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/muvee/video/trimer/MainActivity$1;->this$0:Lcom/muvee/video/trimer/MainActivity;

    #getter for: Lcom/muvee/video/trimer/MainActivity;->mSaveRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/muvee/video/trimer/MainActivity;->access$1(Lcom/muvee/video/trimer/MainActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 814
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity$1;->this$0:Lcom/muvee/video/trimer/MainActivity;

    const/4 v1, 0x0

    #setter for: Lcom/muvee/video/trimer/MainActivity;->mHandler2:Landroid/os/Handler;
    invoke-static {v0, v1}, Lcom/muvee/video/trimer/MainActivity;->access$2(Lcom/muvee/video/trimer/MainActivity;Landroid/os/Handler;)V

    .line 817
    :cond_0
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity$1;->this$0:Lcom/muvee/video/trimer/MainActivity;

    #calls: Lcom/muvee/video/trimer/MainActivity;->doSave()V
    invoke-static {v0}, Lcom/muvee/video/trimer/MainActivity;->access$3(Lcom/muvee/video/trimer/MainActivity;)V

    .line 818
    return-void
.end method

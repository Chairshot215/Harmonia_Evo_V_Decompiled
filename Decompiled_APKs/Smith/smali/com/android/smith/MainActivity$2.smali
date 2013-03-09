.class Lcom/android/smith/MainActivity$2;
.super Landroid/os/Handler;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/smith/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/smith/MainActivity;


# direct methods
.method constructor <init>(Lcom/android/smith/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 536
    iput-object p1, p0, Lcom/android/smith/MainActivity$2;->this$0:Lcom/android/smith/MainActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 540
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 556
    :cond_0
    :goto_0
    return-void

    .line 543
    :pswitch_0
    iget-object v0, p0, Lcom/android/smith/MainActivity$2;->this$0:Lcom/android/smith/MainActivity;

    #calls: Lcom/android/smith/MainActivity;->showVersionDialog()V
    invoke-static {v0}, Lcom/android/smith/MainActivity;->access$100(Lcom/android/smith/MainActivity;)V

    goto :goto_0

    .line 547
    :pswitch_1
    iget-object v0, p0, Lcom/android/smith/MainActivity$2;->this$0:Lcom/android/smith/MainActivity;

    #getter for: Lcom/android/smith/MainActivity;->mInitThread:Lcom/android/smith/MainActivity$InitThread;
    invoke-static {v0}, Lcom/android/smith/MainActivity;->access$200(Lcom/android/smith/MainActivity;)Lcom/android/smith/MainActivity$InitThread;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 549
    const-string v0, "SM:Main"

    const-string v1, "init timeout!"

    invoke-static {v0, v1}, Lcom/android/smith/Device$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    iget-object v0, p0, Lcom/android/smith/MainActivity$2;->this$0:Lcom/android/smith/MainActivity;

    #getter for: Lcom/android/smith/MainActivity;->mInitThread:Lcom/android/smith/MainActivity$InitThread;
    invoke-static {v0}, Lcom/android/smith/MainActivity;->access$200(Lcom/android/smith/MainActivity;)Lcom/android/smith/MainActivity$InitThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/smith/MainActivity$InitThread;->interrupt()V

    .line 552
    iget-object v0, p0, Lcom/android/smith/MainActivity$2;->this$0:Lcom/android/smith/MainActivity;

    const/4 v1, 0x0

    #setter for: Lcom/android/smith/MainActivity;->mInitThread:Lcom/android/smith/MainActivity$InitThread;
    invoke-static {v0, v1}, Lcom/android/smith/MainActivity;->access$202(Lcom/android/smith/MainActivity;Lcom/android/smith/MainActivity$InitThread;)Lcom/android/smith/MainActivity$InitThread;

    goto :goto_0

    .line 540
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

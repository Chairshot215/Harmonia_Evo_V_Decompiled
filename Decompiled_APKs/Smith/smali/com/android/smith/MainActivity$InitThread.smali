.class Lcom/android/smith/MainActivity$InitThread;
.super Ljava/lang/Thread;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/smith/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InitThread"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/smith/MainActivity;


# direct methods
.method public constructor <init>(Lcom/android/smith/MainActivity;Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "name"

    .prologue
    .line 510
    iput-object p1, p0, Lcom/android/smith/MainActivity$InitThread;->this$0:Lcom/android/smith/MainActivity;

    .line 511
    invoke-direct {p0, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 507
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/smith/MainActivity$InitThread;->mContext:Landroid/content/Context;

    .line 513
    iput-object p2, p0, Lcom/android/smith/MainActivity$InitThread;->mContext:Landroid/content/Context;

    .line 514
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 518
    const-string v0, "SM:Main"

    const-string v1, "begin of init thread."

    invoke-static {v0, v1}, Lcom/android/smith/Device$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    iget-object v0, p0, Lcom/android/smith/MainActivity$InitThread;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/smith/Device;->initEnvironment(Landroid/content/Context;)Z

    .line 524
    iget-object v0, p0, Lcom/android/smith/MainActivity$InitThread;->this$0:Lcom/android/smith/MainActivity;

    #getter for: Lcom/android/smith/MainActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/smith/MainActivity;->access$000(Lcom/android/smith/MainActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 526
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/smith/MainActivity$InitThread;->mContext:Landroid/content/Context;

    .line 528
    const-string v0, "SM:Main"

    const-string v1, "end of init thread."

    invoke-static {v0, v1}, Lcom/android/smith/Device$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    return-void
.end method

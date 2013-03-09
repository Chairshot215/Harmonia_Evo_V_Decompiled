.class Lcom/android/settings/wifi/WpsDialog$Count;
.super Ljava/lang/Thread;
.source "WpsDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WpsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Count"
.end annotation


# instance fields
.field mHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/android/settings/wifi/WpsDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WpsDialog;Landroid/os/Handler;)V
    .locals 1
    .parameter
    .parameter "h"

    .prologue
    .line 328
    iput-object p1, p0, Lcom/android/settings/wifi/WpsDialog$Count;->this$0:Lcom/android/settings/wifi/WpsDialog;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 329
    iput-object p2, p0, Lcom/android/settings/wifi/WpsDialog$Count;->mHandler:Landroid/os/Handler;

    .line 330
    const/4 v0, 0x1

    #setter for: Lcom/android/settings/wifi/WpsDialog;->mState:Z
    invoke-static {p1, v0}, Lcom/android/settings/wifi/WpsDialog;->access$702(Lcom/android/settings/wifi/WpsDialog;Z)Z

    .line 331
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 334
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/16 v3, 0x78

    if-ge v1, v3, :cond_0

    .line 336
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/wifi/WpsDialog$Count;->this$0:Lcom/android/settings/wifi/WpsDialog;

    #getter for: Lcom/android/settings/wifi/WpsDialog;->mState:Z
    invoke-static {v3}, Lcom/android/settings/wifi/WpsDialog;->access$700(Lcom/android/settings/wifi/WpsDialog;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 346
    :cond_0
    :goto_1
    return-void

    .line 338
    :cond_1
    const-wide/16 v3, 0x3e8

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 339
    iget-object v3, p0, Lcom/android/settings/wifi/WpsDialog$Count;->mHandler:Landroid/os/Handler;

    sget v4, Lcom/android/settings/wifi/WpsDialog;->COUNT_MESSAGE:I

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v1, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .line 340
    .local v2, msg:Landroid/os/Message;
    const-string v3, "WpsDialog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "count i="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    iget-object v3, p0, Lcom/android/settings/wifi/WpsDialog$Count;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 334
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 342
    .end local v2           #msg:Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 343
    .local v0, e:Ljava/lang/InterruptedException;
    goto :goto_1
.end method

.class Lcom/android/browser/CrashRecoveryHandler$2;
.super Ljava/lang/Object;
.source "CrashRecoveryHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/CrashRecoveryHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/CrashRecoveryHandler;


# direct methods
.method constructor <init>(Lcom/android/browser/CrashRecoveryHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcom/android/browser/CrashRecoveryHandler$2;->this$0:Lcom/android/browser/CrashRecoveryHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 145
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 146
    .local v0, state:Landroid/os/Bundle;
    iget-object v2, p0, Lcom/android/browser/CrashRecoveryHandler$2;->this$0:Lcom/android/browser/CrashRecoveryHandler;

    #getter for: Lcom/android/browser/CrashRecoveryHandler;->mController:Lcom/android/browser/Controller;
    invoke-static {v2}, Lcom/android/browser/CrashRecoveryHandler;->access$500(Lcom/android/browser/CrashRecoveryHandler;)Lcom/android/browser/Controller;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/browser/Controller;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 147
    iget-object v2, p0, Lcom/android/browser/CrashRecoveryHandler$2;->this$0:Lcom/android/browser/CrashRecoveryHandler;

    #getter for: Lcom/android/browser/CrashRecoveryHandler;->mBackgroundHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/browser/CrashRecoveryHandler;->access$600(Lcom/android/browser/CrashRecoveryHandler;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 150
    iget-object v2, p0, Lcom/android/browser/CrashRecoveryHandler$2;->this$0:Lcom/android/browser/CrashRecoveryHandler;

    #getter for: Lcom/android/browser/CrashRecoveryHandler;->mForegroundHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/browser/CrashRecoveryHandler;->access$800(Lcom/android/browser/CrashRecoveryHandler;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/browser/CrashRecoveryHandler$2;->this$0:Lcom/android/browser/CrashRecoveryHandler;

    #getter for: Lcom/android/browser/CrashRecoveryHandler;->mCreateState:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/android/browser/CrashRecoveryHandler;->access$700(Lcom/android/browser/CrashRecoveryHandler;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    .end local v0           #state:Landroid/os/Bundle;
    :goto_0
    return-void

    .line 151
    :catch_0
    move-exception v1

    .line 152
    .local v1, t:Ljava/lang/Throwable;
    const-string v2, "BrowserCrashRecovery"

    const-string v3, "Failed to save state"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

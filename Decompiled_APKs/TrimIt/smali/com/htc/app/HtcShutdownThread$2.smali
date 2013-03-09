.class final Lcom/htc/app/HtcShutdownThread$2;
.super Ljava/lang/Object;
.source "HtcShutdownThread.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/app/HtcShutdownThread;->shutdown(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 172
    iput-object p1, p0, Lcom/htc/app/HtcShutdownThread$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 176
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcCIQFlag:Z

    if-eqz v2, :cond_0

    .line 178
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.internal.policy.impl.SHUTDOWN_CIQ"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 179
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/htc/app/HtcShutdownThread$2;->val$context:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/htc/app/HtcShutdownThread$2;->val$context:Landroid/content/Context;

    #calls: Lcom/htc/app/HtcShutdownThread;->beginShutdownSequence(Landroid/content/Context;)V
    invoke-static {v2}, Lcom/htc/app/HtcShutdownThread;->access$100(Landroid/content/Context;)V

    .line 186
    return-void

    .line 180
    :catch_0
    move-exception v0

    .line 182
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "HtcShutdownThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Send system shutdown intext fail! Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

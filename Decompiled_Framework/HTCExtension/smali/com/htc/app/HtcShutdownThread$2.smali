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

    iput-object p1, p0, Lcom/htc/app/HtcShutdownThread$2;->val$context:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcCIQFlag:Z

    if-eqz v1, :cond_0

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.internal.policy.impl.SHUTDOWN_CIQ"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/app/HtcShutdownThread$2;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/htc/app/HtcShutdownThread$2;->val$context:Landroid/content/Context;

    #calls: Lcom/htc/app/HtcShutdownThread;->beginShutdownSequence(Landroid/content/Context;)V
    invoke-static {v1}, Lcom/htc/app/HtcShutdownThread;->access$100(Landroid/content/Context;)V

    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

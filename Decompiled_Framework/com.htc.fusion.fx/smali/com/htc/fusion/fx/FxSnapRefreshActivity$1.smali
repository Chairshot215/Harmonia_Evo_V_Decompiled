.class Lcom/htc/fusion/fx/FxSnapRefreshActivity$1;
.super Ljava/lang/Object;
.source "FxSnapRefreshActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/fusion/fx/FxSnapRefreshActivity;->setTimer(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/fusion/fx/FxSnapRefreshActivity;

.field final synthetic val$runningTime:I


# direct methods
.method constructor <init>(Lcom/htc/fusion/fx/FxSnapRefreshActivity;I)V
    .locals 0

    iput-object p1, p0, Lcom/htc/fusion/fx/FxSnapRefreshActivity$1;->this$0:Lcom/htc/fusion/fx/FxSnapRefreshActivity;

    iput p2, p0, Lcom/htc/fusion/fx/FxSnapRefreshActivity$1;->val$runningTime:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    iget v3, p0, Lcom/htc/fusion/fx/FxSnapRefreshActivity$1;->val$runningTime:I

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {}, Lcom/htc/fusion/fx/FxPerfLog;->stopLogging()V

    iget-object v3, p0, Lcom/htc/fusion/fx/FxSnapRefreshActivity$1;->this$0:Lcom/htc/fusion/fx/FxSnapRefreshActivity;

    invoke-virtual {v3}, Lcom/htc/fusion/fx/FxSnapRefreshActivity;->writeSummary()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v3, "myPid"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "summaryFile"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/htc/fusion/fx/FxSnapRefreshActivity$1;->this$0:Lcom/htc/fusion/fx/FxSnapRefreshActivity;

    const/4 v4, -0x1

    invoke-virtual {v3, v4, v1}, Lcom/htc/fusion/fx/FxSnapRefreshActivity;->setResult(ILandroid/content/Intent;)V

    const-string v3, "FxSnapRefreshActivity"

    const-string v4, "test Activity finish itself "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/htc/fusion/fx/FxSnapRefreshActivity$1;->this$0:Lcom/htc/fusion/fx/FxSnapRefreshActivity;

    invoke-virtual {v3}, Lcom/htc/fusion/fx/FxSnapRefreshActivity;->finish()V

    return-void

    :catch_0
    move-exception v3

    goto :goto_0
.end method

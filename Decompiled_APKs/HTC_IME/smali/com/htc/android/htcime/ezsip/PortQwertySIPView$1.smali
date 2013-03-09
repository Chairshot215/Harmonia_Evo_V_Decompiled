.class Lcom/htc/android/htcime/ezsip/PortQwertySIPView$1;
.super Ljava/lang/Object;
.source "PortQwertySIPView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->startGoogle8000(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPView;


# direct methods
.method constructor <init>(Lcom/htc/android/htcime/ezsip/PortQwertySIPView;)V
    .locals 0
    .parameter

    .prologue
    .line 1163
    iput-object p1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView$1;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1167
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView$1;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPView;

    #getter for: Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->handlingMsg:Z
    invoke-static {v1}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->access$000(Lcom/htc/android/htcime/ezsip/PortQwertySIPView;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    const-wide/16 v1, 0x1f4

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1168
    :catch_0
    move-exception v1

    .line 1170
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "1st_AUTO_COMP_TEST_FINISH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1171
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "out"

    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView$1;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPView;

    #getter for: Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->logFilePath:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->access$100(Lcom/htc/android/htcime/ezsip/PortQwertySIPView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1172
    invoke-static {}, Lcom/htc/android/htcime/HTCIMEService;->peekInstance()Lcom/htc/android/htcime/HTCIMEService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/htc/android/htcime/HTCIMEService;->sendBroadcast(Landroid/content/Intent;)V

    .line 1173
    return-void
.end method

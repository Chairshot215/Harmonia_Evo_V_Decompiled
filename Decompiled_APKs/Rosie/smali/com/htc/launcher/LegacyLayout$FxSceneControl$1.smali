.class Lcom/htc/launcher/LegacyLayout$FxSceneControl$1;
.super Ljava/lang/Object;
.source "LegacyLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/launcher/LegacyLayout$FxSceneControl;->setVisible(ZLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/launcher/LegacyLayout$FxSceneControl;

.field final synthetic val$futures:Ljava/util/ArrayList;

.field final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/htc/launcher/LegacyLayout$FxSceneControl;Ljava/util/ArrayList;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 212
    iput-object p1, p0, Lcom/htc/launcher/LegacyLayout$FxSceneControl$1;->this$1:Lcom/htc/launcher/LegacyLayout$FxSceneControl;

    iput-object p2, p0, Lcom/htc/launcher/LegacyLayout$FxSceneControl$1;->val$futures:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/htc/launcher/LegacyLayout$FxSceneControl$1;->val$runnable:Ljava/lang/Runnable;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 216
    :try_start_0
    iget-object v1, p0, Lcom/htc/launcher/LegacyLayout$FxSceneControl$1;->val$futures:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Future;

    const-wide/16 v2, 0x1f4

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2

    .line 225
    :goto_0
    const-string v1, "LegacyLayout"

    const-string v2, "setVisible get() timeout after get()"

    invoke-static {v1, v2}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    invoke-static {}, Lcom/htc/launcher/LegacyLayout;->access$1100()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/launcher/LegacyLayout$FxSceneControl$1;->val$runnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 228
    return-void

    .line 217
    :catch_0
    move-exception v0

    .line 218
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 219
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 220
    .local v0, e:Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    goto :goto_0

    .line 221
    .end local v0           #e:Ljava/util/concurrent/ExecutionException;
    :catch_2
    move-exception v0

    .line 222
    .local v0, e:Ljava/util/concurrent/TimeoutException;
    const-string v1, "LegacyLayout"

    const-string v2, "setVisible get() timeout after 500 mns"

    invoke-static {v1, v2}, Lcom/htc/launcher/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.class Lcom/htc/android/rosie/home/HostWidgetManager$1;
.super Ljava/lang/Object;
.source "HostWidgetManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/rosie/home/HostWidgetManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/rosie/home/HostWidgetManager;


# direct methods
.method constructor <init>(Lcom/htc/android/rosie/home/HostWidgetManager;)V
    .locals 0
    .parameter

    .prologue
    .line 611
    iput-object p1, p0, Lcom/htc/android/rosie/home/HostWidgetManager$1;->this$0:Lcom/htc/android/rosie/home/HostWidgetManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 614
    :try_start_0
    invoke-static {}, Lcom/htc/android/rosie/home/HostWidgetManager;->access$700()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/htc/android/rosie/home/HostWidgetManager;->access$800()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Saving widget ID:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/htc/android/rosie/home/HostWidgetManager;->access$900()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    :cond_0
    new-instance v1, Ljava/io/DataOutputStream;

    iget-object v2, p0, Lcom/htc/android/rosie/home/HostWidgetManager$1;->this$0:Lcom/htc/android/rosie/home/HostWidgetManager;

    #getter for: Lcom/htc/android/rosie/home/HostWidgetManager;->mOwner:Lcom/htc/android/rosie/home/HostWidgetManager$Owner;
    invoke-static {v2}, Lcom/htc/android/rosie/home/HostWidgetManager;->access$1000(Lcom/htc/android/rosie/home/HostWidgetManager;)Lcom/htc/android/rosie/home/HostWidgetManager$Owner;

    move-result-object v2

    invoke-interface {v2}, Lcom/htc/android/rosie/home/HostWidgetManager$Owner;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "widget-manager-data"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 616
    .local v1, out:Ljava/io/DataOutputStream;
    invoke-static {}, Lcom/htc/android/rosie/home/HostWidgetManager;->access$900()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 617
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 622
    .end local v1           #out:Ljava/io/DataOutputStream;
    :goto_0
    return-void

    .line 618
    :catch_0
    move-exception v0

    .line 620
    .local v0, e:Ljava/io/IOException;
    invoke-static {}, Lcom/htc/android/rosie/home/HostWidgetManager;->access$800()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cannot record widget ID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

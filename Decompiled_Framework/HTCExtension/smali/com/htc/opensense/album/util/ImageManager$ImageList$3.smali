.class Lcom/htc/opensense/album/util/ImageManager$ImageList$3;
.super Landroid/database/ContentObserver;
.source "ImageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/opensense/album/util/ImageManager$ImageList;->initContentObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/opensense/album/util/ImageManager$ImageList;


# direct methods
.method constructor <init>(Lcom/htc/opensense/album/util/ImageManager$ImageList;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/opensense/album/util/ImageManager$ImageList$3;->this$1:Lcom/htc/opensense/album/util/ImageManager$ImageList;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onChange(Z)V
    .locals 2

    iget-object v1, p0, Lcom/htc/opensense/album/util/ImageManager$ImageList$3;->this$1:Lcom/htc/opensense/album/util/ImageManager$ImageList;

    #getter for: Lcom/htc/opensense/album/util/ImageManager$ImageList;->mUpdateRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/htc/opensense/album/util/ImageManager$ImageList;->access$900(Lcom/htc/opensense/album/util/ImageManager$ImageList;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

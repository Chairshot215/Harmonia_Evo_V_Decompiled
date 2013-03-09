.class final Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$MyChangeObserver;
.super Landroid/database/ContentObserver;
.source "LiveGallery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MyChangeObserver"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;


# direct methods
.method public constructor <init>(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;)V
    .locals 1
    .parameter

    .prologue
    .line 238
    iput-object p1, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$MyChangeObserver;->this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    .line 239
    #getter for: Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mObserverHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->access$000(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;)Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 240
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 244
    const-string v0, "brian_LiveGallery_IdleScreen"

    const-string v1, "MyChangeObserver onChange."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget-object v0, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$MyChangeObserver;->this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    #getter for: Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mDestroy:Z
    invoke-static {v0}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->access$100(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    const-string v0, "brian_LiveGallery_IdleScreen"

    const-string v1, "MyChangeObserver onChange, mDestroy is true, ignore."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :goto_0
    return-void

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$MyChangeObserver;->this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    #calls: Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->setFolderModified()V
    invoke-static {v0}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->access$200(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;)V

    goto :goto_0
.end method

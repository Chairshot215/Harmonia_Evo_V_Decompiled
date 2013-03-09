.class Lcom/htc/album/helper/MenuManager$RotateThread;
.super Ljava/lang/Thread;
.source "MenuManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/helper/MenuManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RotateThread"
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mCancel:Z

.field private mDegree:I

.field private mDialog:Lcom/htc/app/HtcProgressDialog;

.field private mImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

.field private mListener:Lcom/htc/album/helper/MenuManager$RotateCallbackListener;

.field private mPosition:I

.field private mRotatePlugin:Lcom/htc/album/AlbumUtility/IPluginRotateIBT;

.field final synthetic this$0:Lcom/htc/album/helper/MenuManager;


# direct methods
.method constructor <init>(Lcom/htc/album/helper/MenuManager;Landroid/app/Activity;ILcom/htc/opensense2/album/util/ImageManager$IImage;ILcom/htc/album/helper/MenuManager$RotateCallbackListener;Lcom/htc/album/AlbumUtility/IPluginRotateIBT;)V
    .locals 2
    .parameter
    .parameter "activity"
    .parameter "pos"
    .parameter "curImage"
    .parameter "degree"
    .parameter "listener"
    .parameter "plugin"

    .prologue
    const/4 v1, 0x0

    .line 5274
    iput-object p1, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->this$0:Lcom/htc/album/helper/MenuManager;

    .line 5275
    const-string v0, "Rotate_Thread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 5264
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mCancel:Z

    .line 5270
    iput-object v1, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mDialog:Lcom/htc/app/HtcProgressDialog;

    .line 5271
    iput-object v1, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mRotatePlugin:Lcom/htc/album/AlbumUtility/IPluginRotateIBT;

    .line 5276
    iput-object p4, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 5277
    iput p5, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mDegree:I

    .line 5278
    iput p3, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mPosition:I

    .line 5279
    iput-object p2, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mActivity:Landroid/app/Activity;

    .line 5280
    iput-object p6, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mListener:Lcom/htc/album/helper/MenuManager$RotateCallbackListener;

    .line 5281
    iput-object p7, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mRotatePlugin:Lcom/htc/album/AlbumUtility/IPluginRotateIBT;

    .line 5282
    iget-object v0, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mRotatePlugin:Lcom/htc/album/AlbumUtility/IPluginRotateIBT;

    if-eqz v0, :cond_0

    .line 5283
    iget-object v0, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mRotatePlugin:Lcom/htc/album/AlbumUtility/IPluginRotateIBT;

    invoke-interface {v0}, Lcom/htc/album/AlbumUtility/IPluginRotateIBT;->onCreate()V

    .line 5285
    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/helper/MenuManager$RotateThread;->start()V

    .line 5286
    return-void
.end method

.method static synthetic access$1600(Lcom/htc/album/helper/MenuManager$RotateThread;)Lcom/htc/app/HtcProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 5262
    iget-object v0, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mDialog:Lcom/htc/app/HtcProgressDialog;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/htc/album/helper/MenuManager$RotateThread;Lcom/htc/app/HtcProgressDialog;)Lcom/htc/app/HtcProgressDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5262
    iput-object p1, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mDialog:Lcom/htc/app/HtcProgressDialog;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/htc/album/helper/MenuManager$RotateThread;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 5262
    iget-object v0, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mActivity:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 5289
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mCancel:Z

    .line 5290
    return-void
.end method

.method public run()V
    .locals 6

    .prologue
    .line 5294
    invoke-static {}, Lcom/htc/album/helper/MenuManager;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "remove cache in filmstrip and grid view"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5296
    iget-object v2, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mActivity:Landroid/app/Activity;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    if-nez v2, :cond_1

    .line 5355
    :cond_0
    :goto_0
    return-void

    .line 5299
    :cond_1
    iget-object v2, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mListener:Lcom/htc/album/helper/MenuManager$RotateCallbackListener;

    if-eqz v2, :cond_2

    .line 5301
    iget-object v2, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mListener:Lcom/htc/album/helper/MenuManager$RotateCallbackListener;

    iget v3, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mPosition:I

    iget-object v4, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-interface {v2, v3, v4}, Lcom/htc/album/helper/MenuManager$RotateCallbackListener;->onRotateBegin(ILcom/htc/opensense2/album/util/ImageManager$IImage;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 5303
    iget-object v2, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mListener:Lcom/htc/album/helper/MenuManager$RotateCallbackListener;

    iget v3, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mPosition:I

    iget-object v4, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-interface {v2, v3, v4}, Lcom/htc/album/helper/MenuManager$RotateCallbackListener;->onRotateFinish(ILcom/htc/opensense2/album/util/ImageManager$IImage;)V

    .line 5305
    iget-object v2, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mRotatePlugin:Lcom/htc/album/AlbumUtility/IPluginRotateIBT;

    if-eqz v2, :cond_0

    .line 5306
    iget-object v2, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mRotatePlugin:Lcom/htc/album/AlbumUtility/IPluginRotateIBT;

    invoke-interface {v2}, Lcom/htc/album/AlbumUtility/IPluginRotateIBT;->onDestoryIBT()V

    goto :goto_0

    .line 5312
    :cond_2
    iget-object v2, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mActivity:Landroid/app/Activity;

    new-instance v3, Lcom/htc/album/helper/MenuManager$RotateThread$1;

    invoke-direct {v3, p0}, Lcom/htc/album/helper/MenuManager$RotateThread$1;-><init>(Lcom/htc/album/helper/MenuManager$RotateThread;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 5322
    iget-object v2, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mRotatePlugin:Lcom/htc/album/AlbumUtility/IPluginRotateIBT;

    if-eqz v2, :cond_3

    .line 5323
    iget-object v2, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mRotatePlugin:Lcom/htc/album/AlbumUtility/IPluginRotateIBT;

    invoke-interface {v2}, Lcom/htc/album/AlbumUtility/IPluginRotateIBT;->onResumeIBT()V

    .line 5325
    :cond_3
    const/4 v1, 0x1

    .line 5328
    .local v1, result:Z
    invoke-static {}, Lcom/htc/album/helper/MenuManager;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rotate image "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mDegree:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5331
    :try_start_0
    iget-object v2, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    iget v3, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mDegree:I

    invoke-interface {v2, v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->rotateImageBy(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 5341
    iget-object v2, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mListener:Lcom/htc/album/helper/MenuManager$RotateCallbackListener;

    if-eqz v2, :cond_4

    .line 5342
    iget-object v2, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mListener:Lcom/htc/album/helper/MenuManager$RotateCallbackListener;

    iget v3, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mPosition:I

    iget-object v4, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-interface {v2, v3, v4}, Lcom/htc/album/helper/MenuManager$RotateCallbackListener;->onRotateFinish(ILcom/htc/opensense2/album/util/ImageManager$IImage;)V

    .line 5344
    :cond_4
    iget-object v2, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mRotatePlugin:Lcom/htc/album/AlbumUtility/IPluginRotateIBT;

    if-eqz v2, :cond_5

    .line 5345
    iget-object v2, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mRotatePlugin:Lcom/htc/album/AlbumUtility/IPluginRotateIBT;

    invoke-interface {v2}, Lcom/htc/album/AlbumUtility/IPluginRotateIBT;->onDestoryIBT()V

    .line 5347
    :cond_5
    iget-object v2, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mActivity:Landroid/app/Activity;

    new-instance v3, Lcom/htc/album/helper/MenuManager$RotateThread$2;

    invoke-direct {v3, p0}, Lcom/htc/album/helper/MenuManager$RotateThread$2;-><init>(Lcom/htc/album/helper/MenuManager$RotateThread;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 5333
    :catch_0
    move-exception v0

    .line 5335
    .local v0, ex:Ljava/lang/Exception;
    :try_start_1
    invoke-static {}, Lcom/htc/album/helper/MenuManager;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "rotate image fail"

    invoke-static {v2, v3, v0}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5336
    const/4 v1, 0x0

    .line 5341
    iget-object v2, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mListener:Lcom/htc/album/helper/MenuManager$RotateCallbackListener;

    if-eqz v2, :cond_6

    .line 5342
    iget-object v2, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mListener:Lcom/htc/album/helper/MenuManager$RotateCallbackListener;

    iget v3, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mPosition:I

    iget-object v4, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-interface {v2, v3, v4}, Lcom/htc/album/helper/MenuManager$RotateCallbackListener;->onRotateFinish(ILcom/htc/opensense2/album/util/ImageManager$IImage;)V

    .line 5344
    :cond_6
    iget-object v2, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mRotatePlugin:Lcom/htc/album/AlbumUtility/IPluginRotateIBT;

    if-eqz v2, :cond_7

    .line 5345
    iget-object v2, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mRotatePlugin:Lcom/htc/album/AlbumUtility/IPluginRotateIBT;

    invoke-interface {v2}, Lcom/htc/album/AlbumUtility/IPluginRotateIBT;->onDestoryIBT()V

    .line 5347
    :cond_7
    iget-object v2, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mActivity:Landroid/app/Activity;

    new-instance v3, Lcom/htc/album/helper/MenuManager$RotateThread$2;

    invoke-direct {v3, p0}, Lcom/htc/album/helper/MenuManager$RotateThread$2;-><init>(Lcom/htc/album/helper/MenuManager$RotateThread;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 5341
    .end local v0           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mListener:Lcom/htc/album/helper/MenuManager$RotateCallbackListener;

    if-eqz v3, :cond_8

    .line 5342
    iget-object v3, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mListener:Lcom/htc/album/helper/MenuManager$RotateCallbackListener;

    iget v4, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mPosition:I

    iget-object v5, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-interface {v3, v4, v5}, Lcom/htc/album/helper/MenuManager$RotateCallbackListener;->onRotateFinish(ILcom/htc/opensense2/album/util/ImageManager$IImage;)V

    .line 5344
    :cond_8
    iget-object v3, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mRotatePlugin:Lcom/htc/album/AlbumUtility/IPluginRotateIBT;

    if-eqz v3, :cond_9

    .line 5345
    iget-object v3, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mRotatePlugin:Lcom/htc/album/AlbumUtility/IPluginRotateIBT;

    invoke-interface {v3}, Lcom/htc/album/AlbumUtility/IPluginRotateIBT;->onDestoryIBT()V

    .line 5347
    :cond_9
    iget-object v3, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mActivity:Landroid/app/Activity;

    new-instance v4, Lcom/htc/album/helper/MenuManager$RotateThread$2;

    invoke-direct {v4, p0}, Lcom/htc/album/helper/MenuManager$RotateThread$2;-><init>(Lcom/htc/album/helper/MenuManager$RotateThread;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    throw v2
.end method

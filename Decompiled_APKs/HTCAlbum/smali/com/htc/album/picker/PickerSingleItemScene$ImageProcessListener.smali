.class Lcom/htc/album/picker/PickerSingleItemScene$ImageProcessListener;
.super Ljava/lang/Object;
.source "PickerSingleItemScene.java"

# interfaces
.implements Lcom/htc/album/processor/ImageProcessorManager$OnImageProcessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/picker/PickerSingleItemScene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageProcessListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/picker/PickerSingleItemScene;


# direct methods
.method private constructor <init>(Lcom/htc/album/picker/PickerSingleItemScene;)V
    .locals 0
    .parameter

    .prologue
    .line 225
    iput-object p1, p0, Lcom/htc/album/picker/PickerSingleItemScene$ImageProcessListener;->this$0:Lcom/htc/album/picker/PickerSingleItemScene;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/album/picker/PickerSingleItemScene;Lcom/htc/album/picker/PickerSingleItemScene$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 225
    invoke-direct {p0, p1}, Lcom/htc/album/picker/PickerSingleItemScene$ImageProcessListener;-><init>(Lcom/htc/album/picker/PickerSingleItemScene;)V

    return-void
.end method

.method private sendResultBack(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 1
    .parameter "activity"
    .parameter "result"

    .prologue
    .line 294
    if-nez p1, :cond_0

    .line 312
    :goto_0
    return-void

    .line 297
    :cond_0
    new-instance v0, Lcom/htc/album/picker/PickerSingleItemScene$ImageProcessListener$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/htc/album/picker/PickerSingleItemScene$ImageProcessListener$1;-><init>(Lcom/htc/album/picker/PickerSingleItemScene$ImageProcessListener;Landroid/content/Intent;Landroid/app/Activity;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method


# virtual methods
.method public OnCancelPirorProcess()V
    .locals 0

    .prologue
    .line 272
    return-void
.end method

.method public OnCancelProcessing()V
    .locals 5

    .prologue
    .line 283
    :try_start_0
    iget-object v2, p0, Lcom/htc/album/picker/PickerSingleItemScene$ImageProcessListener;->this$0:Lcom/htc/album/picker/PickerSingleItemScene;

    #getter for: Lcom/htc/album/picker/PickerSingleItemScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v2}, Lcom/htc/album/picker/PickerSingleItemScene;->access$200(Lcom/htc/album/picker/PickerSingleItemScene;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v2

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 284
    .local v0, activity:Landroid/app/Activity;
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/htc/album/picker/PickerSingleItemScene$ImageProcessListener;->sendResultBack(Landroid/app/Activity;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    .end local v0           #activity:Landroid/app/Activity;
    :goto_0
    return-void

    .line 286
    :catch_0
    move-exception v1

    .line 288
    .local v1, ex:Ljava/lang/Exception;
    invoke-static {}, Lcom/htc/album/picker/PickerSingleItemScene;->access$300()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[OnCancelProcessing] Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public OnProcessBegin()V
    .locals 0

    .prologue
    .line 236
    return-void
.end method

.method public OnProcessEnd(Lcom/htc/album/processor/ImageProcessorManager;)V
    .locals 7
    .parameter "processorMgr"

    .prologue
    .line 245
    iget-object v5, p0, Lcom/htc/album/picker/PickerSingleItemScene$ImageProcessListener;->this$0:Lcom/htc/album/picker/PickerSingleItemScene;

    #getter for: Lcom/htc/album/picker/PickerSingleItemScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v5}, Lcom/htc/album/picker/PickerSingleItemScene;->access$100(Lcom/htc/album/picker/PickerSingleItemScene;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v4

    .line 246
    .local v4, sceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    if-eqz p1, :cond_0

    if-nez v4, :cond_1

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 249
    :cond_1
    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 250
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {p1}, Lcom/htc/album/processor/ImageProcessorManager;->getResult()Landroid/content/Intent;

    move-result-object v2

    .line 251
    .local v2, result:Landroid/content/Intent;
    invoke-virtual {p1}, Lcom/htc/album/processor/ImageProcessorManager;->getResultCode()I

    move-result v3

    .line 252
    .local v3, resultCode:I
    if-nez v3, :cond_2

    .line 254
    invoke-virtual {p1}, Lcom/htc/album/processor/ImageProcessorManager;->getSource()Landroid/content/Intent;

    move-result-object v1

    .line 255
    .local v1, pickerResult:Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 256
    invoke-direct {p0, v0, v1}, Lcom/htc/album/picker/PickerSingleItemScene$ImageProcessListener;->sendResultBack(Landroid/app/Activity;Landroid/content/Intent;)V

    goto :goto_0

    .line 258
    .end local v1           #pickerResult:Landroid/content/Intent;
    :cond_2
    const/4 v5, -0x1

    if-ne v3, v5, :cond_0

    .line 260
    invoke-direct {p0, v0, v2}, Lcom/htc/album/picker/PickerSingleItemScene$ImageProcessListener;->sendResultBack(Landroid/app/Activity;Landroid/content/Intent;)V

    goto :goto_0
.end method

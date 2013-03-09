.class Lcom/android/mms/ui/SlideshowActivity$2;
.super Ljava/lang/Object;
.source "SlideshowActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SlideshowActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SlideshowActivity;

.field final synthetic val$model:Lcom/android/mms/model/SlideshowModel;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SlideshowActivity;Lcom/android/mms/model/SlideshowModel;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 193
    iput-object p1, p0, Lcom/android/mms/ui/SlideshowActivity$2;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    iput-object p2, p0, Lcom/android/mms/ui/SlideshowActivity$2;->val$model:Lcom/android/mms/model/SlideshowModel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isRotating()Z
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$2;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    #getter for: Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;
    invoke-static {v0}, Lcom/android/mms/ui/SlideshowActivity;->access$200(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/dom/smil/SmilPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPausedState()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$2;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    #getter for: Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;
    invoke-static {v0}, Lcom/android/mms/ui/SlideshowActivity;->access$200(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/dom/smil/SmilPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPlayingState()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$2;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    #getter for: Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;
    invoke-static {v0}, Lcom/android/mms/ui/SlideshowActivity;->access$200(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/dom/smil/SmilPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPlayedState()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const v5, 0x7f090148

    const/4 v4, 0x0

    .line 202
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity$2;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity$2;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    #getter for: Lcom/android/mms/ui/SlideshowActivity;->mPlayerHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/mms/ui/SlideshowActivity;->access$300(Lcom/android/mms/ui/SlideshowActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/dom/smil/SmilPlayer;->getPlayer(Landroid/os/Handler;)Lcom/android/mms/dom/smil/SmilPlayer;

    move-result-object v2

    #setter for: Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;
    invoke-static {v1, v2}, Lcom/android/mms/ui/SlideshowActivity;->access$202(Lcom/android/mms/ui/SlideshowActivity;Lcom/android/mms/dom/smil/SmilPlayer;)Lcom/android/mms/dom/smil/SmilPlayer;

    .line 204
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity$2;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    #calls: Lcom/android/mms/ui/SlideshowActivity;->initMediaController()V
    invoke-static {v1}, Lcom/android/mms/ui/SlideshowActivity;->access$400(Lcom/android/mms/ui/SlideshowActivity;)V

    .line 209
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity$2;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity$2;->val$model:Lcom/android/mms/model/SlideshowModel;

    const/4 v3, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/mms/model/SmilHelper;->getDocument(Lcom/android/mms/model/SlideshowModel;ZZ)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v2

    #setter for: Lcom/android/mms/ui/SlideshowActivity;->mSmilDoc:Lorg/w3c/dom/smil/SMILDocument;
    invoke-static {v1, v2}, Lcom/android/mms/ui/SlideshowActivity;->access$502(Lcom/android/mms/ui/SlideshowActivity;Lorg/w3c/dom/smil/SMILDocument;)Lorg/w3c/dom/smil/SMILDocument;

    .line 220
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity$2;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    #getter for: Lcom/android/mms/ui/SlideshowActivity;->mSmilDoc:Lorg/w3c/dom/smil/SMILDocument;
    invoke-static {v1}, Lcom/android/mms/ui/SlideshowActivity;->access$500(Lcom/android/mms/ui/SlideshowActivity;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/events/EventTarget;

    const-string v2, "SimlDocumentEnd"

    iget-object v3, p0, Lcom/android/mms/ui/SlideshowActivity$2;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-interface {v1, v2, v3, v4}, Lorg/w3c/dom/events/EventTarget;->addEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V

    .line 226
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity$2;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    #getter for: Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;
    invoke-static {v1}, Lcom/android/mms/ui/SlideshowActivity;->access$200(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/dom/smil/SmilPlayer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity$2;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    #getter for: Lcom/android/mms/ui/SlideshowActivity;->mSmilDoc:Lorg/w3c/dom/smil/SMILDocument;
    invoke-static {v2}, Lcom/android/mms/ui/SlideshowActivity;->access$500(Lcom/android/mms/ui/SlideshowActivity;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/mms/dom/smil/SmilPlayer;->init(Lorg/w3c/dom/smil/ElementTime;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity$2;->isRotating()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 234
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity$2;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    #getter for: Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;
    invoke-static {v1}, Lcom/android/mms/ui/SlideshowActivity;->access$200(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/dom/smil/SmilPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/dom/smil/SmilPlayer;->reload()V

    .line 235
    const-string v1, "SlideshowActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIsPaused "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/SlideshowActivity$2;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    #getter for: Lcom/android/mms/ui/SlideshowActivity;->mIsPaused:Z
    invoke-static {v3}, Lcom/android/mms/ui/SlideshowActivity;->access$600(Lcom/android/mms/ui/SlideshowActivity;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity$2;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    #getter for: Lcom/android/mms/ui/SlideshowActivity;->mIsPlaying:Z
    invoke-static {v1}, Lcom/android/mms/ui/SlideshowActivity;->access$700(Lcom/android/mms/ui/SlideshowActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity$2;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    #getter for: Lcom/android/mms/ui/SlideshowActivity;->mIsPaused:Z
    invoke-static {v1}, Lcom/android/mms/ui/SlideshowActivity;->access$600(Lcom/android/mms/ui/SlideshowActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 238
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity$2;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    #calls: Lcom/android/mms/ui/SlideshowActivity;->acquireBackLightLock()V
    invoke-static {v1}, Lcom/android/mms/ui/SlideshowActivity;->access$800(Lcom/android/mms/ui/SlideshowActivity;)V

    .line 240
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity$2;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    #getter for: Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;
    invoke-static {v1}, Lcom/android/mms/ui/SlideshowActivity;->access$200(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/dom/smil/SmilPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/dom/smil/SmilPlayer;->start()V

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 227
    :catch_0
    move-exception v0

    .line 228
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 229
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity$2;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-virtual {v1}, Lcom/android/mms/ui/SlideshowActivity;->finish()V

    goto :goto_0

    .line 247
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity$2;->val$model:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1}, Lcom/android/mms/model/SlideshowModel;->isContainUnsupportedMedia()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 248
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity$2;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-virtual {v1}, Lcom/android/mms/ui/SlideshowActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090112

    invoke-static {v1, v5, v2}, Lcom/android/mms/ui/MessageUtils;->displayDialog(Landroid/content/Context;II)V

    .line 251
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity$2;->val$model:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1}, Lcom/android/mms/model/SlideshowModel;->isContainUnsupportedFormat()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 252
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity$2;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-virtual {v1}, Lcom/android/mms/ui/SlideshowActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f09011d

    invoke-static {v1, v5, v2}, Lcom/android/mms/ui/MessageUtils;->displayDialog(Landroid/content/Context;II)V

    goto :goto_0
.end method

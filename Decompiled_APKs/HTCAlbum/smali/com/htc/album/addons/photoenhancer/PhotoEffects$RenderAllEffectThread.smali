.class Lcom/htc/album/addons/photoenhancer/PhotoEffects$RenderAllEffectThread;
.super Lcom/htc/album/addons/photoenhancer/TaskThread;
.source "PhotoEffects.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/addons/photoenhancer/PhotoEffects;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RenderAllEffectThread"
.end annotation


# instance fields
.field private frameId:I

.field private presetId:I

.field private size:Lcom/scalado/base/Size;

.field final synthetic this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;


# direct methods
.method public constructor <init>(Lcom/htc/album/addons/photoenhancer/PhotoEffects;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "threadName"

    .prologue
    .line 1185
    iput-object p1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$RenderAllEffectThread;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    .line 1186
    invoke-direct {p0, p2}, Lcom/htc/album/addons/photoenhancer/TaskThread;-><init>(Ljava/lang/String;)V

    .line 1181
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$RenderAllEffectThread;->size:Lcom/scalado/base/Size;

    .line 1187
    return-void
.end method


# virtual methods
.method public setFrameId(I)V
    .locals 0
    .parameter "frameId"

    .prologue
    .line 1196
    iput p1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$RenderAllEffectThread;->frameId:I

    .line 1197
    return-void
.end method

.method public setPresetId(I)V
    .locals 0
    .parameter "presetId"

    .prologue
    .line 1192
    iput p1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$RenderAllEffectThread;->presetId:I

    .line 1193
    return-void
.end method

.method public setSize(Lcom/scalado/base/Size;)V
    .locals 0
    .parameter "size"

    .prologue
    .line 1189
    iput-object p1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$RenderAllEffectThread;->size:Lcom/scalado/base/Size;

    .line 1190
    return-void
.end method

.method public taskFunction()Z
    .locals 12

    .prologue
    const/4 v8, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x3

    const/4 v9, 0x0

    .line 1201
    invoke-static {}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$200()Ljava/lang/String;

    move-result-object v5

    const-string v6, "my taskFunction"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    iget-object v5, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$RenderAllEffectThread;->size:Lcom/scalado/base/Size;

    if-nez v5, :cond_1

    .line 1203
    invoke-static {}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$200()Ljava/lang/String;

    move-result-object v5

    const-string v6, "taskFunction: Size error, could be first time execute without property setup"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1340
    :cond_0
    :goto_0
    return v9

    .line 1206
    :cond_1
    iget-object v5, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$RenderAllEffectThread;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$1900(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)Landroid/os/Handler;

    move-result-object v5

    if-nez v5, :cond_2

    .line 1207
    invoke-static {}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$200()Ljava/lang/String;

    move-result-object v5

    const-string v6, "taskFunction: mHandler is null"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1211
    :cond_2
    iget-boolean v5, p0, Lcom/htc/album/addons/photoenhancer/TaskThread;->needPause:Z

    if-eqz v5, :cond_3

    .line 1212
    iget-object v5, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$RenderAllEffectThread;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$1900(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1215
    :cond_3
    iget-object v5, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$RenderAllEffectThread;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$1900(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1217
    invoke-static {}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$200()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "taskFunction: Preview thread "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$RenderAllEffectThread;->presetId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " start"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    const/4 v1, 0x0

    .line 1219
    .local v1, inStream:Lcom/scalado/stream/FileStream;
    iget-object v5, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$RenderAllEffectThread;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mSession:Lcom/scalado/caps/Session;
    invoke-static {v5}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$2000(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)Lcom/scalado/caps/Session;

    move-result-object v5

    if-nez v5, :cond_b

    .line 1220
    iget-object v5, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$RenderAllEffectThread;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mImage:Lcom/scalado/base/Image;
    invoke-static {v5}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$2100(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)Lcom/scalado/base/Image;

    move-result-object v5

    if-nez v5, :cond_9

    .line 1221
    iget-object v5, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$RenderAllEffectThread;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->DEBUG:Z
    invoke-static {v5}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$100(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1222
    invoke-static {}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$200()Ljava/lang/String;

    move-result-object v5

    const-string v6, "taskFunction: Create FileStream"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1224
    :cond_4
    iget-object v5, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$RenderAllEffectThread;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #calls: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->LoadFile()Lcom/scalado/stream/FileStream;
    invoke-static {v5}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$2200(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)Lcom/scalado/stream/FileStream;

    move-result-object v1

    .line 1225
    iget-object v5, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$RenderAllEffectThread;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->bInitial:Z
    invoke-static {v5}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$2300(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1226
    invoke-static {}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$200()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Initial Error"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1229
    :cond_5
    iget-object v5, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$RenderAllEffectThread;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    iget-object v6, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$RenderAllEffectThread;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #calls: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->getSessionByFileStream(Lcom/scalado/stream/FileStream;)Lcom/scalado/caps/Session;
    invoke-static {v6, v1}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$2400(Lcom/htc/album/addons/photoenhancer/PhotoEffects;Lcom/scalado/stream/FileStream;)Lcom/scalado/caps/Session;

    move-result-object v6

    #setter for: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mSession:Lcom/scalado/caps/Session;
    invoke-static {v5, v6}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$2002(Lcom/htc/album/addons/photoenhancer/PhotoEffects;Lcom/scalado/caps/Session;)Lcom/scalado/caps/Session;

    .line 1230
    iget-object v5, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$RenderAllEffectThread;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->bInitial:Z
    invoke-static {v5}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$2300(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1231
    invoke-static {}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$200()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Initial Error"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1234
    :cond_6
    iget-object v5, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$RenderAllEffectThread;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    iget-object v6, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$RenderAllEffectThread;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mSession:Lcom/scalado/caps/Session;
    invoke-static {v6}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$2000(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)Lcom/scalado/caps/Session;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$RenderAllEffectThread;->size:Lcom/scalado/base/Size;

    invoke-virtual {v5, v6, v7}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->getImageBySessionAndSize(Lcom/scalado/caps/Session;Lcom/scalado/base/Size;)V

    .line 1235
    new-instance v0, Lcom/scalado/caps/codec/decoder/ImageDecoder;

    iget-object v5, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$RenderAllEffectThread;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mImage:Lcom/scalado/base/Image;
    invoke-static {v5}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$2100(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)Lcom/scalado/base/Image;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/scalado/caps/codec/decoder/ImageDecoder;-><init>(Lcom/scalado/base/Image;)V

    .line 1236
    .local v0, decoder:Lcom/scalado/caps/codec/decoder/ImageDecoder;
    iget-object v5, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$RenderAllEffectThread;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    iget-object v6, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$RenderAllEffectThread;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mSession:Lcom/scalado/caps/Session;
    invoke-static {v6}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$2000(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)Lcom/scalado/caps/Session;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->releaseSession(Lcom/scalado/caps/Session;)V

    .line 1237
    iget-object v5, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$RenderAllEffectThread;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    new-instance v6, Lcom/scalado/caps/Session;

    invoke-direct {v6, v0}, Lcom/scalado/caps/Session;-><init>(Lcom/scalado/caps/Decoder;)V

    #setter for: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mSession:Lcom/scalado/caps/Session;
    invoke-static {v5, v6}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$2002(Lcom/htc/album/addons/photoenhancer/PhotoEffects;Lcom/scalado/caps/Session;)Lcom/scalado/caps/Session;

    .line 1238
    iget-object v5, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$RenderAllEffectThread;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #setter for: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mRotation:Lcom/scalado/caps/Rotation;
    invoke-static {v5, v8}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$602(Lcom/htc/album/addons/photoenhancer/PhotoEffects;Lcom/scalado/caps/Rotation;)Lcom/scalado/caps/Rotation;

    .line 1252
    .end local v0           #decoder:Lcom/scalado/caps/codec/decoder/ImageDecoder;
    :cond_7
    :goto_1
    iget-boolean v5, p0, Lcom/htc/album/addons/photoenhancer/TaskThread;->needPause:Z

    if-eqz v5, :cond_d

    .line 1253
    iget-object v5, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$RenderAllEffectThread;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #calls: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->CloseFile(Lcom/scalado/stream/FileStream;)V
    invoke-static {v5, v1}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$2500(Lcom/htc/album/addons/photoenhancer/PhotoEffects;Lcom/scalado/stream/FileStream;)V

    .line 1254
    iget-object v5, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$RenderAllEffectThread;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->DEBUG:Z
    invoke-static {v5}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$100(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1255
    invoke-static {}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$200()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "taskFunction: Preview thread stop after session create or reuse, presetId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$RenderAllEffectThread;->presetId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1257
    :cond_8
    iget-object v5, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$RenderAllEffectThread;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$1900(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)Landroid/os/Handler;

    move-result-object v5

    if-nez v5, :cond_c

    .line 1258
    invoke-static {}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$200()Ljava/lang/String;

    move-result-object v5

    const-string v6, "taskFunction: mHandler is null"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1240
    :cond_9
    iget-object v5, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$RenderAllEffectThread;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->DEBUG:Z
    invoke-static {v5}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$100(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1241
    invoke-static {}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$200()Ljava/lang/String;

    move-result-object v5

    const-string v6, "taskFunction: Reuse Image, set mRotate to null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    :cond_a
    new-instance v0, Lcom/scalado/caps/codec/decoder/ImageDecoder;

    iget-object v5, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$RenderAllEffectThread;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mImage:Lcom/scalado/base/Image;
    invoke-static {v5}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$2100(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)Lcom/scalado/base/Image;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/scalado/caps/codec/decoder/ImageDecoder;-><init>(Lcom/scalado/base/Image;)V

    .line 1244
    .restart local v0       #decoder:Lcom/scalado/caps/codec/decoder/ImageDecoder;
    iget-object v5, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$RenderAllEffectThread;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    new-instance v6, Lcom/scalado/caps/Session;

    invoke-direct {v6, v0}, Lcom/scalado/caps/Session;-><init>(Lcom/scalado/caps/Decoder;)V

    #setter for: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mSession:Lcom/scalado/caps/Session;
    invoke-static {v5, v6}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$2002(Lcom/htc/album/addons/photoenhancer/PhotoEffects;Lcom/scalado/caps/Session;)Lcom/scalado/caps/Session;

    .line 1245
    iget-object v5, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$RenderAllEffectThread;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #setter for: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mRotation:Lcom/scalado/caps/Rotation;
    invoke-static {v5, v8}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$602(Lcom/htc/album/addons/photoenhancer/PhotoEffects;Lcom/scalado/caps/Rotation;)Lcom/scalado/caps/Rotation;

    goto :goto_1

    .line 1248
    .end local v0           #decoder:Lcom/scalado/caps/codec/decoder/ImageDecoder;
    :cond_b
    iget-object v5, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$RenderAllEffectThread;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->DEBUG:Z
    invoke-static {v5}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$100(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1249
    invoke-static {}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$200()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "taskFunction: Reuse session, session w="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$RenderAllEffectThread;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mSession:Lcom/scalado/caps/Session;
    invoke-static {v7}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$2000(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)Lcom/scalado/caps/Session;

    move-result-object v7

    invoke-virtual {v7}, Lcom/scalado/caps/Session;->getViewport()Lcom/scalado/base/Rect;

    move-result-object v7

    invoke-virtual {v7}, Lcom/scalado/base/Rect;->getWidth()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", h="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$RenderAllEffectThread;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mSession:Lcom/scalado/caps/Session;
    invoke-static {v7}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$2000(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)Lcom/scalado/caps/Session;

    move-result-object v7

    invoke-virtual {v7}, Lcom/scalado/caps/Session;->getViewport()Lcom/scalado/base/Rect;

    move-result-object v7

    invoke-virtual {v7}, Lcom/scalado/base/Rect;->getHeight()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1261
    :cond_c
    iget-object v5, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$RenderAllEffectThread;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$1900(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 1264
    :cond_d
    iget-object v5, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$RenderAllEffectThread;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mSession:Lcom/scalado/caps/Session;
    invoke-static {v5}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$2000(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)Lcom/scalado/caps/Session;

    move-result-object v4

    .line 1265
    .local v4, session:Lcom/scalado/caps/Session;
    iget-object v5, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$RenderAllEffectThread;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    iget-object v6, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$RenderAllEffectThread;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    iget v7, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$RenderAllEffectThread;->presetId:I

    iget v8, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$RenderAllEffectThread;->frameId:I

    #calls: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->getEffectListByPresetId(IIZ)Ljava/util/List;
    invoke-static {v6, v7, v8, v9}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$2600(Lcom/htc/album/addons/photoenhancer/PhotoEffects;IIZ)Ljava/util/List;

    move-result-object v6

    #calls: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->DoEffect(Ljava/util/List;Lcom/scalado/caps/Session;)Lcom/scalado/caps/Session;
    invoke-static {v5, v6, v4}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$2700(Lcom/htc/album/addons/photoenhancer/PhotoEffects;Ljava/util/List;Lcom/scalado/caps/Session;)Lcom/scalado/caps/Session;

    .line 1266
    iget-boolean v5, p0, Lcom/htc/album/addons/photoenhancer/TaskThread;->needPause:Z

    if-eqz v5, :cond_10

    .line 1267
    const/4 v4, 0x0

    .line 1268
    iget-object v5, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$RenderAllEffectThread;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #calls: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->CloseFile(Lcom/scalado/stream/FileStream;)V
    invoke-static {v5, v1}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$2500(Lcom/htc/album/addons/photoenhancer/PhotoEffects;Lcom/scalado/stream/FileStream;)V

    .line 1269
    iget-object v5, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$RenderAllEffectThread;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->DEBUG:Z
    invoke-static {v5}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$100(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 1270
    invoke-static {}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$200()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "taskFunction: Preview thread stop after applying effects on session, presetId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$RenderAllEffectThread;->presetId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1272
    :cond_e
    iget-object v5, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$RenderAllEffectThread;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$1900(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)Landroid/os/Handler;

    move-result-object v5

    if-nez v5, :cond_f

    .line 1273
    invoke-static {}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$200()Ljava/lang/String;

    move-result-object v5

    const-string v6, "taskFunction: mHandler is null"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1276
    :cond_f
    iget-object v5, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$RenderAllEffectThread;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$1900(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 1279
    :cond_10
    iget-object v5, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$RenderAllEffectThread;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->previewImage:Lcom/scalado/base/Image;
    invoke-static {v5}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$2800(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)Lcom/scalado/base/Image;

    move-result-object v5

    if-nez v5, :cond_15

    .line 1280
    iget-object v5, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$RenderAllEffectThread;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->DEBUG:Z
    invoke-static {v5}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$100(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 1281
    invoke-static {}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$200()Ljava/lang/String;

    move-result-object v5

    const-string v6, "taskFunction: Create image object"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1283
    :cond_11
    iget-object v5, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$RenderAllEffectThread;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    new-instance v6, Lcom/scalado/base/Image;

    iget-object v7, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$RenderAllEffectThread;->size:Lcom/scalado/base/Size;

    sget-object v8, Lcom/scalado/base/Image$Config;->RGB_565:Lcom/scalado/base/Image$Config;

    invoke-direct {v6, v7, v8}, Lcom/scalado/base/Image;-><init>(Lcom/scalado/base/Size;Lcom/scalado/base/Image$Config;)V

    #setter for: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->previewImage:Lcom/scalado/base/Image;
    invoke-static {v5, v6}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$2802(Lcom/htc/album/addons/photoenhancer/PhotoEffects;Lcom/scalado/base/Image;)Lcom/scalado/base/Image;

    .line 1289
    :cond_12
    :goto_2
    iget-object v5, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$RenderAllEffectThread;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mScreen:Lcom/scalado/caps/screen/Screen;
    invoke-static {v5}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$2900(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)Lcom/scalado/caps/screen/Screen;

    move-result-object v5

    if-nez v5, :cond_16

    .line 1290
    iget-object v5, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$RenderAllEffectThread;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->DEBUG:Z
    invoke-static {v5}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$100(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 1291
    invoke-static {}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$200()Ljava/lang/String;

    move-result-object v5

    const-string v6, "taskFunction: Create screen object"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1293
    :cond_13
    iget-object v5, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$RenderAllEffectThread;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    new-instance v6, Lcom/scalado/caps/screen/Screen;

    iget-object v7, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$RenderAllEffectThread;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->previewImage:Lcom/scalado/base/Image;
    invoke-static {v7}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$2800(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)Lcom/scalado/base/Image;

    move-result-object v7

    invoke-direct {v6, v4, v7}, Lcom/scalado/caps/screen/Screen;-><init>(Lcom/scalado/caps/Session;Lcom/scalado/base/Image;)V

    #setter for: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mScreen:Lcom/scalado/caps/screen/Screen;
    invoke-static {v5, v6}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$2902(Lcom/htc/album/addons/photoenhancer/PhotoEffects;Lcom/scalado/caps/screen/Screen;)Lcom/scalado/caps/screen/Screen;

    .line 1294
    iget-object v5, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$RenderAllEffectThread;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mScreen:Lcom/scalado/caps/screen/Screen;
    invoke-static {v5}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$2900(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)Lcom/scalado/caps/screen/Screen;

    move-result-object v5

    invoke-virtual {v5, v11}, Lcom/scalado/caps/screen/Screen;->setDitheringEnabled(Z)V

    .line 1301
    :cond_14
    :goto_3
    iget-object v5, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$RenderAllEffectThread;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    iget-object v6, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$RenderAllEffectThread;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mScreen:Lcom/scalado/caps/screen/Screen;
    invoke-static {v6}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$2900(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)Lcom/scalado/caps/screen/Screen;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$RenderAllEffectThread;->size:Lcom/scalado/base/Size;

    #calls: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->genEffectBitmap(Lcom/scalado/caps/screen/Screen;Lcom/scalado/base/Size;Lcom/htc/album/addons/photoenhancer/TaskThread;)Landroid/graphics/Bitmap;
    invoke-static {v5, v6, v7, p0}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$3000(Lcom/htc/album/addons/photoenhancer/PhotoEffects;Lcom/scalado/caps/screen/Screen;Lcom/scalado/base/Size;Lcom/htc/album/addons/photoenhancer/TaskThread;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1302
    .local v3, result:Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    .line 1303
    iget-object v5, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$RenderAllEffectThread;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #calls: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->CloseFile(Lcom/scalado/stream/FileStream;)V
    invoke-static {v5, v1}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$2500(Lcom/htc/album/addons/photoenhancer/PhotoEffects;Lcom/scalado/stream/FileStream;)V

    .line 1304
    iget-boolean v5, p0, Lcom/htc/album/addons/photoenhancer/TaskThread;->needPause:Z

    if-eqz v5, :cond_19

    .line 1305
    iget-object v5, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$RenderAllEffectThread;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$1900(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)Landroid/os/Handler;

    move-result-object v5

    if-nez v5, :cond_17

    .line 1306
    invoke-static {}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$200()Ljava/lang/String;

    move-result-object v5

    const-string v6, "taskFunction: mHandler is null"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1285
    .end local v3           #result:Landroid/graphics/Bitmap;
    :cond_15
    iget-object v5, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$RenderAllEffectThread;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->DEBUG:Z
    invoke-static {v5}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$100(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 1286
    invoke-static {}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$200()Ljava/lang/String;

    move-result-object v5

    const-string v6, "taskFunction: Reuse image object"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1296
    :cond_16
    iget-object v5, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$RenderAllEffectThread;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->DEBUG:Z
    invoke-static {v5}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$100(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 1297
    invoke-static {}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$200()Ljava/lang/String;

    move-result-object v5

    const-string v6, "taskFunction: Reuse screen object"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1309
    .restart local v3       #result:Landroid/graphics/Bitmap;
    :cond_17
    iget-object v5, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$RenderAllEffectThread;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$1900(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1310
    iget-object v5, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$RenderAllEffectThread;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->DEBUG:Z
    invoke-static {v5}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$100(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 1311
    invoke-static {}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$200()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "taskFunction: Preview thread stop with no result bitmap, presetId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$RenderAllEffectThread;->presetId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1313
    :cond_18
    if-eqz v3, :cond_0

    .line 1314
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_0

    .line 1318
    :cond_19
    if-eqz v3, :cond_1c

    .line 1319
    iget-object v5, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$RenderAllEffectThread;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->DEBUG:Z
    invoke-static {v5}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$100(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 1320
    invoke-static {}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$200()Ljava/lang/String;

    move-result-object v5

    const-string v6, "taskFunction: Return bitmap by handler"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1322
    :cond_1a
    iget-object v5, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$RenderAllEffectThread;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$1900(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)Landroid/os/Handler;

    move-result-object v5

    if-nez v5, :cond_1b

    .line 1323
    invoke-static {}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$200()Ljava/lang/String;

    move-result-object v5

    const-string v6, "taskFunction: mHandler is null"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1326
    :cond_1b
    iget-object v5, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$RenderAllEffectThread;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$1900(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1327
    .local v2, msg:Landroid/os/Message;
    iput v9, v2, Landroid/os/Message;->arg1:I

    .line 1328
    iget v5, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$RenderAllEffectThread;->presetId:I

    iput v5, v2, Landroid/os/Message;->arg2:I

    .line 1329
    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1330
    iget-object v5, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$RenderAllEffectThread;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$1900(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1331
    invoke-static {}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$200()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "taskFunction: Preview thread "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$RenderAllEffectThread;->presetId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " end"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1339
    .end local v2           #msg:Landroid/os/Message;
    :goto_4
    invoke-static {}, Ljava/lang/System;->gc()V

    goto/16 :goto_0

    .line 1333
    :cond_1c
    iget-object v5, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$RenderAllEffectThread;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$1900(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)Landroid/os/Handler;

    move-result-object v5

    if-nez v5, :cond_1d

    .line 1334
    invoke-static {}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$200()Ljava/lang/String;

    move-result-object v5

    const-string v6, "taskFunction: mHandler is null"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1337
    :cond_1d
    iget-object v5, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$RenderAllEffectThread;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$1900(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_4
.end method

.class Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$DecodeThreadBase;
.super Ljava/lang/Thread;
.source "LocalPhotoAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DecodeThreadBase"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$DecodeThreadBase$CacheInfo;
    }
.end annotation


# instance fields
.field private mDecodeFile:Ljava/lang/String;

.field private mDecodePos:I

.field protected mDeleteMode:Z

.field protected mOptions:Landroid/graphics/BitmapFactory$Options;

.field protected mPauseSign:Z

.field protected mStopSign:Z

.field private optionLock:Ljava/lang/Object;

.field final synthetic this$0:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;


# direct methods
.method public constructor <init>(Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter "name"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 98
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$DecodeThreadBase;->this$0:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 165
    iput-object v2, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$DecodeThreadBase;->mDecodeFile:Ljava/lang/String;

    .line 166
    iput v1, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$DecodeThreadBase;->mDecodePos:I

    .line 167
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$DecodeThreadBase;->optionLock:Ljava/lang/Object;

    .line 168
    iput-boolean v1, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$DecodeThreadBase;->mDeleteMode:Z

    .line 169
    iput-boolean v1, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$DecodeThreadBase;->mStopSign:Z

    .line 170
    iput-boolean v1, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$DecodeThreadBase;->mPauseSign:Z

    .line 171
    iput-object v2, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$DecodeThreadBase;->mOptions:Landroid/graphics/BitmapFactory$Options;

    .line 99
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$DecodeThreadBase;->setPriority(I)V

    .line 100
    invoke-virtual {p0, p2}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$DecodeThreadBase;->setName(Ljava/lang/String;)V

    .line 101
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .prologue
    .line 105
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$DecodeThreadBase;->setPriority(I)V

    .line 106
    invoke-static {}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$DecodeThreadBase;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Cancel decode at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$DecodeThreadBase;->mDecodePos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$DecodeThreadBase;->mDecodeFile:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method protected cancelBitmapOptionsDecode()V
    .locals 2

    .prologue
    .line 155
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$DecodeThreadBase;->optionLock:Ljava/lang/Object;

    monitor-enter v1

    .line 158
    :try_start_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$DecodeThreadBase;->mOptions:Landroid/graphics/BitmapFactory$Options;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$DecodeThreadBase;->mOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-virtual {v0}, Landroid/graphics/BitmapFactory$Options;->requestCancelDecode()V

    .line 162
    :cond_0
    monitor-exit v1

    .line 163
    return-void

    .line 162
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected createBitmapOptions()Landroid/graphics/BitmapFactory$Options;
    .locals 2

    .prologue
    .line 138
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$DecodeThreadBase;->optionLock:Ljava/lang/Object;

    monitor-enter v1

    .line 139
    :try_start_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$DecodeThreadBase;->mOptions:Landroid/graphics/BitmapFactory$Options;

    .line 141
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$DecodeThreadBase;->mOptions:Landroid/graphics/BitmapFactory$Options;

    monitor-exit v1

    return-object v0

    .line 142
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public loadCacheInfo(ILcom/htc/opensense2/album/util/ImageManager$IImage;)Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$DecodeThreadBase$CacheInfo;
    .locals 4
    .parameter "position"
    .parameter "image"

    .prologue
    .line 116
    new-instance v1, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$DecodeThreadBase$CacheInfo;

    invoke-direct {v1, p0}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$DecodeThreadBase$CacheInfo;-><init>(Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$DecodeThreadBase;)V

    .line 120
    .local v1, item:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$DecodeThreadBase$CacheInfo;
    :try_start_0
    invoke-interface {p2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$DecodeThreadBase$CacheInfo;->mimeType:Ljava/lang/String;

    .line 121
    invoke-interface {p2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$DecodeThreadBase$CacheInfo;->dataPath:Ljava/lang/String;

    .line 122
    invoke-interface {p2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDateModified()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$DecodeThreadBase$CacheInfo;->dateModify:J

    .line 123
    invoke-interface {p2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getSize()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$DecodeThreadBase$CacheInfo;->fileSize:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :goto_0
    iget-object v2, v1, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$DecodeThreadBase$CacheInfo;->dataPath:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$DecodeThreadBase;->mDecodeFile:Ljava/lang/String;

    .line 131
    iput p1, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$DecodeThreadBase;->mDecodePos:I

    .line 133
    return-object v1

    .line 125
    :catch_0
    move-exception v0

    .line 127
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected releaseBitmapOptions()V
    .locals 2

    .prologue
    .line 147
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$DecodeThreadBase;->optionLock:Ljava/lang/Object;

    monitor-enter v1

    .line 148
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$DecodeThreadBase;->mOptions:Landroid/graphics/BitmapFactory$Options;

    .line 150
    monitor-exit v1

    .line 151
    return-void

    .line 150
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setDeleteMode(Z)V
    .locals 0
    .parameter "doDelete"

    .prologue
    .line 111
    iput-boolean p1, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$DecodeThreadBase;->mDeleteMode:Z

    .line 112
    return-void
.end method

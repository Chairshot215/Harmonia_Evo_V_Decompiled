.class public Lcom/android/mms/ui/SlideshowEditor;
.super Ljava/lang/Object;
.source "SlideshowEditor.java"


# static fields
.field private static final MAX_SLIDE_NUM:I = 0xa

.field private static final TAG:Ljava/lang/String; = "SlideshowEditor"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mModel:Lcom/android/mms/model/SlideshowModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/mms/model/SlideshowModel;)V
    .locals 0
    .parameter "context"
    .parameter "model"

    .prologue
    .line 51
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/android/mms/ui/SlideshowEditor;->mContext:Landroid/content/Context;

    .line 53
    iput-object p2, p0, Lcom/android/mms/ui/SlideshowEditor;->mModel:Lcom/android/mms/model/SlideshowModel;

    .line 54
    return-void
.end method


# virtual methods
.method public addNewSlide()Z
    .locals 2

    .prologue
    .line 62
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditor;->mModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v0

    .line 63
    .local v0, position:I
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SlideshowEditor;->addNewSlide(I)Z

    move-result v1

    return v1
.end method

.method public addNewSlide(I)Z
    .locals 9
    .parameter "position"

    .prologue
    const/4 v4, 0x0

    .line 74
    iget-object v5, p0, Lcom/android/mms/ui/SlideshowEditor;->mModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v1

    .line 80
    .local v1, size:I
    invoke-static {}, Lcom/android/mms/model/ContentRestrictionFactory;->getContentRestriction()Lcom/android/mms/model/ContentRestriction;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/mms/model/ContentRestriction;->getMaxSlidesPerMmsMessage()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 84
    new-instance v2, Lcom/android/mms/model/SlideModel;

    iget-object v5, p0, Lcom/android/mms/ui/SlideshowEditor;->mModel:Lcom/android/mms/model/SlideshowModel;

    invoke-direct {v2, v5}, Lcom/android/mms/model/SlideModel;-><init>(Lcom/android/mms/model/SlideshowModel;)V

    .line 86
    .local v2, slide:Lcom/android/mms/model/SlideModel;
    new-instance v3, Lcom/android/mms/model/TextModel;

    iget-object v5, p0, Lcom/android/mms/ui/SlideshowEditor;->mContext:Landroid/content/Context;

    const-string v6, "text/plain"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "text_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".txt"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/mms/ui/SlideshowEditor;->mModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v8}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/mms/model/LayoutModel;->getTextRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v8

    invoke-direct {v3, v5, v6, v7, v8}, Lcom/android/mms/model/TextModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/model/RegionModel;)V

    .line 91
    .local v3, text:Lcom/android/mms/model/TextModel;
    :try_start_0
    invoke-virtual {v2, v3}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    .line 92
    iget-object v5, p0, Lcom/android/mms/ui/SlideshowEditor;->mModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5, p1, v2}, Lcom/android/mms/model/SlideshowModel;->add(ILcom/android/mms/model/SlideModel;)V
    :try_end_0
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    const/4 v4, 0x1

    .line 102
    .end local v2           #slide:Lcom/android/mms/model/SlideModel;
    .end local v3           #text:Lcom/android/mms/model/TextModel;
    :goto_0
    return v4

    .line 93
    .restart local v2       #slide:Lcom/android/mms/model/SlideModel;
    .restart local v3       #text:Lcom/android/mms/model/TextModel;
    :catch_0
    move-exception v0

    .line 94
    .local v0, e:Lcom/android/mms/ExceedMessageSizeException;
    invoke-virtual {v0}, Lcom/android/mms/ExceedMessageSizeException;->printStackTrace()V

    goto :goto_0

    .line 101
    .end local v0           #e:Lcom/android/mms/ExceedMessageSizeException;
    .end local v2           #slide:Lcom/android/mms/model/SlideModel;
    .end local v3           #text:Lcom/android/mms/model/TextModel;
    :cond_0
    const-string v5, "SlideshowEditor"

    const-string v6, "The limitation of the number of slides is reached."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public changeAudio(ILandroid/net/Uri;)V
    .locals 3
    .parameter "position"
    .parameter "newAudio"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 222
    new-instance v0, Lcom/android/mms/model/AudioModel;

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowEditor;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, p2}, Lcom/android/mms/model/AudioModel;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 223
    .local v0, audio:Lcom/android/mms/model/AudioModel;
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowEditor;->mModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2, p1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v1

    .line 224
    .local v1, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v1, v0}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    .line 226
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->updateDuration()V

    .line 228
    return-void
.end method

.method public changeDuration(II)V
    .locals 1
    .parameter "position"
    .parameter "dur"

    .prologue
    .line 255
    if-ltz p2, :cond_0

    .line 256
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditor;->mModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0, p1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/mms/model/SlideModel;->setDuration(I)V

    .line 258
    :cond_0
    return-void
.end method

.method public changeImage(ILandroid/net/Uri;Ljava/lang/String;)V
    .locals 8
    .parameter "position"
    .parameter "newImage"
    .parameter "oriSrc"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 188
    new-instance v2, Lcom/android/mms/model/ImageModel;

    iget-object v5, p0, Lcom/android/mms/ui/SlideshowEditor;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/mms/ui/SlideshowEditor;->mModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v6}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/model/LayoutModel;->getImageRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v6

    invoke-direct {v2, v5, p2, v6, v7}, Lcom/android/mms/model/ImageModel;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;Z)V

    .line 191
    .local v2, model:Lcom/android/mms/model/ImageModel;
    if-eqz p3, :cond_0

    .line 192
    invoke-static {p3}, Lcom/android/mms/ui/MessageUtils;->getAttachmentName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/mms/model/ImageModel;->setSrc(Ljava/lang/String;)V

    .line 196
    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/android/mms/ui/SlideshowEditor;->mModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5, p1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v4

    .line 197
    .local v4, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v2}, Lcom/android/mms/model/ImageModel;->getCID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/mms/model/SlideModel;->getExistUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 198
    .local v1, existUri:Landroid/net/Uri;
    if-eqz v1, :cond_2

    .line 200
    invoke-virtual {v2}, Lcom/android/mms/model/ImageModel;->getSrc()Ljava/lang/String;

    move-result-object p3

    .line 201
    new-instance v3, Lcom/android/mms/model/ImageModel;

    iget-object v5, p0, Lcom/android/mms/ui/SlideshowEditor;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/mms/ui/SlideshowEditor;->mModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v6}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/model/LayoutModel;->getImageRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v3, v5, v1, v6, v7}, Lcom/android/mms/model/ImageModel;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;Z)V
    :try_end_0
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    .end local v2           #model:Lcom/android/mms/model/ImageModel;
    .local v3, model:Lcom/android/mms/model/ImageModel;
    if-eqz p3, :cond_1

    .line 203
    :try_start_1
    invoke-virtual {v3, p3}, Lcom/android/mms/model/ImageModel;->setSrc(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    move-object v2, v3

    .line 205
    .end local v3           #model:Lcom/android/mms/model/ImageModel;
    .restart local v2       #model:Lcom/android/mms/model/ImageModel;
    :cond_2
    :try_start_2
    invoke-virtual {v4, v2}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z
    :try_end_2
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 219
    return-void

    .line 208
    .end local v1           #existUri:Landroid/net/Uri;
    .end local v4           #slide:Lcom/android/mms/model/SlideModel;
    :catch_0
    move-exception v0

    .line 209
    .local v0, e:Lcom/android/mms/ExceedMessageSizeException;
    :goto_0
    if-nez p3, :cond_3

    .line 210
    const-string v5, "SlideshowEditor"

    const-string v6, "changeImage() ExceedMessageSizeException, try to resize"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    new-instance v5, Lcom/android/mms/ResolutionException;

    invoke-direct {v5}, Lcom/android/mms/ResolutionException;-><init>()V

    throw v5

    .line 214
    :cond_3
    const-string v5, "SlideshowEditor"

    const-string v6, "changeImage() ExceedMessageSizeException, reach limition"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    throw v0

    .line 208
    .end local v0           #e:Lcom/android/mms/ExceedMessageSizeException;
    .end local v2           #model:Lcom/android/mms/model/ImageModel;
    .restart local v1       #existUri:Landroid/net/Uri;
    .restart local v3       #model:Lcom/android/mms/model/ImageModel;
    .restart local v4       #slide:Lcom/android/mms/model/SlideModel;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3           #model:Lcom/android/mms/model/ImageModel;
    .restart local v2       #model:Lcom/android/mms/model/ImageModel;
    goto :goto_0
.end method

.method public changeLayout(I)V
    .locals 1
    .parameter "layout"

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditor;->mModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/mms/model/LayoutModel;->changeTo(I)V

    .line 262
    return-void
.end method

.method public changeText(ILjava/lang/String;)V
    .locals 8
    .parameter "position"
    .parameter "newText"

    .prologue
    .line 148
    if-eqz p2, :cond_1

    iget-object v4, p0, Lcom/android/mms/ui/SlideshowEditor;->mModel:Lcom/android/mms/model/SlideshowModel;

    if-eqz v4, :cond_1

    .line 149
    iget-object v4, p0, Lcom/android/mms/ui/SlideshowEditor;->mModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v4, p1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v2

    .line 150
    .local v2, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v3

    .line 151
    .local v3, text:Lcom/android/mms/model/TextModel;
    const/4 v1, 0x0

    .line 152
    .local v1, oldSize:I
    const/4 v0, 0x0

    .line 153
    .local v0, newSize:I
    if-nez v3, :cond_2

    .line 154
    new-instance v3, Lcom/android/mms/model/TextModel;

    .end local v3           #text:Lcom/android/mms/model/TextModel;
    iget-object v4, p0, Lcom/android/mms/ui/SlideshowEditor;->mContext:Landroid/content/Context;

    const-string v5, "text/plain"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "text_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".txt"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/ui/SlideshowEditor;->mModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v7}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/mms/model/LayoutModel;->getTextRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v7

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/android/mms/model/TextModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/model/RegionModel;)V

    .line 157
    .restart local v3       #text:Lcom/android/mms/model/TextModel;
    invoke-virtual {v2, v3}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    .line 159
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v0, v4

    .line 160
    if-lez v0, :cond_0

    .line 161
    iget-object v4, p0, Lcom/android/mms/ui/SlideshowEditor;->mModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v4, v0}, Lcom/android/mms/model/SlideshowModel;->checkMessageSize(I)V

    .line 162
    invoke-virtual {v2, v0}, Lcom/android/mms/model/SlideModel;->increaseSlideSize(I)V

    .line 163
    invoke-virtual {v2, v0}, Lcom/android/mms/model/SlideModel;->increaseMessageSize(I)V

    .line 165
    :cond_0
    invoke-virtual {v3, p2}, Lcom/android/mms/model/TextModel;->setText(Ljava/lang/String;)V

    .line 182
    .end local v0           #newSize:I
    .end local v1           #oldSize:I
    .end local v2           #slide:Lcom/android/mms/model/SlideModel;
    .end local v3           #text:Lcom/android/mms/model/TextModel;
    :cond_1
    :goto_0
    return-void

    .line 166
    .restart local v0       #newSize:I
    .restart local v1       #oldSize:I
    .restart local v2       #slide:Lcom/android/mms/model/SlideModel;
    .restart local v3       #text:Lcom/android/mms/model/TextModel;
    :cond_2
    invoke-virtual {v3}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 167
    invoke-virtual {v3}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v1, v4

    .line 168
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v0, v4

    .line 169
    if-le v0, v1, :cond_4

    .line 170
    iget-object v4, p0, Lcom/android/mms/ui/SlideshowEditor;->mModel:Lcom/android/mms/model/SlideshowModel;

    sub-int v5, v0, v1

    invoke-virtual {v4, v5}, Lcom/android/mms/model/SlideshowModel;->checkMessageSize(I)V

    .line 171
    sub-int v4, v0, v1

    invoke-virtual {v2, v4}, Lcom/android/mms/model/SlideModel;->increaseSlideSize(I)V

    .line 172
    sub-int v4, v0, v1

    invoke-virtual {v2, v4}, Lcom/android/mms/model/SlideModel;->increaseMessageSize(I)V

    .line 178
    :cond_3
    :goto_1
    invoke-virtual {v3, p2}, Lcom/android/mms/model/TextModel;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 174
    :cond_4
    if-ge v0, v1, :cond_3

    .line 175
    sub-int v4, v1, v0

    invoke-virtual {v2, v4}, Lcom/android/mms/model/SlideModel;->decreaseSlideSize(I)V

    .line 176
    sub-int v4, v1, v0

    invoke-virtual {v2, v4}, Lcom/android/mms/model/SlideModel;->decreaseMessageSize(I)V

    goto :goto_1
.end method

.method public changeVideo(ILandroid/net/Uri;)V
    .locals 4
    .parameter "position"
    .parameter "newVideo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 231
    new-instance v1, Lcom/android/mms/model/VideoModel;

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowEditor;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/mms/ui/SlideshowEditor;->mModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v3}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/model/LayoutModel;->getImageRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v3

    invoke-direct {v1, v2, p2, v3}, Lcom/android/mms/model/VideoModel;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    .line 233
    .local v1, video:Lcom/android/mms/model/VideoModel;
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowEditor;->mModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2, p1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    .line 234
    .local v0, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v0, v1}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    .line 236
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->updateDuration()V

    .line 238
    return-void
.end method

.method public getImageRegion()Lcom/android/mms/model/RegionModel;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditor;->mModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/LayoutModel;->getImageRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v0

    return-object v0
.end method

.method public getTextRegion()Lcom/android/mms/model/RegionModel;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditor;->mModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/LayoutModel;->getTextRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v0

    return-object v0
.end method

.method public moveSlideDown(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 249
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditor;->mModel:Lcom/android/mms/model/SlideshowModel;

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditor;->mModel:Lcom/android/mms/model/SlideshowModel;

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v1, v2}, Lcom/android/mms/model/SlideshowModel;->remove(I)Lcom/android/mms/model/SlideModel;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/mms/model/SlideshowModel;->add(ILcom/android/mms/model/SlideModel;)V

    .line 252
    return-void
.end method

.method public moveSlideUp(I)V
    .locals 4
    .parameter "position"

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditor;->mModel:Lcom/android/mms/model/SlideshowModel;

    add-int/lit8 v1, p1, -0x2

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowEditor;->mModel:Lcom/android/mms/model/SlideshowModel;

    add-int/lit8 v3, p1, -0x1

    invoke-virtual {v2, v3}, Lcom/android/mms/model/SlideshowModel;->remove(I)Lcom/android/mms/model/SlideModel;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/model/SlideshowModel;->add(ILcom/android/mms/model/SlideModel;)V

    .line 245
    return-void
.end method

.method public removeAllSlides()V
    .locals 1

    .prologue
    .line 119
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditor;->mModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 120
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SlideshowEditor;->removeSlide(I)V

    goto :goto_0

    .line 122
    :cond_0
    return-void
.end method

.method public removeAudio(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditor;->mModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0, p1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->removeAudio()Z

    move-result v0

    return v0
.end method

.method public removeImage(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditor;->mModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0, p1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->removeImage()Z

    move-result v0

    return v0
.end method

.method public removeSlide(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditor;->mModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0, p1}, Lcom/android/mms/model/SlideshowModel;->remove(I)Lcom/android/mms/model/SlideModel;

    .line 113
    return-void
.end method

.method public removeText(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditor;->mModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0, p1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->removeText()Z

    move-result v0

    return v0
.end method

.method public removeVideo(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditor;->mModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0, p1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->removeVideo()Z

    move-result v0

    return v0
.end method

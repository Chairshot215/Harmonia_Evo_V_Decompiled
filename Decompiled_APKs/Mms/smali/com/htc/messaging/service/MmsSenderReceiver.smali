.class public Lcom/htc/messaging/service/MmsSenderReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MmsSenderReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MmsSenderReceiver"


# instance fields
.field private mCtx:Landroid/content/Context;

.field mDestAddress:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mMediaModels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/MediaModel;",
            ">;"
        }
    .end annotation
.end field

.field private mMediaPicker:Lcom/android/mms/ui/MediaPicker;

.field private mMediaUri:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mMessageSize:I

.field private mMessageSizeLimit:I

.field mSlideshow:Lcom/android/mms/model/SlideshowModel;

.field private mSlideshowUri:Landroid/net/Uri;

.field private mThreadID:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/messaging/service/MmsSenderReceiver;->mMediaUri:Ljava/util/ArrayList;

    .line 68
    iput v1, p0, Lcom/htc/messaging/service/MmsSenderReceiver;->mMessageSize:I

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/messaging/service/MmsSenderReceiver;->mDestAddress:Ljava/util/ArrayList;

    .line 74
    iput v1, p0, Lcom/htc/messaging/service/MmsSenderReceiver;->mThreadID:I

    return-void
.end method

.method private isValidRecipient(Ljava/lang/String;)Z
    .locals 1
    .parameter "recipient"

    .prologue
    .line 86
    invoke-static {p1}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/provider/Telephony$Mms;->isPhoneNumber(Ljava/lang/String;)Z

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

.method private setAudios()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/MediaModel;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 217
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 218
    .local v0, AudioModelSet:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/MediaModel;>;"
    const/4 v2, 0x0

    .local v2, index:I
    :goto_0
    iget-object v3, p0, Lcom/htc/messaging/service/MmsSenderReceiver;->mMediaUri:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 219
    const/4 v1, 0x0

    .line 220
    .local v1, audio:Lcom/android/mms/model/AudioModel;
    iget-object v4, p0, Lcom/htc/messaging/service/MmsSenderReceiver;->mMediaPicker:Lcom/android/mms/ui/MediaPicker;

    iget-object v3, p0, Lcom/htc/messaging/service/MmsSenderReceiver;->mMediaUri:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    invoke-virtual {v4, v3}, Lcom/android/mms/ui/MediaPicker;->makeNewAudio(Landroid/net/Uri;)Lcom/android/mms/model/AudioModel;

    move-result-object v1

    .line 221
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    invoke-virtual {v1}, Lcom/android/mms/model/AudioModel;->getMediaSize()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/htc/messaging/service/MmsSenderReceiver;->updateMessageSize(I)V

    .line 218
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 224
    .end local v1           #audio:Lcom/android/mms/model/AudioModel;
    :cond_0
    return-object v0
.end method

.method private setImages()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/MediaModel;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 228
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 229
    .local v1, imageModelSet:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/MediaModel;>;"
    const/4 v2, 0x0

    .local v2, index:I
    :goto_0
    iget-object v3, p0, Lcom/htc/messaging/service/MmsSenderReceiver;->mMediaUri:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 230
    const/4 v0, 0x0

    .line 231
    .local v0, image:Lcom/android/mms/model/ImageModel;
    iget-object v4, p0, Lcom/htc/messaging/service/MmsSenderReceiver;->mMediaPicker:Lcom/android/mms/ui/MediaPicker;

    iget-object v5, p0, Lcom/htc/messaging/service/MmsSenderReceiver;->mCtx:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/messaging/service/MmsSenderReceiver;->mMediaUri:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    iget v6, p0, Lcom/htc/messaging/service/MmsSenderReceiver;->mMessageSize:I

    invoke-virtual {v4, v5, v3, v6}, Lcom/android/mms/ui/MediaPicker;->pickNewImage(Landroid/content/Context;Landroid/net/Uri;I)Lcom/android/mms/model/ImageModel;

    move-result-object v0

    .line 232
    invoke-virtual {v0}, Lcom/android/mms/model/ImageModel;->getMediaSize()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/htc/messaging/service/MmsSenderReceiver;->updateMessageSize(I)V

    .line 233
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 235
    .end local v0           #image:Lcom/android/mms/model/ImageModel;
    :cond_0
    return-object v1
.end method

.method private setMediaModels(Ljava/lang/String;)V
    .locals 1
    .parameter "mediaType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/mms/UnsupportContentTypeException;,
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 191
    invoke-static {p1}, Lcom/google/android/mms/ContentType;->isSupportedImageType(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "image/*"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 192
    :cond_0
    invoke-direct {p0}, Lcom/htc/messaging/service/MmsSenderReceiver;->setImages()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/messaging/service/MmsSenderReceiver;->mMediaModels:Ljava/util/ArrayList;

    .line 203
    :goto_0
    return-void

    .line 194
    :cond_1
    invoke-static {p1}, Lcom/google/android/mms/ContentType;->isSupportedAudioType(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "audio/*"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 195
    :cond_2
    invoke-direct {p0}, Lcom/htc/messaging/service/MmsSenderReceiver;->setAudios()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/messaging/service/MmsSenderReceiver;->mMediaModels:Ljava/util/ArrayList;

    goto :goto_0

    .line 197
    :cond_3
    invoke-static {p1}, Lcom/google/android/mms/ContentType;->isSupportedVideoType(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "video/*"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 198
    :cond_4
    invoke-direct {p0}, Lcom/htc/messaging/service/MmsSenderReceiver;->setVideos()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/messaging/service/MmsSenderReceiver;->mMediaModels:Ljava/util/ArrayList;

    goto :goto_0

    .line 201
    :cond_5
    new-instance v0, Lcom/android/mms/UnsupportContentTypeException;

    invoke-direct {v0}, Lcom/android/mms/UnsupportContentTypeException;-><init>()V

    throw v0
.end method

.method private setMediaUri(Ljava/util/ArrayList;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 159
    .local p1, mediaUriString:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 160
    iget-object v2, p0, Lcom/htc/messaging/service/MmsSenderReceiver;->mMediaUri:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 162
    :cond_0
    return-void
.end method

.method private setSlideshowModel()V
    .locals 4

    .prologue
    .line 181
    iget-object v2, p0, Lcom/htc/messaging/service/MmsSenderReceiver;->mCtx:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/mms/model/SlideshowModel;->createNew(Landroid/content/Context;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/messaging/service/MmsSenderReceiver;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    .line 182
    :goto_0
    iget-object v2, p0, Lcom/htc/messaging/service/MmsSenderReceiver;->mMediaModels:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 183
    new-instance v1, Lcom/android/mms/model/SlideModel;

    iget-object v2, p0, Lcom/htc/messaging/service/MmsSenderReceiver;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-direct {v1, v2}, Lcom/android/mms/model/SlideModel;-><init>(Lcom/android/mms/model/SlideshowModel;)V

    .line 184
    .local v1, slide:Lcom/android/mms/model/SlideModel;
    iget-object v2, p0, Lcom/htc/messaging/service/MmsSenderReceiver;->mMediaModels:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/MediaModel;

    .line 185
    .local v0, media:Lcom/android/mms/model/MediaModel;
    iget-object v2, p0, Lcom/htc/messaging/service/MmsSenderReceiver;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2, v1}, Lcom/android/mms/model/SlideshowModel;->add(Lcom/android/mms/model/SlideModel;)Z

    .line 186
    invoke-virtual {v1, v0}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    goto :goto_0

    .line 188
    .end local v0           #media:Lcom/android/mms/model/MediaModel;
    .end local v1           #slide:Lcom/android/mms/model/SlideModel;
    :cond_0
    return-void
.end method

.method private setSlideshowUri()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 165
    new-instance v4, Lcom/google/android/mms/pdu/SendReq;

    invoke-direct {v4}, Lcom/google/android/mms/pdu/SendReq;-><init>()V

    .line 166
    .local v4, sendReq:Lcom/google/android/mms/pdu/SendReq;
    const-string v5, "application/vnd.wap.multipart.related"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/mms/pdu/SendReq;->setContentType([B)V

    .line 167
    iget-object v5, p0, Lcom/htc/messaging/service/MmsSenderReceiver;->mDestAddress:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v3, v5, [Ljava/lang/String;

    .line 168
    .local v3, recipientNumbers:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v5, p0, Lcom/htc/messaging/service/MmsSenderReceiver;->mDestAddress:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 169
    iget-object v5, p0, Lcom/htc/messaging/service/MmsSenderReceiver;->mDestAddress:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v3, v1

    .line 168
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 171
    :cond_0
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->getEncodeStrings([Ljava/lang/String;)[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v0

    .line 172
    .local v0, encodedNumbers:[Lcom/google/android/mms/pdu/EncodedStringValue;
    invoke-virtual {v4, v0}, Lcom/google/android/mms/pdu/SendReq;->setTo([Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 173
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Lcom/google/android/mms/pdu/SendReq;->setDate(J)V

    .line 174
    iget-object v5, p0, Lcom/htc/messaging/service/MmsSenderReceiver;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5}, Lcom/android/mms/model/SlideshowModel;->toPduBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v2

    .line 175
    .local v2, pb:Lcom/google/android/mms/pdu/PduBody;
    invoke-virtual {v4, v2}, Lcom/google/android/mms/pdu/SendReq;->setBody(Lcom/google/android/mms/pdu/PduBody;)V

    .line 176
    iget-object v5, p0, Lcom/htc/messaging/service/MmsSenderReceiver;->mCtx:Landroid/content/Context;

    invoke-static {v5}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v5

    sget-object v6, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v4, v6}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/messaging/service/MmsSenderReceiver;->mSlideshowUri:Landroid/net/Uri;

    .line 177
    iget-object v5, p0, Lcom/htc/messaging/service/MmsSenderReceiver;->mCtx:Landroid/content/Context;

    invoke-static {v5}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/messaging/service/MmsSenderReceiver;->mSlideshowUri:Landroid/net/Uri;

    invoke-virtual {v5, v6, v2}, Lcom/google/android/mms/pdu/PduPersister;->updateParts(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduBody;)V

    .line 178
    return-void
.end method

.method private setVideos()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/MediaModel;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 206
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 207
    .local v0, VideoModelSet:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/MediaModel;>;"
    const/4 v1, 0x0

    .local v1, index:I
    :goto_0
    iget-object v3, p0, Lcom/htc/messaging/service/MmsSenderReceiver;->mMediaUri:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 208
    const/4 v2, 0x0

    .line 209
    .local v2, video:Lcom/android/mms/model/VideoModel;
    iget-object v4, p0, Lcom/htc/messaging/service/MmsSenderReceiver;->mMediaPicker:Lcom/android/mms/ui/MediaPicker;

    iget-object v3, p0, Lcom/htc/messaging/service/MmsSenderReceiver;->mMediaUri:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    invoke-virtual {v4, v3}, Lcom/android/mms/ui/MediaPicker;->makeNewVideo(Landroid/net/Uri;)Lcom/android/mms/model/VideoModel;

    move-result-object v2

    .line 210
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    invoke-virtual {v2}, Lcom/android/mms/model/VideoModel;->getMediaSize()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/htc/messaging/service/MmsSenderReceiver;->updateMessageSize(I)V

    .line 207
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 213
    .end local v2           #video:Lcom/android/mms/model/VideoModel;
    :cond_0
    return-object v0
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 246
    iget-object v0, p0, Lcom/htc/messaging/service/MmsSenderReceiver;->mCtx:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 247
    return-void
.end method

.method private updateMessageSize(I)V
    .locals 2
    .parameter "mediaSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/mms/ExceedMessageSizeException;
        }
    .end annotation

    .prologue
    .line 239
    iget v0, p0, Lcom/htc/messaging/service/MmsSenderReceiver;->mMessageSize:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/htc/messaging/service/MmsSenderReceiver;->mMessageSize:I

    .line 240
    iget v0, p0, Lcom/htc/messaging/service/MmsSenderReceiver;->mMessageSize:I

    iget v1, p0, Lcom/htc/messaging/service/MmsSenderReceiver;->mMessageSizeLimit:I

    if-le v0, v1, :cond_0

    .line 241
    new-instance v0, Lcom/android/mms/ExceedMessageSizeException;

    invoke-direct {v0}, Lcom/android/mms/ExceedMessageSizeException;-><init>()V

    throw v0

    .line 243
    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 81
    invoke-virtual {p0, p2, p1}, Lcom/htc/messaging/service/MmsSenderReceiver;->sendMms(Landroid/content/Intent;Landroid/content/Context;)V

    .line 82
    return-void
.end method

.method public sendMms(Landroid/content/Intent;Landroid/content/Context;)V
    .locals 13
    .parameter "intent"
    .parameter "context"

    .prologue
    const v12, 0x7f0902d7

    const/4 v10, 0x0

    .line 90
    const/4 v7, 0x0

    .line 91
    .local v7, warning:Ljava/lang/String;
    iput-object p2, p0, Lcom/htc/messaging/service/MmsSenderReceiver;->mCtx:Landroid/content/Context;

    .line 92
    new-instance v8, Lcom/android/mms/ui/MediaPicker;

    iget-object v9, p0, Lcom/htc/messaging/service/MmsSenderReceiver;->mCtx:Landroid/content/Context;

    invoke-direct {v8, v10, v9, v10, v10}, Lcom/android/mms/ui/MediaPicker;-><init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;Lcom/android/mms/ui/MessageBodyEditor;)V

    iput-object v8, p0, Lcom/htc/messaging/service/MmsSenderReceiver;->mMediaPicker:Lcom/android/mms/ui/MediaPicker;

    .line 93
    invoke-static {}, Lcom/android/mms/model/ContentRestrictionFactory;->getContentRestriction()Lcom/android/mms/model/ContentRestriction;

    move-result-object v0

    .line 94
    .local v0, cr:Lcom/android/mms/model/ContentRestriction;
    invoke-interface {v0}, Lcom/android/mms/model/ContentRestriction;->getMessageSizeLimit()I

    move-result v8

    iput v8, p0, Lcom/htc/messaging/service/MmsSenderReceiver;->mMessageSizeLimit:I

    .line 96
    if-nez p1, :cond_0

    .line 155
    :goto_0
    return-void

    .line 100
    :cond_0
    const-string v8, "dest"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/messaging/service/MmsSenderReceiver;->mDestAddress:Ljava/util/ArrayList;

    .line 101
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    .line 102
    .local v3, mediaType:Ljava/lang/String;
    iget-object v8, p0, Lcom/htc/messaging/service/MmsSenderReceiver;->mDestAddress:Ljava/util/ArrayList;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/htc/messaging/service/MmsSenderReceiver;->mDestAddress:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_2

    .line 103
    :cond_1
    iget-object v8, p0, Lcom/htc/messaging/service/MmsSenderReceiver;->mCtx:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f09005a

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 104
    invoke-direct {p0, v7}, Lcom/htc/messaging/service/MmsSenderReceiver;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 108
    :cond_2
    iget-object v8, p0, Lcom/htc/messaging/service/MmsSenderReceiver;->mDestAddress:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 109
    .local v4, phoneNumber:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    invoke-direct {p0, v4}, Lcom/htc/messaging/service/MmsSenderReceiver;->isValidRecipient(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 110
    :cond_4
    iget-object v8, p0, Lcom/htc/messaging/service/MmsSenderReceiver;->mCtx:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f090057

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v4, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 111
    invoke-direct {p0, v7}, Lcom/htc/messaging/service/MmsSenderReceiver;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 117
    .end local v4           #phoneNumber:Ljava/lang/String;
    :cond_5
    const/4 v6, 0x1

    .line 119
    .local v6, slideNumberLimitation:I
    iget-object v8, p0, Lcom/htc/messaging/service/MmsSenderReceiver;->mMediaUri:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-le v8, v6, :cond_6

    .line 120
    iget-object v8, p0, Lcom/htc/messaging/service/MmsSenderReceiver;->mCtx:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f09005e

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 121
    invoke-direct {p0, v7}, Lcom/htc/messaging/service/MmsSenderReceiver;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 125
    :cond_6
    :try_start_0
    const-string v8, "MEDIA_SETS"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/htc/messaging/service/MmsSenderReceiver;->setMediaUri(Ljava/util/ArrayList;)V

    .line 127
    invoke-direct {p0, v3}, Lcom/htc/messaging/service/MmsSenderReceiver;->setMediaModels(Ljava/lang/String;)V

    .line 128
    invoke-direct {p0}, Lcom/htc/messaging/service/MmsSenderReceiver;->setSlideshowModel()V

    .line 129
    invoke-direct {p0}, Lcom/htc/messaging/service/MmsSenderReceiver;->setSlideshowUri()V

    .line 130
    new-instance v5, Lcom/android/mms/transaction/MmsMessageSender;

    iget-object v8, p0, Lcom/htc/messaging/service/MmsSenderReceiver;->mCtx:Landroid/content/Context;

    iget-object v9, p0, Lcom/htc/messaging/service/MmsSenderReceiver;->mSlideshowUri:Landroid/net/Uri;

    const-wide/16 v10, 0x0

    invoke-direct {v5, v8, v9, v10, v11}, Lcom/android/mms/transaction/MmsMessageSender;-><init>(Landroid/content/Context;Landroid/net/Uri;J)V

    .line 131
    .local v5, sender:Lcom/android/mms/transaction/MessageSender;
    const-wide/16 v8, 0x0

    invoke-interface {v5, v8, v9}, Lcom/android/mms/transaction/MessageSender;->sendMessage(J)Z
    :try_end_0
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    goto/16 :goto_0

    .line 133
    .end local v5           #sender:Lcom/android/mms/transaction/MessageSender;
    :catch_0
    move-exception v1

    .line 134
    .local v1, e:Lcom/android/mms/ExceedMessageSizeException;
    iget-object v8, p0, Lcom/htc/messaging/service/MmsSenderReceiver;->mCtx:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f090051

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 135
    invoke-direct {p0, v7}, Lcom/htc/messaging/service/MmsSenderReceiver;->showToast(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 138
    .end local v1           #e:Lcom/android/mms/ExceedMessageSizeException;
    :catch_1
    move-exception v1

    .line 139
    .local v1, e:Lcom/android/mms/UnsupportContentTypeException;
    iget-object v8, p0, Lcom/htc/messaging/service/MmsSenderReceiver;->mCtx:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f090128

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 140
    invoke-direct {p0, v7}, Lcom/htc/messaging/service/MmsSenderReceiver;->showToast(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 143
    .end local v1           #e:Lcom/android/mms/UnsupportContentTypeException;
    :catch_2
    move-exception v1

    .line 144
    .local v1, e:Lcom/google/android/mms/MmsException;
    iget-object v8, p0, Lcom/htc/messaging/service/MmsSenderReceiver;->mCtx:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 145
    invoke-direct {p0, v7}, Lcom/htc/messaging/service/MmsSenderReceiver;->showToast(Ljava/lang/String;)V

    .line 146
    invoke-virtual {v1}, Lcom/google/android/mms/MmsException;->printStackTrace()V

    goto/16 :goto_0

    .line 149
    .end local v1           #e:Lcom/google/android/mms/MmsException;
    :catch_3
    move-exception v1

    .line 150
    .local v1, e:Ljava/lang/Exception;
    iget-object v8, p0, Lcom/htc/messaging/service/MmsSenderReceiver;->mCtx:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 151
    invoke-direct {p0, v7}, Lcom/htc/messaging/service/MmsSenderReceiver;->showToast(Ljava/lang/String;)V

    .line 152
    const-string v8, "MmsSenderReceiver"

    const-string v9, "Failed to send message: "

    invoke-static {v8, v9, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

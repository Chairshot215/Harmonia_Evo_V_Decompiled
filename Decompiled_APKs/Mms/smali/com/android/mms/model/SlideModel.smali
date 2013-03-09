.class public Lcom/android/mms/model/SlideModel;
.super Lcom/android/mms/model/Model;
.source "SlideModel.java"

# interfaces
.implements Ljava/util/List;
.implements Lorg/w3c/dom/events/EventListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/mms/model/Model;",
        "Ljava/util/List",
        "<",
        "Lcom/android/mms/model/MediaModel;",
        ">;",
        "Lorg/w3c/dom/events/EventListener;"
    }
.end annotation


# static fields
.field private static final LOCAL_LOGV:Z = true

.field private static final MAX_MEDIA_NUMBER:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SlideModel"

.field private static mCidList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mMediaUriList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAudio:Lcom/android/mms/model/MediaModel;

.field private mCanAddAudio:Z

.field private mCanAddImage:Z

.field private mCanAddVCalendar:Z

.field private mCanAddVcard:Z

.field private mCanAddVideo:Z

.field private mDuration:I

.field private mFill:S

.field private mImage:Lcom/android/mms/model/MediaModel;

.field private final mMedia:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/MediaModel;",
            ">;"
        }
    .end annotation
.end field

.field private mParent:Lcom/android/mms/model/SlideshowModel;

.field private mSlideSize:I

.field private mText:Lcom/android/mms/model/MediaModel;

.field private mUnsupportedMedia:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/MediaModel;",
            ">;"
        }
    .end annotation
.end field

.field private mVCalendar:Lcom/android/mms/model/MediaModel;

.field private mVcard:Lcom/android/mms/model/MediaModel;

.field private mVideo:Lcom/android/mms/model/MediaModel;

.field private mVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/mms/model/SlideModel;->mCidList:Ljava/util/ArrayList;

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/mms/model/SlideModel;->mMediaUriList:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(ILcom/android/mms/model/SlideshowModel;)V
    .locals 2
    .parameter "duration"
    .parameter "slideshow"

    .prologue
    const/4 v1, 0x1

    .line 80
    invoke-direct {p0}, Lcom/android/mms/model/Model;-><init>()V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/model/SlideModel;->mMedia:Ljava/util/ArrayList;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/model/SlideModel;->mUnsupportedMedia:Ljava/util/ArrayList;

    .line 61
    iput-boolean v1, p0, Lcom/android/mms/model/SlideModel;->mCanAddImage:Z

    .line 62
    iput-boolean v1, p0, Lcom/android/mms/model/SlideModel;->mCanAddAudio:Z

    .line 63
    iput-boolean v1, p0, Lcom/android/mms/model/SlideModel;->mCanAddVideo:Z

    .line 64
    iput-boolean v1, p0, Lcom/android/mms/model/SlideModel;->mCanAddVcard:Z

    .line 65
    iput-boolean v1, p0, Lcom/android/mms/model/SlideModel;->mCanAddVCalendar:Z

    .line 68
    iput-boolean v1, p0, Lcom/android/mms/model/SlideModel;->mVisible:Z

    .line 81
    iput p1, p0, Lcom/android/mms/model/SlideModel;->mDuration:I

    .line 82
    iput-object p2, p0, Lcom/android/mms/model/SlideModel;->mParent:Lcom/android/mms/model/SlideshowModel;

    .line 83
    return-void
.end method

.method public constructor <init>(ILjava/util/ArrayList;)V
    .locals 6
    .parameter "duration"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/MediaModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, mediaList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/MediaModel;>;"
    const/4 v5, 0x1

    .line 95
    invoke-direct {p0}, Lcom/android/mms/model/Model;-><init>()V

    .line 51
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/mms/model/SlideModel;->mMedia:Ljava/util/ArrayList;

    .line 59
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/mms/model/SlideModel;->mUnsupportedMedia:Ljava/util/ArrayList;

    .line 61
    iput-boolean v5, p0, Lcom/android/mms/model/SlideModel;->mCanAddImage:Z

    .line 62
    iput-boolean v5, p0, Lcom/android/mms/model/SlideModel;->mCanAddAudio:Z

    .line 63
    iput-boolean v5, p0, Lcom/android/mms/model/SlideModel;->mCanAddVideo:Z

    .line 64
    iput-boolean v5, p0, Lcom/android/mms/model/SlideModel;->mCanAddVcard:Z

    .line 65
    iput-boolean v5, p0, Lcom/android/mms/model/SlideModel;->mCanAddVCalendar:Z

    .line 68
    iput-boolean v5, p0, Lcom/android/mms/model/SlideModel;->mVisible:Z

    .line 96
    iput p1, p0, Lcom/android/mms/model/SlideModel;->mDuration:I

    .line 98
    const/4 v1, 0x0

    .line 99
    .local v1, maxDur:I
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/model/MediaModel;

    .line 100
    .local v2, media:Lcom/android/mms/model/MediaModel;
    invoke-direct {p0, v2}, Lcom/android/mms/model/SlideModel;->internalAdd(Lcom/android/mms/model/MediaModel;)V

    .line 102
    invoke-virtual {v2}, Lcom/android/mms/model/MediaModel;->getDuration()I

    move-result v3

    .line 103
    .local v3, mediaDur:I
    if-le v3, v1, :cond_0

    .line 104
    move v1, v3

    goto :goto_0

    .line 109
    .end local v2           #media:Lcom/android/mms/model/MediaModel;
    .end local v3           #mediaDur:I
    :cond_1
    iget v4, p0, Lcom/android/mms/model/SlideModel;->mDuration:I

    if-gtz v4, :cond_2

    .line 110
    if-lez v1, :cond_3

    .end local v1           #maxDur:I
    :goto_1
    iput v1, p0, Lcom/android/mms/model/SlideModel;->mDuration:I

    .line 121
    :cond_2
    return-void

    .line 110
    .restart local v1       #maxDur:I
    :cond_3
    invoke-static {}, Lcom/android/mms/MmsApp;->getDefaultMMSSlideDuration()I

    move-result v1

    goto :goto_1
.end method

.method public constructor <init>(Lcom/android/mms/model/SlideshowModel;)V
    .locals 1
    .parameter "slideshow"

    .prologue
    .line 77
    invoke-static {}, Lcom/android/mms/MmsApp;->getDefaultMMSSlideDuration()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/android/mms/model/SlideModel;-><init>(ILcom/android/mms/model/SlideshowModel;)V

    .line 78
    return-void
.end method

.method private static getUrlExistCount(Ljava/lang/String;)I
    .locals 4
    .parameter "mediaUri"

    .prologue
    .line 809
    const/4 v0, 0x0

    .line 810
    .local v0, count:I
    if-eqz p0, :cond_1

    .line 811
    sget-object v3, Lcom/android/mms/model/SlideModel;->mCidList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 812
    .local v2, uri:Ljava/lang/String;
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 813
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 817
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #uri:Ljava/lang/String;
    :cond_1
    return v0
.end method

.method private handleException()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 237
    invoke-virtual {p0}, Lcom/android/mms/model/SlideModel;->clear()V

    .line 238
    iput-boolean v0, p0, Lcom/android/mms/model/SlideModel;->mCanAddVideo:Z

    .line 239
    iput-boolean v0, p0, Lcom/android/mms/model/SlideModel;->mCanAddAudio:Z

    .line 240
    iput-boolean v0, p0, Lcom/android/mms/model/SlideModel;->mCanAddImage:Z

    .line 241
    iput-boolean v0, p0, Lcom/android/mms/model/SlideModel;->mCanAddVcard:Z

    .line 242
    iput-boolean v0, p0, Lcom/android/mms/model/SlideModel;->mCanAddVCalendar:Z

    .line 243
    return-void
.end method

.method private internalAdd(Lcom/android/mms/model/MediaModel;)V
    .locals 5
    .parameter "media"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 125
    if-nez p1, :cond_1

    .line 233
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->isText()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 131
    iget-object v3, p0, Lcom/android/mms/model/SlideModel;->mText:Lcom/android/mms/model/MediaModel;

    invoke-direct {p0, v3, p1}, Lcom/android/mms/model/SlideModel;->internalAddOrReplace(Lcom/android/mms/model/MediaModel;Lcom/android/mms/model/MediaModel;)V

    .line 132
    iput-object p1, p0, Lcom/android/mms/model/SlideModel;->mText:Lcom/android/mms/model/MediaModel;

    goto :goto_0

    .line 133
    :cond_2
    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->isImage()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 134
    iget-boolean v3, p0, Lcom/android/mms/model/SlideModel;->mCanAddImage:Z

    if-eqz v3, :cond_3

    .line 135
    iget-object v3, p0, Lcom/android/mms/model/SlideModel;->mImage:Lcom/android/mms/model/MediaModel;

    invoke-direct {p0, v3, p1}, Lcom/android/mms/model/SlideModel;->internalAddOrReplace(Lcom/android/mms/model/MediaModel;Lcom/android/mms/model/MediaModel;)V

    .line 136
    iput-object p1, p0, Lcom/android/mms/model/SlideModel;->mImage:Lcom/android/mms/model/MediaModel;

    .line 137
    iput-boolean v4, p0, Lcom/android/mms/model/SlideModel;->mCanAddVideo:Z

    goto :goto_0

    .line 143
    :cond_3
    invoke-direct {p0}, Lcom/android/mms/model/SlideModel;->handleException()V

    goto :goto_0

    .line 147
    :cond_4
    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->isAudio()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 148
    iget-boolean v3, p0, Lcom/android/mms/model/SlideModel;->mCanAddAudio:Z

    if-eqz v3, :cond_5

    .line 149
    iget-object v3, p0, Lcom/android/mms/model/SlideModel;->mAudio:Lcom/android/mms/model/MediaModel;

    invoke-direct {p0, v3, p1}, Lcom/android/mms/model/SlideModel;->internalAddOrReplace(Lcom/android/mms/model/MediaModel;Lcom/android/mms/model/MediaModel;)V

    .line 150
    iput-object p1, p0, Lcom/android/mms/model/SlideModel;->mAudio:Lcom/android/mms/model/MediaModel;

    .line 151
    iput-boolean v4, p0, Lcom/android/mms/model/SlideModel;->mCanAddVideo:Z

    goto :goto_0

    .line 157
    :cond_5
    invoke-direct {p0}, Lcom/android/mms/model/SlideModel;->handleException()V

    goto :goto_0

    .line 164
    :cond_6
    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->isVideo()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 165
    iget-boolean v3, p0, Lcom/android/mms/model/SlideModel;->mCanAddVideo:Z

    if-eqz v3, :cond_7

    .line 166
    iget-object v3, p0, Lcom/android/mms/model/SlideModel;->mVideo:Lcom/android/mms/model/MediaModel;

    invoke-direct {p0, v3, p1}, Lcom/android/mms/model/SlideModel;->internalAddOrReplace(Lcom/android/mms/model/MediaModel;Lcom/android/mms/model/MediaModel;)V

    .line 167
    iput-object p1, p0, Lcom/android/mms/model/SlideModel;->mVideo:Lcom/android/mms/model/MediaModel;

    .line 168
    iput-boolean v4, p0, Lcom/android/mms/model/SlideModel;->mCanAddImage:Z

    .line 169
    iput-boolean v4, p0, Lcom/android/mms/model/SlideModel;->mCanAddAudio:Z

    goto :goto_0

    .line 175
    :cond_7
    invoke-direct {p0}, Lcom/android/mms/model/SlideModel;->handleException()V

    goto :goto_0

    .line 182
    :cond_8
    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->isVCard()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 183
    const-string v3, "SlideModel"

    const-string v4, "slide include a vCard "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-boolean v3, p0, Lcom/android/mms/model/SlideModel;->mCanAddVcard:Z

    if-eqz v3, :cond_9

    .line 185
    iget-object v3, p0, Lcom/android/mms/model/SlideModel;->mVcard:Lcom/android/mms/model/MediaModel;

    invoke-direct {p0, v3, p1}, Lcom/android/mms/model/SlideModel;->internalAddOrReplace(Lcom/android/mms/model/MediaModel;Lcom/android/mms/model/MediaModel;)V

    .line 186
    iput-object p1, p0, Lcom/android/mms/model/SlideModel;->mVcard:Lcom/android/mms/model/MediaModel;

    goto :goto_0

    .line 194
    :cond_9
    invoke-direct {p0}, Lcom/android/mms/model/SlideModel;->handleException()V

    goto :goto_0

    .line 198
    :cond_a
    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->isVCalendar()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 199
    const-string v3, "SlideModel"

    const-string v4, "slide include a vCalendar "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-boolean v3, p0, Lcom/android/mms/model/SlideModel;->mCanAddVCalendar:Z

    if-eqz v3, :cond_b

    .line 201
    iget-object v3, p0, Lcom/android/mms/model/SlideModel;->mVCalendar:Lcom/android/mms/model/MediaModel;

    invoke-direct {p0, v3, p1}, Lcom/android/mms/model/SlideModel;->internalAddOrReplace(Lcom/android/mms/model/MediaModel;Lcom/android/mms/model/MediaModel;)V

    .line 202
    iput-object p1, p0, Lcom/android/mms/model/SlideModel;->mVCalendar:Lcom/android/mms/model/MediaModel;

    goto/16 :goto_0

    .line 210
    :cond_b
    invoke-direct {p0}, Lcom/android/mms/model/SlideModel;->handleException()V

    goto/16 :goto_0

    .line 214
    :cond_c
    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->isUnsupportedMedia()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 215
    iget-object v3, p0, Lcom/android/mms/model/SlideModel;->mUnsupportedMedia:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x2

    if-gt v3, v4, :cond_f

    .line 216
    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->getMediaSize()I

    move-result v0

    .line 217
    .local v0, addSize:I
    iget-object v3, p0, Lcom/android/mms/model/SlideModel;->mParent:Lcom/android/mms/model/SlideshowModel;

    if-eqz v3, :cond_d

    .line 218
    iget-object v3, p0, Lcom/android/mms/model/SlideModel;->mParent:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v3, v0}, Lcom/android/mms/model/SlideshowModel;->checkMessageSize(I)V

    .line 220
    :cond_d
    iget-object v3, p0, Lcom/android/mms/model/SlideModel;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    invoke-virtual {p0, v0}, Lcom/android/mms/model/SlideModel;->increaseSlideSize(I)V

    .line 222
    invoke-virtual {p0, v0}, Lcom/android/mms/model/SlideModel;->increaseMessageSize(I)V

    .line 224
    iget-object v3, p0, Lcom/android/mms/model/Model;->mModelChangedObservers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/model/IModelChangedObserver;

    .line 225
    .local v2, observer:Lcom/android/mms/model/IModelChangedObserver;
    invoke-virtual {p1, v2}, Lcom/android/mms/model/MediaModel;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    goto :goto_1

    .line 228
    .end local v2           #observer:Lcom/android/mms/model/IModelChangedObserver;
    :cond_e
    iget-object v3, p0, Lcom/android/mms/model/SlideModel;->mUnsupportedMedia:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 230
    .end local v0           #addSize:I
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_f
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3
.end method

.method private internalAddOrReplace(Lcom/android/mms/model/MediaModel;Lcom/android/mms/model/MediaModel;)V
    .locals 9
    .parameter "old"
    .parameter "media"

    .prologue
    .line 247
    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->getCID()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/mms/model/SlideModel;->isUrlExist(Ljava/lang/String;)Z

    move-result v3

    .line 248
    .local v3, isUrlExist:Z
    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->getMediaSize()I

    move-result v0

    .line 250
    .local v0, addSize:I
    if-nez p1, :cond_4

    .line 251
    if-nez v3, :cond_1

    .line 253
    iget-object v6, p0, Lcom/android/mms/model/SlideModel;->mParent:Lcom/android/mms/model/SlideshowModel;

    if-eqz v6, :cond_0

    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->isText()Z

    move-result v6

    if-nez v6, :cond_0

    .line 254
    iget-object v6, p0, Lcom/android/mms/model/SlideModel;->mParent:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v6, v0}, Lcom/android/mms/model/SlideshowModel;->checkMessageSize(I)V

    .line 256
    :cond_0
    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->getCID()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 257
    sget-object v6, Lcom/android/mms/model/SlideModel;->mMediaUriList:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->getCID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    :cond_1
    if-nez v3, :cond_2

    .line 262
    invoke-virtual {p0, v0}, Lcom/android/mms/model/SlideModel;->increaseSlideSize(I)V

    .line 263
    invoke-virtual {p0, v0}, Lcom/android/mms/model/SlideModel;->increaseMessageSize(I)V

    .line 266
    :cond_2
    iget-object v6, p0, Lcom/android/mms/model/SlideModel;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v6, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->getCID()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 268
    sget-object v6, Lcom/android/mms/model/SlideModel;->mCidList:Ljava/util/ArrayList;

    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->getCID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 331
    :cond_3
    :goto_0
    iget-object v6, p0, Lcom/android/mms/model/Model;->mModelChangedObservers:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/mms/model/IModelChangedObserver;

    .line 332
    .local v4, observer:Lcom/android/mms/model/IModelChangedObserver;
    invoke-virtual {p2, v4}, Lcom/android/mms/model/MediaModel;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    goto :goto_1

    .line 271
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #observer:Lcom/android/mms/model/IModelChangedObserver;
    :cond_4
    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->getCID()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/mms/model/SlideModel;->getUrlExistCount(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_a

    .line 273
    if-nez v3, :cond_6

    .line 275
    iget-object v6, p0, Lcom/android/mms/model/SlideModel;->mParent:Lcom/android/mms/model/SlideshowModel;

    if-eqz v6, :cond_5

    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->isText()Z

    move-result v6

    if-nez v6, :cond_5

    .line 276
    iget-object v6, p0, Lcom/android/mms/model/SlideModel;->mParent:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v6, v0}, Lcom/android/mms/model/SlideshowModel;->checkMessageSize(I)V

    .line 278
    :cond_5
    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->getCID()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 279
    sget-object v6, Lcom/android/mms/model/SlideModel;->mMediaUriList:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->getCID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    :cond_6
    if-nez v3, :cond_7

    .line 284
    invoke-virtual {p0, v0}, Lcom/android/mms/model/SlideModel;->increaseSlideSize(I)V

    .line 285
    invoke-virtual {p0, v0}, Lcom/android/mms/model/SlideModel;->increaseMessageSize(I)V

    .line 319
    :cond_7
    :goto_2
    iget-object v6, p0, Lcom/android/mms/model/SlideModel;->mMedia:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/mms/model/SlideModel;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    invoke-virtual {v6, v7, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 321
    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->getCID()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_8

    .line 322
    sget-object v6, Lcom/android/mms/model/SlideModel;->mCidList:Ljava/util/ArrayList;

    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->getCID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 324
    :cond_8
    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->getCID()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_9

    .line 325
    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->getCID()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/mms/model/SlideModel;->removeUrl(Ljava/lang/String;)V

    .line 328
    :cond_9
    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->unregisterAllModelChangedObservers()V

    goto :goto_0

    .line 291
    :cond_a
    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->getMediaSize()I

    move-result v5

    .line 292
    .local v5, removeSize:I
    if-eqz v3, :cond_b

    .line 293
    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->getCID()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_b

    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->getCID()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_b

    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->getCID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->getCID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 294
    const/4 v0, 0x0

    .line 296
    :cond_b
    if-le v0, v5, :cond_e

    .line 297
    iget-object v6, p0, Lcom/android/mms/model/SlideModel;->mParent:Lcom/android/mms/model/SlideshowModel;

    if-eqz v6, :cond_c

    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->isText()Z

    move-result v6

    if-nez v6, :cond_c

    .line 300
    :try_start_0
    iget-object v6, p0, Lcom/android/mms/model/SlideModel;->mParent:Lcom/android/mms/model/SlideshowModel;

    sub-int v7, v0, v5

    invoke-virtual {v6, v7}, Lcom/android/mms/model/SlideshowModel;->checkMessageSize(I)V
    :try_end_0
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    :cond_c
    sub-int v6, v0, v5

    invoke-virtual {p0, v6}, Lcom/android/mms/model/SlideModel;->increaseSlideSize(I)V

    .line 312
    sub-int v6, v0, v5

    invoke-virtual {p0, v6}, Lcom/android/mms/model/SlideModel;->increaseMessageSize(I)V

    goto :goto_2

    .line 301
    :catch_0
    move-exception v1

    .line 303
    .local v1, e:Lcom/android/mms/ExceedMessageSizeException;
    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->isImage()Z

    move-result v6

    if-eqz v6, :cond_d

    .line 304
    new-instance v6, Lcom/android/mms/ResolutionException;

    invoke-direct {v6, v5}, Lcom/android/mms/ResolutionException;-><init>(I)V

    throw v6

    .line 306
    :cond_d
    throw v1

    .line 314
    .end local v1           #e:Lcom/android/mms/ExceedMessageSizeException;
    :cond_e
    sub-int v6, v5, v0

    invoke-virtual {p0, v6}, Lcom/android/mms/model/SlideModel;->decreaseSlideSize(I)V

    .line 315
    sub-int v6, v5, v0

    invoke-virtual {p0, v6}, Lcom/android/mms/model/SlideModel;->decreaseMessageSize(I)V

    goto/16 :goto_2

    .line 334
    .end local v5           #removeSize:I
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_f
    return-void
.end method

.method private internalRemove(Ljava/lang/Object;)Z
    .locals 5
    .parameter "object"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 337
    iget-object v2, p0, Lcom/android/mms/model/SlideModel;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 338
    instance-of v2, p1, Lcom/android/mms/model/TextModel;

    if-eqz v2, :cond_3

    .line 339
    iput-object v4, p0, Lcom/android/mms/model/SlideModel;->mText:Lcom/android/mms/model/MediaModel;

    :cond_0
    :goto_0
    move-object v1, p1

    .line 372
    check-cast v1, Lcom/android/mms/model/MediaModel;

    .line 373
    .local v1, media:Lcom/android/mms/model/MediaModel;
    invoke-virtual {v1}, Lcom/android/mms/model/MediaModel;->getCID()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/mms/model/SlideModel;->removeUrl(Ljava/lang/String;)V

    .line 374
    invoke-virtual {v1}, Lcom/android/mms/model/MediaModel;->getCID()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/android/mms/model/MediaModel;->getCID()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/android/mms/model/MediaModel;->getCID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/model/SlideModel;->getUrlExistCount(Ljava/lang/String;)I

    move-result v2

    if-gtz v2, :cond_2

    :cond_1
    move-object v2, p1

    .line 376
    check-cast v2, Lcom/android/mms/model/MediaModel;

    invoke-virtual {v2}, Lcom/android/mms/model/MediaModel;->getMediaSize()I

    move-result v0

    .line 377
    .local v0, decreaseSize:I
    invoke-virtual {p0, v0}, Lcom/android/mms/model/SlideModel;->decreaseSlideSize(I)V

    .line 378
    invoke-virtual {p0, v0}, Lcom/android/mms/model/SlideModel;->decreaseMessageSize(I)V

    .line 381
    .end local v0           #decreaseSize:I
    :cond_2
    check-cast p1, Lcom/android/mms/model/Model;

    .end local p1
    invoke-virtual {p1}, Lcom/android/mms/model/Model;->unregisterAllModelChangedObservers()V

    move v2, v3

    .line 386
    .end local v1           #media:Lcom/android/mms/model/MediaModel;
    :goto_1
    return v2

    .line 340
    .restart local p1
    :cond_3
    instance-of v2, p1, Lcom/android/mms/model/ImageModel;

    if-eqz v2, :cond_4

    .line 341
    iput-object v4, p0, Lcom/android/mms/model/SlideModel;->mImage:Lcom/android/mms/model/MediaModel;

    .line 342
    iput-boolean v3, p0, Lcom/android/mms/model/SlideModel;->mCanAddVideo:Z

    .line 343
    iput-boolean v3, p0, Lcom/android/mms/model/SlideModel;->mCanAddVcard:Z

    .line 344
    iput-boolean v3, p0, Lcom/android/mms/model/SlideModel;->mCanAddVCalendar:Z

    goto :goto_0

    .line 345
    :cond_4
    instance-of v2, p1, Lcom/android/mms/model/AudioModel;

    if-eqz v2, :cond_5

    .line 346
    iput-object v4, p0, Lcom/android/mms/model/SlideModel;->mAudio:Lcom/android/mms/model/MediaModel;

    .line 347
    iput-boolean v3, p0, Lcom/android/mms/model/SlideModel;->mCanAddVideo:Z

    .line 348
    iput-boolean v3, p0, Lcom/android/mms/model/SlideModel;->mCanAddVcard:Z

    .line 349
    iput-boolean v3, p0, Lcom/android/mms/model/SlideModel;->mCanAddVCalendar:Z

    goto :goto_0

    .line 350
    :cond_5
    instance-of v2, p1, Lcom/android/mms/model/VideoModel;

    if-eqz v2, :cond_6

    .line 351
    iput-object v4, p0, Lcom/android/mms/model/SlideModel;->mVideo:Lcom/android/mms/model/MediaModel;

    .line 352
    iput-boolean v3, p0, Lcom/android/mms/model/SlideModel;->mCanAddImage:Z

    .line 353
    iput-boolean v3, p0, Lcom/android/mms/model/SlideModel;->mCanAddAudio:Z

    .line 354
    iput-boolean v3, p0, Lcom/android/mms/model/SlideModel;->mCanAddVcard:Z

    .line 355
    iput-boolean v3, p0, Lcom/android/mms/model/SlideModel;->mCanAddVCalendar:Z

    goto :goto_0

    .line 356
    :cond_6
    instance-of v2, p1, Lcom/android/mms/model/VCardModel;

    if-eqz v2, :cond_7

    .line 357
    iput-object v4, p0, Lcom/android/mms/model/SlideModel;->mVcard:Lcom/android/mms/model/MediaModel;

    .line 358
    iput-boolean v3, p0, Lcom/android/mms/model/SlideModel;->mCanAddVcard:Z

    .line 359
    iput-boolean v3, p0, Lcom/android/mms/model/SlideModel;->mCanAddImage:Z

    .line 360
    iput-boolean v3, p0, Lcom/android/mms/model/SlideModel;->mCanAddAudio:Z

    .line 361
    iput-boolean v3, p0, Lcom/android/mms/model/SlideModel;->mCanAddVCalendar:Z

    goto :goto_0

    .line 362
    :cond_7
    instance-of v2, p1, Lcom/android/mms/model/VCalendarModel;

    if-eqz v2, :cond_8

    .line 363
    iput-object v4, p0, Lcom/android/mms/model/SlideModel;->mVCalendar:Lcom/android/mms/model/MediaModel;

    .line 364
    iput-boolean v3, p0, Lcom/android/mms/model/SlideModel;->mCanAddVCalendar:Z

    .line 365
    iput-boolean v3, p0, Lcom/android/mms/model/SlideModel;->mCanAddVcard:Z

    .line 366
    iput-boolean v3, p0, Lcom/android/mms/model/SlideModel;->mCanAddImage:Z

    .line 367
    iput-boolean v3, p0, Lcom/android/mms/model/SlideModel;->mCanAddAudio:Z

    goto :goto_0

    .line 368
    :cond_8
    instance-of v2, p1, Lcom/android/mms/model/UnsupportedMediaModel;

    if-eqz v2, :cond_0

    .line 369
    iget-object v2, p0, Lcom/android/mms/model/SlideModel;->mUnsupportedMedia:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 386
    :cond_9
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private static isUrlExist(Ljava/lang/String;)Z
    .locals 1
    .parameter "mediaUri"

    .prologue
    .line 796
    if-eqz p0, :cond_0

    .line 797
    sget-object v0, Lcom/android/mms/model/SlideModel;->mCidList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 799
    const/4 v0, 0x1

    .line 803
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private removeUrl(Ljava/lang/String;)V
    .locals 1
    .parameter "mediaUri"

    .prologue
    .line 824
    sget-object v0, Lcom/android/mms/model/SlideModel;->mCidList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 825
    invoke-static {p1}, Lcom/android/mms/model/SlideModel;->getUrlExistCount(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_0

    .line 826
    sget-object v0, Lcom/android/mms/model/SlideModel;->mMediaUriList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 827
    :cond_0
    return-void
.end method

.method public static resetUriList()V
    .locals 1

    .prologue
    .line 791
    sget-object v0, Lcom/android/mms/model/SlideModel;->mCidList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 792
    sget-object v0, Lcom/android/mms/model/SlideModel;->mMediaUriList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 793
    return-void
.end method

.method private updateDuration(I)V
    .locals 0
    .parameter "duration"

    .prologue
    .line 758
    if-gtz p1, :cond_0

    .line 766
    :goto_0
    return-void

    .line 764
    :cond_0
    iput p1, p0, Lcom/android/mms/model/SlideModel;->mDuration:I

    goto :goto_0
.end method

.method private updateDuration(Ljava/util/ArrayList;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/MediaModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 775
    .local p1, mediaList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/MediaModel;>;"
    const/4 v1, 0x0

    .line 776
    .local v1, maxDur:I
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/model/MediaModel;

    .line 777
    .local v2, media:Lcom/android/mms/model/MediaModel;
    invoke-direct {p0, v2}, Lcom/android/mms/model/SlideModel;->internalAdd(Lcom/android/mms/model/MediaModel;)V

    .line 779
    invoke-virtual {v2}, Lcom/android/mms/model/MediaModel;->getDuration()I

    move-result v3

    .line 780
    .local v3, mediaDur:I
    if-le v3, v1, :cond_0

    .line 781
    move v1, v3

    goto :goto_0

    .line 785
    .end local v2           #media:Lcom/android/mms/model/MediaModel;
    .end local v3           #mediaDur:I
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/mms/model/SlideModel;->updateDuration(I)V

    .line 786
    return-void
.end method


# virtual methods
.method public add(ILcom/android/mms/model/MediaModel;)V
    .locals 2
    .parameter "location"
    .parameter "object"

    .prologue
    .line 558
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic add(ILjava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    check-cast p2, Lcom/android/mms/model/MediaModel;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/mms/model/SlideModel;->add(ILcom/android/mms/model/MediaModel;)V

    return-void
.end method

.method public add(Lcom/android/mms/model/MediaModel;)Z
    .locals 1
    .parameter "object"

    .prologue
    const/4 v0, 0x1

    .line 471
    invoke-direct {p0, p1}, Lcom/android/mms/model/SlideModel;->internalAdd(Lcom/android/mms/model/MediaModel;)V

    .line 472
    invoke-virtual {p0, v0}, Lcom/android/mms/model/SlideModel;->notifyModelChanged(Z)V

    .line 473
    return v0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    check-cast p1, Lcom/android/mms/model/MediaModel;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    move-result v0

    return v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 2
    .parameter "location"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+",
            "Lcom/android/mms/model/MediaModel;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 563
    .local p2, collection:Ljava/util/Collection;,"Ljava/util/Collection<+Lcom/android/mms/model/MediaModel;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lcom/android/mms/model/MediaModel;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 477
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<+Lcom/android/mms/model/MediaModel;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clear()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 481
    iget-object v3, p0, Lcom/android/mms/model/SlideModel;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 482
    iget-object v3, p0, Lcom/android/mms/model/SlideModel;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/model/MediaModel;

    .line 483
    .local v2, media:Lcom/android/mms/model/MediaModel;
    invoke-virtual {v2}, Lcom/android/mms/model/MediaModel;->unregisterAllModelChangedObservers()V

    .line 484
    invoke-virtual {v2}, Lcom/android/mms/model/MediaModel;->getMediaSize()I

    move-result v0

    .line 485
    .local v0, decreaseSize:I
    invoke-virtual {p0, v0}, Lcom/android/mms/model/SlideModel;->decreaseSlideSize(I)V

    .line 486
    invoke-virtual {p0, v0}, Lcom/android/mms/model/SlideModel;->decreaseMessageSize(I)V

    .line 488
    invoke-virtual {v2}, Lcom/android/mms/model/MediaModel;->isImage()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 489
    check-cast v2, Lcom/android/mms/model/ImageModel;

    .end local v2           #media:Lcom/android/mms/model/MediaModel;
    invoke-virtual {v2}, Lcom/android/mms/model/ImageModel;->recycle()V

    goto :goto_0

    .line 492
    .end local v0           #decreaseSize:I
    :cond_1
    iget-object v3, p0, Lcom/android/mms/model/SlideModel;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 494
    iput-object v5, p0, Lcom/android/mms/model/SlideModel;->mText:Lcom/android/mms/model/MediaModel;

    .line 495
    iput-object v5, p0, Lcom/android/mms/model/SlideModel;->mImage:Lcom/android/mms/model/MediaModel;

    .line 496
    iput-object v5, p0, Lcom/android/mms/model/SlideModel;->mAudio:Lcom/android/mms/model/MediaModel;

    .line 497
    iput-object v5, p0, Lcom/android/mms/model/SlideModel;->mVideo:Lcom/android/mms/model/MediaModel;

    .line 498
    iput-object v5, p0, Lcom/android/mms/model/SlideModel;->mVcard:Lcom/android/mms/model/MediaModel;

    .line 499
    iput-object v5, p0, Lcom/android/mms/model/SlideModel;->mVCalendar:Lcom/android/mms/model/MediaModel;

    .line 500
    iget-object v3, p0, Lcom/android/mms/model/SlideModel;->mUnsupportedMedia:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 502
    iput-boolean v4, p0, Lcom/android/mms/model/SlideModel;->mCanAddImage:Z

    .line 503
    iput-boolean v4, p0, Lcom/android/mms/model/SlideModel;->mCanAddAudio:Z

    .line 504
    iput-boolean v4, p0, Lcom/android/mms/model/SlideModel;->mCanAddVideo:Z

    .line 505
    iput-boolean v4, p0, Lcom/android/mms/model/SlideModel;->mCanAddVcard:Z

    .line 506
    iput-boolean v4, p0, Lcom/android/mms/model/SlideModel;->mCanAddVCalendar:Z

    .line 508
    invoke-virtual {p0, v4}, Lcom/android/mms/model/SlideModel;->notifyModelChanged(Z)V

    .line 510
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter "object"

    .prologue
    .line 513
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 517
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public decreaseMessageSize(I)V
    .locals 2
    .parameter "decreaseSize"

    .prologue
    .line 446
    if-lez p1, :cond_0

    iget-object v1, p0, Lcom/android/mms/model/SlideModel;->mParent:Lcom/android/mms/model/SlideshowModel;

    if-eqz v1, :cond_0

    .line 447
    iget-object v1, p0, Lcom/android/mms/model/SlideModel;->mParent:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1}, Lcom/android/mms/model/SlideshowModel;->getCurrentMessageSize()I

    move-result v0

    .line 448
    .local v0, size:I
    sub-int/2addr v0, p1

    .line 449
    iget-object v1, p0, Lcom/android/mms/model/SlideModel;->mParent:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1, v0}, Lcom/android/mms/model/SlideshowModel;->setCurrentMessageSize(I)V

    .line 451
    .end local v0           #size:I
    :cond_0
    return-void
.end method

.method public decreaseSlideSize(I)V
    .locals 1
    .parameter "decreaseSize"

    .prologue
    .line 428
    if-lez p1, :cond_0

    .line 429
    iget v0, p0, Lcom/android/mms/model/SlideModel;->mSlideSize:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/android/mms/model/SlideModel;->mSlideSize:I

    .line 431
    :cond_0
    return-void
.end method

.method public get(I)Lcom/android/mms/model/MediaModel;
    .locals 1
    .parameter "location"

    .prologue
    .line 567
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/MediaModel;

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/android/mms/model/SlideModel;->get(I)Lcom/android/mms/model/MediaModel;

    move-result-object v0

    return-object v0
.end method

.method public getAudio()Lcom/android/mms/model/AudioModel;
    .locals 1

    .prologue
    .line 741
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mAudio:Lcom/android/mms/model/MediaModel;

    check-cast v0, Lcom/android/mms/model/AudioModel;

    return-object v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 393
    iget v0, p0, Lcom/android/mms/model/SlideModel;->mDuration:I

    return v0
.end method

.method public getExistUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .parameter "mediaUri"

    .prologue
    .line 843
    invoke-static {p1}, Lcom/android/mms/model/SlideModel;->isUrlExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 844
    sget-object v0, Lcom/android/mms/model/SlideModel;->mMediaUriList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 846
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFill()S
    .locals 1

    .prologue
    .line 621
    iget-short v0, p0, Lcom/android/mms/model/SlideModel;->mFill:S

    return v0
.end method

.method public getImage()Lcom/android/mms/model/ImageModel;
    .locals 1

    .prologue
    .line 737
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mImage:Lcom/android/mms/model/MediaModel;

    check-cast v0, Lcom/android/mms/model/ImageModel;

    return-object v0
.end method

.method public getSlideSize()I
    .locals 1

    .prologue
    .line 418
    iget v0, p0, Lcom/android/mms/model/SlideModel;->mSlideSize:I

    return v0
.end method

.method public getText()Lcom/android/mms/model/TextModel;
    .locals 1

    .prologue
    .line 733
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mText:Lcom/android/mms/model/MediaModel;

    check-cast v0, Lcom/android/mms/model/TextModel;

    return-object v0
.end method

.method public getVCalendar()Lcom/android/mms/model/VCalendarModel;
    .locals 1

    .prologue
    .line 753
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mVCalendar:Lcom/android/mms/model/MediaModel;

    check-cast v0, Lcom/android/mms/model/VCalendarModel;

    return-object v0
.end method

.method public getVcard()Lcom/android/mms/model/VCardModel;
    .locals 1

    .prologue
    .line 749
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mVcard:Lcom/android/mms/model/MediaModel;

    check-cast v0, Lcom/android/mms/model/VCardModel;

    return-object v0
.end method

.method public getVideo()Lcom/android/mms/model/VideoModel;
    .locals 1

    .prologue
    .line 745
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mVideo:Lcom/android/mms/model/MediaModel;

    check-cast v0, Lcom/android/mms/model/VideoModel;

    return-object v0
.end method

.method public handleEvent(Lorg/w3c/dom/events/Event;)V
    .locals 5
    .parameter "evt"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 657
    invoke-interface {p1}, Lorg/w3c/dom/events/Event;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmilSlideStart"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 659
    const-string v0, "SlideModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start to play slide: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    iput-boolean v4, p0, Lcom/android/mms/model/SlideModel;->mVisible:Z

    .line 669
    :cond_0
    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/mms/model/SlideModel;->notifyModelChanged(Z)V

    .line 670
    return-void

    .line 662
    :cond_1
    iget-short v0, p0, Lcom/android/mms/model/SlideModel;->mFill:S

    if-eq v0, v4, :cond_0

    .line 664
    const-string v0, "SlideModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stop playing slide: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    iput-boolean v3, p0, Lcom/android/mms/model/SlideModel;->mVisible:Z

    goto :goto_0
.end method

.method public hasAttachment()Z
    .locals 1

    .prologue
    .line 679
    invoke-virtual {p0}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/model/SlideModel;->hasUnsupportedMedia()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/model/SlideModel;->hasVcard()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/model/SlideModel;->hasVCalendar()Z

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

.method public hasAudio()Z
    .locals 1

    .prologue
    .line 693
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mAudio:Lcom/android/mms/model/MediaModel;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasImage()Z
    .locals 1

    .prologue
    .line 685
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mImage:Lcom/android/mms/model/MediaModel;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasText()Z
    .locals 1

    .prologue
    .line 673
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mText:Lcom/android/mms/model/MediaModel;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUnsupportedMedia()Z
    .locals 1

    .prologue
    .line 689
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mUnsupportedMedia:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasVCalendar()Z
    .locals 1

    .prologue
    .line 705
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mVCalendar:Lcom/android/mms/model/MediaModel;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasVcard()Z
    .locals 1

    .prologue
    .line 701
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mVcard:Lcom/android/mms/model/MediaModel;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasVideo()Z
    .locals 1

    .prologue
    .line 697
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mVideo:Lcom/android/mms/model/MediaModel;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public increaseMessageSize(I)V
    .locals 2
    .parameter "increaseSize"

    .prologue
    .line 438
    if-lez p1, :cond_0

    iget-object v1, p0, Lcom/android/mms/model/SlideModel;->mParent:Lcom/android/mms/model/SlideshowModel;

    if-eqz v1, :cond_0

    .line 439
    iget-object v1, p0, Lcom/android/mms/model/SlideModel;->mParent:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1}, Lcom/android/mms/model/SlideshowModel;->getCurrentMessageSize()I

    move-result v0

    .line 440
    .local v0, size:I
    add-int/2addr v0, p1

    .line 441
    iget-object v1, p0, Lcom/android/mms/model/SlideModel;->mParent:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1, v0}, Lcom/android/mms/model/SlideshowModel;->setCurrentMessageSize(I)V

    .line 443
    .end local v0           #size:I
    :cond_0
    return-void
.end method

.method public increaseSlideSize(I)V
    .locals 1
    .parameter "increaseSize"

    .prologue
    .line 422
    if-lez p1, :cond_0

    .line 423
    iget v0, p0, Lcom/android/mms/model/SlideModel;->mSlideSize:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/mms/model/SlideModel;->mSlideSize:I

    .line 425
    :cond_0
    return-void
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1
    .parameter "object"

    .prologue
    .line 571
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 521
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 606
    iget-boolean v0, p0, Lcom/android/mms/model/SlideModel;->mVisible:Z

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/android/mms/model/MediaModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 525
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 1
    .parameter "object"

    .prologue
    .line 575
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator",
            "<",
            "Lcom/android/mms/model/MediaModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 579
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .parameter "location"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator",
            "<",
            "Lcom/android/mms/model/MediaModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 583
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method protected registerModelChangedObserverInDescendants(Lcom/android/mms/model/IModelChangedObserver;)V
    .locals 3
    .parameter "observer"

    .prologue
    .line 635
    iget-object v2, p0, Lcom/android/mms/model/SlideModel;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/MediaModel;

    .line 636
    .local v1, media:Lcom/android/mms/model/MediaModel;
    invoke-virtual {v1, p1}, Lcom/android/mms/model/MediaModel;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    goto :goto_0

    .line 638
    .end local v1           #media:Lcom/android/mms/model/MediaModel;
    :cond_0
    return-void
.end method

.method public remove(I)Lcom/android/mms/model/MediaModel;
    .locals 2
    .parameter "location"

    .prologue
    .line 587
    iget-object v1, p0, Lcom/android/mms/model/SlideModel;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/MediaModel;

    .line 588
    .local v0, media:Lcom/android/mms/model/MediaModel;
    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/android/mms/model/SlideModel;->internalRemove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 589
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/mms/model/SlideModel;->notifyModelChanged(Z)V

    .line 591
    :cond_0
    return-object v0
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/android/mms/model/SlideModel;->remove(I)Lcom/android/mms/model/MediaModel;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .parameter "object"

    .prologue
    const/4 v0, 0x1

    .line 529
    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/android/mms/model/MediaModel;

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/mms/model/SlideModel;->internalRemove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 531
    invoke-virtual {p0, v0}, Lcom/android/mms/model/SlideModel;->notifyModelChanged(Z)V

    .line 534
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 538
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeAudio()Z
    .locals 1

    .prologue
    .line 717
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mAudio:Lcom/android/mms/model/MediaModel;

    invoke-virtual {p0, v0}, Lcom/android/mms/model/SlideModel;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeImage()Z
    .locals 1

    .prologue
    .line 713
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mImage:Lcom/android/mms/model/MediaModel;

    invoke-virtual {p0, v0}, Lcom/android/mms/model/SlideModel;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeSlideUrl()V
    .locals 4

    .prologue
    .line 830
    iget-object v2, p0, Lcom/android/mms/model/SlideModel;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 831
    iget-object v2, p0, Lcom/android/mms/model/SlideModel;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/MediaModel;

    .line 833
    .local v1, media:Lcom/android/mms/model/MediaModel;
    invoke-virtual {v1}, Lcom/android/mms/model/MediaModel;->getCID()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 835
    sget-object v2, Lcom/android/mms/model/SlideModel;->mCidList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Lcom/android/mms/model/MediaModel;->getCID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 839
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #media:Lcom/android/mms/model/MediaModel;
    :cond_1
    return-void
.end method

.method public removeText()Z
    .locals 1

    .prologue
    .line 709
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mText:Lcom/android/mms/model/MediaModel;

    invoke-virtual {p0, v0}, Lcom/android/mms/model/SlideModel;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeVCalendar()Z
    .locals 1

    .prologue
    .line 729
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mVCalendar:Lcom/android/mms/model/MediaModel;

    invoke-virtual {p0, v0}, Lcom/android/mms/model/SlideModel;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeVcard()Z
    .locals 1

    .prologue
    .line 725
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mVcard:Lcom/android/mms/model/MediaModel;

    invoke-virtual {p0, v0}, Lcom/android/mms/model/SlideModel;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeVideo()Z
    .locals 1

    .prologue
    .line 721
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mVideo:Lcom/android/mms/model/MediaModel;

    invoke-virtual {p0, v0}, Lcom/android/mms/model/SlideModel;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 542
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public set(ILcom/android/mms/model/MediaModel;)Lcom/android/mms/model/MediaModel;
    .locals 2
    .parameter "location"
    .parameter "object"

    .prologue
    .line 595
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    check-cast p2, Lcom/android/mms/model/MediaModel;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/mms/model/SlideModel;->set(ILcom/android/mms/model/MediaModel;)Lcom/android/mms/model/MediaModel;

    move-result-object v0

    return-object v0
.end method

.method public setDuration(I)V
    .locals 5
    .parameter "duration"

    .prologue
    .line 400
    iput p1, p0, Lcom/android/mms/model/SlideModel;->mDuration:I

    .line 403
    iget-object v2, p0, Lcom/android/mms/model/SlideModel;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/MediaModel;

    .line 404
    .local v1, media:Lcom/android/mms/model/MediaModel;
    instance-of v2, v1, Lcom/android/mms/model/VideoModel;

    if-nez v2, :cond_0

    instance-of v2, v1, Lcom/android/mms/model/AudioModel;

    if-eqz v2, :cond_1

    .line 405
    :cond_0
    const-string v2, "SlideModel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set media Duration: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/mms/model/SlideModel;->mDuration:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    iget v2, p0, Lcom/android/mms/model/SlideModel;->mDuration:I

    invoke-virtual {v1, v2}, Lcom/android/mms/model/MediaModel;->setDuration(I)V

    goto :goto_0

    .line 408
    :cond_1
    const-string v2, "SlideModel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupport media on set Duration: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 414
    .end local v1           #media:Lcom/android/mms/model/MediaModel;
    :cond_2
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/mms/model/SlideModel;->notifyModelChanged(Z)V

    .line 415
    return-void
.end method

.method public setFill(S)V
    .locals 1
    .parameter "fill"

    .prologue
    .line 628
    iput-short p1, p0, Lcom/android/mms/model/SlideModel;->mFill:S

    .line 629
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/model/SlideModel;->notifyModelChanged(Z)V

    .line 630
    return-void
.end method

.method public setParent(Lcom/android/mms/model/SlideshowModel;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 434
    iput-object p1, p0, Lcom/android/mms/model/SlideModel;->mParent:Lcom/android/mms/model/SlideshowModel;

    .line 435
    return-void
.end method

.method public setVisible(Z)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 613
    iput-boolean p1, p0, Lcom/android/mms/model/SlideModel;->mVisible:Z

    .line 614
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/model/SlideModel;->notifyModelChanged(Z)V

    .line 615
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 546
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 1
    .parameter "start"
    .parameter "end"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/model/MediaModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 599
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 550
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 554
    .local p1, array:[Ljava/lang/Object;,"[TT;"
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected unregisterAllModelChangedObserversInDescendants()V
    .locals 3

    .prologue
    .line 650
    iget-object v2, p0, Lcom/android/mms/model/SlideModel;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/MediaModel;

    .line 651
    .local v1, media:Lcom/android/mms/model/MediaModel;
    invoke-virtual {v1}, Lcom/android/mms/model/MediaModel;->unregisterAllModelChangedObservers()V

    goto :goto_0

    .line 653
    .end local v1           #media:Lcom/android/mms/model/MediaModel;
    :cond_0
    return-void
.end method

.method protected unregisterModelChangedObserverInDescendants(Lcom/android/mms/model/IModelChangedObserver;)V
    .locals 3
    .parameter "observer"

    .prologue
    .line 643
    iget-object v2, p0, Lcom/android/mms/model/SlideModel;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/MediaModel;

    .line 644
    .local v1, media:Lcom/android/mms/model/MediaModel;
    invoke-virtual {v1, p1}, Lcom/android/mms/model/MediaModel;->unregisterModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    goto :goto_0

    .line 646
    .end local v1           #media:Lcom/android/mms/model/MediaModel;
    :cond_0
    return-void
.end method

.method public updateDuration()V
    .locals 1

    .prologue
    .line 771
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mMedia:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/mms/model/SlideModel;->updateDuration(Ljava/util/ArrayList;)V

    .line 772
    return-void
.end method

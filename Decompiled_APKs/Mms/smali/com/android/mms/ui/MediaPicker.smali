.class public Lcom/android/mms/ui/MediaPicker;
.super Ljava/lang/Object;
.source "MediaPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/MediaPicker$OnMediaPickedListener;
    }
.end annotation


# static fields
.field public static final AUDIO:I = 0xc

.field public static final CAMERA:I = 0xb

.field static final FILE_URI_SCHEME:Ljava/lang/String; = "file"

.field public static final IMAGE:I = 0xa

.field private static final LOCAL_LOGV:Z = true

.field public static final LOCATION:I = 0x33

.field static final MSG_ADD_NEW_SLIDE:I = 0x12d

.field static final MSG_CLEAR_ALL_MEIDA:I = 0x12c

.field static final MSG_RECOVERY_MIXED_MSG:I = 0x64

.field static final MSG_RECOVERY_MSG:I = 0xc8

.field public static final RECORDER:I = 0xd

.field public static final RECORD_VIDEO:I = 0x13

.field public static final SLIDESHOW:I = 0x12

.field private static final TAG:Ljava/lang/String; = "MediaPicker"

.field public static final VCALENDAR:I = 0x11

.field public static final VCARD:I = 0x10

.field public static final VIDEO:I = 0xe


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mCreateOnThread:Z

.field private final mCtx:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mIsFromEdit:Z

.field private mMediaPickedListener:Lcom/android/mms/ui/MediaPicker$OnMediaPickedListener;

.field private mMessage:Landroid/net/Uri;

.field private mMessageEditor:Lcom/android/mms/ui/MessageBodyEditor;

.field private mMessageText:Ljava/lang/String;

.field private mResizeImage:Z

.field private mSlideSizeLimit:I

.field private mType:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;Lcom/android/mms/ui/MessageBodyEditor;)V
    .locals 2
    .parameter "activity"
    .parameter "ctx"
    .parameter "handler"
    .parameter "mMbEdit"

    .prologue
    const/4 v1, 0x0

    .line 127
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/MediaPicker;->mResizeImage:Z

    .line 115
    iput v1, p0, Lcom/android/mms/ui/MediaPicker;->mSlideSizeLimit:I

    .line 128
    iput-object p2, p0, Lcom/android/mms/ui/MediaPicker;->mCtx:Landroid/content/Context;

    .line 129
    iput-object p1, p0, Lcom/android/mms/ui/MediaPicker;->mActivity:Landroid/app/Activity;

    .line 130
    iput-boolean v1, p0, Lcom/android/mms/ui/MediaPicker;->mIsFromEdit:Z

    .line 131
    iput-object p3, p0, Lcom/android/mms/ui/MediaPicker;->mHandler:Landroid/os/Handler;

    .line 132
    iput-object p4, p0, Lcom/android/mms/ui/MediaPicker;->mMessageEditor:Lcom/android/mms/ui/MessageBodyEditor;

    .line 133
    iput-boolean v1, p0, Lcom/android/mms/ui/MediaPicker;->mCreateOnThread:Z

    .line 134
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/os/Handler;Lcom/android/mms/ui/MessageBodyEditor;)V
    .locals 2
    .parameter "activity"
    .parameter "handler"
    .parameter "mMbEdit"

    .prologue
    const/4 v1, 0x0

    .line 118
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/MediaPicker;->mResizeImage:Z

    .line 115
    iput v1, p0, Lcom/android/mms/ui/MediaPicker;->mSlideSizeLimit:I

    .line 119
    iput-object p1, p0, Lcom/android/mms/ui/MediaPicker;->mCtx:Landroid/content/Context;

    .line 120
    iput-object p1, p0, Lcom/android/mms/ui/MediaPicker;->mActivity:Landroid/app/Activity;

    .line 121
    iput-boolean v1, p0, Lcom/android/mms/ui/MediaPicker;->mIsFromEdit:Z

    .line 122
    iput-object p2, p0, Lcom/android/mms/ui/MediaPicker;->mHandler:Landroid/os/Handler;

    .line 123
    iput-object p3, p0, Lcom/android/mms/ui/MediaPicker;->mMessageEditor:Lcom/android/mms/ui/MessageBodyEditor;

    .line 124
    iput-boolean v1, p0, Lcom/android/mms/ui/MediaPicker;->mCreateOnThread:Z

    .line 125
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/MediaPicker;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/mms/ui/MediaPicker;->mCtx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/MediaPicker;)Lcom/android/mms/ui/MediaPicker$OnMediaPickedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/mms/ui/MediaPicker;->mMediaPickedListener:Lcom/android/mms/ui/MediaPicker$OnMediaPickedListener;

    return-object v0
.end method

.method private getCompleteUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 2
    .parameter "sourceUri"

    .prologue
    .line 429
    if-eqz p1, :cond_0

    .line 430
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/mnt/sdcard/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file:/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 431
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file:/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 434
    :cond_0
    return-object p1
.end method

.method private makeNewAudioCommon(Landroid/net/Uri;Ljava/lang/String;)Lcom/android/mms/model/AudioModel;
    .locals 9
    .parameter "audioUri"
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const v8, 0x7f0900ec

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 368
    if-nez p2, :cond_0

    .line 369
    :try_start_0
    new-instance v1, Lcom/android/mms/model/AudioModel;

    iget-object v2, p0, Lcom/android/mms/ui/MediaPicker;->mCtx:Landroid/content/Context;

    invoke-direct {v1, v2, p1}, Lcom/android/mms/model/AudioModel;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 378
    :goto_0
    return-object v1

    .line 371
    :cond_0
    new-instance v1, Lcom/android/mms/model/AudioModel;

    iget-object v2, p0, Lcom/android/mms/ui/MediaPicker;->mCtx:Landroid/content/Context;

    invoke-direct {v1, v2, p1, p2}, Lcom/android/mms/model/AudioModel;-><init>(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 373
    :catch_0
    move-exception v0

    .line 374
    .local v0, e:Lcom/android/mms/UnsupportContentTypeException;
    iget-object v1, p0, Lcom/android/mms/ui/MediaPicker;->mCtx:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/mms/ui/MediaPicker;->mCtx:Landroid/content/Context;

    const v3, 0x7f09004f

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/mms/ui/MediaPicker;->mCtx:Landroid/content/Context;

    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/MediaPicker;->mCtx:Landroid/content/Context;

    const v4, 0x7f090050

    new-array v5, v6, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/mms/ui/MediaPicker;->mCtx:Landroid/content/Context;

    invoke-virtual {v6, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private makeNewImageCommon(Landroid/net/Uri;Ljava/lang/String;)Lcom/android/mms/model/ImageModel;
    .locals 13
    .parameter "imageUri"
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 256
    const-string v2, "MediaPicker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--------original uri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    if-eqz p2, :cond_2

    .line 262
    :try_start_0
    new-instance v0, Lcom/android/mms/model/ImageModel;

    iget-object v1, p0, Lcom/android/mms/ui/MediaPicker;->mCtx:Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/model/ImageModel;-><init>(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Lcom/android/mms/model/RegionModel;Z)V
    :try_end_0
    .catch Lcom/android/mms/ResolutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_0 .. :try_end_0} :catch_2

    .line 280
    .local v0, model:Lcom/android/mms/model/ImageModel;
    :goto_0
    :try_start_1
    sget-boolean v2, Lcom/android/mms/model/ImageModel;->mCheckResolution:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/mms/ui/MediaPicker;->mResizeImage:Z

    if-eqz v2, :cond_1

    .line 282
    const/4 v9, 0x0

    .line 283
    .local v9, textSize:I
    iget-object v2, p0, Lcom/android/mms/ui/MediaPicker;->mMessageEditor:Lcom/android/mms/ui/MessageBodyEditor;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/MediaPicker;->mMessageEditor:Lcom/android/mms/ui/MessageBodyEditor;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageBodyEditor;->getText()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/MediaPicker;->mMessageEditor:Lcom/android/mms/ui/MessageBodyEditor;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageBodyEditor;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    if-lez v2, :cond_0

    .line 284
    iget-object v2, p0, Lcom/android/mms/ui/MediaPicker;->mMessageEditor:Lcom/android/mms/ui/MessageBodyEditor;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageBodyEditor;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v9, v2

    .line 286
    :cond_0
    invoke-static {}, Lcom/android/mms/model/ContentRestrictionFactory;->getContentRestriction()Lcom/android/mms/model/ContentRestriction;

    move-result-object v7

    .line 287
    .local v7, cr:Lcom/android/mms/model/ContentRestriction;
    invoke-virtual {v0}, Lcom/android/mms/model/ImageModel;->getMediaSize()I

    move-result v2

    invoke-interface {v7, v9, v2}, Lcom/android/mms/model/ContentRestriction;->checkMessageSize(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/android/mms/ResolutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_1 .. :try_end_1} :catch_2

    .line 351
    .end local v0           #model:Lcom/android/mms/model/ImageModel;
    .end local v7           #cr:Lcom/android/mms/model/ContentRestriction;
    .end local v9           #textSize:I
    :cond_1
    :goto_1
    return-object v0

    .line 266
    :cond_2
    :try_start_2
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportComposerEnhance()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportCheckImageResolution()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/mms/ui/MediaPicker;->mMessageEditor:Lcom/android/mms/ui/MessageBodyEditor;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageBodyEditor;->isEmptySlide()Z

    move-result v2

    if-nez v2, :cond_3

    .line 267
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/mms/model/ImageModel;->mCheckResolution:Z

    .line 268
    new-instance v0, Lcom/android/mms/model/ImageModel;

    iget-object v2, p0, Lcom/android/mms/ui/MediaPicker;->mCtx:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v2, p1, v3, v4}, Lcom/android/mms/model/ImageModel;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;Z)V

    .line 269
    .restart local v0       #model:Lcom/android/mms/model/ImageModel;
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/mms/model/ImageModel;->mCheckResolution:Z
    :try_end_2
    .catch Lcom/android/mms/ResolutionException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 297
    .end local v0           #model:Lcom/android/mms/model/ImageModel;
    :catch_0
    move-exception v8

    .line 300
    .local v8, e:Lcom/android/mms/ResolutionException;
    invoke-static {}, Lcom/android/mms/MmsApp;->isRestrictedMode()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 301
    iget-object v2, p0, Lcom/android/mms/ui/MediaPicker;->mCtx:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/mms/ui/MediaPicker;->mCtx:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0903d1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {}, Lcom/android/mms/model/CarrierContentRestriction;->getMaxResolutionString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 304
    const/4 v0, 0x0

    goto :goto_1

    .line 274
    .end local v8           #e:Lcom/android/mms/ResolutionException;
    :cond_3
    :try_start_3
    new-instance v0, Lcom/android/mms/model/ImageModel;

    iget-object v2, p0, Lcom/android/mms/ui/MediaPicker;->mCtx:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v2, p1, v3, v4}, Lcom/android/mms/model/ImageModel;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;Z)V

    .restart local v0       #model:Lcom/android/mms/model/ImageModel;
    goto/16 :goto_0

    .line 291
    :catch_1
    move-exception v8

    .line 293
    .local v8, e:Ljava/lang/Exception;
    new-instance v2, Lcom/android/mms/ResolutionException;

    invoke-direct {v2}, Lcom/android/mms/ResolutionException;-><init>()V

    throw v2
    :try_end_3
    .catch Lcom/android/mms/ResolutionException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_3 .. :try_end_3} :catch_2

    .line 346
    .end local v0           #model:Lcom/android/mms/model/ImageModel;
    .end local v8           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v8

    .line 347
    .local v8, e:Lcom/android/mms/UnsupportContentTypeException;
    iget-object v2, p0, Lcom/android/mms/ui/MediaPicker;->mCtx:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/mms/ui/MediaPicker;->mCtx:Landroid/content/Context;

    const v4, 0x7f09004f

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v10, p0, Lcom/android/mms/ui/MediaPicker;->mCtx:Landroid/content/Context;

    const v11, 0x7f0900ed

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/MediaPicker;->mCtx:Landroid/content/Context;

    const v5, 0x7f090050

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/mms/ui/MediaPicker;->mCtx:Landroid/content/Context;

    const v12, 0x7f0900ed

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v6, v10

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    .end local v8           #e:Lcom/android/mms/UnsupportContentTypeException;
    :goto_2
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 316
    .local v8, e:Lcom/android/mms/ResolutionException;
    :cond_4
    new-instance v1, Lcom/android/mms/util/ResizeImageHandler;

    iget-object v2, p0, Lcom/android/mms/ui/MediaPicker;->mCtx:Landroid/content/Context;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    iget-object v3, p0, Lcom/android/mms/ui/MediaPicker;->mMessageEditor:Lcom/android/mms/ui/MessageBodyEditor;

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageBodyEditor;->getCurrentMessageSize()I

    move-result v6

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/mms/util/ResizeImageHandler;-><init>(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Handler;I)V

    .line 319
    .local v1, h:Lcom/android/mms/util/ResizeImageHandler;
    new-instance v2, Lcom/android/mms/ui/MediaPicker$1;

    invoke-direct {v2, p0, p2}, Lcom/android/mms/ui/MediaPicker$1;-><init>(Lcom/android/mms/ui/MediaPicker;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/mms/util/ResizeImageHandler;->setOnImageResizedListener(Lcom/android/mms/util/ResizeImageHandler$OnImageResizedListener;)V

    .line 344
    invoke-virtual {v1}, Lcom/android/mms/util/ResizeImageHandler;->run()V

    goto :goto_2
.end method

.method private makeNewLocation([BLandroid/net/Uri;Ljava/lang/String;)Lcom/android/mms/model/LocationModel;
    .locals 12
    .parameter "placeBytes"
    .parameter "imageUri"
    .parameter "mapURL"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const v11, 0x7f09013f

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 747
    :try_start_0
    invoke-static {p1}, Lcom/android/mms/location/Place;->createPlace([B)Lcom/android/mms/location/Place;

    move-result-object v5

    .line 748
    .local v5, p:Lcom/android/mms/location/Place;
    invoke-static {v5, p3}, Lcom/android/mms/location/VCardPlace;->getVcardStringFromPlace(Lcom/android/mms/location/Place;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 749
    .local v8, vCardString:Ljava/lang/String;
    new-instance v0, Lcom/android/mms/model/LocationModel;

    iget-object v1, p0, Lcom/android/mms/ui/MediaPicker;->mCtx:Landroid/content/Context;

    const-string v2, "text/x-vCard"

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    move-object v4, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/model/LocationModel;-><init>(Landroid/content/Context;Ljava/lang/String;[BLandroid/net/Uri;Lcom/android/mms/location/Place;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 757
    .end local v5           #p:Lcom/android/mms/location/Place;
    .end local v8           #vCardString:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 750
    :catch_0
    move-exception v7

    .line 753
    .local v7, e:Lcom/android/mms/UnsupportContentTypeException;
    iget-object v0, p0, Lcom/android/mms/ui/MediaPicker;->mCtx:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/ui/MediaPicker;->mCtx:Landroid/content/Context;

    const v2, 0x7f09004f

    new-array v3, v10, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/mms/ui/MediaPicker;->mCtx:Landroid/content/Context;

    invoke-virtual {v4, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v9

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/MediaPicker;->mCtx:Landroid/content/Context;

    const v3, 0x7f090050

    new-array v4, v10, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/mms/ui/MediaPicker;->mCtx:Landroid/content/Context;

    invoke-virtual {v6, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v9

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public makeNewAudio(Landroid/net/Uri;)Lcom/android/mms/model/AudioModel;
    .locals 1
    .parameter "audioUri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 387
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/MediaPicker;->makeNewAudioCommon(Landroid/net/Uri;Ljava/lang/String;)Lcom/android/mms/model/AudioModel;

    move-result-object v0

    return-object v0
.end method

.method public makeNewAudio(Landroid/net/Uri;Ljava/lang/String;)Lcom/android/mms/model/AudioModel;
    .locals 1
    .parameter "audioUri"
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 382
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/MediaPicker;->makeNewAudioCommon(Landroid/net/Uri;Ljava/lang/String;)Lcom/android/mms/model/AudioModel;

    move-result-object v0

    return-object v0
.end method

.method public makeNewImage(Landroid/net/Uri;)Lcom/android/mms/model/ImageModel;
    .locals 1
    .parameter "imageUri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 362
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/MediaPicker;->makeNewImageCommon(Landroid/net/Uri;Ljava/lang/String;)Lcom/android/mms/model/ImageModel;

    move-result-object v0

    return-object v0
.end method

.method public makeNewImage(Landroid/net/Uri;Ljava/lang/String;)Lcom/android/mms/model/ImageModel;
    .locals 1
    .parameter "imageUri"
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 357
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/MediaPicker;->makeNewImageCommon(Landroid/net/Uri;Ljava/lang/String;)Lcom/android/mms/model/ImageModel;

    move-result-object v0

    return-object v0
.end method

.method public makeNewVCal(Ljava/lang/String;[BLandroid/net/Uri;JJ)Lcom/android/mms/model/VCalendarModel;
    .locals 11
    .parameter "title"
    .parameter "data"
    .parameter "uri"
    .parameter "begin"
    .parameter "end"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 416
    :try_start_0
    new-instance v0, Lcom/android/mms/model/VCalendarModel;

    iget-object v1, p0, Lcom/android/mms/ui/MediaPicker;->mCtx:Landroid/content/Context;

    const-string v2, "text/x-vCalendar"

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-wide v6, p4

    move-wide/from16 v8, p6

    invoke-direct/range {v0 .. v9}, Lcom/android/mms/model/VCalendarModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[BLandroid/net/Uri;JJ)V
    :try_end_0
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 422
    :goto_0
    return-object v0

    .line 417
    :catch_0
    move-exception v10

    .line 418
    .local v10, e:Lcom/android/mms/UnsupportContentTypeException;
    iget-object v0, p0, Lcom/android/mms/ui/MediaPicker;->mCtx:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/ui/MediaPicker;->mCtx:Landroid/content/Context;

    const v2, 0x7f09004f

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/mms/ui/MediaPicker;->mCtx:Landroid/content/Context;

    const v6, 0x7f090141

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/MediaPicker;->mCtx:Landroid/content/Context;

    const v3, 0x7f090050

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/mms/ui/MediaPicker;->mCtx:Landroid/content/Context;

    const v7, 0x7f090141

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public makeNewVCard(Ljava/lang/String;[BLandroid/net/Uri;)Lcom/android/mms/model/VCardModel;
    .locals 10
    .parameter "Name"
    .parameter "data"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const v9, 0x7f090140

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 403
    :try_start_0
    new-instance v0, Lcom/android/mms/model/VCardModel;

    iget-object v1, p0, Lcom/android/mms/ui/MediaPicker;->mCtx:Landroid/content/Context;

    const-string v2, "text/x-vCard"

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/model/VCardModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[BLandroid/net/Uri;)V
    :try_end_0
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 409
    :goto_0
    return-object v0

    .line 404
    :catch_0
    move-exception v6

    .line 405
    .local v6, e:Lcom/android/mms/UnsupportContentTypeException;
    iget-object v0, p0, Lcom/android/mms/ui/MediaPicker;->mCtx:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/ui/MediaPicker;->mCtx:Landroid/content/Context;

    const v2, 0x7f09004f

    new-array v3, v8, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/mms/ui/MediaPicker;->mCtx:Landroid/content/Context;

    invoke-virtual {v4, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/MediaPicker;->mCtx:Landroid/content/Context;

    const v3, 0x7f090050

    new-array v4, v8, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/mms/ui/MediaPicker;->mCtx:Landroid/content/Context;

    invoke-virtual {v5, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public makeNewVideo(Landroid/net/Uri;)Lcom/android/mms/model/VideoModel;
    .locals 10
    .parameter "videoUri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const v9, 0x7f0900ee

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 392
    :try_start_0
    new-instance v1, Lcom/android/mms/model/VideoModel;

    iget-object v3, p0, Lcom/android/mms/ui/MediaPicker;->mCtx:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-direct {v1, v3, p1, v4}, Lcom/android/mms/model/VideoModel;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V
    :try_end_0
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 398
    :goto_0
    return-object v1

    .line 393
    :catch_0
    move-exception v0

    .line 394
    .local v0, e:Lcom/android/mms/UnsupportContentTypeException;
    iget-object v1, p0, Lcom/android/mms/ui/MediaPicker;->mCtx:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/mms/ui/MediaPicker;->mCtx:Landroid/content/Context;

    const v4, 0x7f09004f

    new-array v5, v7, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/mms/ui/MediaPicker;->mCtx:Landroid/content/Context;

    invoke-virtual {v6, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/MediaPicker;->mCtx:Landroid/content/Context;

    const v5, 0x7f090050

    new-array v6, v7, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/mms/ui/MediaPicker;->mCtx:Landroid/content/Context;

    invoke-virtual {v7, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    .line 398
    goto :goto_0
.end method

.method public onMediaPicked(ILandroid/content/Intent;)Lcom/android/mms/model/MediaModel;
    .locals 39
    .parameter "type"
    .parameter "data"

    .prologue
    .line 440
    const/16 v31, 0x0

    .line 442
    .local v31, result:Lcom/android/mms/model/MediaModel;
    if-nez p2, :cond_0

    move-object/from16 v4, v31

    .line 709
    :goto_0
    return-object v4

    .line 446
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 698
    :cond_1
    :goto_1
    if-eqz v31, :cond_15

    invoke-static {}, Lcom/android/mms/MmsApp;->isRestrictedMode()Z

    move-result v4

    if-eqz v4, :cond_15

    invoke-virtual/range {v31 .. v31}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/mms/ui/MessageUtils;->isInCoreContentDomain(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_15

    .line 699
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/MediaPicker;->mCtx:Landroid/content/Context;

    const v6, 0x7f090112

    const v37, 0x7f0903d0

    move/from16 v0, v37

    invoke-static {v4, v6, v0}, Lcom/android/mms/ui/MessageUtils;->displayDialog(Landroid/content/Context;II)V

    .line 701
    const/4 v4, 0x0

    goto :goto_0

    .line 462
    :sswitch_0
    :try_start_0
    const-string v4, "android.intent.extra.STREAM"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v34

    check-cast v34, Landroid/net/Uri;

    .line 464
    .local v34, uri_image:Landroid/net/Uri;
    if-nez v34, :cond_2

    .line 465
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v34

    .line 468
    :cond_2
    const/16 v28, 0x0

    .line 469
    .local v28, mimeType:Ljava/lang/String;
    if-eqz v34, :cond_1

    .line 471
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/mms/ui/MediaPicker;->getCompleteUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v34

    .line 473
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v28

    .line 474
    invoke-virtual/range {v34 .. v34}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v32

    .line 475
    .local v32, scheme:Ljava/lang/String;
    if-eqz v32, :cond_4

    if-eqz v28, :cond_4

    const-string v4, "file"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual/range {v34 .. v34}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    const-string v6, "com.htc.android.mail"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual/range {v34 .. v34}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    const-string v6, "gmail"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 480
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/MediaPicker;->makeNewImage(Landroid/net/Uri;Ljava/lang/String;)Lcom/android/mms/model/ImageModel;

    move-result-object v31

    goto :goto_1

    .line 483
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MediaPicker;->makeNewImage(Landroid/net/Uri;)Lcom/android/mms/model/ImageModel;

    move-result-object v31

    goto :goto_1

    .line 493
    .end local v28           #mimeType:Ljava/lang/String;
    .end local v32           #scheme:Ljava/lang/String;
    .end local v34           #uri_image:Landroid/net/Uri;
    :sswitch_1
    const/4 v12, 0x0

    .line 494
    .local v12, audio_uri:Landroid/net/Uri;
    if-eqz p2, :cond_1

    .line 496
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v12

    .line 498
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/mms/ui/MediaPicker;->getCompleteUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v12

    .line 500
    const-string v4, "MediaPicker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "audio: uri> "

    move-object/from16 v0, v37

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    if-nez v12, :cond_5

    .line 502
    const-string v4, "android.intent.extra.STREAM"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v12

    .end local v12           #audio_uri:Landroid/net/Uri;
    check-cast v12, Landroid/net/Uri;

    .line 503
    .restart local v12       #audio_uri:Landroid/net/Uri;
    :cond_5
    const-string v4, "MediaPicker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "audio: getParcelableExtra> "

    move-object/from16 v0, v37

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    if-eqz v12, :cond_1

    .line 505
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v28

    .line 506
    .restart local v28       #mimeType:Ljava/lang/String;
    invoke-virtual {v12}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v32

    .line 507
    .restart local v32       #scheme:Ljava/lang/String;
    if-eqz v32, :cond_7

    if-eqz v28, :cond_7

    const-string v4, "file"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {v12}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    const-string v6, "gmail"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 511
    :cond_6
    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v4}, Lcom/android/mms/ui/MediaPicker;->makeNewAudio(Landroid/net/Uri;Ljava/lang/String;)Lcom/android/mms/model/AudioModel;

    move-result-object v31

    goto/16 :goto_1

    .line 514
    :cond_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/mms/ui/MediaPicker;->makeNewAudio(Landroid/net/Uri;)Lcom/android/mms/model/AudioModel;

    move-result-object v31

    goto/16 :goto_1

    .line 525
    .end local v12           #audio_uri:Landroid/net/Uri;
    .end local v28           #mimeType:Ljava/lang/String;
    .end local v32           #scheme:Ljava/lang/String;
    :sswitch_2
    const-string v4, "android.intent.extra.STREAM"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v35

    check-cast v35, Landroid/net/Uri;

    .line 527
    .local v35, uri_video:Landroid/net/Uri;
    if-nez v35, :cond_8

    .line 528
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v35

    .line 529
    :cond_8
    if-eqz v35, :cond_1

    .line 531
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Lcom/android/mms/ui/MediaPicker;->getCompleteUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v35

    .line 533
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MediaPicker;->makeNewVideo(Landroid/net/Uri;)Lcom/android/mms/model/VideoModel;

    move-result-object v31

    goto/16 :goto_1

    .line 541
    .end local v35           #uri_video:Landroid/net/Uri;
    :sswitch_3
    const-string v4, "result"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v36

    .line 542
    .local v36, vcard:[B
    if-nez v36, :cond_9

    move-object/from16 v4, v31

    .line 543
    goto/16 :goto_0

    .line 545
    :cond_9
    const-string v4, "personID"

    const-wide/16 v37, -0x1

    move-object/from16 v0, p2

    move-wide/from16 v1, v37

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v21

    .line 546
    .local v21, mId:J
    const-string v4, "name"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 549
    .local v23, mName:Ljava/lang/String;
    if-eqz v23, :cond_b

    .line 551
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_a

    .line 552
    const-string v23, "Unnamed"

    .line 558
    :cond_a
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v26

    .line 559
    .local v26, mUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v36

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mms/ui/MediaPicker;->makeNewVCard(Ljava/lang/String;[BLandroid/net/Uri;)Lcom/android/mms/model/VCardModel;

    move-result-object v31

    .line 560
    goto/16 :goto_1

    .line 555
    .end local v26           #mUri:Landroid/net/Uri;
    :cond_b
    const-string v23, "Unnamed"

    goto :goto_2

    .line 563
    .end local v21           #mId:J
    .end local v23           #mName:Ljava/lang/String;
    .end local v36           #vcard:[B
    :sswitch_4
    const-string v4, "extra_selected_place"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v30

    .line 564
    .local v30, placeBytes:[B
    const-string v4, "extra_map_url"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 565
    .local v27, mapUrl:Ljava/lang/String;
    const-string v4, "extra_image_path"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 566
    .local v33, tmpImagePath:Ljava/lang/String;
    if-eqz v33, :cond_c

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "file:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    .line 570
    .local v17, imageUri:Landroid/net/Uri;
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v17

    move-object/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Lcom/android/mms/ui/MediaPicker;->makeNewLocation([BLandroid/net/Uri;Ljava/lang/String;)Lcom/android/mms/model/LocationModel;

    move-result-object v31

    .line 571
    goto/16 :goto_1

    .line 566
    .end local v17           #imageUri:Landroid/net/Uri;
    :cond_c
    const/16 v17, 0x0

    goto :goto_3

    .line 577
    .end local v27           #mapUrl:Ljava/lang/String;
    .end local v30           #placeBytes:[B
    .end local v33           #tmpImagePath:Ljava/lang/String;
    :sswitch_5
    const-string v4, "event_id"

    const-wide/16 v37, -0x1

    move-object/from16 v0, p2

    move-wide/from16 v1, v37

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v14

    .line 578
    .local v14, event_id:J
    const-string v4, "vcalendar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 579
    .local v16, event_vcal:Ljava/lang/String;
    const-string v4, "title"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 580
    .local v5, event_title:Ljava/lang/String;
    const-string v4, "beginTime"

    const-wide/16 v37, 0x0

    move-object/from16 v0, p2

    move-wide/from16 v1, v37

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    .line 581
    .local v8, begin:J
    const-string v4, "endTime"

    const-wide/16 v37, 0x0

    move-object/from16 v0, p2

    move-wide/from16 v1, v37

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    .line 582
    .local v10, end:J
    sget-object v4, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v14, v15}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    .line 583
    .local v7, event_uri:Landroid/net/Uri;
    const-string v4, "MediaPicker"

    const-string v6, "######################"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    const-string v4, "MediaPicker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, ">>"

    move-object/from16 v0, v37

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    const-string v4, "MediaPicker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, ">>"

    move-object/from16 v0, v37

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    const-string v4, "MediaPicker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, ">>"

    move-object/from16 v0, v37

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    const-string v4, "MediaPicker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, ">>"

    move-object/from16 v0, v37

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    const-string v4, "MediaPicker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, ">>"

    move-object/from16 v0, v37

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    const-string v4, "MediaPicker"

    const-string v6, "######################"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    const-wide/16 v37, -0x1

    cmp-long v4, v14, v37

    if-eqz v4, :cond_d

    .line 591
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v11}, Lcom/android/mms/ui/MediaPicker;->makeNewVCal(Ljava/lang/String;[BLandroid/net/Uri;JJ)Lcom/android/mms/model/VCalendarModel;

    move-result-object v31

    goto/16 :goto_1

    .line 593
    :cond_d
    const/16 v31, 0x0

    .line 603
    goto/16 :goto_1

    .line 605
    .end local v5           #event_title:Ljava/lang/String;
    .end local v7           #event_uri:Landroid/net/Uri;
    .end local v8           #begin:J
    .end local v10           #end:J
    .end local v14           #event_id:J
    .end local v16           #event_vcal:Ljava/lang/String;
    :sswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v29

    .line 607
    .local v29, msg:Landroid/net/Uri;
    const-string v4, "updata_msg"

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v25

    .line 611
    .local v25, mSave:Z
    const-string v4, "fromEdit"

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v20

    .line 618
    .local v20, mFrom:Z
    const-string v4, "discard_slideshow"

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v19

    .line 627
    .local v19, mDiscard:Z
    const-string v4, "remove_all"

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v24

    .line 630
    .local v24, mRemoveAll:Z
    if-eqz v20, :cond_11

    .line 632
    if-eqz v25, :cond_f

    .line 635
    if-eqz v29, :cond_e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/MediaPicker;->mMediaPickedListener:Lcom/android/mms/ui/MediaPicker$OnMediaPickedListener;

    if-eqz v4, :cond_e

    .line 636
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/MediaPicker;->mMediaPickedListener:Lcom/android/mms/ui/MediaPicker$OnMediaPickedListener;

    move-object/from16 v0, v29

    invoke-interface {v4, v0}, Lcom/android/mms/ui/MediaPicker$OnMediaPickedListener;->onSlideshowPicked(Landroid/net/Uri;)V

    .line 684
    :cond_e
    :goto_4
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/mms/ui/MediaPicker;->mCreateOnThread:Z

    move-object/from16 v4, v31

    .line 687
    goto/16 :goto_0

    .line 638
    :cond_f
    if-eqz v24, :cond_10

    .line 639
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/MediaPicker;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x12c

    new-instance v37, Ljava/lang/Boolean;

    const/16 v38, 0x1

    invoke-direct/range {v37 .. v38}, Ljava/lang/Boolean;-><init>(Z)V

    move-object/from16 v0, v37

    invoke-static {v4, v6, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v18

    .line 641
    .local v18, m:Landroid/os/Message;
    invoke-virtual/range {v18 .. v18}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 689
    .end local v18           #m:Landroid/os/Message;
    .end local v19           #mDiscard:Z
    .end local v20           #mFrom:Z
    .end local v24           #mRemoveAll:Z
    .end local v25           #mSave:Z
    .end local v29           #msg:Landroid/net/Uri;
    :catch_0
    move-exception v13

    .line 690
    .local v13, e:Lcom/google/android/mms/MmsException;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/MediaPicker;->mCtx:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/MediaPicker;->mCtx:Landroid/content/Context;

    const v37, 0x7f090162

    move/from16 v0, v37

    invoke-virtual {v6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/16 v37, 0x0

    move/from16 v0, v37

    invoke-static {v4, v6, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    move-object/from16 v4, v31

    .line 693
    goto/16 :goto_0

    .line 646
    .end local v13           #e:Lcom/google/android/mms/MmsException;
    .restart local v19       #mDiscard:Z
    .restart local v20       #mFrom:Z
    .restart local v24       #mRemoveAll:Z
    .restart local v25       #mSave:Z
    .restart local v29       #msg:Landroid/net/Uri;
    :cond_10
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/MediaPicker;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x64

    invoke-static {v4, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v18

    .line 648
    .restart local v18       #m:Landroid/os/Message;
    invoke-virtual/range {v18 .. v18}, Landroid/os/Message;->sendToTarget()V

    goto :goto_4

    .line 652
    .end local v18           #m:Landroid/os/Message;
    :cond_11
    if-eqz v19, :cond_12

    .line 655
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/MediaPicker;->mMessageEditor:Lcom/android/mms/ui/MessageBodyEditor;

    invoke-virtual {v4}, Lcom/android/mms/ui/MessageBodyEditor;->discardSlideshow()V

    .line 657
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/MediaPicker;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x3

    new-instance v37, Ljava/lang/Boolean;

    const/16 v38, 0x1

    invoke-direct/range {v37 .. v38}, Ljava/lang/Boolean;-><init>(Z)V

    move-object/from16 v0, v37

    invoke-static {v4, v6, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v18

    .line 658
    .restart local v18       #m:Landroid/os/Message;
    invoke-virtual/range {v18 .. v18}, Landroid/os/Message;->sendToTarget()V

    goto :goto_4

    .line 662
    .end local v18           #m:Landroid/os/Message;
    :cond_12
    if-nez v25, :cond_13

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/mms/ui/MediaPicker;->mCreateOnThread:Z

    if-eqz v4, :cond_13

    .line 666
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/MediaPicker;->mHandler:Landroid/os/Handler;

    const/16 v6, 0xc8

    move-object/from16 v0, v29

    invoke-static {v4, v6, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v18

    .line 668
    .restart local v18       #m:Landroid/os/Message;
    invoke-virtual/range {v18 .. v18}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_4

    .line 670
    .end local v18           #m:Landroid/os/Message;
    :cond_13
    if-eqz v24, :cond_14

    .line 671
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/MediaPicker;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x12c

    new-instance v37, Ljava/lang/Boolean;

    const/16 v38, 0x1

    invoke-direct/range {v37 .. v38}, Ljava/lang/Boolean;-><init>(Z)V

    move-object/from16 v0, v37

    invoke-static {v4, v6, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v18

    .line 673
    .restart local v18       #m:Landroid/os/Message;
    invoke-virtual/range {v18 .. v18}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_4

    .line 678
    .end local v18           #m:Landroid/os/Message;
    :cond_14
    if-eqz v29, :cond_e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/MediaPicker;->mMediaPickedListener:Lcom/android/mms/ui/MediaPicker$OnMediaPickedListener;

    if-eqz v4, :cond_e

    .line 679
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/MediaPicker;->mMediaPickedListener:Lcom/android/mms/ui/MediaPicker$OnMediaPickedListener;

    move-object/from16 v0, v29

    invoke-interface {v4, v0}, Lcom/android/mms/ui/MediaPicker$OnMediaPickedListener;->onSlideshowPicked(Landroid/net/Uri;)V
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4

    .line 705
    .end local v19           #mDiscard:Z
    .end local v20           #mFrom:Z
    .end local v24           #mRemoveAll:Z
    .end local v25           #mSave:Z
    .end local v29           #msg:Landroid/net/Uri;
    :cond_15
    if-eqz v31, :cond_16

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/MediaPicker;->mMediaPickedListener:Lcom/android/mms/ui/MediaPicker$OnMediaPickedListener;

    if-eqz v4, :cond_16

    .line 706
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/MediaPicker;->mMediaPickedListener:Lcom/android/mms/ui/MediaPicker$OnMediaPickedListener;

    move-object/from16 v0, v31

    invoke-interface {v4, v0}, Lcom/android/mms/ui/MediaPicker$OnMediaPickedListener;->onMediaPicked(Lcom/android/mms/model/MediaModel;)V

    :cond_16
    move-object/from16 v4, v31

    .line 709
    goto/16 :goto_0

    .line 446
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0xb -> :sswitch_0
        0xc -> :sswitch_1
        0xd -> :sswitch_1
        0xe -> :sswitch_2
        0x10 -> :sswitch_3
        0x11 -> :sswitch_5
        0x12 -> :sswitch_6
        0x13 -> :sswitch_2
        0x33 -> :sswitch_4
    .end sparse-switch
.end method

.method public pickNewImage(Landroid/content/Context;Landroid/net/Uri;I)Lcom/android/mms/model/ImageModel;
    .locals 7
    .parameter "mCtx"
    .parameter "imageUri"
    .parameter "currentMessageSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 719
    :try_start_0
    new-instance v3, Lcom/android/mms/model/ImageModel;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct {v3, p1, p2, v5, v6}, Lcom/android/mms/model/ImageModel;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;Z)V
    :try_end_0
    .catch Lcom/android/mms/ResolutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_0 .. :try_end_0} :catch_2

    .line 721
    .local v3, model:Lcom/android/mms/model/ImageModel;
    :try_start_1
    sget-boolean v5, Lcom/android/mms/model/ImageModel;->mCheckResolution:Z

    if-nez v5, :cond_0

    .line 722
    invoke-static {}, Lcom/android/mms/model/ContentRestrictionFactory;->getContentRestriction()Lcom/android/mms/model/ContentRestriction;

    move-result-object v0

    .line 724
    .local v0, cr:Lcom/android/mms/model/ContentRestriction;
    invoke-virtual {v3}, Lcom/android/mms/model/ImageModel;->getMediaSize()I

    move-result v5

    invoke-interface {v0, p3, v5}, Lcom/android/mms/model/ContentRestriction;->checkMessageSize(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/mms/ResolutionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_1 .. :try_end_1} :catch_2

    .line 740
    .end local v0           #cr:Lcom/android/mms/model/ContentRestriction;
    .end local v3           #model:Lcom/android/mms/model/ImageModel;
    :cond_0
    :goto_0
    return-object v3

    .line 728
    .restart local v3       #model:Lcom/android/mms/model/ImageModel;
    :catch_0
    move-exception v1

    .line 730
    .local v1, e:Ljava/lang/Exception;
    :try_start_2
    new-instance v5, Lcom/android/mms/ResolutionException;

    invoke-direct {v5}, Lcom/android/mms/ResolutionException;-><init>()V

    throw v5
    :try_end_2
    .catch Lcom/android/mms/ResolutionException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_2 .. :try_end_2} :catch_2

    .line 732
    .end local v1           #e:Ljava/lang/Exception;
    .end local v3           #model:Lcom/android/mms/model/ImageModel;
    :catch_1
    move-exception v1

    .line 734
    .local v1, e:Lcom/android/mms/ResolutionException;
    new-instance v2, Lcom/android/mms/util/ResizeImageHandler;

    invoke-direct {v2, p1, p2, v4, p3}, Lcom/android/mms/util/ResizeImageHandler;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Handler;I)V

    .line 736
    .local v2, h:Lcom/android/mms/util/ResizeImageHandler;
    invoke-virtual {v2}, Lcom/android/mms/util/ResizeImageHandler;->getResizedImage()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p0, p1, v4, p3}, Lcom/android/mms/ui/MediaPicker;->pickNewImage(Landroid/content/Context;Landroid/net/Uri;I)Lcom/android/mms/model/ImageModel;

    move-result-object v3

    goto :goto_0

    .line 737
    .end local v1           #e:Lcom/android/mms/ResolutionException;
    .end local v2           #h:Lcom/android/mms/util/ResizeImageHandler;
    :catch_2
    move-exception v5

    move-object v3, v4

    .line 740
    goto :goto_0
.end method

.method public setCreateOnThreadFlage(Z)V
    .locals 0
    .parameter "onThread"

    .prologue
    .line 167
    iput-boolean p1, p0, Lcom/android/mms/ui/MediaPicker;->mCreateOnThread:Z

    .line 168
    return-void
.end method

.method public setFlage(Z)V
    .locals 0
    .parameter "isFromEdit"

    .prologue
    .line 160
    iput-boolean p1, p0, Lcom/android/mms/ui/MediaPicker;->mIsFromEdit:Z

    .line 161
    return-void
.end method

.method public setMessage(Landroid/net/Uri;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 155
    iput-object p1, p0, Lcom/android/mms/ui/MediaPicker;->mMessage:Landroid/net/Uri;

    .line 156
    return-void
.end method

.method public setMessageBodyEditor(Lcom/android/mms/ui/MessageBodyEditor;)V
    .locals 0
    .parameter "mMbEdit"

    .prologue
    .line 138
    iput-object p1, p0, Lcom/android/mms/ui/MediaPicker;->mMessageEditor:Lcom/android/mms/ui/MessageBodyEditor;

    .line 139
    return-void
.end method

.method public setMessageText(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 171
    iput-object p1, p0, Lcom/android/mms/ui/MediaPicker;->mMessageText:Ljava/lang/String;

    .line 172
    return-void
.end method

.method public setOnMediaPickedListener(Lcom/android/mms/ui/MediaPicker$OnMediaPickedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 760
    iput-object p1, p0, Lcom/android/mms/ui/MediaPicker;->mMediaPickedListener:Lcom/android/mms/ui/MediaPicker$OnMediaPickedListener;

    .line 761
    return-void
.end method

.method public setResizeImage(Z)V
    .locals 0
    .parameter "resize"

    .prologue
    .line 147
    iput-boolean p1, p0, Lcom/android/mms/ui/MediaPicker;->mResizeImage:Z

    .line 148
    return-void
.end method

.method public setSlideSizeLimit(I)V
    .locals 0
    .parameter "slideSizeLimit"

    .prologue
    .line 151
    iput p1, p0, Lcom/android/mms/ui/MediaPicker;->mSlideSizeLimit:I

    .line 152
    return-void
.end method

.method public setType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 143
    iput p1, p0, Lcom/android/mms/ui/MediaPicker;->mType:I

    .line 144
    return-void
.end method

.method public start()V
    .locals 8

    .prologue
    const/16 v7, 0x13

    const/16 v6, 0x12

    const/16 v5, 0xd

    const/4 v4, 0x0

    .line 175
    iget v2, p0, Lcom/android/mms/ui/MediaPicker;->mType:I

    sparse-switch v2, :sswitch_data_0

    .line 250
    :cond_0
    :goto_0
    iput-object v4, p0, Lcom/android/mms/ui/MediaPicker;->mMessage:Landroid/net/Uri;

    .line 251
    iput-object v4, p0, Lcom/android/mms/ui/MediaPicker;->mMessageText:Ljava/lang/String;

    .line 252
    return-void

    .line 177
    :sswitch_0
    iget-object v2, p0, Lcom/android/mms/ui/MediaPicker;->mCtx:Landroid/content/Context;

    const/16 v3, 0xa

    invoke-static {v2, v3}, Lcom/android/mms/ui/MessageUtils;->selectImage(Landroid/content/Context;I)V

    goto :goto_0

    .line 181
    :sswitch_1
    iget-object v2, p0, Lcom/android/mms/ui/MediaPicker;->mCtx:Landroid/content/Context;

    const/16 v3, 0xb

    invoke-static {v2, v3}, Lcom/android/mms/ui/MessageUtils;->takeCamera(Landroid/content/Context;I)V

    goto :goto_0

    .line 185
    :sswitch_2
    iget-object v2, p0, Lcom/android/mms/ui/MediaPicker;->mCtx:Landroid/content/Context;

    const/16 v3, 0xc

    invoke-static {v2, v3}, Lcom/android/mms/ui/MessageUtils;->selectAudio(Landroid/content/Context;I)V

    goto :goto_0

    .line 189
    :sswitch_3
    iget v2, p0, Lcom/android/mms/ui/MediaPicker;->mSlideSizeLimit:I

    if-lez v2, :cond_1

    .line 191
    iget-object v2, p0, Lcom/android/mms/ui/MediaPicker;->mCtx:Landroid/content/Context;

    iget v3, p0, Lcom/android/mms/ui/MediaPicker;->mSlideSizeLimit:I

    invoke-static {v2, v5, v3}, Lcom/android/mms/ui/MessageUtils;->recordSound(Landroid/content/Context;II)V

    goto :goto_0

    .line 193
    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/MediaPicker;->mCtx:Landroid/content/Context;

    invoke-static {v2, v5}, Lcom/android/mms/ui/MessageUtils;->recordSound(Landroid/content/Context;I)V

    goto :goto_0

    .line 197
    :sswitch_4
    iget-object v2, p0, Lcom/android/mms/ui/MediaPicker;->mCtx:Landroid/content/Context;

    const/16 v3, 0x10

    invoke-static {v2, v3}, Lcom/android/mms/ui/MessageUtils;->selectVCard(Landroid/content/Context;I)V

    goto :goto_0

    .line 201
    :sswitch_5
    iget-object v2, p0, Lcom/android/mms/ui/MediaPicker;->mCtx:Landroid/content/Context;

    const/16 v3, 0x11

    invoke-static {v2, v3}, Lcom/android/mms/ui/MessageUtils;->selectVCal(Landroid/content/Context;I)V

    goto :goto_0

    .line 205
    :sswitch_6
    iget-object v2, p0, Lcom/android/mms/ui/MediaPicker;->mCtx:Landroid/content/Context;

    const/16 v3, 0xe

    invoke-static {v2, v3}, Lcom/android/mms/ui/MessageUtils;->selectVideo(Landroid/content/Context;I)V

    goto :goto_0

    .line 211
    :sswitch_7
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportComposerEnhance()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/mms/ui/MediaPicker;->mActivity:Landroid/app/Activity;

    if-eqz v2, :cond_2

    .line 214
    iget-object v2, p0, Lcom/android/mms/ui/MediaPicker;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x12d

    invoke-static {v2, v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 215
    .local v1, m:Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 218
    .end local v1           #m:Landroid/os/Message;
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 219
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/mms/ui/MediaPicker;->mMessage:Landroid/net/Uri;

    const-string v3, "application/vnd.wap.multipart.related"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 220
    iget-object v2, p0, Lcom/android/mms/ui/MediaPicker;->mMessageText:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 221
    const-string v2, "msg_text"

    iget-object v3, p0, Lcom/android/mms/ui/MediaPicker;->mMessageText:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 225
    :cond_3
    iget-boolean v2, p0, Lcom/android/mms/ui/MediaPicker;->mIsFromEdit:Z

    if-eqz v2, :cond_4

    .line 226
    const-string v2, "isFromEdit"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 228
    :cond_4
    iget-object v2, p0, Lcom/android/mms/ui/MediaPicker;->mActivity:Landroid/app/Activity;

    if-eqz v2, :cond_5

    .line 229
    iget-object v2, p0, Lcom/android/mms/ui/MediaPicker;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v0, v6}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 231
    :cond_5
    iget-object v2, p0, Lcom/android/mms/ui/MediaPicker;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    .line 232
    iget-object v2, p0, Lcom/android/mms/ui/MediaPicker;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/mms/ui/MediaPicker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 239
    .end local v0           #intent:Landroid/content/Intent;
    :sswitch_8
    iget v2, p0, Lcom/android/mms/ui/MediaPicker;->mSlideSizeLimit:I

    if-lez v2, :cond_6

    .line 241
    iget-object v2, p0, Lcom/android/mms/ui/MediaPicker;->mCtx:Landroid/content/Context;

    iget v3, p0, Lcom/android/mms/ui/MediaPicker;->mSlideSizeLimit:I

    invoke-static {v2, v7, v3}, Lcom/android/mms/ui/MessageUtils;->recordVideo(Landroid/content/Context;II)V

    goto/16 :goto_0

    .line 243
    :cond_6
    iget-object v2, p0, Lcom/android/mms/ui/MediaPicker;->mCtx:Landroid/content/Context;

    invoke-static {v2, v7}, Lcom/android/mms/ui/MessageUtils;->recordVideo(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 248
    :sswitch_9
    iget-object v2, p0, Lcom/android/mms/ui/MediaPicker;->mCtx:Landroid/content/Context;

    const/16 v3, 0x33

    invoke-static {v2, v3}, Lcom/android/mms/ui/MessageUtils;->selectNGMLocation(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 175
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0xb -> :sswitch_1
        0xc -> :sswitch_2
        0xd -> :sswitch_3
        0xe -> :sswitch_6
        0x10 -> :sswitch_4
        0x11 -> :sswitch_5
        0x12 -> :sswitch_7
        0x13 -> :sswitch_8
        0x33 -> :sswitch_9
    .end sparse-switch
.end method

.class public Lcom/android/mms/ui/SlideAttachmentItemView;
.super Landroid/widget/RelativeLayout;
.source "SlideAttachmentItemView.java"

# interfaces
.implements Lcom/android/mms/ui/SlideViewInterface;


# static fields
.field private static final TAG:Ljava/lang/String; = "SlideshowAttachmentView"

.field private static final TYPE_AUDIO:I = 0x1

.field private static final TYPE_IMAGE:I = 0x0

.field private static final TYPE_MORE:I = 0x5

.field private static final TYPE_SLIDESHOW:I = 0x6

.field private static final TYPE_VCALENDAR:I = 0x4

.field private static final TYPE_VCARD:I = 0x3

.field private static final TYPE_VIDEO:I = 0x2


# instance fields
.field private mActivity:Landroid/content/Context;

.field private mBtnInfoAction:Landroid/widget/ImageView;

.field private mBtnPlay:Landroid/widget/ImageView;

.field private mImageView:Landroid/widget/ImageView;

.field private mInfoImageView:Landroid/widget/ImageView;

.field protected mInfoLayout:Landroid/view/View;

.field protected mMainLayout:Landroid/view/View;

.field private mSizeView:Landroid/widget/TextView;

.field private mTextView:Landroid/widget/TextView;

.field private mTextView_Bottom:Landroid/widget/TextView;

.field private mTextView_Top:Landroid/widget/TextView;

.field private mTitleView:Landroid/widget/TextView;

.field private mVideoView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 91
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 96
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/SlideAttachmentItemView;ILcom/android/mms/model/MediaModel;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/SlideAttachmentItemView;->onClickHandler(ILcom/android/mms/model/MediaModel;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/mms/ui/SlideAttachmentItemView;ILcom/android/mms/model/MediaModel;Landroid/net/Uri;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/SlideAttachmentItemView;->showActionList(ILcom/android/mms/model/MediaModel;Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/mms/ui/SlideAttachmentItemView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/SlideAttachmentItemView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/ui/SlideAttachmentItemView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/mms/ui/SlideAttachmentItemView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/mms/ui/SlideAttachmentItemView;IJLcom/google/android/mms/pdu/PduPart;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/mms/ui/SlideAttachmentItemView;->onClickHandler(IJLcom/google/android/mms/pdu/PduPart;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/mms/ui/SlideAttachmentItemView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mActivity:Landroid/content/Context;

    return-object v0
.end method

.method private getVcardByteArry(Lcom/google/android/mms/pdu/PduPart;)[B
    .locals 7
    .parameter "part"

    .prologue
    .line 206
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v3

    .line 207
    .local v3, mVcard:[B
    if-nez v3, :cond_0

    .line 208
    const/4 v1, 0x0

    .line 210
    .local v1, is:Ljava/io/InputStream;
    :try_start_0
    iget-object v4, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 211
    .local v2, mContentResolver:Landroid/content/ContentResolver;
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 213
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v4

    new-array v3, v4, [B

    .line 214
    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_3

    .line 222
    if-eqz v1, :cond_0

    .line 224
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 231
    .end local v1           #is:Ljava/io/InputStream;
    .end local v2           #mContentResolver:Landroid/content/ContentResolver;
    :cond_0
    :goto_0
    return-object v3

    .line 225
    .restart local v1       #is:Ljava/io/InputStream;
    .restart local v2       #mContentResolver:Landroid/content/ContentResolver;
    :catch_0
    move-exception v0

    .line 226
    .local v0, e:Ljava/io/IOException;
    const-string v4, "vcard"

    const-string v5, "Failed to close stream"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 216
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #mContentResolver:Landroid/content/ContentResolver;
    :catch_1
    move-exception v0

    .line 217
    .restart local v0       #e:Ljava/io/IOException;
    :try_start_2
    const-string v4, "vcard"

    const-string v5, "Failed to load part data"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 222
    if-eqz v1, :cond_0

    .line 224
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 225
    :catch_2
    move-exception v0

    .line 226
    const-string v4, "vcard"

    const-string v5, "Failed to close stream"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 218
    .end local v0           #e:Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 219
    .local v0, e:Ljava/lang/OutOfMemoryError;
    :try_start_4
    const-string v4, "vcard"

    const-string v5, "Failed to allocate mvCard memory"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 222
    if-eqz v1, :cond_0

    .line 224
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_0

    .line 225
    :catch_4
    move-exception v0

    .line 226
    .local v0, e:Ljava/io/IOException;
    const-string v4, "vcard"

    const-string v5, "Failed to close stream"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 222
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    if-eqz v1, :cond_1

    .line 224
    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 227
    :cond_1
    :goto_1
    throw v4

    .line 225
    :catch_5
    move-exception v0

    .line 226
    .restart local v0       #e:Ljava/io/IOException;
    const-string v5, "vcard"

    const-string v6, "Failed to close stream"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private onClickHandler(IJLcom/google/android/mms/pdu/PduPart;)V
    .locals 4
    .parameter "type"
    .parameter "msgID"
    .parameter "part"

    .prologue
    .line 235
    const/4 v2, 0x3

    if-ne p1, v2, :cond_1

    .line 238
    invoke-direct {p0, p4}, Lcom/android/mms/ui/SlideAttachmentItemView;->getVcardByteArry(Lcom/google/android/mms/pdu/PduPart;)[B

    move-result-object v1

    .line 239
    .local v1, mVcard:[B
    if-eqz v1, :cond_0

    .line 241
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 242
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "android.intent.action.IMPORT_VCARD_SELECT_FIELDS"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 243
    const-string v2, "result"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 244
    const-string v2, "MMS_ID"

    invoke-virtual {v0, v2, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 249
    iget-object v2, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mActivity:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    const/16 v3, 0x3e

    invoke-virtual {v2, v0, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 256
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #mVcard:[B
    :cond_0
    :goto_0
    return-void

    .line 253
    :cond_1
    const/4 v2, 0x4

    if-ne p1, v2, :cond_0

    .line 254
    iget-object v2, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mActivity:Landroid/content/Context;

    invoke-static {v2, p4, p2, p3}, Lcom/android/mms/ui/MessageUtils;->launchVcalendarPrompt(Landroid/content/Context;Lcom/google/android/mms/pdu/PduPart;J)V

    goto :goto_0
.end method

.method private onClickHandler(ILcom/android/mms/model/MediaModel;)V
    .locals 8
    .parameter "type"
    .parameter "media"

    .prologue
    const/4 v7, 0x1

    .line 261
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 262
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/mms/ContentType;->isDrmType(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 263
    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->getDrmObject()Lcom/android/mms/drm/DrmWrapper;

    move-result-object v3

    .line 264
    .local v3, mDrmObject:Lcom/android/mms/drm/DrmWrapper;
    invoke-virtual {v3}, Lcom/android/mms/drm/DrmWrapper;->getContentType()Ljava/lang/String;

    move-result-object v2

    .line 265
    .local v2, mDrmContentType:Ljava/lang/String;
    const-string v4, "SlideshowAttachmentView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mDrmContentType:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :try_start_0
    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->getUriWithDrmCheck()Landroid/net/Uri;
    :try_end_0
    .catch Landroid/drm/mobile1/DrmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    invoke-static {v2}, Lcom/google/android/mms/ContentType;->isImageType(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 281
    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 282
    const-string v4, "viewSingleImage"

    invoke-virtual {v1, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 306
    .end local v2           #mDrmContentType:Ljava/lang/String;
    .end local v3           #mDrmObject:Lcom/android/mms/drm/DrmWrapper;
    :cond_0
    :goto_0
    const/high16 v4, 0x1000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 308
    :try_start_1
    iget-object v4, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 313
    :goto_1
    return-void

    .line 271
    .restart local v2       #mDrmContentType:Ljava/lang/String;
    .restart local v3       #mDrmObject:Lcom/android/mms/drm/DrmWrapper;
    :catch_0
    move-exception v0

    .line 272
    .local v0, e:Landroid/drm/mobile1/DrmException;
    const-string v4, "SlideshowAttachmentView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DrmException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iget-object v4, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mContext:Landroid/content/Context;

    const v6, 0x7f090034

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 283
    .end local v0           #e:Landroid/drm/mobile1/DrmException;
    :cond_1
    invoke-static {v2}, Lcom/google/android/mms/ContentType;->isVideoType(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 284
    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 286
    const-string v4, "landscape"

    invoke-virtual {v1, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    .line 288
    :cond_2
    invoke-static {v2}, Lcom/google/android/mms/ContentType;->isAudioType(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 289
    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 296
    .end local v2           #mDrmContentType:Ljava/lang/String;
    .end local v3           #mDrmObject:Lcom/android/mms/drm/DrmWrapper;
    :cond_3
    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 298
    if-nez p1, :cond_4

    .line 299
    const-string v4, "viewSingleImage"

    invoke-virtual {v1, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    .line 301
    :cond_4
    const/4 v4, 0x2

    if-ne p1, v4, :cond_0

    .line 302
    const-string v4, "landscape"

    invoke-virtual {v1, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    .line 309
    :catch_1
    move-exception v0

    .line 310
    .local v0, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method private showActionList(ILcom/android/mms/model/MediaModel;Landroid/net/Uri;)V
    .locals 7
    .parameter "type"
    .parameter "media"
    .parameter "uri"

    .prologue
    const v6, 0x7f090148

    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 711
    iget-object v2, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mActivity:Landroid/content/Context;

    if-nez v2, :cond_0

    .line 712
    const-string v2, "SlideshowAttachmentView"

    const-string v3, "mActivity is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    :goto_0
    return-void

    .line 716
    :cond_0
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v2, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mActivity:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 717
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v2, 0x7f090036

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 719
    const/4 v1, 0x0

    .line 720
    .local v1, items:[Ljava/lang/CharSequence;
    const/4 v2, 0x6

    if-ne p1, v2, :cond_1

    .line 721
    new-array v1, v5, [Ljava/lang/CharSequence;

    .end local v1           #items:[Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mActivity:Landroid/content/Context;

    const v3, 0x7f090023

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 737
    .restart local v1       #items:[Ljava/lang/CharSequence;
    :goto_1
    new-instance v2, Lcom/android/mms/ui/SlideAttachmentItemView$14;

    invoke-direct {v2, p0, p1, p3, p2}, Lcom/android/mms/ui/SlideAttachmentItemView$14;-><init>(Lcom/android/mms/ui/SlideAttachmentItemView;ILandroid/net/Uri;Lcom/android/mms/model/MediaModel;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 771
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    goto :goto_0

    .line 725
    :cond_1
    if-nez p1, :cond_2

    .line 726
    new-array v1, v3, [Ljava/lang/CharSequence;

    .end local v1           #items:[Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mActivity:Landroid/content/Context;

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mActivity:Landroid/content/Context;

    const v3, 0x7f0902ee

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    .restart local v1       #items:[Ljava/lang/CharSequence;
    goto :goto_1

    .line 731
    :cond_2
    new-array v1, v3, [Ljava/lang/CharSequence;

    .end local v1           #items:[Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mActivity:Landroid/content/Context;

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mActivity:Landroid/content/Context;

    const v3, 0x7f0902ed

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    .restart local v1       #items:[Ljava/lang/CharSequence;
    goto :goto_1
.end method


# virtual methods
.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public isFocused()Z
    .locals 1

    .prologue
    .line 679
    iget-object v0, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 680
    const/4 v0, 0x0

    .line 682
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isFocused()Z

    move-result v0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 100
    const v0, 0x7f0e0040

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SlideAttachmentItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mMainLayout:Landroid/view/View;

    .line 101
    const v0, 0x7f0e00b2

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SlideAttachmentItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mInfoLayout:Landroid/view/View;

    .line 102
    const v0, 0x7f0e00ba

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SlideAttachmentItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mImageView:Landroid/widget/ImageView;

    .line 103
    const v0, 0x7f0e00bb

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SlideAttachmentItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mVideoView:Landroid/widget/ImageView;

    .line 104
    const v0, 0x7f0e00b4

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SlideAttachmentItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mInfoImageView:Landroid/widget/ImageView;

    .line 105
    const v0, 0x7f0e00bc

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SlideAttachmentItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mBtnPlay:Landroid/widget/ImageView;

    .line 106
    const v0, 0x7f0e00b5

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SlideAttachmentItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mBtnInfoAction:Landroid/widget/ImageView;

    .line 109
    const v0, 0x7f0e00b6

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SlideAttachmentItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mTitleView:Landroid/widget/TextView;

    .line 110
    const v0, 0x7f0e00b7

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SlideAttachmentItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mSizeView:Landroid/widget/TextView;

    .line 111
    const v0, 0x7f0e00bd

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SlideAttachmentItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mTextView_Bottom:Landroid/widget/TextView;

    .line 112
    const v0, 0x7f0e00b9

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SlideAttachmentItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mTextView_Top:Landroid/widget/TextView;

    .line 113
    iget-object v0, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mTextView_Bottom:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mTextView:Landroid/widget/TextView;

    .line 114
    return-void
.end method

.method public pauseAudio()V
    .locals 0

    .prologue
    .line 619
    return-void
.end method

.method public pauseVideo()V
    .locals 0

    .prologue
    .line 622
    return-void
.end method

.method public requestTextFocus()V
    .locals 1

    .prologue
    .line 686
    iget-object v0, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 687
    iget-object v0, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    .line 688
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 602
    iget-object v0, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 603
    iget-object v0, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 604
    iget-object v0, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mVideoView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 605
    iget-object v0, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mVideoView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 606
    iget-object v0, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mBtnPlay:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 607
    iget-object v0, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mInfoLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 608
    iget-object v0, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mTextView_Top:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 609
    iget-object v0, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mTextView_Top:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 610
    iget-object v0, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mTextView_Bottom:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 611
    iget-object v0, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mTextView_Bottom:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 613
    return-void
.end method

.method public seekAudio(I)V
    .locals 0
    .parameter "seekTo"

    .prologue
    .line 625
    return-void
.end method

.method public seekVideo(I)V
    .locals 0
    .parameter "seekTo"

    .prologue
    .line 628
    return-void
.end method

.method public setAttachIcon(Landroid/net/Uri;)V
    .locals 0
    .parameter "uri"

    .prologue
    .line 704
    return-void
.end method

.method public setAttachments(Landroid/net/Uri;II)V
    .locals 7
    .parameter "uri"
    .parameter "mediaNum"
    .parameter "size"

    .prologue
    const/16 v6, 0x8

    const/4 v2, 0x1

    .line 476
    iget-object v3, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mBtnInfoAction:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 477
    iget-object v3, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mInfoLayout:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 478
    iget-object v3, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mInfoImageView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0200f2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 479
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 480
    .local v0, attachments:Ljava/lang/String;
    if-ne p2, v2, :cond_0

    .line 481
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mContext:Landroid/content/Context;

    const v5, 0x7f0902ef

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 484
    :goto_0
    iget-object v3, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 485
    iget-object v3, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090029

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 486
    .local v1, kb:Ljava/lang/String;
    div-int/lit16 v3, p3, 0x400

    if-nez v3, :cond_1

    .line 487
    .local v2, mSize:I
    :goto_1
    iget-object v3, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mSizeView:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 488
    iget-object v3, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 490
    iget-object v3, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mInfoLayout:Landroid/view/View;

    new-instance v4, Lcom/android/mms/ui/SlideAttachmentItemView$9;

    invoke-direct {v4, p0, p1}, Lcom/android/mms/ui/SlideAttachmentItemView$9;-><init>(Lcom/android/mms/ui/SlideAttachmentItemView;Landroid/net/Uri;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 500
    return-void

    .line 483
    .end local v1           #kb:Ljava/lang/String;
    .end local v2           #mSize:I
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mContext:Landroid/content/Context;

    const v5, 0x7f0902f0

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 486
    .restart local v1       #kb:Ljava/lang/String;
    :cond_1
    div-int/lit16 v2, p3, 0x400

    goto :goto_1
.end method

.method public setAudio(Landroid/net/Uri;Ljava/lang/String;ILjava/util/Map;)V
    .locals 7
    .parameter "audio"
    .parameter "name"
    .parameter "size"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .prologue
    .line 167
    .local p4, extras:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    iget-object v4, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mBtnInfoAction:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 168
    iget-object v4, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mInfoLayout:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 169
    iget-object v4, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mInfoImageView:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f02014b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 170
    iget-object v4, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v4, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    iget-object v4, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090029

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, kb:Ljava/lang/String;
    div-int/lit16 v4, p3, 0x400

    if-nez v4, :cond_1

    const/4 v1, 0x1

    .line 173
    .local v1, mSize:I
    :goto_0
    iget-object v4, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mSizeView:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    if-eqz p1, :cond_0

    .line 176
    move-object v2, p1

    .line 178
    .local v2, mUri:Landroid/net/Uri;
    new-instance v3, Lcom/android/mms/ui/SlideAttachmentItemView$3;

    invoke-direct {v3, p0, v2}, Lcom/android/mms/ui/SlideAttachmentItemView$3;-><init>(Lcom/android/mms/ui/SlideAttachmentItemView;Landroid/net/Uri;)V

    .line 186
    .local v3, onClickListener:Landroid/view/View$OnClickListener;
    iget-object v4, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mInfoLayout:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    .end local v2           #mUri:Landroid/net/Uri;
    .end local v3           #onClickListener:Landroid/view/View$OnClickListener;
    :cond_0
    return-void

    .line 172
    .end local v1           #mSize:I
    :cond_1
    div-int/lit16 v1, p3, 0x400

    goto :goto_0
.end method

.method public setAudio(Lcom/android/mms/model/AudioModel;)V
    .locals 9
    .parameter "audio"

    .prologue
    .line 134
    invoke-virtual {p1}, Lcom/android/mms/model/AudioModel;->getSrc()Ljava/lang/String;

    move-result-object v2

    .line 135
    .local v2, name:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/mms/model/AudioModel;->getMediaSize()I

    move-result v5

    .line 136
    .local v5, size:I
    iget-object v6, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mBtnInfoAction:Landroid/widget/ImageView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 137
    iget-object v6, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mInfoLayout:Landroid/view/View;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 138
    iget-object v6, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mInfoImageView:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f02014b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 139
    iget-object v6, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    iget-object v6, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090029

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, kb:Ljava/lang/String;
    div-int/lit16 v6, v5, 0x400

    if-nez v6, :cond_1

    const/4 v1, 0x1

    .line 142
    .local v1, mSize:I
    :goto_0
    iget-object v6, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mSizeView:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    if-eqz p1, :cond_0

    .line 146
    new-instance v3, Lcom/android/mms/ui/SlideAttachmentItemView$1;

    invoke-direct {v3, p0, p1}, Lcom/android/mms/ui/SlideAttachmentItemView$1;-><init>(Lcom/android/mms/ui/SlideAttachmentItemView;Lcom/android/mms/model/AudioModel;)V

    .line 152
    .local v3, onClickListener:Landroid/view/View$OnClickListener;
    new-instance v4, Lcom/android/mms/ui/SlideAttachmentItemView$2;

    invoke-direct {v4, p0, p1}, Lcom/android/mms/ui/SlideAttachmentItemView$2;-><init>(Lcom/android/mms/ui/SlideAttachmentItemView;Lcom/android/mms/model/AudioModel;)V

    .line 159
    .local v4, onLongClickListener:Landroid/view/View$OnLongClickListener;
    invoke-virtual {p1}, Lcom/android/mms/model/AudioModel;->getUri()Landroid/net/Uri;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 160
    iget-object v6, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mInfoLayout:Landroid/view/View;

    invoke-virtual {v6, v4}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 161
    iget-object v6, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mInfoLayout:Landroid/view/View;

    invoke-virtual {v6, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    .end local v3           #onClickListener:Landroid/view/View$OnClickListener;
    .end local v4           #onLongClickListener:Landroid/view/View$OnLongClickListener;
    :cond_0
    return-void

    .line 141
    .end local v1           #mSize:I
    :cond_1
    div-int/lit16 v1, v5, 0x400

    goto :goto_0
.end method

.method public setCaller(Landroid/app/Activity;)V
    .locals 0
    .parameter "act"

    .prologue
    .line 707
    iput-object p1, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mActivity:Landroid/content/Context;

    .line 708
    return-void
.end method

.method public setImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "name"
    .parameter "bitmap"

    .prologue
    .line 193
    if-nez p2, :cond_0

    .line 195
    iget-object v0, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mImageView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 203
    :goto_0
    return-void

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 199
    iget-object v0, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setImage(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V
    .locals 0
    .parameter "name"
    .parameter "bitmap"
    .parameter "isWithBorder"

    .prologue
    .line 777
    return-void
.end method

.method public setImage(Ljava/lang/String;Lcom/android/mms/model/ImageModel;)V
    .locals 5
    .parameter "name"
    .parameter "media"

    .prologue
    .line 317
    invoke-virtual {p2}, Lcom/android/mms/model/ImageModel;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 318
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    .line 319
    iget-object v3, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mImageView:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 345
    :cond_0
    :goto_0
    return-void

    .line 322
    :cond_1
    iget-object v3, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 323
    iget-object v3, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mImageView:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 325
    new-instance v1, Lcom/android/mms/ui/SlideAttachmentItemView$4;

    invoke-direct {v1, p0, p2}, Lcom/android/mms/ui/SlideAttachmentItemView$4;-><init>(Lcom/android/mms/ui/SlideAttachmentItemView;Lcom/android/mms/model/ImageModel;)V

    .line 331
    .local v1, onClickListener:Landroid/view/View$OnClickListener;
    new-instance v2, Lcom/android/mms/ui/SlideAttachmentItemView$5;

    invoke-direct {v2, p0, p2}, Lcom/android/mms/ui/SlideAttachmentItemView$5;-><init>(Lcom/android/mms/ui/SlideAttachmentItemView;Lcom/android/mms/model/ImageModel;)V

    .line 338
    .local v2, onLongClickListener:Landroid/view/View$OnLongClickListener;
    invoke-virtual {p2}, Lcom/android/mms/model/ImageModel;->getUri()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 339
    iget-object v3, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 340
    iget-object v3, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_0
.end method

.method public setImageGone()V
    .locals 0

    .prologue
    .line 782
    return-void
.end method

.method public setImageRegionFit(Ljava/lang/String;)V
    .locals 0
    .parameter "fit"

    .prologue
    .line 348
    return-void
.end method

.method public setImageVisibility(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 351
    iget-object v1, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mImageView:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 352
    return-void

    .line 351
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 670
    iget-object v0, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mMainLayout:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 672
    return-void
.end method

.method public setOnPreviewClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 631
    iget-object v0, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mMainLayout:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 632
    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 666
    iget-object v0, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mMainLayout:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 667
    return-void
.end method

.method public setSizeText(II)V
    .locals 8
    .parameter "number"
    .parameter "size"

    .prologue
    .line 117
    move v1, p1

    .line 118
    .local v1, mNumber:I
    div-int/lit16 v5, p2, 0x400

    if-nez v5, :cond_0

    const/4 v2, 0x1

    .line 120
    .local v2, mSize:I
    :goto_0
    iget-object v5, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090029

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, kb:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 122
    .local v4, prefs:Landroid/content/SharedPreferences;
    iget-object v5, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mContext:Landroid/content/Context;

    const-string v6, "pref_key_mms_max_size"

    const-string v7, "300000L"

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->convertMaxMmsSize(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 124
    .local v3, msgSizeLimit:I
    iget-object v5, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mSizeView:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    div-int/lit16 v7, v3, 0x400

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    return-void

    .line 118
    .end local v0           #kb:Ljava/lang/String;
    .end local v2           #mSize:I
    .end local v3           #msgSizeLimit:I
    .end local v4           #prefs:Landroid/content/SharedPreferences;
    :cond_0
    div-int/lit16 v2, p2, 0x400

    goto :goto_0
.end method

.method public setText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "name"
    .parameter "text"

    .prologue
    .line 402
    iget-object v0, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 403
    iget-object v0, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 404
    return-void
.end method

.method public setText(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View$OnTouchListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V
    .locals 5
    .parameter "name"
    .parameter "text"
    .parameter "isTop"
    .parameter "tl"
    .parameter "cl"
    .parameter "lcl"

    .prologue
    const/4 v4, 0x0

    .line 368
    if-eqz p3, :cond_0

    .line 369
    iget-object v2, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mTextView_Top:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mTextView:Landroid/widget/TextView;

    .line 374
    :goto_0
    if-nez p2, :cond_1

    .line 375
    iget-object v2, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 399
    :goto_1
    return-void

    .line 371
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mTextView_Bottom:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mTextView:Landroid/widget/TextView;

    goto :goto_0

    .line 379
    :cond_1
    invoke-static {}, Lcom/android/mms/util/SmileyParser;->getInstance()Lcom/android/mms/util/SmileyParser;

    move-result-object v1

    .line 380
    .local v1, parser:Lcom/android/mms/util/SmileyParser;
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1, p2}, Lcom/android/mms/util/SmileyParser;->addSmileySpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 381
    .local v0, buffer:Landroid/text/SpannableStringBuilder;
    iget-object v2, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mTextView:Landroid/widget/TextView;

    invoke-static {v2, v0}, Lcom/android/mms/ui/MyLinkify;->parseLinks(Landroid/widget/TextView;Landroid/text/Spannable;)V

    .line 383
    iget-object v2, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 384
    iget-object v2, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 385
    iget-object v2, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, p4}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 386
    iget-object v2, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, p5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 387
    iget-object v2, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, p6}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 389
    iget-object v2, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mTextView:Landroid/widget/TextView;

    const/high16 v3, -0x100

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 391
    iget-object v2, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mTextView:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 397
    iget-object v2, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mTextView:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 398
    iget-object v2, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setFocusable(Z)V

    goto :goto_1
.end method

.method public setTextChangedListener(Landroid/text/TextWatcher;)V
    .locals 1
    .parameter "w"

    .prologue
    .line 675
    iget-object v0, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 676
    return-void
.end method

.method public setTextSize(II)V
    .locals 2
    .parameter "unit"
    .parameter "size"

    .prologue
    .line 360
    iget-object v0, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mTextView:Landroid/widget/TextView;

    int-to-float v1, p2

    invoke-virtual {v0, p1, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 362
    :cond_0
    return-void
.end method

.method public setTextVisibility(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 407
    return-void
.end method

.method public setUnsupported(I)V
    .locals 5
    .parameter "mediaNum"

    .prologue
    .line 503
    iget-object v2, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mInfoLayout:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 504
    iget-object v2, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mInfoImageView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02019a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 505
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 506
    .local v0, attachments:Ljava/lang/String;
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 507
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mContext:Landroid/content/Context;

    const v4, 0x7f0902ef

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 510
    :goto_0
    iget-object v2, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mSizeView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 511
    iget-object v2, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090128

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 512
    .local v1, unsupported:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 513
    iget-object v2, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mTextView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 515
    return-void

    .line 509
    .end local v1           #unsupported:Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mContext:Landroid/content/Context;

    const v4, 0x7f0902f0

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setVCalendar(Ljava/lang/String;ILjava/lang/String;JLcom/google/android/mms/pdu/PduPart;)V
    .locals 8
    .parameter "src"
    .parameter "size"
    .parameter "text"
    .parameter "msgID"
    .parameter "part"

    .prologue
    .line 556
    iget-object v4, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mBtnInfoAction:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 557
    iget-object v4, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mInfoLayout:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 558
    iget-object v4, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mInfoImageView:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f02014f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 559
    iget-object v4, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mContext:Landroid/content/Context;

    const v5, 0x7f090141

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 560
    .local v0, filename:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 561
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 562
    :cond_0
    iget-object v4, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 563
    iget-object v4, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090029

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 564
    .local v1, kb:Ljava/lang/String;
    div-int/lit16 v4, p2, 0x400

    int-to-float v4, v4

    const/high16 v5, 0x3f80

    cmpg-float v4, v4, v5

    if-gez v4, :cond_2

    .line 565
    iget-object v4, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mSizeView:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "1 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 568
    :goto_0
    iget-object v4, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 570
    invoke-static {p4, p5}, Lcom/android/mms/util/VCardSaveIndicatorCache;->getMmsSavedStatus(J)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 571
    iget-object v4, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mSizeView:Landroid/widget/TextView;

    if-eqz v4, :cond_1

    .line 572
    iget-object v4, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mSizeView:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mSizeView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/mms/ui/SlideAttachmentItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0902c9

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 575
    :cond_1
    new-instance v2, Lcom/android/mms/ui/SlideAttachmentItemView$12;

    invoke-direct {v2, p0, p4, p5, p6}, Lcom/android/mms/ui/SlideAttachmentItemView$12;-><init>(Lcom/android/mms/ui/SlideAttachmentItemView;JLcom/google/android/mms/pdu/PduPart;)V

    .line 581
    .local v2, onClickListener:Landroid/view/View$OnClickListener;
    new-instance v3, Lcom/android/mms/ui/SlideAttachmentItemView$13;

    invoke-direct {v3, p0, p4, p5, p6}, Lcom/android/mms/ui/SlideAttachmentItemView$13;-><init>(Lcom/android/mms/ui/SlideAttachmentItemView;JLcom/google/android/mms/pdu/PduPart;)V

    .line 588
    .local v3, onLongClickListener:Landroid/view/View$OnLongClickListener;
    iget-object v4, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mInfoLayout:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 589
    iget-object v4, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mInfoLayout:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 590
    return-void

    .line 567
    .end local v2           #onClickListener:Landroid/view/View$OnClickListener;
    .end local v3           #onLongClickListener:Landroid/view/View$OnLongClickListener;
    :cond_2
    iget-object v4, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mSizeView:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit16 v6, p2, 0x400

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setVCard(Ljava/lang/String;ILjava/lang/String;JLcom/google/android/mms/pdu/PduPart;)V
    .locals 8
    .parameter "src"
    .parameter "size"
    .parameter "text"
    .parameter "msgID"
    .parameter "part"

    .prologue
    .line 518
    iget-object v4, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mBtnInfoAction:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 519
    iget-object v4, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mInfoLayout:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 520
    iget-object v4, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mInfoImageView:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f02014a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 521
    iget-object v4, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mContext:Landroid/content/Context;

    const v5, 0x7f090140

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 522
    .local v0, filename:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 523
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 524
    :cond_0
    iget-object v4, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 525
    iget-object v4, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090029

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 526
    .local v1, kb:Ljava/lang/String;
    div-int/lit16 v4, p2, 0x400

    int-to-float v4, v4

    const/high16 v5, 0x3f80

    cmpg-float v4, v4, v5

    if-gez v4, :cond_2

    .line 527
    iget-object v4, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mSizeView:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "1 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 530
    :goto_0
    iget-object v4, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 532
    invoke-static {p4, p5}, Lcom/android/mms/util/VCardSaveIndicatorCache;->getMmsSavedStatus(J)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 533
    iget-object v4, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mSizeView:Landroid/widget/TextView;

    if-eqz v4, :cond_1

    .line 534
    iget-object v4, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mSizeView:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mSizeView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/mms/ui/SlideAttachmentItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0902c9

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 537
    :cond_1
    new-instance v2, Lcom/android/mms/ui/SlideAttachmentItemView$10;

    invoke-direct {v2, p0, p4, p5, p6}, Lcom/android/mms/ui/SlideAttachmentItemView$10;-><init>(Lcom/android/mms/ui/SlideAttachmentItemView;JLcom/google/android/mms/pdu/PduPart;)V

    .line 543
    .local v2, onClickListener:Landroid/view/View$OnClickListener;
    new-instance v3, Lcom/android/mms/ui/SlideAttachmentItemView$11;

    invoke-direct {v3, p0, p4, p5, p6}, Lcom/android/mms/ui/SlideAttachmentItemView$11;-><init>(Lcom/android/mms/ui/SlideAttachmentItemView;JLcom/google/android/mms/pdu/PduPart;)V

    .line 550
    .local v3, onLongClickListener:Landroid/view/View$OnLongClickListener;
    iget-object v4, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mInfoLayout:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 551
    iget-object v4, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mInfoLayout:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 553
    return-void

    .line 529
    .end local v2           #onClickListener:Landroid/view/View$OnClickListener;
    .end local v3           #onLongClickListener:Landroid/view/View$OnLongClickListener;
    :cond_2
    iget-object v4, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mSizeView:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit16 v6, p2, 0x400

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setVideo(Lcom/android/mms/model/VideoModel;)V
    .locals 7
    .parameter "video"

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 411
    const/4 v2, 0x0

    .line 414
    .local v2, thumbnail:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {p1}, Lcom/android/mms/model/VideoModel;->getBitmap()Landroid/graphics/Bitmap;
    :try_end_0
    .catch Landroid/drm/mobile1/DrmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 420
    :goto_0
    iget-object v3, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mVideoView:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 423
    if-nez v2, :cond_1

    .line 424
    iget-object v3, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mVideoView:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 425
    iget-object v3, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mBtnPlay:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 447
    :cond_0
    :goto_1
    return-void

    .line 415
    :catch_0
    move-exception v0

    .line 417
    .local v0, e:Landroid/drm/mobile1/DrmException;
    invoke-virtual {v0}, Landroid/drm/mobile1/DrmException;->printStackTrace()V

    goto :goto_0

    .line 427
    .end local v0           #e:Landroid/drm/mobile1/DrmException;
    :cond_1
    iget-object v3, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mVideoView:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 428
    iget-object v3, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mVideoView:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 430
    iget-object v3, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mBtnPlay:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 431
    new-instance v3, Lcom/android/mms/ui/SlideAttachmentItemView$6;

    invoke-direct {v3, p0, p1}, Lcom/android/mms/ui/SlideAttachmentItemView$6;-><init>(Lcom/android/mms/ui/SlideAttachmentItemView;Lcom/android/mms/model/VideoModel;)V

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/SlideAttachmentItemView;->setVideoOnPlayClickListener(Landroid/view/View$OnClickListener;)V

    .line 437
    new-instance v1, Lcom/android/mms/ui/SlideAttachmentItemView$7;

    invoke-direct {v1, p0, p1}, Lcom/android/mms/ui/SlideAttachmentItemView$7;-><init>(Lcom/android/mms/ui/SlideAttachmentItemView;Lcom/android/mms/model/VideoModel;)V

    .line 444
    .local v1, onLongClickListener:Landroid/view/View$OnLongClickListener;
    invoke-virtual {p1}, Lcom/android/mms/model/VideoModel;->getUri()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 445
    iget-object v3, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mVideoView:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_1
.end method

.method public setVideo(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 4
    .parameter "name"
    .parameter "video"

    .prologue
    const/4 v3, 0x0

    .line 451
    const/4 v0, 0x0

    .line 452
    .local v0, thumbnail:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mContext:Landroid/content/Context;

    invoke-static {p2, v1}, Lcom/android/mms/ui/MessageUtils;->getVideoThumbnail(Landroid/net/Uri;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 453
    if-nez v0, :cond_0

    .line 454
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideAttachmentItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0201a5

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 456
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mVideoView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 457
    iget-object v1, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mVideoView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 459
    if-nez v0, :cond_1

    .line 460
    iget-object v1, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mBtnPlay:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 473
    :goto_0
    return-void

    .line 462
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mBtnPlay:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 463
    new-instance v1, Lcom/android/mms/ui/SlideAttachmentItemView$8;

    invoke-direct {v1, p0, p2}, Lcom/android/mms/ui/SlideAttachmentItemView$8;-><init>(Lcom/android/mms/ui/SlideAttachmentItemView;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/SlideAttachmentItemView;->setVideoOnPlayClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public setVideoOnPlayClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 648
    iget-object v0, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mBtnPlay:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 649
    iget-object v0, p0, Lcom/android/mms/ui/SlideAttachmentItemView;->mVideoView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 650
    return-void
.end method

.method public setVideoVisibility(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 593
    return-void
.end method

.method public setVisibility(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 616
    return-void
.end method

.method public startAudio()V
    .locals 0

    .prologue
    .line 128
    return-void
.end method

.method public startVideo()V
    .locals 0

    .prologue
    .line 131
    return-void
.end method

.method public stopAudio()V
    .locals 0

    .prologue
    .line 596
    return-void
.end method

.method public stopVideo()V
    .locals 0

    .prologue
    .line 599
    return-void
.end method

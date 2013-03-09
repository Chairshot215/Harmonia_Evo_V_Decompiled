.class public Lcom/android/mms/ui/MessageListItem;
.super Landroid/widget/RelativeLayout;
.source "MessageListItem.java"

# interfaces
.implements Lcom/android/mms/ui/SlideViewInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/MessageListItem$WorkingMessage;
    }
.end annotation


# static fields
.field public static final EXTRA_URLS:Ljava/lang/String; = "com.android.mms.ExtraUrls"

.field static final MSG_LIST_EDIT_MMS:I = 0x1

.field static final MSG_LIST_EDIT_SMS:I = 0x2

.field private static final STYLE_BOLD:Landroid/text/style/StyleSpan; = null

.field private static final TAG:Ljava/lang/String; = "MessageListItem"


# instance fields
.field private mBodyTextView:Landroid/widget/TextView;

.field private mCaller:Landroid/app/Activity;

.field private mCheck:Landroid/widget/ImageView;

.field private mDetailView:Landroid/widget/TextView;

.field private mDownloadButton:Landroid/widget/Button;

.field private mDownloadingLabel:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mImageBorder:Landroid/widget/ImageView;

.field private mImageView:Landroid/widget/ImageView;

.field private mMessageItem:Lcom/android/mms/ui/MessageItem;

.field private mMmsView:Landroid/view/View;

.field private mPhotoIcon:Landroid/widget/ImageView;

.field private mRightStatusIndicator:Landroid/widget/ImageView;

.field private mSecStatusIndicator:Landroid/widget/ImageView;

.field private mSentTimeView:Landroid/widget/TextView;

.field private mSlideShowButton:Landroid/widget/ImageView;

.field private mThirdStatusIndicator:Landroid/widget/ImageView;

.field private mTypeView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 99
    new-instance v0, Landroid/text/style/StyleSpan;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    sput-object v0, Lcom/android/mms/ui/MessageListItem;->STYLE_BOLD:Landroid/text/style/StyleSpan;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 125
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 126
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 129
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 130
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/MessageItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/MessageListItem;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mCaller:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/MessageListItem;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadingLabel:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/ui/MessageListItem;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/mms/ui/MessageListItem;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/mms/ui/MessageListItem;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private bindCommonMessage(Lcom/android/mms/ui/MessageItem;)V
    .locals 10
    .parameter "msgItem"

    .prologue
    const/16 v1, 0x8

    const/4 v9, 0x0

    .line 279
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 281
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadingLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 286
    :cond_0
    iget-boolean v0, p1, Lcom/android/mms/ui/MessageItem;->bInDelMode:Z

    if-nez v0, :cond_1

    iget-boolean v0, p1, Lcom/android/mms/ui/MessageItem;->bInForwardMode:Z

    if-nez v0, :cond_1

    .line 287
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 288
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 289
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 290
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    new-instance v1, Lcom/android/mms/ui/MessageListItem$3;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/MessageListItem$3;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 308
    :cond_1
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getCachedFormattedMessage()Ljava/lang/CharSequence;

    move-result-object v6

    .line 309
    .local v6, formattedMessage:Ljava/lang/CharSequence;
    if-eqz v6, :cond_2

    iget-boolean v0, p1, Lcom/android/mms/ui/MessageItem;->mContactDirty:Z

    if-eqz v0, :cond_4

    .line 311
    :cond_2
    const-string v0, "sms"

    iget-object v1, p1, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p1, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    invoke-static {v0}, Landroid/provider/Telephony$Sms;->isOutgoingFolder(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 312
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    const v1, 0x7f090022

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 313
    .local v7, meString:Ljava/lang/String;
    iget-boolean v0, p1, Lcom/android/mms/ui/MessageItem;->bInSimSMSMode:Z

    if-eqz v0, :cond_7

    .line 314
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090020

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v7, v1, v9

    const/4 v2, 0x1

    iget-object v3, p1, Lcom/android/mms/ui/MessageItem;->mContact:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/mms/ui/MessageItem;->mContact:Ljava/lang/String;

    .line 322
    .end local v7           #meString:Ljava/lang/String;
    :cond_3
    :goto_0
    iget-object v1, p1, Lcom/android/mms/ui/MessageItem;->mContact:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    const-string v4, ""

    iget-object v5, p1, Lcom/android/mms/ui/MessageItem;->mHighlight:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/MessageListItem;->formatMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 325
    invoke-virtual {p1, v6}, Lcom/android/mms/ui/MessageItem;->setCachedFormattedMessage(Ljava/lang/CharSequence;)V

    .line 326
    iput-boolean v9, p1, Lcom/android/mms/ui/MessageItem;->mContactDirty:Z

    .line 328
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 329
    iget-object v0, p1, Lcom/android/mms/ui/MessageItem;->mTimestamp:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->setTimeSent(Ljava/lang/String;)V

    .line 332
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getUrls()[Landroid/text/style/URLSpan;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getUrls()[Landroid/text/style/URLSpan;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_5

    .line 333
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 335
    :cond_5
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 336
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->hideMmsViewIfNeeded()V

    .line 360
    :cond_6
    :goto_1
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isIncomingMessage()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 361
    iget-object v0, p1, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->setPhotoIcon(Ljava/lang/String;)V

    .line 368
    :goto_2
    iget v0, p1, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MessageListItem;->drawLeftStatusIndicator(I)V

    .line 369
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;->drawRightStatusIndicator(Lcom/android/mms/ui/MessageItem;)V

    .line 370
    return-void

    .line 318
    .restart local v7       #meString:Ljava/lang/String;
    :cond_7
    iput-object v7, p1, Lcom/android/mms/ui/MessageItem;->mContact:Ljava/lang/String;

    goto :goto_0

    .line 338
    .end local v7           #meString:Ljava/lang/String;
    :cond_8
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isVVM()Z

    move-result v0

    if-nez v0, :cond_9

    .line 339
    const-string v0, "MmsThumbnailPresenter"

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    iget-object v2, p1, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-static {v0, v1, p0, v2}, Lcom/android/mms/ui/PresenterFactory;->getPresenter(Ljava/lang/String;Landroid/content/Context;Lcom/android/mms/ui/ViewInterface;Lcom/android/mms/model/Model;)Lcom/android/mms/ui/Presenter;

    move-result-object v8

    .line 342
    .local v8, presenter:Lcom/android/mms/ui/Presenter;
    invoke-virtual {v8}, Lcom/android/mms/ui/Presenter;->present()V

    .line 346
    .end local v8           #presenter:Lcom/android/mms/ui/Presenter;
    :cond_9
    iget v0, p1, Lcom/android/mms/ui/MessageItem;->mAttachmentType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_a

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isVVM()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 348
    :cond_a
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-boolean v0, v0, Lcom/android/mms/ui/MessageItem;->bInDelMode:Z

    if-nez v0, :cond_6

    .line 349
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->inflateMmsView()V

    .line 350
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMmsView:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 351
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;->drawPlaybackButton(Lcom/android/mms/ui/MessageItem;)V

    .line 352
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->setAttachInfoText()V

    goto :goto_1

    .line 355
    :cond_b
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->hideMmsViewIfNeeded()V

    goto :goto_1

    .line 365
    :cond_c
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->setMePhotoIcon()V

    goto :goto_2
.end method

.method private bindNotifInd(Lcom/android/mms/ui/MessageItem;)V
    .locals 11
    .parameter "msgItem"

    .prologue
    const/4 v10, 0x0

    const/16 v9, 0x8

    .line 219
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->hideMmsViewIfNeeded()V

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    const v2, 0x7f0900c0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/android/mms/ui/MessageItem;->mMessageSize:I

    add-int/lit16 v1, v1, 0x3ff

    div-int/lit16 v1, v1, 0x400

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    const v2, 0x7f090029

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 225
    .local v6, msgSizeText:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/mms/ui/MessageItem;->mContact:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p1, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p1, Lcom/android/mms/ui/MessageItem;->mTimestamp:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p1, Lcom/android/mms/ui/MessageItem;->mHighlight:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/MessageListItem;->formatMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSentTimeView:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 231
    iget-object v0, p1, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->setPhotoIcon(Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-boolean v0, v0, Lcom/android/mms/ui/MessageItem;->bInDelMode:Z

    if-eqz v0, :cond_1

    .line 276
    :cond_0
    :goto_0
    return-void

    .line 237
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-boolean v0, v0, Lcom/android/mms/ui/MessageItem;->bInForwardMode:Z

    if-nez v0, :cond_0

    .line 242
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v0

    iget-object v1, p1, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/android/mms/util/DownloadManager;->getState(Landroid/net/Uri;)I

    move-result v7

    .line 243
    .local v7, state:I
    packed-switch v7, :pswitch_data_0

    .line 253
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->inflateDownloadControls()V

    .line 254
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadingLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 255
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    invoke-virtual {v0, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 256
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/mms/ui/MessageListItem$2;

    invoke-direct {v1, p0, p1}, Lcom/android/mms/ui/MessageListItem$2;-><init>(Lcom/android/mms/ui/MessageListItem;Lcom/android/mms/ui/MessageItem;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 273
    :goto_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mRightStatusIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 275
    iget v0, p1, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MessageListItem;->drawLeftStatusIndicator(I)V

    goto :goto_0

    .line 245
    :pswitch_0
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->inflateDownloadControls()V

    .line 246
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadingLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 247
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 243
    nop

    :pswitch_data_0
    .packed-switch 0x81
        :pswitch_0
    .end packed-switch
.end method

.method private drawLeftStatusIndicator(I)V
    .locals 0
    .parameter "msgBoxId"

    .prologue
    .line 706
    return-void
.end method

.method private drawPlaybackButton(Lcom/android/mms/ui/MessageItem;)V
    .locals 3
    .parameter "msgItem"

    .prologue
    const/4 v2, 0x0

    .line 557
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-boolean v0, v0, Lcom/android/mms/ui/MessageItem;->bInDelMode:Z

    if-eqz v0, :cond_1

    .line 578
    :cond_0
    :goto_0
    return-void

    .line 560
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isRelatedMMS()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 563
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSlideShowButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 564
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSlideShowButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 565
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mImageBorder:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 573
    :goto_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isVVM()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-boolean v0, v0, Lcom/android/mms/ui/MessageItem;->bInForwardMode:Z

    if-eqz v0, :cond_0

    .line 574
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSlideShowButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 575
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mImageBorder:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 567
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->containVCard()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->containVCalendar()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 568
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mImageBorder:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 570
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSlideShowButton:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method private drawRightStatusIndicator(Lcom/android/mms/ui/MessageItem;)V
    .locals 2
    .parameter "msgItem"

    .prologue
    .line 745
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-boolean v0, v0, Lcom/android/mms/ui/MessageItem;->bInDelMode:Z

    if-eqz v0, :cond_1

    .line 774
    :cond_0
    :goto_0
    return-void

    .line 748
    :cond_1
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isVVM()Z

    move-result v0

    if-nez v0, :cond_0

    .line 751
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isOutgoingMessage()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 752
    invoke-static {p1}, Lcom/android/mms/ui/MessageListItem;->isFailedMessage(Lcom/android/mms/ui/MessageItem;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 753
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSecStatusIndicator:Landroid/widget/ImageView;

    const v1, 0x7f020148

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 754
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;->setErrorIndicatorClickListener(Lcom/android/mms/ui/MessageItem;)V

    .line 758
    :goto_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSecStatusIndicator:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 763
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mCaller:Landroid/app/Activity;

    instance-of v0, v0, Lcom/android/mms/ui/ComposeMessageActivity;

    if-eqz v0, :cond_4

    iget-boolean v0, p1, Lcom/android/mms/ui/MessageItem;->mDeliveryReport:Z

    if-nez v0, :cond_3

    iget-boolean v0, p1, Lcom/android/mms/ui/MessageItem;->mReadReport:Z

    if-eqz v0, :cond_4

    .line 764
    :cond_3
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->setRequireDeliveryReport()V

    .line 765
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v0, v0, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/MessageListItem;->setReportIndicator(J)V

    .line 768
    :cond_4
    iget-boolean v0, p1, Lcom/android/mms/ui/MessageItem;->bInSimSMSMode:Z

    if-nez v0, :cond_5

    iget-boolean v0, p1, Lcom/android/mms/ui/MessageItem;->mLocked:Z

    if-eqz v0, :cond_5

    .line 769
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->setMessageLocked()V

    .line 772
    :cond_5
    iget-boolean v0, p1, Lcom/android/mms/ui/MessageItem;->mSimSMS:Z

    if-eqz v0, :cond_0

    .line 773
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->setIsSimSms(Z)V

    goto :goto_0

    .line 756
    :cond_6
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSecStatusIndicator:Landroid/widget/ImageView;

    const v1, 0x7f02017f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method private formatMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 15
    .parameter "contact"
    .parameter "body"
    .parameter "subject"
    .parameter "timestamp"
    .parameter "highlight"

    .prologue
    .line 490
    const-string v10, "%s: "

    .line 491
    .local v10, template:Ljava/lang/CharSequence;
    new-instance v1, Landroid/text/SpannableStringBuilder;

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string v13, "%s"

    aput-object v13, v11, v12

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/CharSequence;

    const/4 v13, 0x0

    aput-object p1, v12, v13

    invoke-static {v10, v11, v12}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-direct {v1, v11}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 496
    .local v1, buf:Landroid/text/SpannableStringBuilder;
    new-instance v11, Landroid/text/style/StyleSpan;

    const/4 v12, 0x1

    invoke-direct {v11, v12}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/4 v12, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v13

    const/16 v14, 0x11

    invoke-virtual {v1, v11, v12, v13, v14}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 499
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_6

    const/4 v3, 0x1

    .line 500
    .local v3, hasSubject:Z
    :goto_0
    if-eqz v3, :cond_0

    .line 501
    iget-object v11, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f090032

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object p3, v13, v14

    invoke-virtual {v11, v12, v13}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 504
    :cond_0
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 505
    if-eqz v3, :cond_1

    .line 506
    const-string v11, " - "

    invoke-virtual {v1, v11}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 509
    :cond_1
    invoke-static/range {p2 .. p2}, Lcom/android/mms/ui/MessageUtils;->isSmsVcard(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 510
    iget-object v11, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    const v12, 0x7f090172

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 512
    :cond_2
    invoke-static {}, Lcom/android/mms/util/SmileyParser;->getInstance()Lcom/android/mms/util/SmileyParser;

    move-result-object v6

    .line 513
    .local v6, parser:Lcom/android/mms/util/SmileyParser;
    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Lcom/android/mms/util/SmileyParser;->addSmileySpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v1, v11}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 515
    .end local v6           #parser:Lcom/android/mms/util/SmileyParser;
    :cond_3
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 516
    const-string v11, "\n"

    invoke-virtual {v1, v11}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 517
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v9

    .line 521
    .local v9, startOffset:I
    const-string v11, "\n"

    invoke-virtual {v1, v11}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 522
    new-instance v11, Landroid/text/style/AbsoluteSizeSpan;

    const/4 v12, 0x3

    invoke-direct {v11, v12}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v12

    const/16 v13, 0x21

    invoke-virtual {v1, v11, v9, v12, v13}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 525
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v9

    .line 526
    move-object/from16 v0, p4

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 533
    iget-object v11, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x20a005f

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 534
    .local v2, color:I
    new-instance v11, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v11, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v12

    const/16 v13, 0x21

    invoke-virtual {v1, v11, v9, v12, v13}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 537
    .end local v2           #color:I
    .end local v9           #startOffset:I
    :cond_4
    if-eqz p5, :cond_5

    .line 538
    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v4

    .line 540
    .local v4, highlightLen:I
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    .line 541
    .local v8, s:Ljava/lang/String;
    const/4 v7, 0x0

    .line 543
    .local v7, prev:I
    :goto_1
    move-object/from16 v0, p5

    invoke-virtual {v8, v0, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    .line 544
    .local v5, index:I
    const/4 v11, -0x1

    if-ne v5, v11, :cond_7

    .line 551
    .end local v4           #highlightLen:I
    .end local v5           #index:I
    .end local v7           #prev:I
    .end local v8           #s:Ljava/lang/String;
    :cond_5
    iget-object v11, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-static {v11, v1}, Lcom/android/mms/ui/MyLinkify;->parseLinks(Landroid/widget/TextView;Landroid/text/Spannable;)V

    .line 552
    return-object v1

    .line 499
    .end local v3           #hasSubject:Z
    :cond_6
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 547
    .restart local v3       #hasSubject:Z
    .restart local v4       #highlightLen:I
    .restart local v5       #index:I
    .restart local v7       #prev:I
    .restart local v8       #s:Ljava/lang/String;
    :cond_7
    new-instance v11, Landroid/text/style/StyleSpan;

    const/4 v12, 0x1

    invoke-direct {v11, v12}, Landroid/text/style/StyleSpan;-><init>(I)V

    add-int v12, v5, v4

    const/4 v13, 0x0

    invoke-virtual {v1, v11, v5, v12, v13}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 548
    add-int v7, v5, v4

    .line 549
    goto :goto_1
.end method

.method private getVcardByteArry(Lcom/google/android/mms/pdu/PduPart;)[B
    .locals 7
    .parameter "part"

    .prologue
    .line 677
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v3

    .line 678
    .local v3, mVcard:[B
    if-nez v3, :cond_0

    .line 679
    const/4 v1, 0x0

    .line 681
    .local v1, is:Ljava/io/InputStream;
    :try_start_0
    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 682
    .local v2, mContentResolver:Landroid/content/ContentResolver;
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 684
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v4

    new-array v3, v4, [B

    .line 685
    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_3

    .line 693
    if-eqz v1, :cond_0

    .line 695
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 702
    .end local v1           #is:Ljava/io/InputStream;
    .end local v2           #mContentResolver:Landroid/content/ContentResolver;
    :cond_0
    :goto_0
    return-object v3

    .line 696
    .restart local v1       #is:Ljava/io/InputStream;
    .restart local v2       #mContentResolver:Landroid/content/ContentResolver;
    :catch_0
    move-exception v0

    .line 697
    .local v0, e:Ljava/io/IOException;
    const-string v4, "vcard"

    const-string v5, "Failed to close stream"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 687
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #mContentResolver:Landroid/content/ContentResolver;
    :catch_1
    move-exception v0

    .line 688
    .restart local v0       #e:Ljava/io/IOException;
    :try_start_2
    const-string v4, "vcard"

    const-string v5, "Failed to load part data"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 693
    if-eqz v1, :cond_0

    .line 695
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 696
    :catch_2
    move-exception v0

    .line 697
    const-string v4, "vcard"

    const-string v5, "Failed to close stream"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 689
    .end local v0           #e:Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 690
    .local v0, e:Ljava/lang/OutOfMemoryError;
    :try_start_4
    const-string v4, "vcard"

    const-string v5, "Failed to allocate mvCard memory"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 693
    if-eqz v1, :cond_0

    .line 695
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_0

    .line 696
    :catch_4
    move-exception v0

    .line 697
    .local v0, e:Ljava/io/IOException;
    const-string v4, "vcard"

    const-string v5, "Failed to close stream"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 693
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    if-eqz v1, :cond_1

    .line 695
    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 698
    :cond_1
    :goto_1
    throw v4

    .line 696
    :catch_5
    move-exception v0

    .line 697
    .restart local v0       #e:Ljava/io/IOException;
    const-string v5, "vcard"

    const-string v6, "Failed to close stream"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private hideMmsViewIfNeeded()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 373
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMmsView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMmsView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 377
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSlideShowButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 378
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSlideShowButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 379
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mImageBorder:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 382
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mRightStatusIndicator:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 383
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mRightStatusIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 384
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mRightStatusIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 387
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSecStatusIndicator:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 388
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSecStatusIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 389
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSecStatusIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 392
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mThirdStatusIndicator:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    .line 393
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mThirdStatusIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 394
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mThirdStatusIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 396
    :cond_4
    return-void
.end method

.method private inflateDownloadControls()V
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    if-nez v0, :cond_0

    .line 483
    const v0, 0x7f0e0099

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    .line 484
    const v0, 0x7f0e009b

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadingLabel:Landroid/widget/TextView;

    .line 486
    :cond_0
    return-void
.end method

.method private inflateMmsView()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 426
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMmsView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 429
    const v0, 0x7f0e0068

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 431
    const v0, 0x7f0e0077

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMmsView:Landroid/view/View;

    .line 432
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMmsView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    const-string v3, "common_button_small"

    const v4, 0x7f0200d4

    invoke-static {v2, v3, v4}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 435
    const v0, 0x7f0e007a

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    .line 436
    const v0, 0x7f0e0079

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mImageBorder:Landroid/widget/ImageView;

    .line 437
    const v0, 0x7f0e007b

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSlideShowButton:Landroid/widget/ImageView;

    .line 438
    const v0, 0x7f0e007c

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mTypeView:Landroid/widget/TextView;

    .line 439
    const v0, 0x7f0e007d

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDetailView:Landroid/widget/TextView;

    .line 443
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-boolean v0, v0, Lcom/android/mms/ui/MessageItem;->bInForwardMode:Z

    if-eqz v0, :cond_0

    .line 477
    :goto_0
    return-void

    .line 447
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMmsView:Landroid/view/View;

    new-instance v1, Lcom/android/mms/ui/MessageListItem$4;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/MessageListItem$4;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 454
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMmsView:Landroid/view/View;

    new-instance v1, Lcom/android/mms/ui/MessageListItem$5;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/MessageListItem$5;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    .line 464
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSlideShowButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 465
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mImageBorder:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 467
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mRightStatusIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 468
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mRightStatusIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 470
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSecStatusIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 471
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSecStatusIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 473
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mThirdStatusIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 474
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mThirdStatusIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public static isFailedMessage(Lcom/android/mms/ui/MessageItem;)Z
    .locals 6
    .parameter "msgItem"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 709
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v4

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/android/mms/ui/MessageItem;->mErrorType:I

    const/16 v5, 0xa

    if-lt v4, v5, :cond_2

    move v0, v2

    .line 711
    .local v0, isFailedMms:Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v4

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_3

    move v1, v2

    .line 713
    .local v1, isFailedSms:Z
    :goto_1
    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    move v3, v2

    :cond_1
    return v3

    .end local v0           #isFailedMms:Z
    .end local v1           #isFailedSms:Z
    :cond_2
    move v0, v3

    .line 709
    goto :goto_0

    .restart local v0       #isFailedMms:Z
    :cond_3
    move v1, v3

    .line 711
    goto :goto_1
.end method

.method private setAttachInfoText()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 858
    iget-object v8, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v8}, Lcom/android/mms/ui/MessageItem;->isRelatedMMS()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 860
    iget-object v8, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v8}, Lcom/android/mms/ui/MessageItem;->getMessageBody()Lcom/android/mms/model/Model;

    move-result-object v8

    check-cast v8, Lcom/android/mms/model/SlideshowModel;

    check-cast v8, Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v8}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/android/mms/ui/MessageListItem;->setRelatedAttachInfoText(I)V

    .line 917
    :cond_0
    :goto_0
    return-void

    .line 861
    :cond_1
    iget-object v8, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v8}, Lcom/android/mms/ui/MessageItem;->isVVM()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 862
    iget-object v8, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-boolean v8, v8, Lcom/android/mms/ui/MessageItem;->bInForwardMode:Z

    if-eqz v8, :cond_0

    .line 863
    iget-object v8, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    const v9, 0x7f0200f6

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 864
    iget-object v8, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v8, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 865
    iget-object v8, p0, Lcom/android/mms/ui/MessageListItem;->mTypeView:Landroid/widget/TextView;

    const v9, 0x7f09023c

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    .line 866
    iget-object v8, p0, Lcom/android/mms/ui/MessageListItem;->mDetailView:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v9, v9, Lcom/android/mms/ui/MessageItem;->mPlayTime:J

    invoke-static {v9, v10}, Lcom/android/mms/ui/MessageUtils;->getPlaytimeFormatString(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 867
    iget-object v8, p0, Lcom/android/mms/ui/MessageListItem;->mSlideShowButton:Landroid/widget/ImageView;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 872
    :cond_2
    iget-object v8, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v4, v8, Lcom/android/mms/ui/MessageItem;->mMixedMessageBody:Lcom/android/mms/msg/body/MixedMessageBody;

    .line 873
    .local v4, mb:Lcom/android/mms/msg/body/MixedMessageBody;
    const/4 v7, 0x0

    .line 874
    .local v7, textCount:I
    const/4 v6, 0x0

    .line 875
    .local v6, mediaNumber:I
    const/4 v1, 0x0

    .line 877
    .local v1, i:I
    invoke-virtual {v4}, Lcom/android/mms/msg/body/MixedMessageBody;->getMediaList()Ljava/util/ArrayList;

    move-result-object v3

    .line 878
    .local v3, mMedia:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/MediaModel;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/mms/model/MediaModel;

    .line 879
    .local v5, media:Lcom/android/mms/model/MediaModel;
    invoke-virtual {v5}, Lcom/android/mms/model/MediaModel;->isText()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 880
    add-int/lit8 v7, v7, 0x1

    .line 883
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 882
    :cond_3
    move v6, v1

    goto :goto_2

    .line 885
    .end local v5           #media:Lcom/android/mms/model/MediaModel;
    :cond_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_5

    .line 886
    const/4 v6, -0x1

    .line 888
    :cond_5
    const/4 v8, 0x1

    if-le v6, v8, :cond_6

    .line 889
    const v8, 0x7f090110

    invoke-virtual {p0, v8, v6}, Lcom/android/mms/ui/MessageListItem;->setMixedAttachInfoText(II)V

    goto :goto_0

    .line 891
    :cond_6
    invoke-virtual {v4}, Lcom/android/mms/msg/body/MixedMessageBody;->getMediaList()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/mms/model/MediaModel;

    invoke-virtual {v8}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v0

    .line 893
    .local v0, filename:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/mms/model/MediaModel;

    .line 894
    .restart local v5       #media:Lcom/android/mms/model/MediaModel;
    invoke-virtual {v5}, Lcom/android/mms/model/MediaModel;->isImage()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 895
    iget-object v8, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v8}, Lcom/android/mms/ui/MessageItem;->getMessageSize()I

    move-result v8

    invoke-virtual {p0, v0, v8}, Lcom/android/mms/ui/MessageListItem;->setMixedAttachInfoText(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 897
    :cond_8
    invoke-virtual {v5}, Lcom/android/mms/model/MediaModel;->isAudio()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 898
    iget-object v8, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    const v9, 0x7f0201a7

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 899
    iget-object v8, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v8, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 900
    iget-object v8, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v8}, Lcom/android/mms/ui/MessageItem;->getMessageSize()I

    move-result v8

    invoke-virtual {p0, v0, v8}, Lcom/android/mms/ui/MessageListItem;->setMixedAttachInfoText(Ljava/lang/String;I)V

    goto :goto_3

    .line 901
    :cond_9
    invoke-virtual {v5}, Lcom/android/mms/model/MediaModel;->isVideo()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 902
    iget-object v8, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v8}, Lcom/android/mms/ui/MessageItem;->getMessageSize()I

    move-result v8

    invoke-virtual {p0, v0, v8}, Lcom/android/mms/ui/MessageListItem;->setMixedAttachInfoText(Ljava/lang/String;I)V

    goto :goto_3

    .line 903
    :cond_a
    invoke-virtual {v5}, Lcom/android/mms/model/MediaModel;->isVCard()Z

    move-result v8

    if-eqz v8, :cond_c

    .line 904
    iget-object v8, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    const v9, 0x7f02014a

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 905
    iget-object v8, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v8, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 906
    if-eqz v0, :cond_b

    .line 907
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f090140

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 908
    :cond_b
    iget-object v8, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v8}, Lcom/android/mms/ui/MessageItem;->getMessageSize()I

    move-result v8

    invoke-virtual {p0, v0, v8}, Lcom/android/mms/ui/MessageListItem;->setMixedAttachInfoText(Ljava/lang/String;I)V

    goto/16 :goto_3

    .line 909
    :cond_c
    invoke-virtual {v5}, Lcom/android/mms/model/MediaModel;->isVCalendar()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 910
    iget-object v8, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    const v9, 0x7f02014f

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 911
    iget-object v8, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v8, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 912
    const v8, 0x7f090141

    iget-object v9, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v9}, Lcom/android/mms/ui/MessageItem;->getMessageSize()I

    move-result v9

    invoke-virtual {p0, v8, v9}, Lcom/android/mms/ui/MessageListItem;->setMixedAttachInfoText(II)V

    goto/16 :goto_3
.end method

.method private setErrorIndicatorClickListener(Lcom/android/mms/ui/MessageItem;)V
    .locals 4
    .parameter "msgItem"

    .prologue
    .line 717
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-boolean v2, v2, Lcom/android/mms/ui/MessageItem;->bInDelMode:Z

    if-eqz v2, :cond_1

    .line 742
    :cond_0
    :goto_0
    return-void

    .line 721
    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-boolean v2, v2, Lcom/android/mms/ui/MessageItem;->bInForwardMode:Z

    if-nez v2, :cond_0

    .line 726
    iget-object v0, p1, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    .line 728
    .local v0, type:Ljava/lang/String;
    const-string v2, "sms"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 729
    const/4 v1, 0x2

    .line 733
    .local v1, what:I
    :goto_1
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mSecStatusIndicator:Landroid/widget/ImageView;

    new-instance v3, Lcom/android/mms/ui/MessageListItem$6;

    invoke-direct {v3, p0, v1, p1}, Lcom/android/mms/ui/MessageListItem$6;-><init>(Lcom/android/mms/ui/MessageListItem;ILcom/android/mms/ui/MessageItem;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 731
    .end local v1           #what:I
    :cond_2
    const/4 v1, 0x1

    .restart local v1       #what:I
    goto :goto_1
.end method


# virtual methods
.method public bind(Lcom/android/mms/ui/MessageItem;)V
    .locals 2
    .parameter "msgItem"

    .prologue
    .line 185
    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    .line 187
    iget-boolean v0, p1, Lcom/android/mms/ui/MessageItem;->bInDelMode:Z

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mCheck:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 189
    :cond_0
    iget v0, p1, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    packed-switch v0, :pswitch_data_0

    .line 194
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;->bindCommonMessage(Lcom/android/mms/ui/MessageItem;)V

    .line 200
    :goto_0
    return-void

    .line 191
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;->bindNotifInd(Lcom/android/mms/ui/MessageItem;)V

    goto :goto_0

    .line 189
    nop

    :pswitch_data_0
    .packed-switch 0x82
        :pswitch_0
    .end packed-switch
.end method

.method public changeCheckboxResource(Z)V
    .locals 4
    .parameter "checked"

    .prologue
    .line 1093
    if-eqz p1, :cond_0

    .line 1094
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mCheck:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    const-string v2, "common_delete_on"

    const v3, 0x7f020114

    invoke-static {v1, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1100
    :goto_0
    return-void

    .line 1097
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mCheck:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    const-string v2, "common_delete_off"

    const v3, 0x7f020115

    invoke-static {v1, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public changeCheckboxResource2(Z)V
    .locals 4
    .parameter "checked"

    .prologue
    .line 1105
    if-eqz p1, :cond_0

    .line 1106
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mCheck:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    const-string v2, "common_checkbox_on"

    const v3, 0x208019f

    invoke-static {v1, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1112
    :goto_0
    return-void

    .line 1109
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mCheck:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    const-string v2, "common_checkbox_off"

    const v3, 0x208019d

    invoke-static {v1, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public fireEvent()V
    .locals 11

    .prologue
    .line 581
    iget-object v8, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v8}, Lcom/android/mms/ui/MessageItem;->isRelatedMMS()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 656
    :cond_0
    iget-object v8, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v8}, Lcom/android/mms/ui/MessageItem;->isVVM()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 659
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    const-string v8, "com.htc.vvm.VoiceMailPlayActivity"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 660
    .local v3, intent:Landroid/content/Intent;
    const-string v8, "extra_id"

    iget-object v9, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v9, v9, Lcom/android/mms/ui/MessageItem;->vvmId:Ljava/lang/String;

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 661
    iget-object v8, p0, Lcom/android/mms/ui/MessageListItem;->mCaller:Landroid/app/Activity;

    invoke-virtual {v8, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 674
    .end local v3           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 624
    :cond_1
    iget-object v8, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v8}, Lcom/android/mms/ui/MessageItem;->isMixedMMS()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 625
    iget-object v8, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v8}, Lcom/android/mms/ui/MessageItem;->containVCard()Z

    move-result v8

    if-nez v8, :cond_2

    iget-object v8, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v8}, Lcom/android/mms/ui/MessageItem;->containVCalendar()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 626
    :cond_2
    iget-object v8, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v8, v8, Lcom/android/mms/ui/MessageItem;->mMixedMessageBody:Lcom/android/mms/msg/body/MixedMessageBody;

    invoke-virtual {v8}, Lcom/android/mms/msg/body/MixedMessageBody;->toPduBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v0

    .line 627
    .local v0, body:Lcom/google/android/mms/pdu/PduBody;
    invoke-virtual {v0}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v6

    .line 628
    .local v6, partNum:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v6, :cond_0

    .line 629
    invoke-virtual {v0, v2}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v5

    .line 630
    .local v5, part:Lcom/google/android/mms/pdu/PduPart;
    new-instance v7, Ljava/lang/String;

    invoke-virtual {v5}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>([B)V

    .line 631
    .local v7, type:Ljava/lang/String;
    const-string v8, "text/x-vCard"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 632
    invoke-direct {p0, v5}, Lcom/android/mms/ui/MessageListItem;->getVcardByteArry(Lcom/google/android/mms/pdu/PduPart;)[B

    move-result-object v4

    .line 633
    .local v4, mVcard:[B
    if-eqz v4, :cond_4

    .line 635
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 636
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v8, "android.intent.action.IMPORT_VCARD_SELECT_FIELDS"

    invoke-virtual {v3, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 637
    const-string v8, "result"

    invoke-virtual {v3, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 638
    const-string v8, "MMS_ID"

    iget-object v9, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v9, v9, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-virtual {v3, v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 639
    iget-object v8, p0, Lcom/android/mms/ui/MessageListItem;->mCaller:Landroid/app/Activity;

    const/16 v9, 0x3e

    invoke-virtual {v8, v3, v9}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 647
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #mVcard:[B
    :cond_3
    const-string v8, "text/x-vCalendar"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 648
    iget-object v8, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v9, v9, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-static {v8, v5, v9, v10}, Lcom/android/mms/ui/MessageUtils;->launchVcalendarPrompt(Landroid/content/Context;Lcom/google/android/mms/pdu/PduPart;J)V

    goto :goto_0

    .line 628
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 663
    .end local v0           #body:Lcom/google/android/mms/pdu/PduBody;
    .end local v2           #i:I
    .end local v5           #part:Lcom/google/android/mms/pdu/PduPart;
    .end local v6           #partNum:I
    .end local v7           #type:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 664
    .local v1, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    .line 670
    .end local v1           #e:Landroid/content/ActivityNotFoundException;
    :cond_5
    new-instance v3, Landroid/content/Intent;

    const-string v8, "android.intent.action.VIEW"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 671
    .restart local v3       #intent:Landroid/content/Intent;
    iget-object v8, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v8, v8, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    const-string v9, "application/vnd.wap.multipart.related"

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 672
    const/high16 v8, 0x1000

    invoke-virtual {v3, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 673
    iget-object v8, p0, Lcom/android/mms/ui/MessageListItem;->mCaller:Landroid/app/Activity;

    invoke-virtual {v8, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public getMessageItem()Lcom/android/mms/ui/MessageItem;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1083
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 134
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 136
    const v1, 0x7f0e0064

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    .line 137
    const v1, 0x7f0e006a

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mSentTimeView:Landroid/widget/TextView;

    .line 138
    const v1, 0x7f0e0065

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mRightStatusIndicator:Landroid/widget/ImageView;

    .line 139
    const v1, 0x7f0e0066

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mSecStatusIndicator:Landroid/widget/ImageView;

    .line 140
    const v1, 0x7f0e0067

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mThirdStatusIndicator:Landroid/widget/ImageView;

    .line 141
    const v1, 0x7f0e0062

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mCheck:Landroid/widget/ImageView;

    .line 143
    const v1, 0x7f0e0050

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListItemQuickContactBadge;

    .line 145
    .local v0, badgeView:Lcom/htc/widget/HtcListItemQuickContactBadge;
    invoke-virtual {v0}, Lcom/htc/widget/HtcListItemQuickContactBadge;->getBadge()Lcom/htc/widget/QuickContactBadge;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mPhotoIcon:Landroid/widget/ImageView;

    .line 146
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mPhotoIcon:Landroid/widget/ImageView;

    new-instance v2, Lcom/android/mms/ui/MessageListItem$1;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/MessageListItem$1;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    return-void
.end method

.method public pauseAudio()V
    .locals 0

    .prologue
    .line 1064
    return-void
.end method

.method public pauseVideo()V
    .locals 0

    .prologue
    .line 1069
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 1049
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 1050
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1052
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mImageBorder:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 1053
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mImageBorder:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1055
    :cond_1
    return-void
.end method

.method public seekAudio(I)V
    .locals 0
    .parameter "seekTo"

    .prologue
    .line 1074
    return-void
.end method

.method public seekVideo(I)V
    .locals 0
    .parameter "seekTo"

    .prologue
    .line 1079
    return-void
.end method

.method public setAudio(Landroid/net/Uri;Ljava/lang/String;ILjava/util/Map;)V
    .locals 0
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
    .line 1089
    .local p4, extras:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    return-void
.end method

.method public setAudio(Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .parameter "audio"
    .parameter "name"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .prologue
    .line 408
    .local p3, extras:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    return-void
.end method

.method public setCaller(Landroid/app/Activity;)V
    .locals 0
    .parameter "act"

    .prologue
    .line 1003
    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem;->mCaller:Landroid/app/Activity;

    .line 1004
    return-void
.end method

.method public setErrorFlag()V
    .locals 2

    .prologue
    .line 777
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-boolean v0, v0, Lcom/android/mms/ui/MessageItem;->bInDelMode:Z

    if-eqz v0, :cond_0

    .line 782
    :goto_0
    return-void

    .line 780
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSecStatusIndicator:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 781
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSecStatusIndicator:Landroid/widget/ImageView;

    const v1, 0x7f020148

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public setImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "name"
    .parameter "bitmap"

    .prologue
    const/4 v1, 0x0

    .line 411
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-boolean v0, v0, Lcom/android/mms/ui/MessageItem;->bInDelMode:Z

    if-eqz v0, :cond_0

    .line 422
    :goto_0
    return-void

    .line 414
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->inflateMmsView()V

    .line 416
    if-eqz p2, :cond_1

    .line 417
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 418
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 421
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mImageBorder:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setImage(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V
    .locals 0
    .parameter "name"
    .parameter "bitmap"
    .parameter "isWithBorder"

    .prologue
    .line 1118
    return-void
.end method

.method public setImageGone()V
    .locals 0

    .prologue
    .line 1123
    return-void
.end method

.method public setImageRegionFit(Ljava/lang/String;)V
    .locals 0
    .parameter "fit"

    .prologue
    .line 1008
    return-void
.end method

.method public setImageVisibility(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 1012
    return-void
.end method

.method public setIsSimSms(Z)V
    .locals 2
    .parameter "isSimSms"

    .prologue
    .line 793
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-boolean v0, v0, Lcom/android/mms/ui/MessageItem;->bInDelMode:Z

    if-eqz v0, :cond_0

    .line 802
    :goto_0
    return-void

    .line 796
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 797
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSecStatusIndicator:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 798
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSecStatusIndicator:Landroid/widget/ImageView;

    const v1, 0x7f020180

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 801
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSecStatusIndicator:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setMePhotoIcon()V
    .locals 3

    .prologue
    .line 997
    invoke-static {}, Lcom/android/mms/util/ContactNameCache;->getInstance()Lcom/android/mms/util/ContactNameCache;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/mms/util/ContactNameCache;->getMePhoto(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 998
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mPhotoIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 999
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mPhotoIcon:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1000
    return-void
.end method

.method public setMessageLocked()V
    .locals 2

    .prologue
    .line 805
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-boolean v0, v0, Lcom/android/mms/ui/MessageItem;->bInDelMode:Z

    if-eqz v0, :cond_0

    .line 810
    :goto_0
    return-void

    .line 808
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mRightStatusIndicator:Landroid/widget/ImageView;

    const v1, 0x7f02017c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 809
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mRightStatusIndicator:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setMixedAttachInfoText(II)V
    .locals 5
    .parameter "resId"
    .parameter "Size"

    .prologue
    .line 944
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-boolean v2, v2, Lcom/android/mms/ui/MessageItem;->bInDelMode:Z

    if-eqz v2, :cond_0

    .line 961
    :goto_0
    return-void

    .line 947
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mTypeView:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(I)V

    .line 948
    const-string v1, ""

    .line 949
    .local v1, size:Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget v0, v2, Lcom/android/mms/ui/MessageItem;->mAttachmentType:I

    .line 950
    .local v0, currentType:I
    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    .line 960
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mDetailView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 959
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090110

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public setMixedAttachInfoText(Ljava/lang/String;I)V
    .locals 5
    .parameter "resString"
    .parameter "Size"

    .prologue
    const v4, 0x7f090029

    .line 964
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-boolean v2, v2, Lcom/android/mms/ui/MessageItem;->bInDelMode:Z

    if-eqz v2, :cond_0

    .line 977
    :goto_0
    return-void

    .line 967
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mTypeView:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 968
    const-string v1, ""

    .line 969
    .local v1, size:Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget v0, v2, Lcom/android/mms/ui/MessageItem;->mAttachmentType:I

    .line 970
    .local v0, currentType:I
    if-eqz v0, :cond_1

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 971
    :cond_1
    div-int/lit16 v2, p2, 0x400

    if-lez v2, :cond_3

    .line 972
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    div-int/lit16 v3, p2, 0x400

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 976
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mDetailView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 974
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "1 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public setMsgListItemHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 215
    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem;->mHandler:Landroid/os/Handler;

    .line 216
    return-void
.end method

.method public setPendingFlag()V
    .locals 2

    .prologue
    .line 785
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-boolean v0, v0, Lcom/android/mms/ui/MessageItem;->bInDelMode:Z

    if-eqz v0, :cond_0

    .line 790
    :goto_0
    return-void

    .line 788
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSecStatusIndicator:Landroid/widget/ImageView;

    const v1, 0x7f02017f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 789
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSecStatusIndicator:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setPhotoIcon(Ljava/lang/String;)V
    .locals 4
    .parameter "address"

    .prologue
    const/4 v3, 0x0

    .line 985
    invoke-static {}, Lcom/android/mms/util/ContactNameCache;->getInstance()Lcom/android/mms/util/ContactNameCache;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mPhotoIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/android/mms/util/ContactNameCache;->setContactPhoto(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Z)V

    .line 986
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mPhotoIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 988
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-boolean v0, v0, Lcom/android/mms/ui/MessageItem;->bInForwardMode:Z

    if-eqz v0, :cond_0

    .line 989
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mPhotoIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 992
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-boolean v0, v0, Lcom/android/mms/ui/MessageItem;->bInDelMode:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-boolean v0, v0, Lcom/android/mms/ui/MessageItem;->bInForwardMode:Z

    if-nez v0, :cond_1

    .line 993
    invoke-static {}, Lcom/android/mms/util/ContactNameCache;->getInstance()Lcom/android/mms/util/ContactNameCache;

    move-result-object v1

    const v0, 0x7f0e007f

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v1, p1, v0}, Lcom/android/mms/util/ContactNameCache;->setPhotoIconOnClick(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 994
    :cond_1
    return-void
.end method

.method public setRelatedAttachInfoText(I)V
    .locals 4
    .parameter "number"

    .prologue
    .line 933
    const-string v0, ""

    .line 934
    .local v0, size:Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mTypeView:Landroid/widget/TextView;

    const v2, 0x20c01f6

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 936
    const/4 v1, 0x1

    if-le p1, v1, :cond_0

    .line 937
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f090143

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 940
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mDetailView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 941
    return-void

    .line 939
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f090117

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setRelatedAttachInfoText(Ljava/lang/String;I)V
    .locals 4
    .parameter "resString"
    .parameter "Size"

    .prologue
    const v3, 0x7f090029

    .line 920
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-boolean v1, v1, Lcom/android/mms/ui/MessageItem;->bInDelMode:Z

    if-eqz v1, :cond_0

    .line 930
    :goto_0
    return-void

    .line 923
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mTypeView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 924
    const-string v0, ""

    .line 925
    .local v0, size:Ljava/lang/CharSequence;
    div-int/lit16 v1, p2, 0x400

    if-lez v1, :cond_1

    .line 926
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    div-int/lit16 v2, p2, 0x400

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 929
    :goto_1
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mDetailView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 928
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "1 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public setReportIndicator(J)V
    .locals 4
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    .line 823
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-boolean v1, v1, Lcom/android/mms/ui/MessageItem;->bInDelMode:Z

    if-eqz v1, :cond_1

    .line 844
    :cond_0
    :goto_0
    return-void

    .line 826
    :cond_1
    invoke-static {}, Lcom/android/mms/util/ReportIndicatorCache;->getInstance()Lcom/android/mms/util/ReportIndicatorCache;

    move-result-object v0

    .line 827
    .local v0, instance:Lcom/android/mms/util/ReportIndicatorCache;
    if-eqz v0, :cond_0

    .line 830
    invoke-static {p1, p2}, Lcom/android/mms/util/ReportIndicatorCache;->isAllRead(J)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 831
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mSecStatusIndicator:Landroid/widget/ImageView;

    const v2, 0x7f02017d

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 832
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mSecStatusIndicator:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 835
    :cond_2
    invoke-static {p1, p2}, Lcom/android/mms/util/ReportIndicatorCache;->isGetAllDeliveryReport(J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 836
    invoke-static {p1, p2}, Lcom/android/mms/util/ReportIndicatorCache;->isAllRetrieved(J)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 837
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mSecStatusIndicator:Landroid/widget/ImageView;

    const v2, 0x7f02017b

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 841
    :goto_1
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mSecStatusIndicator:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 840
    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mSecStatusIndicator:Landroid/widget/ImageView;

    const v2, 0x7f020172

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method public setRequireDeliveryReport()V
    .locals 2

    .prologue
    .line 813
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-boolean v0, v0, Lcom/android/mms/ui/MessageItem;->bInDelMode:Z

    if-eqz v0, :cond_0

    .line 818
    :goto_0
    return-void

    .line 816
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSecStatusIndicator:Landroid/widget/ImageView;

    const v1, 0x7f02019b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 817
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSecStatusIndicator:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setSentFlag()V
    .locals 2

    .prologue
    .line 850
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-boolean v0, v0, Lcom/android/mms/ui/MessageItem;->bInDelMode:Z

    if-eqz v0, :cond_0

    .line 855
    :goto_0
    return-void

    .line 853
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSecStatusIndicator:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 854
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSecStatusIndicator:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "name"
    .parameter "text"

    .prologue
    .line 1016
    return-void
.end method

.method public setTextSize(I)V
    .locals 3
    .parameter "size"

    .prologue
    const/4 v2, 0x0

    .line 203
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    int-to-float v1, p1

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 206
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSentTimeView:Landroid/widget/TextView;

    add-int/lit8 v1, p1, -0x4

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 208
    return-void
.end method

.method public setTextVisibility(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 1020
    return-void
.end method

.method public setTimeSent(Ljava/lang/String;)V
    .locals 2
    .parameter "timestamp"

    .prologue
    .line 980
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSentTimeView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 981
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSentTimeView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 982
    return-void
.end method

.method public setVideo(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 3
    .parameter "name"
    .parameter "video"

    .prologue
    .line 1023
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-boolean v1, v1, Lcom/android/mms/ui/MessageItem;->bInDelMode:Z

    if-eqz v1, :cond_0

    .line 1034
    :goto_0
    return-void

    .line 1026
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->inflateMmsView()V

    .line 1027
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-static {p2, v1}, Lcom/android/mms/ui/MessageUtils;->getVideoThumbnail(Landroid/net/Uri;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1028
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    .line 1029
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020177

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1032
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1033
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setVideoVisibility(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 1038
    return-void
.end method

.method public setVisibility(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 1059
    return-void
.end method

.method public startAudio()V
    .locals 0

    .prologue
    .line 400
    return-void
.end method

.method public startVideo()V
    .locals 0

    .prologue
    .line 404
    return-void
.end method

.method public stopAudio()V
    .locals 0

    .prologue
    .line 1042
    return-void
.end method

.method public stopVideo()V
    .locals 0

    .prologue
    .line 1046
    return-void
.end method

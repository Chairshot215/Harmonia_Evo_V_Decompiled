.class public Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl;
.super Lcom/android/mms/view/impl/MultimediaMessageViewImpl;
.source "MixedMultimediaMessageViewImpl.java"

# interfaces
.implements Lcom/android/mms/view/MixedMultimediaMessageView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl$CreatePreviewTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MixedMultimediaMessageViewImpl"

.field private static final TYPE_AUDIO:I = 0x1

.field private static final TYPE_IMAGE:I = 0x0

.field private static final TYPE_LOCATION:I = 0x5

.field private static final TYPE_MORE:I = 0x6

.field private static final TYPE_VCALENDAR:I = 0x4

.field private static final TYPE_VCARD:I = 0x3

.field private static final TYPE_VIDEO:I = 0x2


# instance fields
.field mCreatePreviewTask:Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl$CreatePreviewTask;

.field private mCurrentType:I

.field private final mFlagSpans:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/style/ImageSpan;",
            ">;"
        }
    .end annotation
.end field

.field private mMessage:Lcom/android/mms/msg/MixedMultimediaMessage;

.field private mSingleMediaCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;-><init>(Landroid/content/Context;)V

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl;->mFlagSpans:Ljava/util/ArrayList;

    .line 111
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl;->mSingleMediaCount:I

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl;->mCreatePreviewTask:Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl$CreatePreviewTask;

    .line 119
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 122
    invoke-direct {p0, p1, p2}, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl;->mFlagSpans:Ljava/util/ArrayList;

    .line 111
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl;->mSingleMediaCount:I

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl;->mCreatePreviewTask:Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl$CreatePreviewTask;

    .line 123
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl;Lcom/android/mms/model/MediaModel;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl;->viewMedia(Lcom/android/mms/model/MediaModel;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl;)Lcom/android/mms/msg/MixedMultimediaMessage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl;->mMessage:Lcom/android/mms/msg/MixedMultimediaMessage;

    return-object v0
.end method

.method private getVcardByteArry(Lcom/google/android/mms/pdu/PduPart;)[B
    .locals 7
    .parameter "part"

    .prologue
    .line 154
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v3

    .line 155
    .local v3, mVcard:[B
    if-nez v3, :cond_0

    .line 156
    const/4 v1, 0x0

    .line 158
    .local v1, is:Ljava/io/InputStream;
    :try_start_0
    iget-object v4, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 159
    .local v2, mContentResolver:Landroid/content/ContentResolver;
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 161
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v4

    new-array v3, v4, [B

    .line 162
    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_3

    .line 170
    if-eqz v1, :cond_0

    .line 172
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 179
    .end local v1           #is:Ljava/io/InputStream;
    .end local v2           #mContentResolver:Landroid/content/ContentResolver;
    :cond_0
    :goto_0
    return-object v3

    .line 173
    .restart local v1       #is:Ljava/io/InputStream;
    .restart local v2       #mContentResolver:Landroid/content/ContentResolver;
    :catch_0
    move-exception v0

    .line 174
    .local v0, e:Ljava/io/IOException;
    const-string v4, "vcard"

    const-string v5, "Failed to close stream"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 164
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #mContentResolver:Landroid/content/ContentResolver;
    :catch_1
    move-exception v0

    .line 165
    .restart local v0       #e:Ljava/io/IOException;
    :try_start_2
    const-string v4, "vcard"

    const-string v5, "Failed to load part data"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 170
    if-eqz v1, :cond_0

    .line 172
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 173
    :catch_2
    move-exception v0

    .line 174
    const-string v4, "vcard"

    const-string v5, "Failed to close stream"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 166
    .end local v0           #e:Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 167
    .local v0, e:Ljava/lang/OutOfMemoryError;
    :try_start_4
    const-string v4, "vcard"

    const-string v5, "Failed to allocate mvCard memory"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 170
    if-eqz v1, :cond_0

    .line 172
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_0

    .line 173
    :catch_4
    move-exception v0

    .line 174
    .local v0, e:Ljava/io/IOException;
    const-string v4, "vcard"

    const-string v5, "Failed to close stream"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 170
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    if-eqz v1, :cond_1

    .line 172
    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 175
    :cond_1
    :goto_1
    throw v4

    .line 173
    :catch_5
    move-exception v0

    .line 174
    .restart local v0       #e:Ljava/io/IOException;
    const-string v5, "vcard"

    const-string v6, "Failed to close stream"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private presentMedia()V
    .locals 11

    .prologue
    .line 624
    iget-object v2, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mMmsView:Landroid/view/View;

    check-cast v2, Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 626
    const/4 v0, 0x0

    .line 627
    .local v0, slideAttachmentView:Lcom/android/mms/ui/SlideAttachmentItemView;
    iget-object v2, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mSlideAttachmentList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 628
    iget-object v2, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mSlideAttachmentList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #slideAttachmentView:Lcom/android/mms/ui/SlideAttachmentItemView;
    check-cast v0, Lcom/android/mms/ui/SlideAttachmentItemView;

    .line 630
    .restart local v0       #slideAttachmentView:Lcom/android/mms/ui/SlideAttachmentItemView;
    if-eqz v0, :cond_0

    .line 631
    invoke-virtual {v0}, Lcom/android/mms/ui/SlideAttachmentItemView;->reset()V

    .line 635
    :cond_0
    if-nez v0, :cond_1

    .line 636
    iget-object v2, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030036

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .end local v0           #slideAttachmentView:Lcom/android/mms/ui/SlideAttachmentItemView;
    check-cast v0, Lcom/android/mms/ui/SlideAttachmentItemView;

    .line 637
    .restart local v0       #slideAttachmentView:Lcom/android/mms/ui/SlideAttachmentItemView;
    iget-object v2, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->callerCache:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/SlideAttachmentItemView;->setCaller(Landroid/app/Activity;)V

    .line 638
    iget-object v2, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mTextTouchListener:Lcom/android/mms/view/impl/MultimediaMessageViewImpl$TextViewTouchListener;

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/SlideAttachmentItemView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 639
    iget-object v2, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mTextViewOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/SlideAttachmentItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 641
    iget-object v2, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mSlideAttachmentList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 644
    :cond_1
    iget-object v2, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mMmsView:Landroid/view/View;

    check-cast v2, Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 646
    iget-object v2, p0, Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl;->mMessage:Lcom/android/mms/msg/MixedMultimediaMessage;

    invoke-virtual {v2}, Lcom/android/mms/msg/MixedMultimediaMessage;->containsImage()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 647
    iget-object v2, p0, Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl;->mMessage:Lcom/android/mms/msg/MixedMultimediaMessage;

    invoke-virtual {v2}, Lcom/android/mms/msg/MixedMultimediaMessage;->getFirstImage()Lcom/android/mms/model/ImageModel;

    move-result-object v8

    .line 648
    .local v8, media:Lcom/android/mms/model/ImageModel;
    invoke-virtual {v8}, Lcom/android/mms/model/ImageModel;->getSrc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v8}, Lcom/android/mms/ui/SlideAttachmentItemView;->setImage(Ljava/lang/String;Lcom/android/mms/model/ImageModel;)V

    .line 651
    .end local v8           #media:Lcom/android/mms/model/ImageModel;
    :cond_2
    iget-object v2, p0, Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl;->mMessage:Lcom/android/mms/msg/MixedMultimediaMessage;

    invoke-virtual {v2}, Lcom/android/mms/msg/MixedMultimediaMessage;->containsVideo()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 652
    iget-object v2, p0, Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl;->mMessage:Lcom/android/mms/msg/MixedMultimediaMessage;

    invoke-virtual {v2}, Lcom/android/mms/msg/MixedMultimediaMessage;->getFirstVideo()Lcom/android/mms/model/VideoModel;

    move-result-object v8

    .line 653
    .local v8, media:Lcom/android/mms/model/VideoModel;
    invoke-virtual {v0, v8}, Lcom/android/mms/ui/SlideAttachmentItemView;->setVideo(Lcom/android/mms/model/VideoModel;)V

    .line 656
    .end local v8           #media:Lcom/android/mms/model/VideoModel;
    :cond_3
    iget-object v2, p0, Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl;->mMessage:Lcom/android/mms/msg/MixedMultimediaMessage;

    invoke-virtual {v2}, Lcom/android/mms/msg/MixedMultimediaMessage;->containsAudio()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 657
    iget-object v2, p0, Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl;->mMessage:Lcom/android/mms/msg/MixedMultimediaMessage;

    invoke-virtual {v2}, Lcom/android/mms/msg/MixedMultimediaMessage;->getFirstAudio()Lcom/android/mms/model/AudioModel;

    move-result-object v8

    .line 658
    .local v8, media:Lcom/android/mms/model/AudioModel;
    invoke-virtual {v0, v8}, Lcom/android/mms/ui/SlideAttachmentItemView;->setAudio(Lcom/android/mms/model/AudioModel;)V

    .line 662
    .end local v8           #media:Lcom/android/mms/model/AudioModel;
    :cond_4
    iget-object v2, p0, Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl;->mMessage:Lcom/android/mms/msg/MixedMultimediaMessage;

    invoke-virtual {v2}, Lcom/android/mms/msg/MixedMultimediaMessage;->containsText()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 664
    iget-object v2, p0, Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl;->mMessage:Lcom/android/mms/msg/MixedMultimediaMessage;

    invoke-virtual {v2}, Lcom/android/mms/msg/MixedMultimediaMessage;->getFirstText()Lcom/android/mms/model/TextModel;

    move-result-object v9

    .line 665
    .local v9, text:Lcom/android/mms/model/TextModel;
    invoke-virtual {v9}, Lcom/android/mms/model/TextModel;->getSrc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mTextTouchListener:Lcom/android/mms/view/impl/MultimediaMessageViewImpl$TextViewTouchListener;

    iget-object v5, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mTextViewOnClickListener:Landroid/view/View$OnClickListener;

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/android/mms/ui/SlideAttachmentItemView;->setText(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View$OnTouchListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V

    .line 667
    const/4 v2, 0x0

    iget v3, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mTextSize:I

    invoke-virtual {v0, v2, v3}, Lcom/android/mms/ui/SlideAttachmentItemView;->setTextSize(II)V

    .line 671
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportExpandMixedMMS()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 672
    iget-object v2, p0, Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl;->mMessage:Lcom/android/mms/msg/MixedMultimediaMessage;

    invoke-virtual {v2}, Lcom/android/mms/msg/MixedMultimediaMessage;->getSecondText()Lcom/android/mms/model/TextModel;

    move-result-object v10

    .line 673
    .local v10, text2:Lcom/android/mms/model/TextModel;
    if-eqz v10, :cond_6

    .line 674
    const/4 v1, 0x0

    .line 675
    .local v1, secondTextView:Lcom/android/mms/ui/SlideAttachmentItemView;
    if-nez v1, :cond_5

    .line 676
    iget-object v2, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030036

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .end local v1           #secondTextView:Lcom/android/mms/ui/SlideAttachmentItemView;
    check-cast v1, Lcom/android/mms/ui/SlideAttachmentItemView;

    .line 677
    .restart local v1       #secondTextView:Lcom/android/mms/ui/SlideAttachmentItemView;
    iget-object v2, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->callerCache:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/SlideAttachmentItemView;->setCaller(Landroid/app/Activity;)V

    .line 678
    iget-object v2, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mTextTouchListener:Lcom/android/mms/view/impl/MultimediaMessageViewImpl$TextViewTouchListener;

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/SlideAttachmentItemView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 679
    iget-object v2, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mTextViewOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/SlideAttachmentItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 681
    iget-object v2, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mSlideAttachmentList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 683
    :cond_5
    iget-object v2, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mMmsView:Landroid/view/View;

    check-cast v2, Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 684
    invoke-virtual {v10}, Lcom/android/mms/model/TextModel;->getSrc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mTextTouchListener:Lcom/android/mms/view/impl/MultimediaMessageViewImpl$TextViewTouchListener;

    iget-object v6, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mTextViewOnClickListener:Landroid/view/View$OnClickListener;

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/android/mms/ui/SlideAttachmentItemView;->setText(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View$OnTouchListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V

    .line 685
    const/4 v2, 0x0

    iget v3, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mTextSize:I

    invoke-virtual {v1, v2, v3}, Lcom/android/mms/ui/SlideAttachmentItemView;->setTextSize(II)V

    .line 691
    .end local v1           #secondTextView:Lcom/android/mms/ui/SlideAttachmentItemView;
    .end local v9           #text:Lcom/android/mms/model/TextModel;
    .end local v10           #text2:Lcom/android/mms/model/TextModel;
    :cond_6
    return-void
.end method

.method private viewMedia(Lcom/android/mms/model/MediaModel;)V
    .locals 10
    .parameter "media"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 347
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 348
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/mms/ContentType;->isDrmType(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 349
    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->getDrmObject()Lcom/android/mms/drm/DrmWrapper;

    move-result-object v4

    .line 350
    .local v4, mDrmObject:Lcom/android/mms/drm/DrmWrapper;
    invoke-virtual {v4}, Lcom/android/mms/drm/DrmWrapper;->getContentType()Ljava/lang/String;

    move-result-object v3

    .line 351
    .local v3, mDrmContentType:Ljava/lang/String;
    const-string v5, "MixedMultimediaMessageViewImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mDrmContentType:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    :try_start_0
    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->getUriWithDrmCheck()Landroid/net/Uri;
    :try_end_0
    .catch Landroid/drm/mobile1/DrmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 366
    invoke-static {v3}, Lcom/google/android/mms/ContentType;->isImageType(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 367
    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 368
    const-string v5, "viewSingleImage"

    invoke-virtual {v2, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 392
    .end local v3           #mDrmContentType:Ljava/lang/String;
    .end local v4           #mDrmObject:Lcom/android/mms/drm/DrmWrapper;
    :cond_0
    :goto_0
    const/high16 v5, 0x1000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 394
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v5

    const-string v6, "input_method"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 395
    .local v1, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v5, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mMmsView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v1, v5, v9}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 397
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 399
    .end local v1           #imm:Landroid/view/inputmethod/InputMethodManager;
    :goto_1
    return-void

    .line 357
    .restart local v3       #mDrmContentType:Ljava/lang/String;
    .restart local v4       #mDrmObject:Lcom/android/mms/drm/DrmWrapper;
    :catch_0
    move-exception v0

    .line 358
    .local v0, e:Landroid/drm/mobile1/DrmException;
    const-string v5, "MixedMultimediaMessageViewImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DrmException: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    iget-object v5, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mContext:Landroid/content/Context;

    const v7, 0x7f090034

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 369
    .end local v0           #e:Landroid/drm/mobile1/DrmException;
    :cond_1
    invoke-static {v3}, Lcom/google/android/mms/ContentType;->isVideoType(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 370
    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 372
    const-string v5, "landscape"

    invoke-virtual {v2, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    .line 374
    :cond_2
    invoke-static {v3}, Lcom/google/android/mms/ContentType;->isAudioType(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 375
    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 382
    .end local v3           #mDrmContentType:Ljava/lang/String;
    .end local v4           #mDrmObject:Lcom/android/mms/drm/DrmWrapper;
    :cond_3
    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 384
    iget v5, p0, Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl;->mCurrentType:I

    if-nez v5, :cond_4

    .line 385
    const-string v5, "viewSingleImage"

    invoke-virtual {v2, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_0

    .line 387
    :cond_4
    iget v5, p0, Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl;->mCurrentType:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 388
    const-string v5, "landscape"

    invoke-virtual {v2, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_0
.end method


# virtual methods
.method public bindTo(Lcom/android/mms/msg/AbstractMessage;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 128
    invoke-super {p0, p1}, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->bindTo(Lcom/android/mms/msg/AbstractMessage;)V

    .line 130
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/mms/msg/AbstractMessage;->isMultimediaMessage()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, p1

    .line 131
    check-cast v1, Lcom/android/mms/msg/MultimediaMessage;

    invoke-virtual {v1}, Lcom/android/mms/msg/MultimediaMessage;->getContentType()Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, strType:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "application/vnd.wap.multipart.mixed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    invoke-virtual {p0}, Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl;->preBindingView()V

    move-object v1, p1

    .line 137
    check-cast v1, Lcom/android/mms/msg/MixedMultimediaMessage;

    iput-object v1, p0, Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl;->mMessage:Lcom/android/mms/msg/MixedMultimediaMessage;

    .line 139
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportThreadDetailViewEnhance()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl;->mMessage:Lcom/android/mms/msg/MixedMultimediaMessage;

    iget-object v2, p0, Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl;->mMessage:Lcom/android/mms/msg/MixedMultimediaMessage;

    invoke-virtual {v2}, Lcom/android/mms/msg/MixedMultimediaMessage;->getAttachmentCount()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/mms/msg/MixedMultimediaMessage;->isNeedExpandContent(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportMmsCollapseMode()Z

    move-result v1

    if-nez v1, :cond_1

    .line 142
    invoke-static {p0, p1}, Lcom/android/mms/view/ctl/MultimediaMessageViewCtl;->bind(Lcom/android/mms/view/MessageView;Lcom/android/mms/msg/AbstractMessage;)V

    .line 143
    invoke-virtual {p0}, Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl;->inflateMmsView()V

    .line 147
    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl;->postBindingView()V

    .line 151
    .end local v0           #strType:Ljava/lang/String;
    :cond_0
    return-void

    .line 146
    .restart local v0       #strType:Ljava/lang/String;
    :cond_1
    invoke-static {p0, p1}, Lcom/android/mms/view/ctl/MixedMultimediaMessageViewCtl;->bind(Lcom/android/mms/view/MessageView;Lcom/android/mms/msg/AbstractMessage;)V

    goto :goto_0
.end method

.method public fireEvent(Lcom/android/mms/view/Event;)V
    .locals 26
    .parameter "evt"

    .prologue
    .line 185
    sget-object v22, Lcom/android/mms/view/Event;->CLICKED_PLAYBACK_EVENT:Lcom/android/mms/view/Event;

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_d

    .line 187
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl;->mSingleMediaCount:I

    move/from16 v22, v0

    if-ltz v22, :cond_4

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl;->mMessage:Lcom/android/mms/msg/MixedMultimediaMessage;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/msg/MixedMultimediaMessage;->getMessageBody()Lcom/android/mms/msg/body/MixedMessageBody;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/msg/body/MixedMessageBody;->getMediaList()Ljava/util/ArrayList;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl;->mSingleMediaCount:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/mms/model/MediaModel;

    .line 190
    .local v15, media:Lcom/android/mms/model/MediaModel;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl;->mCurrentType:I

    move/from16 v22, v0

    const/16 v23, 0x5

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl;->mCurrentType:I

    move/from16 v22, v0

    const/16 v23, 0x3

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl;->mCurrentType:I

    move/from16 v22, v0

    const/16 v23, 0x4

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_8

    .line 194
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v22

    sget-object v23, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl;->mMessage:Lcom/android/mms/msg/MixedMultimediaMessage;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/mms/msg/MixedMultimediaMessage;->getMessageId()J

    move-result-wide v24

    invoke-static/range {v23 .. v25}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/mms/msg/body/MixedMessageBody;->getPduBody(Landroid/content/Context;Landroid/net/Uri;)Lcom/google/android/mms/pdu/PduBody;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 200
    .local v4, body:Lcom/google/android/mms/pdu/PduBody;
    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v20

    .line 205
    .local v20, partNum:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    move/from16 v0, v20

    if-ge v9, v0, :cond_4

    .line 206
    invoke-virtual {v4, v9}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v19

    .line 207
    .local v19, part:Lcom/google/android/mms/pdu/PduPart;
    new-instance v21, Ljava/lang/String;

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/String;-><init>([B)V

    .line 210
    .local v21, type:Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Lcom/google/android/mms/ContentType;->isSupportedType(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_1

    .line 211
    invoke-virtual/range {v19 .. v19}, Lcom/google/android/mms/pdu/PduPart;->generateLocation()Ljava/lang/String;

    move-result-object v16

    .line 212
    .local v16, mediaName:Ljava/lang/String;
    const-string v17, ""

    .line 213
    .local v17, mimeType:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lcom/android/mms/ui/MessageUtils;->getContentTypeByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 214
    invoke-static/range {v17 .. v17}, Lcom/google/android/mms/ContentType;->isSupportedType(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_1

    .line 215
    move-object/from16 v21, v17

    .line 221
    .end local v16           #mediaName:Ljava/lang/String;
    .end local v17           #mimeType:Ljava/lang/String;
    :cond_1
    const-string v22, "text/x-vCard"

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_7

    .line 223
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportLocationMessage()Z

    move-result v22

    if-eqz v22, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl;->mMessage:Lcom/android/mms/msg/MixedMultimediaMessage;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/msg/MixedMultimediaMessage;->containsLocation()Z

    move-result v22

    if-nez v22, :cond_5

    .line 227
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl;->getVcardByteArry(Lcom/google/android/mms/pdu/PduPart;)[B

    move-result-object v13

    .line 228
    .local v13, mVcard:[B
    if-eqz v13, :cond_3

    .line 230
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 231
    .local v10, intent:Landroid/content/Intent;
    const-string v22, "android.intent.action.IMPORT_VCARD_SELECT_FIELDS"

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 232
    const-string v22, "result"

    move-object/from16 v0, v22

    invoke-virtual {v10, v0, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 233
    const-string v22, "MMS_ID"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl;->mMessage:Lcom/android/mms/msg/MixedMultimediaMessage;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/mms/msg/MixedMultimediaMessage;->getMessageId()J

    move-result-wide v23

    move-object/from16 v0, v22

    move-wide/from16 v1, v23

    invoke-virtual {v10, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->callerCache:Ljava/lang/ref/WeakReference;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/app/Activity;

    const/16 v23, 0x3e

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v0, v10, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 205
    .end local v10           #intent:Landroid/content/Intent;
    .end local v13           #mVcard:[B
    :cond_3
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 195
    .end local v4           #body:Lcom/google/android/mms/pdu/PduBody;
    .end local v9           #i:I
    .end local v19           #part:Lcom/google/android/mms/pdu/PduPart;
    .end local v20           #partNum:I
    .end local v21           #type:Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 196
    .local v8, e:Lcom/google/android/mms/MmsException;
    const-string v22, "MixedMultimediaMessageViewImpl"

    invoke-virtual {v8}, Lcom/google/android/mms/MmsException;->getMessage()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 342
    .end local v8           #e:Lcom/google/android/mms/MmsException;
    .end local v15           #media:Lcom/android/mms/model/MediaModel;
    :cond_4
    :goto_2
    return-void

    .line 243
    .restart local v4       #body:Lcom/google/android/mms/pdu/PduBody;
    .restart local v9       #i:I
    .restart local v15       #media:Lcom/android/mms/model/MediaModel;
    .restart local v19       #part:Lcom/google/android/mms/pdu/PduPart;
    .restart local v20       #partNum:I
    .restart local v21       #type:Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->callerCache:Ljava/lang/ref/WeakReference;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/Activity;

    .line 244
    .local v7, context:Landroid/app/Activity;
    new-instance v14, Landroid/content/Intent;

    const-class v22, Lcom/android/mms/location/LocationMapActivity;

    move-object/from16 v0, v22

    invoke-direct {v14, v7, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 245
    .local v14, mapIntent:Landroid/content/Intent;
    const-string v22, "extra_startup_flag"

    const/16 v23, 0x4

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 247
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl;->mMessage:Lcom/android/mms/msg/MixedMultimediaMessage;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/msg/MixedMultimediaMessage;->getFirstLocation()Lcom/android/mms/model/LocationModel;

    move-result-object v12

    .line 248
    .local v12, location:Lcom/android/mms/model/LocationModel;
    invoke-virtual {v12}, Lcom/android/mms/model/LocationModel;->getPlace()Lcom/android/mms/location/Place;

    move-result-object v18

    .line 249
    .local v18, p:Lcom/android/mms/location/Place;
    if-eqz v18, :cond_6

    .line 250
    invoke-static/range {v18 .. v18}, Lcom/android/mms/location/Place;->toByteArray(Ljava/lang/Object;)[B

    move-result-object v6

    .line 251
    .local v6, bytes:[B
    const-string v22, "extra_selected_place"

    move-object/from16 v0, v22

    invoke-virtual {v14, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 252
    const-string v22, "extra_map_url"

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/location/Place;->getMapUrl()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 258
    .end local v6           #bytes:[B
    .end local v12           #location:Lcom/android/mms/model/LocationModel;
    .end local v18           #p:Lcom/android/mms/location/Place;
    :cond_6
    :goto_3
    const/16 v22, 0x33

    move/from16 v0, v22

    invoke-virtual {v7, v14, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 254
    :catch_1
    move-exception v8

    .line 256
    .local v8, e:Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 262
    .end local v7           #context:Landroid/app/Activity;
    .end local v8           #e:Ljava/lang/Exception;
    .end local v14           #mapIntent:Landroid/content/Intent;
    :cond_7
    const-string v22, "text/x-vCalendar"

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_3

    .line 264
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl;->mMessage:Lcom/android/mms/msg/MixedMultimediaMessage;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/mms/msg/MixedMultimediaMessage;->getMessageId()J

    move-result-wide v23

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    move-wide/from16 v2, v23

    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/ui/MessageUtils;->launchVcalendarPrompt(Landroid/content/Context;Lcom/google/android/mms/pdu/PduPart;J)V

    goto/16 :goto_1

    .line 272
    .end local v4           #body:Lcom/google/android/mms/pdu/PduBody;
    .end local v9           #i:I
    .end local v19           #part:Lcom/google/android/mms/pdu/PduPart;
    .end local v20           #partNum:I
    .end local v21           #type:Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl;->mCurrentType:I

    move/from16 v22, v0

    const/16 v23, 0x6

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_a

    .line 274
    new-instance v10, Landroid/content/Intent;

    const-string v22, "android.intent.action.VIEW"

    move-object/from16 v0, v22

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 276
    .restart local v10       #intent:Landroid/content/Intent;
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportForceDisplaySlidwshow()Z

    move-result v22

    if-eqz v22, :cond_9

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl;->mMessage:Lcom/android/mms/msg/MixedMultimediaMessage;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/msg/MixedMultimediaMessage;->getURI()Landroid/net/Uri;

    move-result-object v22

    const-string v23, "application/vnd.wap.multipart.related"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 282
    :goto_4
    const/high16 v22, 0x1000

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 283
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 279
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl;->mMessage:Lcom/android/mms/msg/MixedMultimediaMessage;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/msg/MixedMultimediaMessage;->getURI()Landroid/net/Uri;

    move-result-object v22

    const-string v23, "application/vnd.wap.multipart.mixed"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_4

    .line 285
    .end local v10           #intent:Landroid/content/Intent;
    :cond_a
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportThreadDetailViewEnhance()Z

    move-result v22

    if-eqz v22, :cond_c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mIsLongClick:Z

    move/from16 v22, v0

    if-eqz v22, :cond_c

    .line 286
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->callerCache:Ljava/lang/ref/WeakReference;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Context;

    .line 287
    .local v7, context:Landroid/content/Context;
    const/4 v11, 0x0

    .line 289
    .local v11, items:[Ljava/lang/CharSequence;
    new-instance v5, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v5, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 290
    .local v5, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v22, 0x7f090036

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 291
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl;->mCurrentType:I

    move/from16 v22, v0

    if-nez v22, :cond_b

    .line 292
    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v11, v0, [Ljava/lang/CharSequence;

    .end local v11           #items:[Ljava/lang/CharSequence;
    const/16 v22, 0x0

    const v23, 0x7f090148

    move/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v11, v22

    const/16 v22, 0x1

    const v23, 0x7f0902ee

    move/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v11, v22

    .line 303
    .restart local v11       #items:[Ljava/lang/CharSequence;
    :goto_5
    new-instance v22, Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl$1;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v7, v15}, Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl$1;-><init>(Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl;Landroid/content/Context;Lcom/android/mms/model/MediaModel;)V

    move-object/from16 v0, v22

    invoke-virtual {v5, v11, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 330
    invoke-virtual {v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    goto/16 :goto_2

    .line 297
    :cond_b
    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v11, v0, [Ljava/lang/CharSequence;

    .end local v11           #items:[Ljava/lang/CharSequence;
    const/16 v22, 0x0

    const v23, 0x7f090148

    move/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v11, v22

    const/16 v22, 0x1

    const v23, 0x7f0902ed

    move/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v11, v22

    .restart local v11       #items:[Ljava/lang/CharSequence;
    goto :goto_5

    .line 333
    .end local v5           #builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    .end local v7           #context:Landroid/content/Context;
    .end local v11           #items:[Ljava/lang/CharSequence;
    :cond_c
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl;->viewMedia(Lcom/android/mms/model/MediaModel;)V

    goto/16 :goto_2

    .line 338
    .end local v15           #media:Lcom/android/mms/model/MediaModel;
    :cond_d
    sget-object v22, Lcom/android/mms/view/Event;->CLICKED_EVENT:Lcom/android/mms/view/Event;

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_4

    .line 339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mTextView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getUrls()[Landroid/text/style/URLSpan;

    goto/16 :goto_2
.end method

.method public getBoundItem()Lcom/android/mms/msg/AbstractMessage;
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl;->mMessage:Lcom/android/mms/msg/MixedMultimediaMessage;

    return-object v0
.end method

.method protected inflateMmsView()V
    .locals 2

    .prologue
    .line 525
    invoke-super {p0}, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->inflateMmsView()V

    .line 526
    iget-object v0, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mMmsView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 528
    iget-object v0, p0, Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl;->mCreatePreviewTask:Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl$CreatePreviewTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl;->mCreatePreviewTask:Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl$CreatePreviewTask;

    invoke-virtual {v0}, Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl$CreatePreviewTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl;->mCreatePreviewTask:Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl$CreatePreviewTask;

    iget-object v0, v0, Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl$CreatePreviewTask;->mMessage:Lcom/android/mms/msg/MixedMultimediaMessage;

    iget-object v1, p0, Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl;->mMessage:Lcom/android/mms/msg/MixedMultimediaMessage;

    if-eq v0, v1, :cond_0

    .line 529
    iget-object v0, p0, Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl;->mCreatePreviewTask:Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl$CreatePreviewTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl$CreatePreviewTask;->cancel(Z)Z

    .line 530
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl;->mCreatePreviewTask:Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl$CreatePreviewTask;

    .line 535
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportThreadDetailViewEnhance()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 537
    iget-object v0, p0, Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl;->mMessage:Lcom/android/mms/msg/MixedMultimediaMessage;

    iget-object v1, p0, Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl;->mMessage:Lcom/android/mms/msg/MixedMultimediaMessage;

    invoke-virtual {v1}, Lcom/android/mms/msg/MixedMultimediaMessage;->getAttachmentCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/mms/msg/MixedMultimediaMessage;->isNeedExpandContent(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportMmsCollapseMode()Z

    move-result v0

    if-nez v0, :cond_2

    .line 539
    invoke-direct {p0}, Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl;->presentMedia()V

    .line 550
    :cond_1
    :goto_0
    return-void

    .line 541
    :cond_2
    iget-object v0, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mMmsView:Landroid/view/View;

    new-instance v1, Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl$2;

    invoke-direct {v1, p0}, Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl$2;-><init>(Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_0
.end method

.method preBindingView()V
    .locals 1

    .prologue
    .line 554
    invoke-super {p0}, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->preBindingView()V

    .line 555
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl;->mMessage:Lcom/android/mms/msg/MixedMultimediaMessage;

    .line 556
    iget-object v0, p0, Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl;->mFlagSpans:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 557
    return-void
.end method

.method public setAttachInfoText(II)V
    .locals 8
    .parameter "resId"
    .parameter "Size"

    .prologue
    .line 567
    const-string v4, ""

    .line 568
    .local v4, size:Ljava/lang/CharSequence;
    iget v5, p0, Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl;->mCurrentType:I

    const/4 v6, 0x6

    if-ne v5, v6, :cond_4

    .line 570
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportThreadDetailViewEnhance()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 571
    move v3, p1

    .line 572
    .local v3, mediaNum:I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 573
    .local v0, attachments:Ljava/lang/String;
    const/4 v5, 0x1

    if-ne v3, v5, :cond_1

    .line 574
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mContext:Landroid/content/Context;

    const v7, 0x7f0902ef

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 577
    :goto_0
    iget-object v5, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mTypeView:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 578
    iget-object v5, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090029

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 579
    .local v1, kb:Ljava/lang/String;
    div-int/lit16 v5, p2, 0x400

    if-lez v5, :cond_2

    .line 580
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    div-int/lit16 v6, p2, 0x400

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 597
    .end local v0           #attachments:Ljava/lang/String;
    .end local v1           #kb:Ljava/lang/String;
    .end local v3           #mediaNum:I
    :cond_0
    :goto_1
    iget-object v5, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mDetailView:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 598
    return-void

    .line 576
    .restart local v0       #attachments:Ljava/lang/String;
    .restart local v3       #mediaNum:I
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mContext:Landroid/content/Context;

    const v7, 0x7f0902f0

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 582
    .restart local v1       #kb:Ljava/lang/String;
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "1 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 586
    .end local v0           #attachments:Ljava/lang/String;
    .end local v1           #kb:Ljava/lang/String;
    .end local v3           #mediaNum:I
    :cond_3
    iget-object v5, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mTypeView:Landroid/widget/TextView;

    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setText(I)V

    .line 587
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090110

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 589
    :cond_4
    iget v5, p0, Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl;->mCurrentType:I

    const/4 v6, 0x3

    if-eq v5, v6, :cond_5

    iget v5, p0, Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl;->mCurrentType:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_0

    .line 590
    :cond_5
    iget-object v5, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mTypeView:Landroid/widget/TextView;

    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setText(I)V

    .line 591
    iget v5, p0, Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl;->mSingleMediaCount:I

    if-ltz v5, :cond_0

    .line 592
    iget-object v5, p0, Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl;->mMessage:Lcom/android/mms/msg/MixedMultimediaMessage;

    invoke-virtual {v5}, Lcom/android/mms/msg/MixedMultimediaMessage;->getMessageBody()Lcom/android/mms/msg/body/MixedMessageBody;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/msg/body/MixedMessageBody;->getMediaList()Ljava/util/ArrayList;

    move-result-object v5

    iget v6, p0, Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl;->mSingleMediaCount:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/model/MediaModel;

    .line 593
    .local v2, media:Lcom/android/mms/model/MediaModel;
    invoke-virtual {v2}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 594
    invoke-virtual {v2}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1
.end method

.method public setAttachInfoText(Ljava/lang/String;I)V
    .locals 4
    .parameter "resString"
    .parameter "Size"

    .prologue
    const v3, 0x7f090029

    .line 602
    iget-object v1, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mTypeView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 603
    const-string v0, ""

    .line 604
    .local v0, size:Ljava/lang/CharSequence;
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportThreadDetailViewEnhance()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl;->mCurrentType:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl;->mCurrentType:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    :cond_0
    iget v1, p0, Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl;->mCurrentType:I

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl;->mCurrentType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl;->mCurrentType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 607
    :cond_1
    div-int/lit16 v1, p2, 0x400

    if-lez v1, :cond_3

    .line 608
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

    invoke-virtual {p0}, Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 613
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mDetailView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 614
    return-void

    .line 610
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "1 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setAttachInfoText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "title"
    .parameter "detail"

    .prologue
    .line 617
    iget-object v0, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mTypeView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 618
    iget-object v0, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mDetailView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 619
    return-void
.end method

.method public setPreviewIcon(I)V
    .locals 6
    .parameter "type"

    .prologue
    .line 444
    invoke-virtual {p0}, Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl;->inflateMmsView()V

    .line 445
    packed-switch p1, :pswitch_data_0

    .line 513
    :cond_0
    :goto_0
    iput p1, p0, Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl;->mCurrentType:I

    .line 514
    invoke-virtual {p0}, Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl;->enableImageView()V

    .line 515
    return-void

    .line 448
    :pswitch_0
    iget v3, p0, Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl;->mSingleMediaCount:I

    if-ltz v3, :cond_0

    .line 449
    iget-object v3, p0, Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl;->mMessage:Lcom/android/mms/msg/MixedMultimediaMessage;

    invoke-virtual {v3}, Lcom/android/mms/msg/MixedMultimediaMessage;->getMessageBody()Lcom/android/mms/msg/body/MixedMessageBody;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/msg/body/MixedMessageBody;->getMediaList()Ljava/util/ArrayList;

    move-result-object v3

    iget v4, p0, Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl;->mSingleMediaCount:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/model/ImageModel;

    move-object v0, v3

    check-cast v0, Lcom/android/mms/model/ImageModel;

    .line 451
    .local v0, image:Lcom/android/mms/model/ImageModel;
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportCreatePreviewIconInBG()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 452
    iget-object v3, p0, Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl;->mCreatePreviewTask:Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl$CreatePreviewTask;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl;->mCreatePreviewTask:Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl$CreatePreviewTask;

    invoke-virtual {v3}, Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl$CreatePreviewTask;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl;->mCreatePreviewTask:Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl$CreatePreviewTask;

    iget-object v3, v3, Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl$CreatePreviewTask;->mMessage:Lcom/android/mms/msg/MixedMultimediaMessage;

    iget-object v4, p0, Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl;->mMessage:Lcom/android/mms/msg/MixedMultimediaMessage;

    if-eq v3, v4, :cond_1

    .line 453
    iget-object v3, p0, Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl;->mCreatePreviewTask:Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl$CreatePreviewTask;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl$CreatePreviewTask;->cancel(Z)Z

    .line 454
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl;->mCreatePreviewTask:Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl$CreatePreviewTask;

    .line 456
    :cond_1
    new-instance v3, Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl$CreatePreviewTask;

    iget-object v4, p0, Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl;->mMessage:Lcom/android/mms/msg/MixedMultimediaMessage;

    iget-object v5, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mImageView:Landroid/widget/ImageView;

    invoke-direct {v3, p0, v4, v0, v5}, Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl$CreatePreviewTask;-><init>(Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl;Lcom/android/mms/msg/MixedMultimediaMessage;Lcom/android/mms/model/ImageModel;Landroid/widget/ImageView;)V

    iput-object v3, p0, Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl;->mCreatePreviewTask:Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl$CreatePreviewTask;

    .line 457
    iget-object v3, p0, Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl;->mCreatePreviewTask:Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl$CreatePreviewTask;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl$CreatePreviewTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 460
    :cond_2
    iget-object v3, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/android/mms/model/ImageModel;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 466
    .end local v0           #image:Lcom/android/mms/model/ImageModel;
    :pswitch_1
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportThreadDetailViewEnhance()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 467
    iget-object v3, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mImageView:Landroid/widget/ImageView;

    const v4, 0x7f02014b

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 469
    :cond_3
    iget-object v3, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mImageView:Landroid/widget/ImageView;

    const v4, 0x7f0201a7

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 473
    :pswitch_2
    iget v3, p0, Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl;->mSingleMediaCount:I

    if-ltz v3, :cond_0

    .line 475
    iget-object v3, p0, Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl;->mMessage:Lcom/android/mms/msg/MixedMultimediaMessage;

    invoke-virtual {v3}, Lcom/android/mms/msg/MixedMultimediaMessage;->getMessageBody()Lcom/android/mms/msg/body/MixedMessageBody;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/msg/body/MixedMessageBody;->getMediaList()Ljava/util/ArrayList;

    move-result-object v3

    iget v4, p0, Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl;->mSingleMediaCount:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/model/VideoModel;

    move-object v2, v3

    check-cast v2, Lcom/android/mms/model/VideoModel;

    .line 476
    .local v2, video:Lcom/android/mms/model/VideoModel;
    iget-object v3, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Lcom/android/mms/model/VideoModel;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 482
    .end local v2           #video:Lcom/android/mms/model/VideoModel;
    :pswitch_3
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportThreadDetailViewEnhance()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 483
    iget-object v3, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mImageView:Landroid/widget/ImageView;

    const v4, 0x7f02014a

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 485
    :cond_4
    iget-object v3, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mImageView:Landroid/widget/ImageView;

    const v4, 0x7f0200f5

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 489
    :pswitch_4
    iget-object v3, p0, Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl;->mMessage:Lcom/android/mms/msg/MixedMultimediaMessage;

    invoke-virtual {v3}, Lcom/android/mms/msg/MixedMultimediaMessage;->getFirstImage()Lcom/android/mms/model/ImageModel;

    move-result-object v1

    .line 490
    .local v1, model:Lcom/android/mms/model/ImageModel;
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/android/mms/model/ImageModel;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 491
    iget-object v3, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Lcom/android/mms/model/ImageModel;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 493
    :cond_5
    iget-object v3, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mImageView:Landroid/widget/ImageView;

    const v4, 0x7f02014e

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 497
    .end local v1           #model:Lcom/android/mms/model/ImageModel;
    :pswitch_5
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportThreadDetailViewEnhance()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 498
    iget-object v3, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mImageView:Landroid/widget/ImageView;

    const v4, 0x7f02014f

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 500
    :cond_6
    iget-object v3, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mImageView:Landroid/widget/ImageView;

    const v4, 0x7f0200f4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 504
    :pswitch_6
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportThreadDetailViewEnhance()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 505
    iget-object v3, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mImageView:Landroid/widget/ImageView;

    const v4, 0x7f0200f2

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 507
    :cond_7
    iget-object v3, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mImageView:Landroid/widget/ImageView;

    const v4, 0x7f02019a

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 445
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_6
    .end packed-switch
.end method

.method public setSingleMediaCount(I)V
    .locals 0
    .parameter "count"

    .prologue
    .line 518
    iput p1, p0, Lcom/android/mms/view/impl/MixedMultimediaMessageViewImpl;->mSingleMediaCount:I

    .line 519
    return-void
.end method
